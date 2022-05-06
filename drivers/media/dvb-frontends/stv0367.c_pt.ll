; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0367.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0367.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0367ter_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0367ter_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0367ter_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0367cab_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0367cab_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0367cab_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0367ddb_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0367ddb_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0367ddb_attach:\09\09\09\09\09"
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
%struct.st_register = type { i16, i8 }
%struct.stv0367_state = type { %struct.dvb_frontend, ptr, ptr, i8, ptr, ptr, i8, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0367cab_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.stv0367_config = type { i8, i32, i32, i32, i32, i32 }
%struct.stv0367ter_state = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@stvdebug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @stvdebug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_i2c_debug = internal constant [10 x i8] c"i2c_debug\00", align 1
@i2cdebug = internal global i32 0, align 4
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @i2cdebug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype250 = internal constant [23 x i8] c"parmtype=i2c_debug:int\00", section ".modinfo", align 1
@stv0367ter_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0367 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 15625, i32 0, i32 0, i32 0, i32 0, i32 -1073484113 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @stv0367_release, ptr null, ptr @stv0367ter_init, ptr @stv0367ter_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367ter_set_frontend, ptr @stv0367_get_tune_settings, ptr @stv0367ter_get_frontend, ptr @stv0367ter_read_status, ptr @stv0367ter_read_ber, ptr null, ptr @stv0367ter_read_snr, ptr @stv0367ter_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367ter_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str = private unnamed_addr constant [22 x i8] c"\017%s: chip_id = 0x%x\0A\00", align 1
@__func__.stv0367ter_attach = private unnamed_addr constant [18 x i8] c"stv0367ter_attach\00", align 1
@__kstrtab_stv0367ter_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0367ter_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0367ter_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0367ter_attach to i32), ptr @__kstrtab_stv0367ter_attach, ptr @__kstrtabns_stv0367ter_attach }, section "___ksymtab+stv0367ter_attach", align 4
@stv0367cab_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0367 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 870000, i32 11700000, i32 0, i32 65024 }, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr null, ptr @stv0367_release, ptr null, ptr @stv0367cab_init, ptr @stv0367cab_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367cab_set_frontend, ptr @stv0367_get_tune_settings, ptr @stv0367cab_get_frontend, ptr @stv0367cab_read_status, ptr null, ptr @stv0367cab_read_strength, ptr @stv0367cab_read_snr, ptr @stv0367cab_read_ucblcks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367cab_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__func__.stv0367cab_attach = private unnamed_addr constant [18 x i8] c"stv0367cab_attach\00", align 1
@__kstrtab_stv0367cab_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0367cab_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0367cab_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0367cab_attach to i32), ptr @__kstrtab_stv0367cab_attach, ptr @__kstrtabns_stv0367cab_attach }, section "___ksymtab+stv0367cab_attach", align 4
@stv0367ddb_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0367 DDB DVB-C/T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 865000000, i32 166667, i32 0, i32 870000, i32 11700000, i32 0, i32 -1073545553 }, [8 x i8] c"\01\03\00\00\00\00\00\00", ptr null, ptr @stv0367_release, ptr null, ptr null, ptr @stv0367ddb_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367ddb_set_frontend, ptr @stv0367_get_tune_settings, ptr @stv0367ddb_get_frontend, ptr @stv0367ddb_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0367cab_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__func__.stv0367ddb_attach = private unnamed_addr constant [18 x i8] c"stv0367ddb_attach\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Found %s with ChipID %02X at adr %02X\0A\00", align 1
@__kstrtab_stv0367ddb_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0367ddb_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0367ddb_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0367ddb_attach to i32), ptr @__kstrtab_stv0367ddb_attach, ptr @__kstrtabns_stv0367ddb_attach }, section "___ksymtab+stv0367ddb_attach", align 4
@__UNIQUE_ID_debug251 = internal constant [21 x i8] c"parm=debug:Set debug\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug252 = internal constant [29 x i8] c"parm=i2c_debug:Set i2c debug\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [25 x i8] c"author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [50 x i8] c"description=ST STV0367 DVB-C/T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\017%s:\0A\00", align 1
@__func__.stv0367ter_init = private unnamed_addr constant [16 x i8] c"stv0367ter_init\00", align 1
@stv0367_deftabs = internal unnamed_addr constant [2 x [3 x ptr]] [[3 x ptr] [ptr @def0367ter, ptr @def0367cab, ptr null], [3 x ptr] [ptr @def0367dd_ofdm, ptr @def0367dd_qam, ptr @def0367dd_base]], align 4
@def0367ter = internal constant [446 x %struct.st_register] [%struct.st_register { i16 -4096, i8 96 }, %struct.st_register { i16 -4095, i8 -96 }, %struct.st_register { i16 -4094, i8 0 }, %struct.st_register { i16 -4093, i8 64 }, %struct.st_register { i16 -4092, i8 0 }, %struct.st_register { i16 -4091, i8 0 }, %struct.st_register { i16 -4090, i8 0 }, %struct.st_register { i16 -4089, i8 98 }, %struct.st_register { i16 -4088, i8 0 }, %struct.st_register { i16 -4087, i8 -8 }, %struct.st_register { i16 -4086, i8 10 }, %struct.st_register { i16 -4085, i8 0 }, %struct.st_register { i16 -4084, i8 0 }, %struct.st_register { i16 -4083, i8 0 }, %struct.st_register { i16 -4082, i8 85 }, %struct.st_register { i16 -4081, i8 0 }, %struct.st_register { i16 -4080, i8 -1 }, %struct.st_register { i16 -4079, i8 0 }, %struct.st_register { i16 -4078, i8 -1 }, %struct.st_register { i16 -4077, i8 0 }, %struct.st_register { i16 -4076, i8 -68 }, %struct.st_register { i16 -4075, i8 0 }, %struct.st_register { i16 -4074, i8 0 }, %struct.st_register { i16 -4073, i8 -123 }, %struct.st_register { i16 -4072, i8 31 }, %struct.st_register { i16 -4071, i8 0 }, %struct.st_register { i16 -4070, i8 0 }, %struct.st_register { i16 -4069, i8 111 }, %struct.st_register { i16 -4068, i8 5 }, %struct.st_register { i16 -4067, i8 0 }, %struct.st_register { i16 -4066, i8 0 }, %struct.st_register { i16 -4065, i8 0 }, %struct.st_register { i16 -4064, i8 -86 }, %struct.st_register { i16 -4063, i8 -42 }, %struct.st_register { i16 -4062, i8 85 }, %struct.st_register { i16 -4061, i8 85 }, %struct.st_register { i16 -4060, i8 44 }, %struct.st_register { i16 -4059, i8 0 }, %struct.st_register { i16 -4058, i8 0 }, %struct.st_register { i16 -4057, i8 28 }, %struct.st_register { i16 -4056, i8 0 }, %struct.st_register { i16 -4055, i8 5 }, %struct.st_register { i16 -4054, i8 -128 }, %struct.st_register { i16 -4053, i8 28 }, %struct.st_register { i16 -4052, i8 0 }, %struct.st_register { i16 -4051, i8 0 }, %struct.st_register { i16 -4050, i8 0 }, %struct.st_register { i16 -4049, i8 0 }, %struct.st_register { i16 -4048, i8 0 }, %struct.st_register { i16 -4047, i8 2 }, %struct.st_register { i16 -4046, i8 1 }, %struct.st_register { i16 -4045, i8 -11 }, %struct.st_register { i16 -4044, i8 0 }, %struct.st_register { i16 -4043, i8 35 }, %struct.st_register { i16 -4042, i8 -1 }, %struct.st_register { i16 -4041, i8 -7 }, %struct.st_register { i16 -4040, i8 0 }, %struct.st_register { i16 -4039, i8 1 }, %struct.st_register { i16 -4038, i8 -127 }, %struct.st_register { i16 -4037, i8 0 }, %struct.st_register { i16 -4036, i8 0 }, %struct.st_register { i16 -4035, i8 0 }, %struct.st_register { i16 -4034, i8 -125 }, %struct.st_register { i16 -4033, i8 0 }, %struct.st_register { i16 -4006, i8 24 }, %struct.st_register { i16 -4005, i8 -120 }, %struct.st_register { i16 -4004, i8 -76 }, %struct.st_register { i16 -4003, i8 -106 }, %struct.st_register { i16 -4002, i8 14 }, %struct.st_register { i16 -4001, i8 17 }, %struct.st_register { i16 -4000, i8 -115 }, %struct.st_register { i16 -3999, i8 0 }, %struct.st_register { i16 -3998, i8 0 }, %struct.st_register { i16 -3997, i8 9 }, %struct.st_register { i16 -3996, i8 24 }, %struct.st_register { i16 -3995, i8 20 }, %struct.st_register { i16 -3994, i8 -100 }, %struct.st_register { i16 -3993, i8 0 }, %struct.st_register { i16 -3992, i8 0 }, %struct.st_register { i16 -3991, i8 54 }, %struct.st_register { i16 -3990, i8 66 }, %struct.st_register { i16 -3989, i8 0 }, %struct.st_register { i16 -3988, i8 101 }, %struct.st_register { i16 -3987, i8 0 }, %struct.st_register { i16 -3986, i8 0 }, %struct.st_register { i16 -3985, i8 -32 }, %struct.st_register { i16 -3984, i8 -2 }, %struct.st_register { i16 -3983, i8 11 }, %struct.st_register { i16 -3982, i8 65 }, %struct.st_register { i16 -3981, i8 62 }, %struct.st_register { i16 -3980, i8 57 }, %struct.st_register { i16 -3979, i8 11 }, %struct.st_register { i16 -3978, i8 1 }, %struct.st_register { i16 -3977, i8 64 }, %struct.st_register { i16 -3976, i8 -12 }, %struct.st_register { i16 -3975, i8 -16 }, %struct.st_register { i16 -3974, i8 35 }, %struct.st_register { i16 -3973, i8 0 }, %struct.st_register { i16 -3972, i8 3 }, %struct.st_register { i16 -3971, i8 -115 }, %struct.st_register { i16 -3970, i8 -96 }, %struct.st_register { i16 -3969, i8 0 }, %struct.st_register { i16 -3968, i8 35 }, %struct.st_register { i16 -3967, i8 -10 }, %struct.st_register { i16 -3966, i8 0 }, %struct.st_register { i16 -3965, i8 63 }, %struct.st_register { i16 -3964, i8 3 }, %struct.st_register { i16 -3963, i8 8 }, %struct.st_register { i16 -3962, i8 0 }, %struct.st_register { i16 -3961, i8 0 }, %struct.st_register { i16 -3960, i8 22 }, %struct.st_register { i16 -3959, i8 83 }, %struct.st_register { i16 -3958, i8 29 }, %struct.st_register { i16 -3957, i8 0 }, %struct.st_register { i16 -3956, i8 0 }, %struct.st_register { i16 -3955, i8 0 }, %struct.st_register { i16 -3954, i8 68 }, %struct.st_register { i16 -3953, i8 -77 }, %struct.st_register { i16 -3952, i8 18 }, %struct.st_register { i16 -3951, i8 4 }, %struct.st_register { i16 -3950, i8 16 }, %struct.st_register { i16 -3949, i8 0 }, %struct.st_register { i16 -3948, i8 0 }, %struct.st_register { i16 -3947, i8 0 }, %struct.st_register { i16 -3946, i8 0 }, %struct.st_register { i16 -3945, i8 0 }, %struct.st_register { i16 -3944, i8 112 }, %struct.st_register { i16 -3943, i8 -8 }, %struct.st_register { i16 -3942, i8 20 }, %struct.st_register { i16 -3941, i8 -82 }, %struct.st_register { i16 -3940, i8 86 }, %struct.st_register { i16 -3939, i8 29 }, %struct.st_register { i16 -3938, i8 -4 }, %struct.st_register { i16 -3937, i8 36 }, %struct.st_register { i16 -3936, i8 -83 }, %struct.st_register { i16 -3935, i8 -99 }, %struct.st_register { i16 -3934, i8 -1 }, %struct.st_register { i16 -4018, i8 1 }, %struct.st_register { i16 -3932, i8 -16 }, %struct.st_register { i16 -3931, i8 0 }, %struct.st_register { i16 -3930, i8 0 }, %struct.st_register { i16 -3929, i8 48 }, %struct.st_register { i16 -3928, i8 2 }, %struct.st_register { i16 -3927, i8 1 }, %struct.st_register { i16 -3926, i8 0 }, %struct.st_register { i16 -3925, i8 0 }, %struct.st_register { i16 -3924, i8 0 }, %struct.st_register { i16 -3923, i8 2 }, %struct.st_register { i16 -3922, i8 2 }, %struct.st_register { i16 -3921, i8 1 }, %struct.st_register { i16 -3920, i8 0 }, %struct.st_register { i16 -3919, i8 52 }, %struct.st_register { i16 -3918, i8 9 }, %struct.st_register { i16 -3917, i8 10 }, %struct.st_register { i16 -3916, i8 0 }, %struct.st_register { i16 -3915, i8 -95 }, %struct.st_register { i16 -3914, i8 -102 }, %struct.st_register { i16 -3913, i8 44 }, %struct.st_register { i16 -3912, i8 0 }, %struct.st_register { i16 -3911, i8 0 }, %struct.st_register { i16 -3910, i8 0 }, %struct.st_register { i16 -3909, i8 0 }, %struct.st_register { i16 -3908, i8 0 }, %struct.st_register { i16 -3907, i8 0 }, %struct.st_register { i16 -3906, i8 0 }, %struct.st_register { i16 -3905, i8 0 }, %struct.st_register { i16 -3904, i8 0 }, %struct.st_register { i16 -3903, i8 13 }, %struct.st_register { i16 -3902, i8 0 }, %struct.st_register { i16 -3898, i8 0 }, %struct.st_register { i16 -3893, i8 1 }, %struct.st_register { i16 -3892, i8 0 }, %struct.st_register { i16 -3891, i8 0 }, %struct.st_register { i16 -3890, i8 10 }, %struct.st_register { i16 -3889, i8 21 }, %struct.st_register { i16 -3888, i8 0 }, %struct.st_register { i16 -3887, i8 0 }, %struct.st_register { i16 -3886, i8 40 }, %struct.st_register { i16 -3885, i8 0 }, %struct.st_register { i16 -3884, i8 -1 }, %struct.st_register { i16 -3883, i8 -125 }, %struct.st_register { i16 -3881, i8 25 }, %struct.st_register { i16 -3880, i8 1 }, %struct.st_register { i16 -3879, i8 6 }, %struct.st_register { i16 -3878, i8 24 }, %struct.st_register { i16 -3877, i8 12 }, %struct.st_register { i16 -3876, i8 0 }, %struct.st_register { i16 -3875, i8 0 }, %struct.st_register { i16 -3874, i8 0 }, %struct.st_register { i16 -3873, i8 -32 }, %struct.st_register { i16 -3840, i8 0 }, %struct.st_register { i16 -3839, i8 0 }, %struct.st_register { i16 -3838, i8 0 }, %struct.st_register { i16 -3837, i8 0 }, %struct.st_register { i16 -3836, i8 0 }, %struct.st_register { i16 -3835, i8 0 }, %struct.st_register { i16 -3834, i8 0 }, %struct.st_register { i16 -3833, i8 0 }, %struct.st_register { i16 -3832, i8 0 }, %struct.st_register { i16 -3831, i8 0 }, %struct.st_register { i16 -3830, i8 0 }, %struct.st_register { i16 -3829, i8 0 }, %struct.st_register { i16 -3828, i8 0 }, %struct.st_register { i16 -3827, i8 0 }, %struct.st_register { i16 -3826, i8 0 }, %struct.st_register { i16 -3825, i8 0 }, %struct.st_register { i16 -3824, i8 0 }, %struct.st_register { i16 -3823, i8 0 }, %struct.st_register { i16 -3822, i8 0 }, %struct.st_register { i16 -3821, i8 0 }, %struct.st_register { i16 -3820, i8 44 }, %struct.st_register { i16 -3819, i8 15 }, %struct.st_register { i16 -3818, i8 32 }, %struct.st_register { i16 -3817, i8 -15 }, %struct.st_register { i16 -3816, i8 0 }, %struct.st_register { i16 -3815, i8 0 }, %struct.st_register { i16 -3814, i8 0 }, %struct.st_register { i16 -3813, i8 0 }, %struct.st_register { i16 -3812, i8 0 }, %struct.st_register { i16 -3811, i8 0 }, %struct.st_register { i16 -3810, i8 3 }, %struct.st_register { i16 -3809, i8 0 }, %struct.st_register { i16 -3808, i8 0 }, %struct.st_register { i16 -3807, i8 0 }, %struct.st_register { i16 -3806, i8 0 }, %struct.st_register { i16 -3805, i8 0 }, %struct.st_register { i16 -3804, i8 0 }, %struct.st_register { i16 -3803, i8 0 }, %struct.st_register { i16 -3802, i8 0 }, %struct.st_register { i16 -3801, i8 0 }, %struct.st_register { i16 -3800, i8 0 }, %struct.st_register { i16 -3799, i8 0 }, %struct.st_register { i16 -3798, i8 0 }, %struct.st_register { i16 -3797, i8 0 }, %struct.st_register { i16 -3796, i8 0 }, %struct.st_register { i16 -3795, i8 0 }, %struct.st_register { i16 -3794, i8 0 }, %struct.st_register { i16 -3793, i8 0 }, %struct.st_register { i16 -3584, i8 0 }, %struct.st_register { i16 -3583, i8 0 }, %struct.st_register { i16 -3582, i8 0 }, %struct.st_register { i16 -3581, i8 0 }, %struct.st_register { i16 -3580, i8 0 }, %struct.st_register { i16 -3579, i8 0 }, %struct.st_register { i16 -3578, i8 0 }, %struct.st_register { i16 -3577, i8 111 }, %struct.st_register { i16 -3576, i8 -25 }, %struct.st_register { i16 -3575, i8 -101 }, %struct.st_register { i16 -3574, i8 0 }, %struct.st_register { i16 -3573, i8 0 }, %struct.st_register { i16 -3572, i8 0 }, %struct.st_register { i16 -3568, i8 0 }, %struct.st_register { i16 -3567, i8 0 }, %struct.st_register { i16 -3566, i8 0 }, %struct.st_register { i16 -3565, i8 0 }, %struct.st_register { i16 -3564, i8 0 }, %struct.st_register { i16 -3563, i8 0 }, %struct.st_register { i16 -3562, i8 0 }, %struct.st_register { i16 -3561, i8 0 }, %struct.st_register { i16 -3560, i8 0 }, %struct.st_register { i16 -3559, i8 0 }, %struct.st_register { i16 -3558, i8 0 }, %struct.st_register { i16 -3557, i8 0 }, %struct.st_register { i16 -3556, i8 0 }, %struct.st_register { i16 -3555, i8 0 }, %struct.st_register { i16 -3554, i8 0 }, %struct.st_register { i16 -3553, i8 0 }, %struct.st_register { i16 -3552, i8 0 }, %struct.st_register { i16 -3551, i8 0 }, %struct.st_register { i16 -3550, i8 0 }, %struct.st_register { i16 -3549, i8 0 }, %struct.st_register { i16 -3548, i8 0 }, %struct.st_register { i16 -3544, i8 0 }, %struct.st_register { i16 -3543, i8 0 }, %struct.st_register { i16 -3542, i8 0 }, %struct.st_register { i16 -3541, i8 0 }, %struct.st_register { i16 -3540, i8 0 }, %struct.st_register { i16 -3539, i8 0 }, %struct.st_register { i16 -3538, i8 0 }, %struct.st_register { i16 -3537, i8 0 }, %struct.st_register { i16 -3536, i8 0 }, %struct.st_register { i16 -3535, i8 111 }, %struct.st_register { i16 -3534, i8 24 }, %struct.st_register { i16 -3533, i8 1 }, %struct.st_register { i16 -3532, i8 -1 }, %struct.st_register { i16 -3531, i8 -95 }, %struct.st_register { i16 -3530, i8 100 }, %struct.st_register { i16 -3529, i8 64 }, %struct.st_register { i16 -3528, i8 0 }, %struct.st_register { i16 -3527, i8 44 }, %struct.st_register { i16 -3526, i8 18 }, %struct.st_register { i16 -3525, i8 1 }, %struct.st_register { i16 -3524, i8 63 }, %struct.st_register { i16 -3523, i8 0 }, %struct.st_register { i16 -3522, i8 -67 }, %struct.st_register { i16 -3521, i8 -95 }, %struct.st_register { i16 -3520, i8 32 }, %struct.st_register { i16 -3519, i8 64 }, %struct.st_register { i16 -3518, i8 32 }, %struct.st_register { i16 -3517, i8 48 }, %struct.st_register { i16 -3516, i8 0 }, %struct.st_register { i16 -3515, i8 48 }, %struct.st_register { i16 -3514, i8 84 }, %struct.st_register { i16 -3513, i8 64 }, %struct.st_register { i16 -3512, i8 0 }, %struct.st_register { i16 -3511, i8 0 }, %struct.st_register { i16 -3510, i8 18 }, %struct.st_register { i16 -3509, i8 1 }, %struct.st_register { i16 -3508, i8 -67 }, %struct.st_register { i16 -3507, i8 0 }, %struct.st_register { i16 -3506, i8 0 }, %struct.st_register { i16 -3505, i8 0 }, %struct.st_register { i16 -3504, i8 0 }, %struct.st_register { i16 -3502, i8 0 }, %struct.st_register { i16 -3501, i8 0 }, %struct.st_register { i16 -3500, i8 0 }, %struct.st_register { i16 -3499, i8 0 }, %struct.st_register { i16 -3498, i8 0 }, %struct.st_register { i16 -3496, i8 1 }, %struct.st_register { i16 -3495, i8 31 }, %struct.st_register { i16 -3494, i8 0 }, %struct.st_register { i16 -3492, i8 0 }, %struct.st_register { i16 -3491, i8 31 }, %struct.st_register { i16 -3490, i8 1 }, %struct.st_register { i16 -3489, i8 0 }, %struct.st_register { i16 -3476, i8 0 }, %struct.st_register { i16 -3475, i8 0 }, %struct.st_register { i16 -3472, i8 -80 }, %struct.st_register { i16 -3471, i8 64 }, %struct.st_register { i16 -3470, i8 -64 }, %struct.st_register { i16 -3469, i8 -64 }, %struct.st_register { i16 -3468, i8 32 }, %struct.st_register { i16 -3467, i8 0 }, %struct.st_register { i16 -3466, i8 0 }, %struct.st_register { i16 -3465, i8 0 }, %struct.st_register { i16 -3464, i8 0 }, %struct.st_register { i16 -3463, i8 3 }, %struct.st_register { i16 -3462, i8 0 }, %struct.st_register { i16 -3461, i8 0 }, %struct.st_register { i16 -3460, i8 0 }, %struct.st_register { i16 -3459, i8 0 }, %struct.st_register { i16 -3458, i8 0 }, %struct.st_register { i16 -3457, i8 0 }, %struct.st_register { i16 -3456, i8 64 }, %struct.st_register { i16 -3455, i8 -127 }, %struct.st_register { i16 -3454, i8 106 }, %struct.st_register { i16 -3453, i8 15 }, %struct.st_register { i16 -3452, i8 -58 }, %struct.st_register { i16 -3451, i8 0 }, %struct.st_register { i16 -3450, i8 -4 }, %struct.st_register { i16 -3449, i8 10 }, %struct.st_register { i16 -3448, i8 -128 }, %struct.st_register { i16 -3447, i8 -112 }, %struct.st_register { i16 -3446, i8 104 }, %struct.st_register { i16 -3445, i8 1 }, %struct.st_register { i16 -3444, i8 0 }, %struct.st_register { i16 -3443, i8 0 }, %struct.st_register { i16 -3442, i8 0 }, %struct.st_register { i16 -3441, i8 0 }, %struct.st_register { i16 -3440, i8 -49 }, %struct.st_register { i16 -3439, i8 30 }, %struct.st_register { i16 -3438, i8 0 }, %struct.st_register { i16 -3437, i8 104 }, %struct.st_register { i16 -3436, i8 0 }, %struct.st_register { i16 -3435, i8 0 }, %struct.st_register { i16 -3434, i8 71 }, %struct.st_register { i16 -3433, i8 31 }, %struct.st_register { i16 -3432, i8 -107 }, %struct.st_register { i16 -3431, i8 -128 }, %struct.st_register { i16 -3430, i8 0 }, %struct.st_register { i16 -3429, i8 0 }, %struct.st_register { i16 -3428, i8 -107 }, %struct.st_register { i16 -3427, i8 0 }, %struct.st_register { i16 -3426, i8 0 }, %struct.st_register { i16 -3425, i8 0 }, %struct.st_register { i16 -3424, i8 -120 }, %struct.st_register { i16 -3423, i8 44 }, %struct.st_register { i16 -3422, i8 58 }, %struct.st_register { i16 -3421, i8 6 }, %struct.st_register { i16 -3420, i8 97 }, %struct.st_register { i16 -3419, i8 -1 }, %struct.st_register { i16 -3418, i8 -1 }, %struct.st_register { i16 -3417, i8 102 }, %struct.st_register { i16 -3416, i8 0 }, %struct.st_register { i16 -3415, i8 0 }, %struct.st_register { i16 -3414, i8 54 }, %struct.st_register { i16 -3413, i8 54 }, %struct.st_register { i16 -3412, i8 20 }, %struct.st_register { i16 -3411, i8 0 }, %struct.st_register { i16 -3410, i8 3 }, %struct.st_register { i16 -3409, i8 40 }, %struct.st_register { i16 -3408, i8 0 }, %struct.st_register { i16 -3407, i8 2 }, %struct.st_register { i16 -3406, i8 0 }, %struct.st_register { i16 -3405, i8 1 }, %struct.st_register { i16 -3404, i8 -97 }, %struct.st_register { i16 -3400, i8 -55 }, %struct.st_register { i16 -3399, i8 -103 }, %struct.st_register { i16 -3398, i8 8 }, %struct.st_register { i16 -3397, i8 -20 }, %struct.st_register { i16 -3396, i8 1 }, %struct.st_register { i16 -3395, i8 15 }, %struct.st_register { i16 -3394, i8 -11 }, %struct.st_register { i16 -3393, i8 8 }, %struct.st_register { i16 -3392, i8 64 }, %struct.st_register { i16 -3391, i8 0 }, %struct.st_register { i16 -3390, i8 48 }, %struct.st_register { i16 -3389, i8 -52 }, %struct.st_register { i16 -3388, i8 32 }, %struct.st_register { i16 -3387, i8 64 }, %struct.st_register { i16 -3386, i8 32 }, %struct.st_register { i16 -3385, i8 32 }, %struct.st_register { i16 -3384, i8 0 }, %struct.st_register { i16 -3383, i8 32 }, %struct.st_register { i16 -3382, i8 0 }, %struct.st_register { i16 -3381, i8 0 }, %struct.st_register { i16 -3380, i8 -75 }, %struct.st_register { i16 -3379, i8 -112 }, %struct.st_register { i16 -3378, i8 96 }, %struct.st_register { i16 -3377, i8 1 }, %struct.st_register { i16 -3376, i8 -64 }, %struct.st_register { i16 -3375, i8 96 }, %struct.st_register { i16 -3374, i8 0 }, %struct.st_register { i16 -3373, i8 0 }, %struct.st_register { i16 -3372, i8 71 }, %struct.st_register { i16 -3371, i8 5 }, %struct.st_register { i16 -3370, i8 64 }, %struct.st_register { i16 -3368, i8 116 }, %struct.st_register { i16 -3367, i8 -128 }, %struct.st_register { i16 -3366, i8 0 }, %struct.st_register { i16 -3365, i8 0 }, %struct.st_register { i16 -3360, i8 47 }, %struct.st_register { i16 -3359, i8 80 }, %struct.st_register { i16 -3358, i8 127 }, %struct.st_register { i16 -3357, i8 0 }, %struct.st_register { i16 -3356, i8 -12 }, %struct.st_register { i16 -3355, i8 13 }, %struct.st_register { i16 -3354, i8 -16 }, %struct.st_register { i16 -3353, i8 45 }, %struct.st_register { i16 -3072, i8 0 }, %struct.st_register { i16 -3071, i8 0 }, %struct.st_register { i16 -3070, i8 0 }, %struct.st_register { i16 -3069, i8 0 }, %struct.st_register { i16 -3068, i8 0 }, %struct.st_register { i16 -3067, i8 0 }, %struct.st_register zeroinitializer], align 2
@def0367cab = internal constant [188 x %struct.st_register] [%struct.st_register { i16 -4096, i8 96 }, %struct.st_register { i16 -4095, i8 -96 }, %struct.st_register { i16 -4094, i8 16 }, %struct.st_register { i16 -4093, i8 -128 }, %struct.st_register { i16 -4092, i8 0 }, %struct.st_register { i16 -4091, i8 0 }, %struct.st_register { i16 -4090, i8 0 }, %struct.st_register { i16 -4089, i8 0 }, %struct.st_register { i16 -4088, i8 0 }, %struct.st_register { i16 -4086, i8 0 }, %struct.st_register { i16 -4085, i8 0 }, %struct.st_register { i16 -4084, i8 0 }, %struct.st_register { i16 -4083, i8 0 }, %struct.st_register { i16 -4082, i8 85 }, %struct.st_register { i16 -4081, i8 1 }, %struct.st_register { i16 -3904, i8 0 }, %struct.st_register { i16 -3903, i8 13 }, %struct.st_register { i16 -3902, i8 0 }, %struct.st_register { i16 -3884, i8 -22 }, %struct.st_register { i16 -3883, i8 -126 }, %struct.st_register { i16 -3881, i8 11 }, %struct.st_register { i16 -3880, i8 1 }, %struct.st_register { i16 -3879, i8 8 }, %struct.st_register { i16 -3878, i8 24 }, %struct.st_register { i16 -3877, i8 12 }, %struct.st_register { i16 -3876, i8 0 }, %struct.st_register { i16 -3070, i8 0 }, %struct.st_register { i16 -3069, i8 3 }, %struct.st_register { i16 -3064, i8 43 }, %struct.st_register { i16 -3063, i8 8 }, %struct.st_register { i16 -3062, i8 0 }, %struct.st_register { i16 -3061, i8 0 }, %struct.st_register { i16 -3060, i8 4 }, %struct.st_register { i16 -3057, i8 0 }, %struct.st_register { i16 -3056, i8 115 }, %struct.st_register { i16 -3055, i8 80 }, %struct.st_register { i16 -3054, i8 0 }, %struct.st_register { i16 -3053, i8 3 }, %struct.st_register { i16 -3052, i8 90 }, %struct.st_register { i16 -3051, i8 0 }, %struct.st_register { i16 -3050, i8 -1 }, %struct.st_register { i16 -3049, i8 7 }, %struct.st_register { i16 -3048, i8 0 }, %struct.st_register { i16 -3047, i8 8 }, %struct.st_register { i16 -3046, i8 -1 }, %struct.st_register { i16 -3045, i8 7 }, %struct.st_register { i16 -3044, i8 -96 }, %struct.st_register { i16 -3043, i8 -23 }, %struct.st_register { i16 -3042, i8 3 }, %struct.st_register { i16 -3040, i8 -28 }, %struct.st_register { i16 -3039, i8 0 }, %struct.st_register { i16 -3038, i8 -1 }, %struct.st_register { i16 -3037, i8 7 }, %struct.st_register { i16 -3036, i8 1 }, %struct.st_register { i16 -3035, i8 34 }, %struct.st_register { i16 -3034, i8 -106 }, %struct.st_register { i16 -3033, i8 85 }, %struct.st_register { i16 -3032, i8 -1 }, %struct.st_register { i16 -3031, i8 12 }, %struct.st_register { i16 -3030, i8 -11 }, %struct.st_register { i16 -3029, i8 32 }, %struct.st_register { i16 -3028, i8 6 }, %struct.st_register { i16 -3027, i8 1 }, %struct.st_register { i16 -3024, i8 -2 }, %struct.st_register { i16 -3023, i8 -1 }, %struct.st_register { i16 -3022, i8 15 }, %struct.st_register { i16 -3021, i8 0 }, %struct.st_register { i16 -3020, i8 52 }, %struct.st_register { i16 -3019, i8 -82 }, %struct.st_register { i16 -3018, i8 70 }, %struct.st_register { i16 -3017, i8 119 }, %struct.st_register { i16 -3016, i8 -106 }, %struct.st_register { i16 -3015, i8 105 }, %struct.st_register { i16 -3014, i8 -57 }, %struct.st_register { i16 -3013, i8 1 }, %struct.st_register { i16 -3012, i8 4 }, %struct.st_register { i16 -3011, i8 -108 }, %struct.st_register { i16 -3008, i8 -55 }, %struct.st_register { i16 -3007, i8 45 }, %struct.st_register { i16 -3006, i8 -93 }, %struct.st_register { i16 -3005, i8 -5 }, %struct.st_register { i16 -3004, i8 -10 }, %struct.st_register { i16 -3003, i8 69 }, %struct.st_register { i16 -3002, i8 111 }, %struct.st_register { i16 -3001, i8 126 }, %struct.st_register { i16 -3000, i8 5 }, %struct.st_register { i16 -2999, i8 10 }, %struct.st_register { i16 -2998, i8 81 }, %struct.st_register { i16 -2992, i8 32 }, %struct.st_register { i16 -2988, i8 40 }, %struct.st_register { i16 -2987, i8 68 }, %struct.st_register { i16 -2986, i8 34 }, %struct.st_register { i16 -2985, i8 3 }, %struct.st_register { i16 -2984, i8 4 }, %struct.st_register { i16 -2983, i8 17 }, %struct.st_register { i16 -2982, i8 32 }, %struct.st_register { i16 -2980, i8 1 }, %struct.st_register { i16 -2976, i8 -96 }, %struct.st_register { i16 -2975, i8 8 }, %struct.st_register { i16 -2974, i8 12 }, %struct.st_register { i16 -2973, i8 0 }, %struct.st_register { i16 -2972, i8 0 }, %struct.st_register { i16 -2971, i8 35 }, %struct.st_register { i16 -2970, i8 0 }, %struct.st_register { i16 -2969, i8 0 }, %struct.st_register { i16 -2968, i8 0 }, %struct.st_register { i16 -2967, i8 50 }, %struct.st_register { i16 -2966, i8 3 }, %struct.st_register { i16 -2956, i8 17 }, %struct.st_register { i16 -2955, i8 0 }, %struct.st_register { i16 -2954, i8 0 }, %struct.st_register { i16 -2953, i8 0 }, %struct.st_register { i16 -2952, i8 -1 }, %struct.st_register { i16 -2951, i8 0 }, %struct.st_register { i16 -2950, i8 0 }, %struct.st_register { i16 -2949, i8 0 }, %struct.st_register { i16 -2948, i8 17 }, %struct.st_register { i16 -2947, i8 5 }, %struct.st_register { i16 -2946, i8 0 }, %struct.st_register { i16 -2945, i8 0 }, %struct.st_register { i16 -2944, i8 -17 }, %struct.st_register { i16 -2943, i8 0 }, %struct.st_register { i16 -2942, i8 -18 }, %struct.st_register { i16 -2941, i8 0 }, %struct.st_register { i16 -2940, i8 -59 }, %struct.st_register { i16 -2939, i8 -128 }, %struct.st_register { i16 -2938, i8 100 }, %struct.st_register { i16 -2937, i8 3 }, %struct.st_register { i16 -2936, i8 0 }, %struct.st_register { i16 -2935, i8 0 }, %struct.st_register { i16 -2934, i8 54 }, %struct.st_register { i16 -2933, i8 -86 }, %struct.st_register { i16 -2932, i8 0 }, %struct.st_register { i16 -2930, i8 99 }, %struct.st_register { i16 -2929, i8 -33 }, %struct.st_register { i16 -2928, i8 -120 }, %struct.st_register { i16 -2927, i8 65 }, %struct.st_register { i16 -2926, i8 -47 }, %struct.st_register { i16 -2925, i8 -89 }, %struct.st_register { i16 -2924, i8 6 }, %struct.st_register { i16 -2923, i8 -123 }, %struct.st_register { i16 -2922, i8 -30 }, %struct.st_register { i16 -2921, i8 32 }, %struct.st_register { i16 -2920, i8 0 }, %struct.st_register { i16 -2919, i8 0 }, %struct.st_register { i16 -2918, i8 0 }, %struct.st_register { i16 -2917, i8 0 }, %struct.st_register { i16 -2916, i8 64 }, %struct.st_register { i16 -2915, i8 -112 }, %struct.st_register { i16 -2914, i8 -89 }, %struct.st_register { i16 -2904, i8 22 }, %struct.st_register { i16 -2903, i8 11 }, %struct.st_register { i16 -2902, i8 -120 }, %struct.st_register { i16 -2901, i8 2 }, %struct.st_register { i16 -2900, i8 18 }, %struct.st_register { i16 -2898, i8 125 }, %struct.st_register { i16 -2897, i8 -48 }, %struct.st_register { i16 -2896, i8 25 }, %struct.st_register { i16 -2895, i8 11 }, %struct.st_register { i16 -2894, i8 -93 }, %struct.st_register { i16 -2893, i8 0 }, %struct.st_register { i16 -2892, i8 1 }, %struct.st_register { i16 -2891, i8 37 }, %struct.st_register { i16 -2890, i8 65 }, %struct.st_register { i16 -2889, i8 57 }, %struct.st_register { i16 -2888, i8 -62 }, %struct.st_register { i16 -2887, i8 34 }, %struct.st_register { i16 -2882, i8 40 }, %struct.st_register { i16 -2880, i8 1 }, %struct.st_register { i16 -2879, i8 -58 }, %struct.st_register { i16 -2877, i8 67 }, %struct.st_register { i16 -2876, i8 0 }, %struct.st_register { i16 -2875, i8 0 }, %struct.st_register { i16 -2874, i8 0 }, %struct.st_register { i16 -2873, i8 0 }, %struct.st_register { i16 -2872, i8 0 }, %struct.st_register { i16 -2871, i8 0 }, %struct.st_register { i16 -2870, i8 0 }, %struct.st_register { i16 -2869, i8 0 }, %struct.st_register { i16 -2868, i8 0 }, %struct.st_register { i16 -2867, i8 0 }, %struct.st_register { i16 -2866, i8 -96 }, %struct.st_register { i16 -2865, i8 0 }, %struct.st_register { i16 -2864, i8 0 }, %struct.st_register { i16 -2863, i8 0 }, %struct.st_register { i16 -2862, i8 0 }, %struct.st_register { i16 -2861, i8 0 }, %struct.st_register zeroinitializer], align 2
@def0367dd_ofdm = internal constant [405 x %struct.st_register] [%struct.st_register { i16 -4080, i8 -1 }, %struct.st_register { i16 -4079, i8 0 }, %struct.st_register { i16 -4078, i8 -1 }, %struct.st_register { i16 -4077, i8 0 }, %struct.st_register { i16 -4076, i8 -68 }, %struct.st_register { i16 -4075, i8 0 }, %struct.st_register { i16 -4073, i8 -123 }, %struct.st_register { i16 -4072, i8 31 }, %struct.st_register { i16 -4071, i8 0 }, %struct.st_register { i16 -4070, i8 0 }, %struct.st_register { i16 -4069, i8 111 }, %struct.st_register { i16 -4068, i8 5 }, %struct.st_register { i16 -4067, i8 0 }, %struct.st_register { i16 -4066, i8 0 }, %struct.st_register { i16 -4065, i8 0 }, %struct.st_register { i16 -4064, i8 43 }, %struct.st_register { i16 -4063, i8 4 }, %struct.st_register { i16 -4062, i8 85 }, %struct.st_register { i16 -4061, i8 85 }, %struct.st_register { i16 -4060, i8 44 }, %struct.st_register { i16 -4059, i8 0 }, %struct.st_register { i16 -4058, i8 0 }, %struct.st_register { i16 -4057, i8 28 }, %struct.st_register { i16 -4056, i8 0 }, %struct.st_register { i16 -4055, i8 5 }, %struct.st_register { i16 -4054, i8 -128 }, %struct.st_register { i16 -4053, i8 28 }, %struct.st_register { i16 -4052, i8 0 }, %struct.st_register { i16 -4051, i8 0 }, %struct.st_register { i16 -4050, i8 0 }, %struct.st_register { i16 -4049, i8 0 }, %struct.st_register { i16 -4048, i8 0 }, %struct.st_register { i16 -4047, i8 2 }, %struct.st_register { i16 -4046, i8 1 }, %struct.st_register { i16 -4045, i8 -11 }, %struct.st_register { i16 -4044, i8 0 }, %struct.st_register { i16 -4043, i8 35 }, %struct.st_register { i16 -4042, i8 -1 }, %struct.st_register { i16 -4041, i8 -7 }, %struct.st_register { i16 -4040, i8 0 }, %struct.st_register { i16 -4039, i8 1 }, %struct.st_register { i16 -4038, i8 -127 }, %struct.st_register { i16 -4037, i8 0 }, %struct.st_register { i16 -4036, i8 0 }, %struct.st_register { i16 -4035, i8 0 }, %struct.st_register { i16 -4034, i8 -125 }, %struct.st_register { i16 -4033, i8 0 }, %struct.st_register { i16 -4006, i8 24 }, %struct.st_register { i16 -4005, i8 -120 }, %struct.st_register { i16 -4004, i8 -76 }, %struct.st_register { i16 -4003, i8 -106 }, %struct.st_register { i16 -4002, i8 14 }, %struct.st_register { i16 -4001, i8 17 }, %struct.st_register { i16 -4000, i8 -115 }, %struct.st_register { i16 -3999, i8 0 }, %struct.st_register { i16 -3998, i8 0 }, %struct.st_register { i16 -3997, i8 9 }, %struct.st_register { i16 -3996, i8 24 }, %struct.st_register { i16 -3995, i8 20 }, %struct.st_register { i16 -3994, i8 -100 }, %struct.st_register { i16 -3993, i8 0 }, %struct.st_register { i16 -3992, i8 0 }, %struct.st_register { i16 -3991, i8 54 }, %struct.st_register { i16 -3990, i8 66 }, %struct.st_register { i16 -3989, i8 0 }, %struct.st_register { i16 -3988, i8 101 }, %struct.st_register { i16 -3987, i8 0 }, %struct.st_register { i16 -3986, i8 0 }, %struct.st_register { i16 -3985, i8 -32 }, %struct.st_register { i16 -3984, i8 -2 }, %struct.st_register { i16 -3983, i8 11 }, %struct.st_register { i16 -3982, i8 65 }, %struct.st_register { i16 -3981, i8 62 }, %struct.st_register { i16 -3980, i8 57 }, %struct.st_register { i16 -3979, i8 11 }, %struct.st_register { i16 -3978, i8 1 }, %struct.st_register { i16 -3977, i8 64 }, %struct.st_register { i16 -3976, i8 -12 }, %struct.st_register { i16 -3975, i8 -16 }, %struct.st_register { i16 -3974, i8 35 }, %struct.st_register { i16 -3973, i8 0 }, %struct.st_register { i16 -3972, i8 3 }, %struct.st_register { i16 -3971, i8 -115 }, %struct.st_register { i16 -3970, i8 -96 }, %struct.st_register { i16 -3969, i8 0 }, %struct.st_register { i16 -3968, i8 0 }, %struct.st_register { i16 -3967, i8 -10 }, %struct.st_register { i16 -3966, i8 0 }, %struct.st_register { i16 -3965, i8 63 }, %struct.st_register { i16 -3964, i8 3 }, %struct.st_register { i16 -3963, i8 8 }, %struct.st_register { i16 -3962, i8 0 }, %struct.st_register { i16 -3961, i8 0 }, %struct.st_register { i16 -3960, i8 22 }, %struct.st_register { i16 -3959, i8 83 }, %struct.st_register { i16 -3958, i8 29 }, %struct.st_register { i16 -3957, i8 0 }, %struct.st_register { i16 -3956, i8 0 }, %struct.st_register { i16 -3955, i8 0 }, %struct.st_register { i16 -3954, i8 68 }, %struct.st_register { i16 -3953, i8 -77 }, %struct.st_register { i16 -3952, i8 18 }, %struct.st_register { i16 -3951, i8 4 }, %struct.st_register { i16 -3950, i8 16 }, %struct.st_register { i16 -3949, i8 0 }, %struct.st_register { i16 -3948, i8 0 }, %struct.st_register { i16 -3947, i8 0 }, %struct.st_register { i16 -3946, i8 0 }, %struct.st_register { i16 -3945, i8 0 }, %struct.st_register { i16 -3944, i8 112 }, %struct.st_register { i16 -3943, i8 -8 }, %struct.st_register { i16 -3942, i8 -84 }, %struct.st_register { i16 -3941, i8 30 }, %struct.st_register { i16 -3940, i8 88 }, %struct.st_register { i16 -3939, i8 29 }, %struct.st_register { i16 -3938, i8 -4 }, %struct.st_register { i16 -3937, i8 36 }, %struct.st_register { i16 -3936, i8 -83 }, %struct.st_register { i16 -3935, i8 -99 }, %struct.st_register { i16 -3934, i8 -1 }, %struct.st_register { i16 -4018, i8 1 }, %struct.st_register { i16 -3932, i8 -16 }, %struct.st_register { i16 -3931, i8 0 }, %struct.st_register { i16 -3930, i8 0 }, %struct.st_register { i16 -3929, i8 48 }, %struct.st_register { i16 -3928, i8 2 }, %struct.st_register { i16 -3927, i8 1 }, %struct.st_register { i16 -3926, i8 0 }, %struct.st_register { i16 -3925, i8 0 }, %struct.st_register { i16 -3924, i8 0 }, %struct.st_register { i16 -3923, i8 2 }, %struct.st_register { i16 -3922, i8 2 }, %struct.st_register { i16 -3921, i8 1 }, %struct.st_register { i16 -3920, i8 0 }, %struct.st_register { i16 -3919, i8 52 }, %struct.st_register { i16 -3918, i8 9 }, %struct.st_register { i16 -3917, i8 10 }, %struct.st_register { i16 -3916, i8 0 }, %struct.st_register { i16 -3915, i8 -95 }, %struct.st_register { i16 -3914, i8 -102 }, %struct.st_register { i16 -3913, i8 44 }, %struct.st_register { i16 -3912, i8 0 }, %struct.st_register { i16 -3911, i8 0 }, %struct.st_register { i16 -3910, i8 0 }, %struct.st_register { i16 -3909, i8 0 }, %struct.st_register { i16 -3908, i8 0 }, %struct.st_register { i16 -3907, i8 0 }, %struct.st_register { i16 -3906, i8 0 }, %struct.st_register { i16 -3905, i8 0 }, %struct.st_register { i16 -3893, i8 1 }, %struct.st_register { i16 -3892, i8 0 }, %struct.st_register { i16 -3891, i8 0 }, %struct.st_register { i16 -3890, i8 10 }, %struct.st_register { i16 -3889, i8 21 }, %struct.st_register { i16 -3888, i8 0 }, %struct.st_register { i16 -3887, i8 0 }, %struct.st_register { i16 -3886, i8 40 }, %struct.st_register { i16 -3885, i8 0 }, %struct.st_register { i16 -3840, i8 0 }, %struct.st_register { i16 -3839, i8 0 }, %struct.st_register { i16 -3838, i8 0 }, %struct.st_register { i16 -3837, i8 0 }, %struct.st_register { i16 -3836, i8 0 }, %struct.st_register { i16 -3835, i8 0 }, %struct.st_register { i16 -3834, i8 0 }, %struct.st_register { i16 -3833, i8 0 }, %struct.st_register { i16 -3832, i8 0 }, %struct.st_register { i16 -3831, i8 0 }, %struct.st_register { i16 -3830, i8 0 }, %struct.st_register { i16 -3829, i8 0 }, %struct.st_register { i16 -3828, i8 0 }, %struct.st_register { i16 -3827, i8 0 }, %struct.st_register { i16 -3826, i8 0 }, %struct.st_register { i16 -3825, i8 0 }, %struct.st_register { i16 -3824, i8 0 }, %struct.st_register { i16 -3823, i8 0 }, %struct.st_register { i16 -3822, i8 0 }, %struct.st_register { i16 -3821, i8 0 }, %struct.st_register { i16 -3820, i8 44 }, %struct.st_register { i16 -3819, i8 15 }, %struct.st_register { i16 -3818, i8 32 }, %struct.st_register { i16 -3817, i8 -15 }, %struct.st_register { i16 -3816, i8 0 }, %struct.st_register { i16 -3815, i8 0 }, %struct.st_register { i16 -3814, i8 0 }, %struct.st_register { i16 -3813, i8 0 }, %struct.st_register { i16 -3812, i8 0 }, %struct.st_register { i16 -3811, i8 0 }, %struct.st_register { i16 -3810, i8 3 }, %struct.st_register { i16 -3809, i8 0 }, %struct.st_register { i16 -3808, i8 0 }, %struct.st_register { i16 -3807, i8 0 }, %struct.st_register { i16 -3806, i8 0 }, %struct.st_register { i16 -3805, i8 0 }, %struct.st_register { i16 -3804, i8 0 }, %struct.st_register { i16 -3803, i8 0 }, %struct.st_register { i16 -3802, i8 0 }, %struct.st_register { i16 -3801, i8 0 }, %struct.st_register { i16 -3800, i8 0 }, %struct.st_register { i16 -3799, i8 0 }, %struct.st_register { i16 -3798, i8 0 }, %struct.st_register { i16 -3797, i8 0 }, %struct.st_register { i16 -3796, i8 0 }, %struct.st_register { i16 -3795, i8 0 }, %struct.st_register { i16 -3794, i8 0 }, %struct.st_register { i16 -3793, i8 0 }, %struct.st_register { i16 -3584, i8 0 }, %struct.st_register { i16 -3583, i8 0 }, %struct.st_register { i16 -3582, i8 0 }, %struct.st_register { i16 -3581, i8 0 }, %struct.st_register { i16 -3580, i8 0 }, %struct.st_register { i16 -3579, i8 0 }, %struct.st_register { i16 -3578, i8 0 }, %struct.st_register { i16 -3577, i8 111 }, %struct.st_register { i16 -3576, i8 -25 }, %struct.st_register { i16 -3575, i8 -101 }, %struct.st_register { i16 -3574, i8 0 }, %struct.st_register { i16 -3573, i8 0 }, %struct.st_register { i16 -3572, i8 0 }, %struct.st_register { i16 -3568, i8 0 }, %struct.st_register { i16 -3567, i8 0 }, %struct.st_register { i16 -3566, i8 0 }, %struct.st_register { i16 -3565, i8 0 }, %struct.st_register { i16 -3564, i8 0 }, %struct.st_register { i16 -3563, i8 0 }, %struct.st_register { i16 -3562, i8 0 }, %struct.st_register { i16 -3561, i8 0 }, %struct.st_register { i16 -3560, i8 0 }, %struct.st_register { i16 -3559, i8 0 }, %struct.st_register { i16 -3558, i8 0 }, %struct.st_register { i16 -3557, i8 0 }, %struct.st_register { i16 -3556, i8 0 }, %struct.st_register { i16 -3555, i8 0 }, %struct.st_register { i16 -3554, i8 0 }, %struct.st_register { i16 -3553, i8 0 }, %struct.st_register { i16 -3552, i8 0 }, %struct.st_register { i16 -3551, i8 0 }, %struct.st_register { i16 -3550, i8 0 }, %struct.st_register { i16 -3549, i8 0 }, %struct.st_register { i16 -3548, i8 0 }, %struct.st_register { i16 -3544, i8 0 }, %struct.st_register { i16 -3543, i8 0 }, %struct.st_register { i16 -3542, i8 0 }, %struct.st_register { i16 -3541, i8 0 }, %struct.st_register { i16 -3540, i8 0 }, %struct.st_register { i16 -3539, i8 0 }, %struct.st_register { i16 -3538, i8 0 }, %struct.st_register { i16 -3537, i8 0 }, %struct.st_register { i16 -3533, i8 1 }, %struct.st_register { i16 -3532, i8 -1 }, %struct.st_register { i16 -3531, i8 -95 }, %struct.st_register { i16 -3530, i8 100 }, %struct.st_register { i16 -3529, i8 64 }, %struct.st_register { i16 -3528, i8 0 }, %struct.st_register { i16 -3527, i8 44 }, %struct.st_register { i16 -3526, i8 18 }, %struct.st_register { i16 -3525, i8 1 }, %struct.st_register { i16 -3524, i8 63 }, %struct.st_register { i16 -3523, i8 0 }, %struct.st_register { i16 -3522, i8 -67 }, %struct.st_register { i16 -3521, i8 -95 }, %struct.st_register { i16 -3520, i8 32 }, %struct.st_register { i16 -3519, i8 64 }, %struct.st_register { i16 -3518, i8 32 }, %struct.st_register { i16 -3517, i8 48 }, %struct.st_register { i16 -3516, i8 0 }, %struct.st_register { i16 -3515, i8 48 }, %struct.st_register { i16 -3514, i8 84 }, %struct.st_register { i16 -3513, i8 64 }, %struct.st_register { i16 -3512, i8 0 }, %struct.st_register { i16 -3511, i8 0 }, %struct.st_register { i16 -3510, i8 18 }, %struct.st_register { i16 -3509, i8 1 }, %struct.st_register { i16 -3508, i8 -67 }, %struct.st_register { i16 -3507, i8 0 }, %struct.st_register { i16 -3506, i8 0 }, %struct.st_register { i16 -3505, i8 0 }, %struct.st_register { i16 -3504, i8 0 }, %struct.st_register { i16 -3502, i8 0 }, %struct.st_register { i16 -3501, i8 0 }, %struct.st_register { i16 -3500, i8 0 }, %struct.st_register { i16 -3499, i8 0 }, %struct.st_register { i16 -3498, i8 0 }, %struct.st_register { i16 -3496, i8 1 }, %struct.st_register { i16 -3495, i8 31 }, %struct.st_register { i16 -3494, i8 0 }, %struct.st_register { i16 -3492, i8 0 }, %struct.st_register { i16 -3491, i8 31 }, %struct.st_register { i16 -3490, i8 1 }, %struct.st_register { i16 -3489, i8 0 }, %struct.st_register { i16 -3476, i8 0 }, %struct.st_register { i16 -3475, i8 0 }, %struct.st_register { i16 -3472, i8 -80 }, %struct.st_register { i16 -3471, i8 64 }, %struct.st_register { i16 -3470, i8 -128 }, %struct.st_register { i16 -3469, i8 0 }, %struct.st_register { i16 -3468, i8 32 }, %struct.st_register { i16 -3467, i8 0 }, %struct.st_register { i16 -3466, i8 0 }, %struct.st_register { i16 -3465, i8 0 }, %struct.st_register { i16 -3464, i8 0 }, %struct.st_register { i16 -3463, i8 3 }, %struct.st_register { i16 -3462, i8 0 }, %struct.st_register { i16 -3461, i8 0 }, %struct.st_register { i16 -3460, i8 0 }, %struct.st_register { i16 -3459, i8 0 }, %struct.st_register { i16 -3458, i8 0 }, %struct.st_register { i16 -3457, i8 0 }, %struct.st_register { i16 -3456, i8 111 }, %struct.st_register { i16 -3455, i8 -127 }, %struct.st_register { i16 -3454, i8 106 }, %struct.st_register { i16 -3453, i8 15 }, %struct.st_register { i16 -3452, i8 -58 }, %struct.st_register { i16 -3451, i8 0 }, %struct.st_register { i16 -3450, i8 -4 }, %struct.st_register { i16 -3449, i8 10 }, %struct.st_register { i16 -3448, i8 -128 }, %struct.st_register { i16 -3447, i8 -112 }, %struct.st_register { i16 -3446, i8 104 }, %struct.st_register { i16 -3445, i8 1 }, %struct.st_register { i16 -3444, i8 0 }, %struct.st_register { i16 -3443, i8 0 }, %struct.st_register { i16 -3442, i8 0 }, %struct.st_register { i16 -3441, i8 0 }, %struct.st_register { i16 -3440, i8 -49 }, %struct.st_register { i16 -3439, i8 30 }, %struct.st_register { i16 -3438, i8 0 }, %struct.st_register { i16 -3437, i8 104 }, %struct.st_register { i16 -3436, i8 0 }, %struct.st_register { i16 -3435, i8 0 }, %struct.st_register { i16 -3434, i8 71 }, %struct.st_register { i16 -3433, i8 31 }, %struct.st_register { i16 -3432, i8 -107 }, %struct.st_register { i16 -3431, i8 -128 }, %struct.st_register { i16 -3430, i8 0 }, %struct.st_register { i16 -3429, i8 0 }, %struct.st_register { i16 -3428, i8 -107 }, %struct.st_register { i16 -3427, i8 0 }, %struct.st_register { i16 -3426, i8 0 }, %struct.st_register { i16 -3425, i8 0 }, %struct.st_register { i16 -3424, i8 -120 }, %struct.st_register { i16 -3423, i8 44 }, %struct.st_register { i16 -3422, i8 58 }, %struct.st_register { i16 -3421, i8 6 }, %struct.st_register { i16 -3420, i8 97 }, %struct.st_register { i16 -3419, i8 -1 }, %struct.st_register { i16 -3418, i8 -1 }, %struct.st_register { i16 -3417, i8 102 }, %struct.st_register { i16 -3416, i8 0 }, %struct.st_register { i16 -3415, i8 0 }, %struct.st_register { i16 -3414, i8 54 }, %struct.st_register { i16 -3413, i8 54 }, %struct.st_register { i16 -3412, i8 20 }, %struct.st_register { i16 -3411, i8 0 }, %struct.st_register { i16 -3410, i8 3 }, %struct.st_register { i16 -3409, i8 40 }, %struct.st_register { i16 -3408, i8 0 }, %struct.st_register { i16 -3407, i8 2 }, %struct.st_register { i16 -3406, i8 0 }, %struct.st_register { i16 -3405, i8 1 }, %struct.st_register { i16 -3404, i8 -97 }, %struct.st_register { i16 -3400, i8 -55 }, %struct.st_register { i16 -3399, i8 -103 }, %struct.st_register { i16 -3398, i8 8 }, %struct.st_register { i16 -3397, i8 -20 }, %struct.st_register { i16 -3396, i8 1 }, %struct.st_register { i16 -3395, i8 15 }, %struct.st_register { i16 -3394, i8 -11 }, %struct.st_register { i16 -3393, i8 8 }, %struct.st_register { i16 -3392, i8 64 }, %struct.st_register { i16 -3391, i8 0 }, %struct.st_register { i16 -3390, i8 48 }, %struct.st_register { i16 -3389, i8 -52 }, %struct.st_register { i16 -3388, i8 32 }, %struct.st_register { i16 -3387, i8 64 }, %struct.st_register { i16 -3386, i8 32 }, %struct.st_register { i16 -3385, i8 32 }, %struct.st_register { i16 -3384, i8 0 }, %struct.st_register { i16 -3383, i8 32 }, %struct.st_register { i16 -3382, i8 0 }, %struct.st_register { i16 -3381, i8 0 }, %struct.st_register { i16 -3380, i8 -75 }, %struct.st_register { i16 -3379, i8 -112 }, %struct.st_register { i16 -3378, i8 96 }, %struct.st_register { i16 -3377, i8 1 }, %struct.st_register { i16 -3376, i8 -64 }, %struct.st_register { i16 -3375, i8 96 }, %struct.st_register { i16 -3374, i8 0 }, %struct.st_register { i16 -3373, i8 0 }, %struct.st_register { i16 -3372, i8 71 }, %struct.st_register { i16 -3371, i8 5 }, %struct.st_register { i16 -3370, i8 64 }, %struct.st_register { i16 -3368, i8 116 }, %struct.st_register { i16 -3367, i8 -128 }, %struct.st_register { i16 -3366, i8 0 }, %struct.st_register { i16 -3365, i8 0 }, %struct.st_register { i16 -3360, i8 47 }, %struct.st_register { i16 -3359, i8 80 }, %struct.st_register { i16 -3358, i8 127 }, %struct.st_register { i16 -3357, i8 0 }, %struct.st_register { i16 -3356, i8 -12 }, %struct.st_register { i16 -3355, i8 13 }, %struct.st_register { i16 -3354, i8 -16 }, %struct.st_register { i16 -3353, i8 45 }, %struct.st_register zeroinitializer], align 2
@def0367dd_qam = internal constant [162 x %struct.st_register] [%struct.st_register { i16 -3070, i8 6 }, %struct.st_register { i16 -3069, i8 3 }, %struct.st_register { i16 -3064, i8 43 }, %struct.st_register { i16 -3063, i8 8 }, %struct.st_register { i16 -3062, i8 0 }, %struct.st_register { i16 -3061, i8 0 }, %struct.st_register { i16 -3060, i8 4 }, %struct.st_register { i16 -3057, i8 0 }, %struct.st_register { i16 -3056, i8 115 }, %struct.st_register { i16 -3055, i8 80 }, %struct.st_register { i16 -3054, i8 2 }, %struct.st_register { i16 -3053, i8 3 }, %struct.st_register { i16 -3052, i8 90 }, %struct.st_register { i16 -3051, i8 0 }, %struct.st_register { i16 -3050, i8 -1 }, %struct.st_register { i16 -3049, i8 7 }, %struct.st_register { i16 -3048, i8 0 }, %struct.st_register { i16 -3047, i8 8 }, %struct.st_register { i16 -3046, i8 -1 }, %struct.st_register { i16 -3045, i8 7 }, %struct.st_register { i16 -3044, i8 -96 }, %struct.st_register { i16 -3043, i8 -23 }, %struct.st_register { i16 -3042, i8 3 }, %struct.st_register { i16 -3040, i8 -28 }, %struct.st_register { i16 -3039, i8 0 }, %struct.st_register { i16 -3038, i8 -1 }, %struct.st_register { i16 -3037, i8 7 }, %struct.st_register { i16 -3036, i8 1 }, %struct.st_register { i16 -3035, i8 34 }, %struct.st_register { i16 -3034, i8 -106 }, %struct.st_register { i16 -3033, i8 85 }, %struct.st_register { i16 -3032, i8 -1 }, %struct.st_register { i16 -3031, i8 12 }, %struct.st_register { i16 -3030, i8 -11 }, %struct.st_register { i16 -3029, i8 32 }, %struct.st_register { i16 -3028, i8 6 }, %struct.st_register { i16 -3027, i8 1 }, %struct.st_register { i16 -3024, i8 -2 }, %struct.st_register { i16 -3023, i8 -1 }, %struct.st_register { i16 -3022, i8 15 }, %struct.st_register { i16 -3021, i8 0 }, %struct.st_register { i16 -3020, i8 52 }, %struct.st_register { i16 -3019, i8 -82 }, %struct.st_register { i16 -3018, i8 70 }, %struct.st_register { i16 -3017, i8 119 }, %struct.st_register { i16 -3016, i8 -106 }, %struct.st_register { i16 -3015, i8 105 }, %struct.st_register { i16 -3014, i8 -57 }, %struct.st_register { i16 -3013, i8 1 }, %struct.st_register { i16 -3012, i8 4 }, %struct.st_register { i16 -3011, i8 -108 }, %struct.st_register { i16 -3008, i8 -55 }, %struct.st_register { i16 -3007, i8 45 }, %struct.st_register { i16 -3006, i8 -93 }, %struct.st_register { i16 -3005, i8 -5 }, %struct.st_register { i16 -3004, i8 -10 }, %struct.st_register { i16 -3003, i8 69 }, %struct.st_register { i16 -3002, i8 111 }, %struct.st_register { i16 -3001, i8 126 }, %struct.st_register { i16 -3000, i8 5 }, %struct.st_register { i16 -2999, i8 10 }, %struct.st_register { i16 -2998, i8 81 }, %struct.st_register { i16 -2992, i8 32 }, %struct.st_register { i16 -2988, i8 40 }, %struct.st_register { i16 -2987, i8 68 }, %struct.st_register { i16 -2986, i8 34 }, %struct.st_register { i16 -2985, i8 3 }, %struct.st_register { i16 -2984, i8 4 }, %struct.st_register { i16 -2983, i8 17 }, %struct.st_register { i16 -2982, i8 32 }, %struct.st_register { i16 -2980, i8 1 }, %struct.st_register { i16 -2976, i8 -96 }, %struct.st_register { i16 -2975, i8 8 }, %struct.st_register { i16 -2974, i8 12 }, %struct.st_register { i16 -2973, i8 0 }, %struct.st_register { i16 -2972, i8 0 }, %struct.st_register { i16 -2971, i8 0 }, %struct.st_register { i16 -2970, i8 0 }, %struct.st_register { i16 -2969, i8 0 }, %struct.st_register { i16 -2968, i8 0 }, %struct.st_register { i16 -2967, i8 50 }, %struct.st_register { i16 -2966, i8 3 }, %struct.st_register { i16 -2956, i8 17 }, %struct.st_register { i16 -2955, i8 0 }, %struct.st_register { i16 -2954, i8 0 }, %struct.st_register { i16 -2953, i8 0 }, %struct.st_register { i16 -2952, i8 -1 }, %struct.st_register { i16 -2951, i8 0 }, %struct.st_register { i16 -2950, i8 0 }, %struct.st_register { i16 -2949, i8 0 }, %struct.st_register { i16 -2948, i8 17 }, %struct.st_register { i16 -2947, i8 5 }, %struct.st_register { i16 -2946, i8 0 }, %struct.st_register { i16 -2945, i8 0 }, %struct.st_register { i16 -2944, i8 -17 }, %struct.st_register { i16 -2943, i8 0 }, %struct.st_register { i16 -2942, i8 -18 }, %struct.st_register { i16 -2941, i8 0 }, %struct.st_register { i16 -2940, i8 -59 }, %struct.st_register { i16 -2939, i8 -128 }, %struct.st_register { i16 -2938, i8 100 }, %struct.st_register { i16 -2937, i8 3 }, %struct.st_register { i16 -2936, i8 0 }, %struct.st_register { i16 -2935, i8 0 }, %struct.st_register { i16 -2934, i8 54 }, %struct.st_register { i16 -2933, i8 -86 }, %struct.st_register { i16 -2932, i8 0 }, %struct.st_register { i16 -2930, i8 99 }, %struct.st_register { i16 -2929, i8 -33 }, %struct.st_register { i16 -2928, i8 -120 }, %struct.st_register { i16 -2927, i8 65 }, %struct.st_register { i16 -2926, i8 -47 }, %struct.st_register { i16 -2925, i8 -89 }, %struct.st_register { i16 -2924, i8 6 }, %struct.st_register { i16 -2923, i8 -123 }, %struct.st_register { i16 -2922, i8 -30 }, %struct.st_register { i16 -2921, i8 32 }, %struct.st_register { i16 -2920, i8 0 }, %struct.st_register { i16 -2919, i8 0 }, %struct.st_register { i16 -2918, i8 0 }, %struct.st_register { i16 -2917, i8 0 }, %struct.st_register { i16 -2916, i8 64 }, %struct.st_register { i16 -2915, i8 -112 }, %struct.st_register { i16 -2914, i8 -89 }, %struct.st_register { i16 -2904, i8 22 }, %struct.st_register { i16 -2903, i8 11 }, %struct.st_register { i16 -2902, i8 -120 }, %struct.st_register { i16 -2901, i8 2 }, %struct.st_register { i16 -2900, i8 18 }, %struct.st_register { i16 -2898, i8 125 }, %struct.st_register { i16 -2897, i8 -48 }, %struct.st_register { i16 -2896, i8 25 }, %struct.st_register { i16 -2895, i8 11 }, %struct.st_register { i16 -2894, i8 -93 }, %struct.st_register { i16 -2893, i8 0 }, %struct.st_register { i16 -2892, i8 1 }, %struct.st_register { i16 -2891, i8 37 }, %struct.st_register { i16 -2890, i8 65 }, %struct.st_register { i16 -2889, i8 57 }, %struct.st_register { i16 -2888, i8 -62 }, %struct.st_register { i16 -2887, i8 34 }, %struct.st_register { i16 -2882, i8 40 }, %struct.st_register { i16 -2880, i8 1 }, %struct.st_register { i16 -2879, i8 -58 }, %struct.st_register { i16 -2877, i8 67 }, %struct.st_register { i16 -2876, i8 0 }, %struct.st_register { i16 -2875, i8 0 }, %struct.st_register { i16 -2874, i8 0 }, %struct.st_register { i16 -2873, i8 0 }, %struct.st_register { i16 -2872, i8 0 }, %struct.st_register { i16 -2871, i8 0 }, %struct.st_register { i16 -2870, i8 0 }, %struct.st_register { i16 -2869, i8 0 }, %struct.st_register { i16 -2868, i8 0 }, %struct.st_register { i16 -2867, i8 0 }, %struct.st_register { i16 -2866, i8 -96 }, %struct.st_register { i16 -2865, i8 0 }, %struct.st_register { i16 -2864, i8 0 }, %struct.st_register { i16 -2863, i8 0 }, %struct.st_register { i16 -2862, i8 0 }, %struct.st_register { i16 -2861, i8 0 }, %struct.st_register zeroinitializer], align 2
@def0367dd_base = internal constant [23 x %struct.st_register] [%struct.st_register { i16 -4093, i8 -128 }, %struct.st_register { i16 -4092, i8 0 }, %struct.st_register { i16 -4091, i8 0 }, %struct.st_register { i16 -4090, i8 0 }, %struct.st_register { i16 -4089, i8 0 }, %struct.st_register { i16 -4088, i8 0 }, %struct.st_register { i16 -4086, i8 0 }, %struct.st_register { i16 -4085, i8 0 }, %struct.st_register { i16 -4084, i8 0 }, %struct.st_register { i16 -4083, i8 0 }, %struct.st_register { i16 -4082, i8 85 }, %struct.st_register { i16 -4081, i8 1 }, %struct.st_register { i16 -3904, i8 0 }, %struct.st_register { i16 -3903, i8 0 }, %struct.st_register { i16 -3902, i8 0 }, %struct.st_register { i16 -3883, i8 32 }, %struct.st_register { i16 -3881, i8 11 }, %struct.st_register { i16 -3880, i8 1 }, %struct.st_register { i16 -3879, i8 8 }, %struct.st_register { i16 -3878, i8 24 }, %struct.st_register { i16 -3877, i8 4 }, %struct.st_register { i16 -3876, i8 0 }, %struct.st_register zeroinitializer], align 2
@.str.3 = private unnamed_addr constant [52 x i8] c"\017STV0367 SetCLKgen for 58MHz IC and 27Mhz crystal\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\017FE_STV0367TER_SetCLKgen for 27Mhz\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\017%s: [%02x] %02x: %02x\0A\00", align 1
@__func__.stv0367_writeregs = private unnamed_addr constant [18 x i8] c"stv0367_writeregs\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\013%s: i2c write error! ([%02x] %02x: %02x)\0A\00", align 1
@__func__.stv0367ter_set_ts_mode = private unnamed_addr constant [23 x i8] c"stv0367ter_set_ts_mode\00", align 1
@__func__.stv0367ter_set_clk_pol = private unnamed_addr constant [23 x i8] c"stv0367ter_set_clk_pol\00", align 1
@__func__.stv0367ter_standby = private unnamed_addr constant [19 x i8] c"stv0367ter_standby\00", align 1
@__func__.stv0367ter_algo = private unnamed_addr constant [16 x i8] c"stv0367ter_algo\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\017ALGO: FE_TER_NORMAL_IF_TUNER selected\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\017ALGO: FE_TER_LONGPATH_IF_TUNER selected\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\017ALGO: FE_TER_IQ_TUNER selected\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013ALGO: wrong TUNER type selected\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\017%s: inversion AUTO\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\017DEROT temp=0x%x\0A\00", align 1
@__func__.stv0367ter_agc_iir_lock_detect_set = private unnamed_addr constant [35 x i8] c"stv0367ter_agc_iir_lock_detect_set\00", align 1
@__func__.stv0367_iir_filt_init = private unnamed_addr constant [22 x i8] c"stv0367_iir_filt_init\00", align 1
@CellsCoeffs_6MHz_367cofdm = internal global [3 x [6 x [5 x i16]]] [[6 x [5 x i16]] [[5 x i16] [i16 5785, i16 -10824, i16 5785, i16 -13373, i16 28987], [5 x i16] [i16 8773, i16 -16384, i16 8773, i16 -15000, i16 29909], [5 x i16] [i16 8831, i16 -16384, i16 8831, i16 -15876, i16 30406], [5 x i16] [i16 9054, i16 -16384, i16 9054, i16 -16217, i16 30602], [5 x i16] [i16 3787, i16 -5621, i16 3787, i16 -16345, i16 30685], [5 x i16] [i16 0, i16 2920, i16 2920, i16 0, i16 -14182]], [6 x [5 x i16]] [[5 x i16] [i16 5717, i16 -10674, i16 5720, i16 -13329, i16 28926], [5 x i16] [i16 8798, i16 -16384, i16 8790, i16 -14967, i16 29833], [5 x i16] [i16 8851, i16 -16384, i16 8853, i16 -15863, i16 30334], [5 x i16] [i16 9079, i16 -16384, i16 9130, i16 -16213, i16 30534], [5 x i16] [i16 3527, i16 -5176, i16 3335, i16 -16345, i16 30617], [5 x i16] [i16 0, i16 2184, i16 3740, i16 0, i16 14167]], [6 x [5 x i16]] zeroinitializer], align 2
@CellsCoeffs_7MHz_367cofdm = internal global [3 x [6 x [5 x i16]]] [[6 x [5 x i16]] [[5 x i16] [i16 4810, i16 -8785, i16 4810, i16 -13077, i16 28593], [5 x i16] [i16 9001, i16 -16384, i16 9001, i16 -14672, i16 29279], [5 x i16] [i16 9108, i16 -16384, i16 9108, i16 -15673, i16 29712], [5 x i16] [i16 9500, i16 -16384, i16 9500, i16 -16125, i16 29913], [5 x i16] [i16 2052, i16 -2746, i16 2052, i16 -16320, i16 30020], [5 x i16] [i16 0, i16 3289, i16 3289, i16 0, i16 14090]], [6 x [5 x i16]] [[5 x i16] [i16 4741, i16 -8633, i16 4741, i16 -13033, i16 28534], [5 x i16] [i16 9036, i16 -16384, i16 9032, i16 -14630, i16 29190], [5 x i16] [i16 9140, i16 -16384, i16 9132, i16 -15653, i16 29619], [5 x i16] [i16 9533, i16 -16384, i16 9654, i16 -16117, i16 29823], [5 x i16] [i16 1825, i16 -2148, i16 1631, i16 -16319, i16 29931], [5 x i16] [i16 0, i16 2298, i16 4450, i16 0, i16 14079]], [6 x [5 x i16]] zeroinitializer], align 2
@CellsCoeffs_8MHz_367cofdm = internal global [3 x [6 x [5 x i16]]] [[6 x [5 x i16]] [[5 x i16] [i16 4335, i16 -7675, i16 4335, i16 -12727, i16 28071], [5 x i16] [i16 8529, i16 -15017, i16 8529, i16 -14587, i16 28563], [5 x i16] [i16 9475, i16 -16384, i16 9475, i16 -15499, i16 29076], [5 x i16] [i16 8425, i16 -13676, i16 8425, i16 -16045, i16 29076], [5 x i16] [i16 1775, i16 -1966, i16 1775, i16 -16297, i16 29191], [5 x i16] [i16 0, i16 3788, i16 3788, i16 0, i16 13895]], [6 x [5 x i16]] [[5 x i16] [i16 4256, i16 -7505, i16 4257, i16 -12682, i16 28013], [5 x i16] [i16 8412, i16 -14730, i16 8409, i16 -14326, i16 28457], [5 x i16] [i16 9522, i16 -16384, i16 9501, i16 -15471, i16 28783], [5 x i16] [i16 8058, i16 -13013, i16 8242, i16 -16034, i16 28959], [5 x i16] [i16 1688, i16 -1442, i16 1384, i16 -16295, i16 29075], [5 x i16] [i16 0, i16 2328, i16 5276, i16 0, i16 13890]], [6 x [5 x i16]] zeroinitializer], align 2
@__func__.stv0367ter_filt_coeff_init = private unnamed_addr constant [27 x i8] c"stv0367ter_filt_coeff_init\00", align 1
@__func__.stv0367ter_agc_iir_rst = private unnamed_addr constant [23 x i8] c"stv0367ter_agc_iir_rst\00", align 1
@__func__.stv0367ter_get_mclk = private unnamed_addr constant [20 x i8] c"stv0367ter_get_mclk\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\017N=%d M=%d P=%d mclk_Hz=%d ExtClk_Hz=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"\017%s: mclk_Hz=%d\0A\00", align 1
@__func__.stv0367ter_lock_algo = private unnamed_addr constant [21 x i8] c"stv0367ter_lock_algo\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"\017state=%p\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"\017LOCK OK! mode=%d SYR_STAT=0x%x R367TER_STATUS=0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"\017PRVIT=0x%x I2CRPT=0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\017GAIN_SRC1=0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"\017FE_TER_LOCKOK !!!\0A\00", align 1
@__func__.stv0367ter_check_syr = private unnamed_addr constant [21 x i8] c"stv0367ter_check_syr\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"\017stv0367ter_check_syr SYRStatus %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"No Symbol\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@__func__.stv0367ter_check_cpamp = private unnamed_addr constant [23 x i8] c"stv0367ter_check_cpamp\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\017%s: CPAMPMin=%d wd=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"\017******last CPAMPvalue= %d at wd=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"\017%s: CPAMP failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"\017%s: CPAMP OK !\0A\00", align 1
@__func__.stv0367_get_tuner_freq = private unnamed_addr constant [23 x i8] c"stv0367_get_tuner_freq\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\013%s: Invalid parameter\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\017%s: frequency=%d\0A\00", align 1
@__func__.stv0367ter_read_status = private unnamed_addr constant [23 x i8] c"stv0367ter_read_status\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"\017%s: stv0367 has locked\0A\00", align 1
@__func__.stv0367ter_gate_ctrl = private unnamed_addr constant [21 x i8] c"stv0367ter_gate_ctrl\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"\013%s: i2c read error ([%02x] %02x: %02x)\0A\00", align 1
@__func__.stv0367_readreg = private unnamed_addr constant [16 x i8] c"stv0367_readreg\00", align 1
@__func__.stv0367cab_init = private unnamed_addr constant [16 x i8] c"stv0367cab_init\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"\017Setting TSMode = STV0367_DVBCI_CLOCK\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"\017stv0367cab_get_mclk BYPASS_PLLXN mclk_Hz=%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"\017stv0367cab_get_mclk final mclk_Hz=%d\0A\00", align 1
@__func__.stv0367cab_standby = private unnamed_addr constant [19 x i8] c"stv0367cab_standby\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"\017%s: freq = %d, srate = %d\0A\00", align 1
@__func__.stv0367cab_set_frontend = private unnamed_addr constant [24 x i8] c"stv0367cab_set_frontend\00", align 1
@__func__.stv0367cab_set_srate = private unnamed_addr constant [21 x i8] c"stv0367cab_set_srate\00", align 1
@__func__.stv0367cab_algo = private unnamed_addr constant [16 x i8] c"stv0367cab_algo\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\017%s: DemodTimeOut=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"\017QAM_Lock=0x%x LockTime=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"\017R367CAB_IT_STATUS1=0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"\017QAM_Lock=0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"\017R367CAB_IT_STATUS2=0x%x\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\017stv0367cab_get_derot_freq=0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"\017%s: adc_hz=%d derot_hz=%d\0A\00", align 1
@__func__.stv0367cab_set_derot_freq = private unnamed_addr constant [26 x i8] c"stv0367cab_set_derot_freq\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"\017%s: sampled_if=0x%x\0A\00", align 1
@__func__.stv0367cab_get_frontend = private unnamed_addr constant [24 x i8] c"stv0367cab_get_frontend\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"\017%s: tuner frequency = %d\0A\00", align 1
@__func__.stv0367cab_read_status = private unnamed_addr constant [23 x i8] c"stv0367cab_read_status\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"\017%s: signal=%d dBm\0A\00", align 1
@__func__.stv0367cab_read_strength = private unnamed_addr constant [25 x i8] c"stv0367cab_read_strength\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"\017%s: strength=%d\0A\00", align 1
@stv0367cab_RF_LookUp1 = internal unnamed_addr constant <{ [31 x i32], [31 x i32], [29 x [31 x i32]] }> <{ [31 x i32] [i32 48, i32 50, i32 51, i32 53, i32 54, i32 56, i32 57, i32 58, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 80, i32 83, i32 85, i32 88], [31 x i32] [i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 41, i32 42, i32 43, i32 44, i32 46, i32 47, i32 49, i32 50, i32 52, i32 53, i32 54, i32 55, i32 56], [29 x [31 x i32]] zeroinitializer }>, align 4
@stv0367cab_RF_LookUp2 = internal unnamed_addr constant <{ [16 x i32], [16 x i32], [14 x [16 x i32]] }> <{ [16 x i32] [i32 28, i32 29, i32 31, i32 32, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45], [16 x i32] [i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72], [14 x [16 x i32]] zeroinitializer }>, align 4
@.str.50 = private unnamed_addr constant [26 x i8] c"\017%s: noisepercentage=%d\0A\00", align 1
@__func__.stv0367cab_read_snr = private unnamed_addr constant [20 x i8] c"stv0367cab_read_snr\00", align 1
@.str.51 = private unnamed_addr constant [60 x i8] c"\017%s: uncorrected blocks=%d corrected blocks=%d tscount=%d\0A\00", align 1
@__func__.stv0367cab_read_ucblcks = private unnamed_addr constant [24 x i8] c"stv0367cab_read_ucblcks\00", align 1
@__func__.stv0367cab_gate_ctrl = private unnamed_addr constant [21 x i8] c"stv0367cab_gate_ctrl\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"\013Invalid symbol rate\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug251, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_i2c_debug252, ptr @__UNIQUE_ID_i2c_debugtype250, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_stv0367cab_attach, ptr @__ksymtab_stv0367ddb_attach, ptr @__ksymtab_stv0367ter_attach, ptr @__param_debug, ptr @__param_i2c_debug], section "llvm.metadata"
@switch.table.stv0367ter_set_frontend.53 = private unnamed_addr constant [4 x i32] [i32 8, i32 0, i32 4, i32 16], align 4
@switch.table.stv0367ter_set_frontend.54 = private unnamed_addr constant [4 x i32] [i32 250, i32 0, i32 125, i32 500], align 4
@switch.table.stv0367ter_get_frontend = private unnamed_addr constant [8 x i32] [i32 7, i32 9, i32 9, i32 9, i32 1, i32 2, i32 3, i32 5], align 4
@switch.table.stv0367cab_set_frontend = private unnamed_addr constant [6 x i32] [i32 9990, i32 9288, i32 8586, i32 8847, i32 8613, i32 8532], align 4
@switch.table.stv0367cab_set_frontend.55 = private unnamed_addr constant [5 x i32] [i32 3750000, i32 6250000, i32 5000000, i32 6250000, i32 6250000], align 4
@switch.table.stv0367cab_get_frontend = private unnamed_addr constant [8 x i32] [i32 4, i32 5, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3], align 4
@switch.table.stv0367cab_read_status = private unnamed_addr constant [14 x i32] [i32 3, i32 4, i32 5, i32 6, i32 1, i32 7, i32 8, i32 1, i32 9, i32 10, i32 10, i32 9, i32 7, i32 2], align 4
@switch.table.stv0367cab_read_snr = private unnamed_addr constant [8 x i32] [i32 23616, i32 21760, i32 1, i32 21280, i32 21904, i32 20480, i32 23040, i32 21504], align 4
@switch.table.stv0367ddb_read_status = private unnamed_addr constant [8 x i32] [i32 7557120, i32 6963200, i32 320, i32 6809600, i32 7009280, i32 6553600, i32 7372800, i32 6881280], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0367ter_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1068) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 2
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 5
  store ptr %8, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %14, ptr noundef nonnull align 4 dereferenceable(544) @stv0367ter_ops, i32 544, i1 false)
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 3
  store ptr %4, ptr %15, align 8
  %16 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %4, i16 noundef zeroext -4096)
  %17 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 3
  store i8 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 6
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 7
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 8
  store i8 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 9
  store i8 0, ptr %21, align 1
  %22 = load i32, ptr @stvdebug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %10
  %25 = zext i8 %16 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0367ter_attach, i32 noundef %25) #10
  %27 = load i8, ptr %17, align 8
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i8 [ %27, %24 ], [ %16, %10 ]
  switch i8 %29, label %30 [
    i8 80, label %32
    i8 96, label %32
  ]

30:                                               ; preds = %28, %6, %2
  %31 = phi ptr [ null, %2 ], [ null, %6 ], [ %8, %28 ]
  tail call void @kfree(ptr noundef %31) #11
  tail call void @kfree(ptr noundef %4) #11
  br label %32

32:                                               ; preds = %30, %28, %28
  %33 = phi ptr [ null, %30 ], [ %4, %28 ], [ %4, %28 ]
  ret ptr %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @stv0367_readreg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %12, align 4
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
  %20 = zext i16 %1 to i32
  %21 = lshr i16 %1, 8
  %22 = trunc i16 %21 to i8
  store i8 %22, ptr %3, align 2
  %23 = trunc i16 %1 to i8
  %24 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %5, i32 noundef 2) #11
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %7, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.stv0367_readreg, i32 noundef %32, i32 noundef %20, i32 noundef %34) #10
  br label %36

36:                                               ; preds = %29, %2
  %37 = load i32, ptr @i2cdebug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %7, align 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = load i8, ptr %4, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_readreg, i32 noundef %42, i32 noundef %20, i32 noundef %44) #10
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i8 %47
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0367cab_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1068) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 2
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.stv0367cab_state, ptr %8, i32 0, i32 3
  store i32 280000, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stv0367cab_state, ptr %8, i32 0, i32 9
  store i32 -200540156, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 4
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %16, ptr noundef nonnull align 4 dereferenceable(544) @stv0367cab_ops, i32 544, i1 false)
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 3
  store ptr %4, ptr %17, align 8
  %18 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %4, i16 noundef zeroext -4096)
  %19 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 3
  store i8 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 6
  store i8 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 7
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 8
  store i8 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 9
  store i8 0, ptr %23, align 1
  %24 = load i32, ptr @stvdebug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %10
  %27 = zext i8 %18 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0367cab_attach, i32 noundef %27) #10
  %29 = load i8, ptr %19, align 8
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i8 [ %29, %26 ], [ %18, %10 ]
  switch i8 %31, label %32 [
    i8 80, label %34
    i8 96, label %34
  ]

32:                                               ; preds = %30, %6, %2
  %33 = phi ptr [ null, %2 ], [ null, %6 ], [ %8, %30 ]
  tail call void @kfree(ptr noundef %33) #11
  tail call void @kfree(ptr noundef %4) #11
  br label %34

34:                                               ; preds = %32, %30, %30
  %35 = phi ptr [ null, %32 ], [ %4, %30 ], [ %4, %30 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0367ddb_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [64 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [64 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [64 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [64 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [64 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [64 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [64 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [64 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [64 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [64 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [64 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [64 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [64 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [64 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [64 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [64 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [64 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [64 x i8], align 1
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [64 x i8], align 1
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [64 x i8], align 1
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [64 x i8], align 1
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [64 x i8], align 1
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [64 x i8], align 1
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [64 x i8], align 1
  %60 = alloca %struct.i2c_msg, align 4
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 1068) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %949, label %64

64:                                               ; preds = %2
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 52) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %949, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 40) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %949, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 1
  store ptr %1, ptr %73, align 8
  %74 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 2
  store ptr %0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 5
  store ptr %66, ptr %75, align 8
  %76 = getelementptr inbounds %struct.stv0367cab_state, ptr %70, i32 0, i32 3
  store i32 280000, ptr %76, align 4
  %77 = getelementptr inbounds %struct.stv0367cab_state, ptr %70, i32 0, i32 9
  store i32 -190054398, ptr %77, align 4
  %78 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 4
  store ptr %70, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %79, ptr noundef nonnull align 4 dereferenceable(544) @stv0367ddb_ops, i32 544, i1 false)
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 3
  store ptr %62, ptr %80, align 8
  %81 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %62, i16 noundef zeroext -4096)
  %82 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 3
  store i8 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 6
  store i8 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 7
  store i8 1, ptr %84, align 1
  %85 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 8
  store i8 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 9
  store i8 1, ptr %86, align 1
  %87 = getelementptr inbounds %struct.stv0367_state, ptr %62, i32 0, i32 10
  store i32 0, ptr %87, align 8
  %88 = load i32, ptr @stvdebug, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %72
  %91 = zext i8 %81 to i32
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0367ddb_attach, i32 noundef %91) #10
  %93 = load i8, ptr %82, align 8
  br label %94

94:                                               ; preds = %90, %72
  %95 = phi i8 [ %93, %90 ], [ %81, %72 ]
  switch i8 %95, label %949 [
    i8 80, label %96
    i8 96, label %96
  ]

96:                                               ; preds = %94, %94
  %97 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %98 = zext i8 %95 to i32
  %99 = load i8, ptr %0, align 4
  %100 = zext i8 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.1, ptr noundef %79, i32 noundef %98, i32 noundef %100) #10
  %101 = load ptr, ptr %75, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %59) #11
  %102 = getelementptr inbounds i8, ptr %59, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %102, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #11
  %103 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 3, ptr %103, align 4, !annotation !8
  %104 = load ptr, ptr %74, align 4
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %60, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %108, align 4
  store i8 -16, ptr %59, align 1
  %109 = getelementptr inbounds [64 x i8], ptr %59, i32 0, i32 1
  store i8 2, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %59, i32 2
  store i8 16, ptr %110, align 1
  %111 = load i32, ptr @i2cdebug, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %96
  %114 = load i8, ptr %104, align 4
  %115 = zext i8 %114 to i32
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %115, i32 noundef 61442, i32 noundef 16) #10
  br label %117

117:                                              ; preds = %113, %96
  %118 = load ptr, ptr %73, align 8
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %60, i32 noundef 1) #11
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %74, align 4
  %123 = load i8, ptr %122, align 4
  %124 = zext i8 %123 to i32
  %125 = load i8, ptr %110, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %124, i32 noundef 61442, i32 noundef %126) #10
  br label %128

128:                                              ; preds = %121, %117
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %59) #11
  %129 = load i8, ptr %84, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %128
  %132 = zext i8 %129 to i32
  %133 = getelementptr [2 x [3 x ptr]], ptr @stv0367_deftabs, i32 0, i32 %132, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = load i16, ptr %134, align 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %137, %131
  %138 = phi i16 [ %144, %137 ], [ %135, %131 ]
  %139 = phi i32 [ %142, %137 ], [ 0, %131 ]
  %140 = getelementptr %struct.st_register, ptr %134, i32 %139, i32 1
  %141 = load i8, ptr %140, align 2
  call fastcc void @stv0367_writereg(ptr noundef %62, i16 noundef zeroext %138, i8 noundef zeroext %141) #11
  %142 = add i32 %139, 1
  %143 = getelementptr %struct.st_register, ptr %134, i32 %142
  %144 = load i16, ptr %143, align 2
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %137

146:                                              ; preds = %137
  %147 = load i8, ptr %84, align 1
  br label %148

148:                                              ; preds = %146, %131, %128
  %149 = phi i8 [ %147, %146 ], [ %129, %131 ], [ 0, %128 ]
  %150 = zext i8 %149 to i32
  %151 = getelementptr [2 x [3 x ptr]], ptr @stv0367_deftabs, i32 0, i32 %150, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = load i16, ptr %152, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %155, %148
  %156 = phi i16 [ %162, %155 ], [ %153, %148 ]
  %157 = phi i32 [ %160, %155 ], [ 0, %148 ]
  %158 = getelementptr %struct.st_register, ptr %152, i32 %157, i32 1
  %159 = load i8, ptr %158, align 2
  call fastcc void @stv0367_writereg(ptr noundef %62, i16 noundef zeroext %156, i8 noundef zeroext %159) #11
  %160 = add i32 %157, 1
  %161 = getelementptr %struct.st_register, ptr %152, i32 %160
  %162 = load i16, ptr %161, align 2
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %155

164:                                              ; preds = %155, %148
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %57) #11
  %165 = getelementptr inbounds i8, ptr %57, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %165, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #11
  %166 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 3, ptr %166, align 4, !annotation !8
  %167 = load ptr, ptr %74, align 4
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %58, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %171, align 4
  store i8 -16, ptr %57, align 1
  %172 = getelementptr inbounds [64 x i8], ptr %57, i32 0, i32 1
  store i8 2, ptr %172, align 1
  %173 = getelementptr inbounds i8, ptr %57, i32 2
  store i8 0, ptr %173, align 1
  %174 = load i32, ptr @i2cdebug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %164
  %177 = load i8, ptr %167, align 4
  %178 = zext i8 %177 to i32
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %178, i32 noundef 61442, i32 noundef 0) #10
  br label %180

180:                                              ; preds = %176, %164
  %181 = load ptr, ptr %73, align 8
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %58, i32 noundef 1) #11
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %74, align 4
  %186 = load i8, ptr %185, align 4
  %187 = zext i8 %186 to i32
  %188 = load i8, ptr %173, align 1
  %189 = zext i8 %188 to i32
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %187, i32 noundef 61442, i32 noundef %189) #10
  br label %191

191:                                              ; preds = %184, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %57) #11
  %192 = load i8, ptr %84, align 1
  %193 = zext i8 %192 to i32
  %194 = getelementptr [2 x [3 x ptr]], ptr @stv0367_deftabs, i32 0, i32 %193
  %195 = load ptr, ptr %194, align 4
  %196 = load i16, ptr %195, align 2
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %198, %191
  %199 = phi i16 [ %205, %198 ], [ %196, %191 ]
  %200 = phi i32 [ %203, %198 ], [ 0, %191 ]
  %201 = getelementptr %struct.st_register, ptr %195, i32 %200, i32 1
  %202 = load i8, ptr %201, align 2
  call fastcc void @stv0367_writereg(ptr noundef %62, i16 noundef zeroext %199, i8 noundef zeroext %202) #11
  %203 = add i32 %200, 1
  %204 = getelementptr %struct.st_register, ptr %195, i32 %203
  %205 = load i16, ptr %204, align 2
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %198

207:                                              ; preds = %198, %191
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %55) #11
  %208 = getelementptr inbounds i8, ptr %55, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %208, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #11
  %209 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 3, ptr %209, align 4, !annotation !8
  %210 = load ptr, ptr %74, align 4
  %211 = load i8, ptr %210, align 4
  %212 = zext i8 %211 to i16
  store i16 %212, ptr %56, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %213, align 2
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %214, align 4
  store i8 -16, ptr %55, align 1
  %215 = getelementptr inbounds [64 x i8], ptr %55, i32 0, i32 1
  store i8 32, ptr %215, align 1
  %216 = getelementptr inbounds i8, ptr %55, i32 2
  store i8 42, ptr %216, align 1
  %217 = load i32, ptr @i2cdebug, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %207
  %220 = load i8, ptr %210, align 4
  %221 = zext i8 %220 to i32
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %221, i32 noundef 61472, i32 noundef 42) #10
  br label %223

223:                                              ; preds = %219, %207
  %224 = load ptr, ptr %73, align 8
  %225 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %56, i32 noundef 1) #11
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %234, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %74, align 4
  %229 = load i8, ptr %228, align 4
  %230 = zext i8 %229 to i32
  %231 = load i8, ptr %216, align 1
  %232 = zext i8 %231 to i32
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %230, i32 noundef 61472, i32 noundef %232) #10
  br label %234

234:                                              ; preds = %227, %223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %55) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %53) #11
  %235 = getelementptr inbounds i8, ptr %53, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %235, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #11
  %236 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 3, ptr %236, align 4, !annotation !8
  %237 = load ptr, ptr %74, align 4
  %238 = load i8, ptr %237, align 4
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %54, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %240, align 2
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %241, align 4
  store i8 -16, ptr %53, align 1
  %242 = getelementptr inbounds [64 x i8], ptr %53, i32 0, i32 1
  store i8 33, ptr %242, align 1
  %243 = getelementptr inbounds i8, ptr %53, i32 2
  store i8 -42, ptr %243, align 1
  %244 = load i32, ptr @i2cdebug, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %234
  %247 = load i8, ptr %237, align 4
  %248 = zext i8 %247 to i32
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %248, i32 noundef 61473, i32 noundef 214) #10
  br label %250

250:                                              ; preds = %246, %234
  %251 = load ptr, ptr %73, align 8
  %252 = call i32 @i2c_transfer(ptr noundef %251, ptr noundef nonnull %54, i32 noundef 1) #11
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %261, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %74, align 4
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i32
  %258 = load i8, ptr %243, align 1
  %259 = zext i8 %258 to i32
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %257, i32 noundef 61473, i32 noundef %259) #10
  br label %261

261:                                              ; preds = %254, %250
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %53) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %51) #11
  %262 = getelementptr inbounds i8, ptr %51, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %262, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #11
  %263 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 3, ptr %263, align 4, !annotation !8
  %264 = load ptr, ptr %74, align 4
  %265 = load i8, ptr %264, align 4
  %266 = zext i8 %265 to i16
  store i16 %266, ptr %52, align 4
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %267, align 2
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %268, align 4
  store i8 -16, ptr %51, align 1
  %269 = getelementptr inbounds [64 x i8], ptr %51, i32 0, i32 1
  store i8 34, ptr %269, align 1
  %270 = getelementptr inbounds i8, ptr %51, i32 2
  store i8 85, ptr %270, align 1
  %271 = load i32, ptr @i2cdebug, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %261
  %274 = load i8, ptr %264, align 4
  %275 = zext i8 %274 to i32
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %275, i32 noundef 61474, i32 noundef 85) #10
  br label %277

277:                                              ; preds = %273, %261
  %278 = load ptr, ptr %73, align 8
  %279 = call i32 @i2c_transfer(ptr noundef %278, ptr noundef nonnull %52, i32 noundef 1) #11
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %288, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr %74, align 4
  %283 = load i8, ptr %282, align 4
  %284 = zext i8 %283 to i32
  %285 = load i8, ptr %270, align 1
  %286 = zext i8 %285 to i32
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %284, i32 noundef 61474, i32 noundef %286) #10
  br label %288

288:                                              ; preds = %281, %277
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %51) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %49) #11
  %289 = getelementptr inbounds i8, ptr %49, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %289, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #11
  %290 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 3, ptr %290, align 4, !annotation !8
  %291 = load ptr, ptr %74, align 4
  %292 = load i8, ptr %291, align 4
  %293 = zext i8 %292 to i16
  store i16 %293, ptr %50, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %294, align 2
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %295, align 4
  store i8 -16, ptr %49, align 1
  %296 = getelementptr inbounds [64 x i8], ptr %49, i32 0, i32 1
  store i8 35, ptr %296, align 1
  %297 = getelementptr inbounds i8, ptr %49, i32 2
  store i8 85, ptr %297, align 1
  %298 = load i32, ptr @i2cdebug, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %288
  %301 = load i8, ptr %291, align 4
  %302 = zext i8 %301 to i32
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %302, i32 noundef 61475, i32 noundef 85) #10
  br label %304

304:                                              ; preds = %300, %288
  %305 = load ptr, ptr %73, align 8
  %306 = call i32 @i2c_transfer(ptr noundef %305, ptr noundef nonnull %50, i32 noundef 1) #11
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %315, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr %74, align 4
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i32
  %312 = load i8, ptr %297, align 1
  %313 = zext i8 %312 to i32
  %314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %311, i32 noundef 61475, i32 noundef %313) #10
  br label %315

315:                                              ; preds = %308, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %49) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #11
  %316 = getelementptr inbounds i8, ptr %47, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %316, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #11
  %317 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 3, ptr %317, align 4, !annotation !8
  %318 = load ptr, ptr %74, align 4
  %319 = load i8, ptr %318, align 4
  %320 = zext i8 %319 to i16
  store i16 %320, ptr %48, align 4
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %321, align 2
  %322 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %322, align 4
  store i8 -16, ptr %47, align 1
  %323 = getelementptr inbounds [64 x i8], ptr %47, i32 0, i32 1
  store i8 -102, ptr %323, align 1
  %324 = getelementptr inbounds i8, ptr %47, i32 2
  store i8 20, ptr %324, align 1
  %325 = load i32, ptr @i2cdebug, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %315
  %328 = load i8, ptr %318, align 4
  %329 = zext i8 %328 to i32
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %329, i32 noundef 61594, i32 noundef 20) #10
  br label %331

331:                                              ; preds = %327, %315
  %332 = load ptr, ptr %73, align 8
  %333 = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %48, i32 noundef 1) #11
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %342, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %74, align 4
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i32
  %339 = load i8, ptr %324, align 1
  %340 = zext i8 %339 to i32
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %338, i32 noundef 61594, i32 noundef %340) #10
  br label %342

342:                                              ; preds = %335, %331
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %45) #11
  %343 = getelementptr inbounds i8, ptr %45, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %343, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #11
  %344 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 3, ptr %344, align 4, !annotation !8
  %345 = load ptr, ptr %74, align 4
  %346 = load i8, ptr %345, align 4
  %347 = zext i8 %346 to i16
  store i16 %347, ptr %46, align 4
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %348, align 2
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %349, align 4
  store i8 -16, ptr %45, align 1
  %350 = getelementptr inbounds [64 x i8], ptr %45, i32 0, i32 1
  store i8 -101, ptr %350, align 1
  %351 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 -82, ptr %351, align 1
  %352 = load i32, ptr @i2cdebug, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %342
  %355 = load i8, ptr %345, align 4
  %356 = zext i8 %355 to i32
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %356, i32 noundef 61595, i32 noundef 174) #10
  br label %358

358:                                              ; preds = %354, %342
  %359 = load ptr, ptr %73, align 8
  %360 = call i32 @i2c_transfer(ptr noundef %359, ptr noundef nonnull %46, i32 noundef 1) #11
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %369, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %74, align 4
  %364 = load i8, ptr %363, align 4
  %365 = zext i8 %364 to i32
  %366 = load i8, ptr %351, align 1
  %367 = zext i8 %366 to i32
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %365, i32 noundef 61595, i32 noundef %367) #10
  br label %369

369:                                              ; preds = %362, %358
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %45) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %43) #11
  %370 = getelementptr inbounds i8, ptr %43, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %370, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #11
  %371 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 3, ptr %371, align 4, !annotation !8
  %372 = load ptr, ptr %74, align 4
  %373 = load i8, ptr %372, align 4
  %374 = zext i8 %373 to i16
  store i16 %374, ptr %44, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %375, align 2
  %376 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %376, align 4
  store i8 -16, ptr %43, align 1
  %377 = getelementptr inbounds [64 x i8], ptr %43, i32 0, i32 1
  store i8 -100, ptr %377, align 1
  %378 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 86, ptr %378, align 1
  %379 = load i32, ptr @i2cdebug, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %385, label %381

381:                                              ; preds = %369
  %382 = load i8, ptr %372, align 4
  %383 = zext i8 %382 to i32
  %384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %383, i32 noundef 61596, i32 noundef 86) #10
  br label %385

385:                                              ; preds = %381, %369
  %386 = load ptr, ptr %73, align 8
  %387 = call i32 @i2c_transfer(ptr noundef %386, ptr noundef nonnull %44, i32 noundef 1) #11
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %396, label %389

389:                                              ; preds = %385
  %390 = load ptr, ptr %74, align 4
  %391 = load i8, ptr %390, align 4
  %392 = zext i8 %391 to i32
  %393 = load i8, ptr %378, align 1
  %394 = zext i8 %393 to i32
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %392, i32 noundef 61596, i32 noundef %394) #10
  br label %396

396:                                              ; preds = %389, %385
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %43) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %41) #11
  %397 = getelementptr inbounds i8, ptr %41, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %397, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #11
  %398 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 3, ptr %398, align 4, !annotation !8
  %399 = load ptr, ptr %74, align 4
  %400 = load i8, ptr %399, align 4
  %401 = zext i8 %400 to i16
  store i16 %401, ptr %42, align 4
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %402, align 2
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %403, align 4
  store i8 -16, ptr %41, align 1
  %404 = getelementptr inbounds [64 x i8], ptr %41, i32 0, i32 1
  store i8 107, ptr %404, align 1
  %405 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 0, ptr %405, align 1
  %406 = load i32, ptr @i2cdebug, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %396
  %409 = load i8, ptr %399, align 4
  %410 = zext i8 %409 to i32
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %410, i32 noundef 61547, i32 noundef 0) #10
  br label %412

412:                                              ; preds = %408, %396
  %413 = load ptr, ptr %73, align 8
  %414 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %42, i32 noundef 1) #11
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %423, label %416

416:                                              ; preds = %412
  %417 = load ptr, ptr %74, align 4
  %418 = load i8, ptr %417, align 4
  %419 = zext i8 %418 to i32
  %420 = load i8, ptr %405, align 1
  %421 = zext i8 %420 to i32
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %419, i32 noundef 61547, i32 noundef %421) #10
  br label %423

423:                                              ; preds = %416, %412
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %41) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %39) #11
  %424 = getelementptr inbounds i8, ptr %39, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %424, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #11
  %425 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 3, ptr %425, align 4, !annotation !8
  %426 = load ptr, ptr %74, align 4
  %427 = load i8, ptr %426, align 4
  %428 = zext i8 %427 to i16
  store i16 %428, ptr %40, align 4
  %429 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %429, align 2
  %430 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %430, align 4
  store i8 -14, ptr %39, align 1
  %431 = getelementptr inbounds [64 x i8], ptr %39, i32 0, i32 1
  store i8 114, ptr %431, align 1
  %432 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 112, ptr %432, align 1
  %433 = load i32, ptr @i2cdebug, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435

435:                                              ; preds = %423
  %436 = load i8, ptr %426, align 4
  %437 = zext i8 %436 to i32
  %438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %437, i32 noundef 62066, i32 noundef 112) #10
  br label %439

439:                                              ; preds = %435, %423
  %440 = load ptr, ptr %73, align 8
  %441 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef nonnull %40, i32 noundef 1) #11
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %450, label %443

443:                                              ; preds = %439
  %444 = load ptr, ptr %74, align 4
  %445 = load i8, ptr %444, align 4
  %446 = zext i8 %445 to i32
  %447 = load i8, ptr %432, align 1
  %448 = zext i8 %447 to i32
  %449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %446, i32 noundef 62066, i32 noundef %448) #10
  br label %450

450:                                              ; preds = %443, %439
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %39) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %37) #11
  %451 = getelementptr inbounds i8, ptr %37, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %451, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #11
  %452 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 3, ptr %452, align 4, !annotation !8
  %453 = load ptr, ptr %74, align 4
  %454 = load i8, ptr %453, align 4
  %455 = zext i8 %454 to i16
  store i16 %455, ptr %38, align 4
  %456 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %456, align 2
  %457 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %457, align 4
  store i8 -14, ptr %37, align 1
  %458 = getelementptr inbounds [64 x i8], ptr %37, i32 0, i32 1
  store i8 115, ptr %458, align 1
  %459 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 -64, ptr %459, align 1
  %460 = load i32, ptr @i2cdebug, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %466, label %462

462:                                              ; preds = %450
  %463 = load i8, ptr %453, align 4
  %464 = zext i8 %463 to i32
  %465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %464, i32 noundef 62067, i32 noundef 192) #10
  br label %466

466:                                              ; preds = %462, %450
  %467 = load ptr, ptr %73, align 8
  %468 = call i32 @i2c_transfer(ptr noundef %467, ptr noundef nonnull %38, i32 noundef 1) #11
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %477, label %470

470:                                              ; preds = %466
  %471 = load ptr, ptr %74, align 4
  %472 = load i8, ptr %471, align 4
  %473 = zext i8 %472 to i32
  %474 = load i8, ptr %459, align 1
  %475 = zext i8 %474 to i32
  %476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %473, i32 noundef 62067, i32 noundef %475) #10
  br label %477

477:                                              ; preds = %470, %466
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %37) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %35) #11
  %478 = getelementptr inbounds i8, ptr %35, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %478, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #11
  %479 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 3, ptr %479, align 4, !annotation !8
  %480 = load ptr, ptr %74, align 4
  %481 = load i8, ptr %480, align 4
  %482 = zext i8 %481 to i16
  store i16 %482, ptr %36, align 4
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %483, align 2
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %484, align 4
  store i8 -14, ptr %35, align 1
  %485 = getelementptr inbounds [64 x i8], ptr %35, i32 0, i32 1
  store i8 116, ptr %485, align 1
  %486 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 32, ptr %486, align 1
  %487 = load i32, ptr @i2cdebug, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %493, label %489

489:                                              ; preds = %477
  %490 = load i8, ptr %480, align 4
  %491 = zext i8 %490 to i32
  %492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %491, i32 noundef 62068, i32 noundef 32) #10
  br label %493

493:                                              ; preds = %489, %477
  %494 = load ptr, ptr %73, align 8
  %495 = call i32 @i2c_transfer(ptr noundef %494, ptr noundef nonnull %36, i32 noundef 1) #11
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %504, label %497

497:                                              ; preds = %493
  %498 = load ptr, ptr %74, align 4
  %499 = load i8, ptr %498, align 4
  %500 = zext i8 %499 to i32
  %501 = load i8, ptr %486, align 1
  %502 = zext i8 %501 to i32
  %503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %500, i32 noundef 62068, i32 noundef %502) #10
  br label %504

504:                                              ; preds = %497, %493
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %35) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %33) #11
  %505 = getelementptr inbounds i8, ptr %33, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %505, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #11
  %506 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 3, ptr %506, align 4, !annotation !8
  %507 = load ptr, ptr %74, align 4
  %508 = load i8, ptr %507, align 4
  %509 = zext i8 %508 to i16
  store i16 %509, ptr %34, align 4
  %510 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %510, align 2
  %511 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %511, align 4
  store i8 -14, ptr %33, align 1
  %512 = getelementptr inbounds [64 x i8], ptr %33, i32 0, i32 1
  store i8 -128, ptr %512, align 1
  %513 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 64, ptr %513, align 1
  %514 = load i32, ptr @i2cdebug, align 4
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %520, label %516

516:                                              ; preds = %504
  %517 = load i8, ptr %507, align 4
  %518 = zext i8 %517 to i32
  %519 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %518, i32 noundef 62080, i32 noundef 64) #10
  br label %520

520:                                              ; preds = %516, %504
  %521 = load ptr, ptr %73, align 8
  %522 = call i32 @i2c_transfer(ptr noundef %521, ptr noundef nonnull %34, i32 noundef 1) #11
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %531, label %524

524:                                              ; preds = %520
  %525 = load ptr, ptr %74, align 4
  %526 = load i8, ptr %525, align 4
  %527 = zext i8 %526 to i32
  %528 = load i8, ptr %513, align 1
  %529 = zext i8 %528 to i32
  %530 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %527, i32 noundef 62080, i32 noundef %529) #10
  br label %531

531:                                              ; preds = %524, %520
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %33) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #11
  %532 = getelementptr inbounds i8, ptr %31, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %532, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  %533 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 3, ptr %533, align 4, !annotation !8
  %534 = load ptr, ptr %74, align 4
  %535 = load i8, ptr %534, align 4
  %536 = zext i8 %535 to i16
  store i16 %536, ptr %32, align 4
  %537 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %537, align 2
  %538 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %538, align 4
  store i8 -14, ptr %31, align 1
  %539 = getelementptr inbounds [64 x i8], ptr %31, i32 0, i32 1
  store i8 114, ptr %539, align 1
  %540 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 113, ptr %540, align 1
  %541 = load i32, ptr @i2cdebug, align 4
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %547, label %543

543:                                              ; preds = %531
  %544 = load i8, ptr %534, align 4
  %545 = zext i8 %544 to i32
  %546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %545, i32 noundef 62066, i32 noundef 113) #10
  br label %547

547:                                              ; preds = %543, %531
  %548 = load ptr, ptr %73, align 8
  %549 = call i32 @i2c_transfer(ptr noundef %548, ptr noundef nonnull %32, i32 noundef 1) #11
  %550 = icmp eq i32 %549, 1
  br i1 %550, label %558, label %551

551:                                              ; preds = %547
  %552 = load ptr, ptr %74, align 4
  %553 = load i8, ptr %552, align 4
  %554 = zext i8 %553 to i32
  %555 = load i8, ptr %540, align 1
  %556 = zext i8 %555 to i32
  %557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %554, i32 noundef 62066, i32 noundef %556) #10
  br label %558

558:                                              ; preds = %551, %547
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #11
  %559 = getelementptr inbounds i8, ptr %29, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %559, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #11
  %560 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 3, ptr %560, align 4, !annotation !8
  %561 = load ptr, ptr %74, align 4
  %562 = load i8, ptr %561, align 4
  %563 = zext i8 %562 to i16
  store i16 %563, ptr %30, align 4
  %564 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %564, align 2
  %565 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %565, align 4
  store i8 -14, ptr %29, align 1
  %566 = getelementptr inbounds [64 x i8], ptr %29, i32 0, i32 1
  store i8 114, ptr %566, align 1
  %567 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 112, ptr %567, align 1
  %568 = load i32, ptr @i2cdebug, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %558
  %571 = load i8, ptr %561, align 4
  %572 = zext i8 %571 to i32
  %573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %572, i32 noundef 62066, i32 noundef 112) #10
  br label %574

574:                                              ; preds = %570, %558
  %575 = load ptr, ptr %73, align 8
  %576 = call i32 @i2c_transfer(ptr noundef %575, ptr noundef nonnull %30, i32 noundef 1) #11
  %577 = icmp eq i32 %576, 1
  br i1 %577, label %585, label %578

578:                                              ; preds = %574
  %579 = load ptr, ptr %74, align 4
  %580 = load i8, ptr %579, align 4
  %581 = zext i8 %580 to i32
  %582 = load i8, ptr %567, align 1
  %583 = zext i8 %582 to i32
  %584 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %581, i32 noundef 62066, i32 noundef %583) #10
  br label %585

585:                                              ; preds = %578, %574
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #11
  %586 = getelementptr inbounds i8, ptr %27, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %586, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  %587 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 3, ptr %587, align 4, !annotation !8
  %588 = load ptr, ptr %74, align 4
  %589 = load i8, ptr %588, align 4
  %590 = zext i8 %589 to i16
  store i16 %590, ptr %28, align 4
  %591 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %591, align 2
  %592 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %592, align 4
  store i8 -16, ptr %27, align 1
  %593 = getelementptr inbounds [64 x i8], ptr %27, i32 0, i32 1
  store i8 2, ptr %593, align 1
  %594 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 16, ptr %594, align 1
  %595 = load i32, ptr @i2cdebug, align 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %601, label %597

597:                                              ; preds = %585
  %598 = load i8, ptr %588, align 4
  %599 = zext i8 %598 to i32
  %600 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %599, i32 noundef 61442, i32 noundef 16) #10
  br label %601

601:                                              ; preds = %597, %585
  %602 = load ptr, ptr %73, align 8
  %603 = call i32 @i2c_transfer(ptr noundef %602, ptr noundef nonnull %28, i32 noundef 1) #11
  %604 = icmp eq i32 %603, 1
  br i1 %604, label %612, label %605

605:                                              ; preds = %601
  %606 = load ptr, ptr %74, align 4
  %607 = load i8, ptr %606, align 4
  %608 = zext i8 %607 to i32
  %609 = load i8, ptr %594, align 1
  %610 = zext i8 %609 to i32
  %611 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %608, i32 noundef 61442, i32 noundef %610) #10
  br label %612

612:                                              ; preds = %605, %601
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #11
  %613 = getelementptr inbounds i8, ptr %25, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %613, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %614 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 3, ptr %614, align 4, !annotation !8
  %615 = load ptr, ptr %74, align 4
  %616 = load i8, ptr %615, align 4
  %617 = zext i8 %616 to i16
  store i16 %617, ptr %26, align 4
  %618 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %618, align 2
  %619 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %619, align 4
  store i8 -16, ptr %25, align 1
  %620 = getelementptr inbounds [64 x i8], ptr %25, i32 0, i32 1
  store i8 22, ptr %620, align 1
  %621 = getelementptr inbounds i8, ptr %25, i32 2
  store i8 1, ptr %621, align 1
  %622 = load i32, ptr @i2cdebug, align 4
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %628, label %624

624:                                              ; preds = %612
  %625 = load i8, ptr %615, align 4
  %626 = zext i8 %625 to i32
  %627 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %626, i32 noundef 61462, i32 noundef 1) #10
  br label %628

628:                                              ; preds = %624, %612
  %629 = load ptr, ptr %73, align 8
  %630 = call i32 @i2c_transfer(ptr noundef %629, ptr noundef nonnull %26, i32 noundef 1) #11
  %631 = icmp eq i32 %630, 1
  br i1 %631, label %639, label %632

632:                                              ; preds = %628
  %633 = load ptr, ptr %74, align 4
  %634 = load i8, ptr %633, align 4
  %635 = zext i8 %634 to i32
  %636 = load i8, ptr %621, align 1
  %637 = zext i8 %636 to i32
  %638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %635, i32 noundef 61462, i32 noundef %637) #10
  br label %639

639:                                              ; preds = %632, %628
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #11
  %640 = getelementptr inbounds i8, ptr %23, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %640, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %641 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 3, ptr %641, align 4, !annotation !8
  %642 = load ptr, ptr %74, align 4
  %643 = load i8, ptr %642, align 4
  %644 = zext i8 %643 to i16
  store i16 %644, ptr %24, align 4
  %645 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %645, align 2
  %646 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %646, align 4
  store i8 -16, ptr %23, align 1
  %647 = getelementptr inbounds [64 x i8], ptr %23, i32 0, i32 1
  store i8 23, ptr %647, align 1
  %648 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 -118, ptr %648, align 1
  %649 = load i32, ptr @i2cdebug, align 4
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %655, label %651

651:                                              ; preds = %639
  %652 = load i8, ptr %642, align 4
  %653 = zext i8 %652 to i32
  %654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %653, i32 noundef 61463, i32 noundef 138) #10
  br label %655

655:                                              ; preds = %651, %639
  %656 = load ptr, ptr %73, align 8
  %657 = call i32 @i2c_transfer(ptr noundef %656, ptr noundef nonnull %24, i32 noundef 1) #11
  %658 = icmp eq i32 %657, 1
  br i1 %658, label %666, label %659

659:                                              ; preds = %655
  %660 = load ptr, ptr %74, align 4
  %661 = load i8, ptr %660, align 4
  %662 = zext i8 %661 to i32
  %663 = load i8, ptr %648, align 1
  %664 = zext i8 %663 to i32
  %665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %662, i32 noundef 61463, i32 noundef %664) #10
  br label %666

666:                                              ; preds = %659, %655
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #11
  %667 = getelementptr inbounds i8, ptr %21, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %667, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %668 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 3, ptr %668, align 4, !annotation !8
  %669 = load ptr, ptr %74, align 4
  %670 = load i8, ptr %669, align 4
  %671 = zext i8 %670 to i16
  store i16 %671, ptr %22, align 4
  %672 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %672, align 2
  %673 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %673, align 4
  store i8 -12, ptr %21, align 1
  %674 = getelementptr inbounds [64 x i8], ptr %21, i32 0, i32 1
  store i8 -72, ptr %674, align 1
  %675 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 -123, ptr %675, align 1
  %676 = load i32, ptr @i2cdebug, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %682, label %678

678:                                              ; preds = %666
  %679 = load i8, ptr %669, align 4
  %680 = zext i8 %679 to i32
  %681 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %680, i32 noundef 62648, i32 noundef 133) #10
  br label %682

682:                                              ; preds = %678, %666
  %683 = load ptr, ptr %73, align 8
  %684 = call i32 @i2c_transfer(ptr noundef %683, ptr noundef nonnull %22, i32 noundef 1) #11
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %693, label %686

686:                                              ; preds = %682
  %687 = load ptr, ptr %74, align 4
  %688 = load i8, ptr %687, align 4
  %689 = zext i8 %688 to i32
  %690 = load i8, ptr %675, align 1
  %691 = zext i8 %690 to i32
  %692 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %689, i32 noundef 62648, i32 noundef %691) #10
  br label %693

693:                                              ; preds = %686, %682
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #11
  %694 = getelementptr inbounds i8, ptr %19, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %694, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %695 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %695, align 4, !annotation !8
  %696 = load ptr, ptr %74, align 4
  %697 = load i8, ptr %696, align 4
  %698 = zext i8 %697 to i16
  store i16 %698, ptr %20, align 4
  %699 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %699, align 2
  %700 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %700, align 4
  store i8 -16, ptr %19, align 1
  %701 = getelementptr inbounds [64 x i8], ptr %19, i32 0, i32 1
  store i8 -63, ptr %701, align 1
  %702 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 13, ptr %702, align 1
  %703 = load i32, ptr @i2cdebug, align 4
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %709, label %705

705:                                              ; preds = %693
  %706 = load i8, ptr %696, align 4
  %707 = zext i8 %706 to i32
  %708 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %707, i32 noundef 61633, i32 noundef 13) #10
  br label %709

709:                                              ; preds = %705, %693
  %710 = load ptr, ptr %73, align 8
  %711 = call i32 @i2c_transfer(ptr noundef %710, ptr noundef nonnull %20, i32 noundef 1) #11
  %712 = icmp eq i32 %711, 1
  br i1 %712, label %720, label %713

713:                                              ; preds = %709
  %714 = load ptr, ptr %74, align 4
  %715 = load i8, ptr %714, align 4
  %716 = zext i8 %715 to i32
  %717 = load i8, ptr %702, align 1
  %718 = zext i8 %717 to i32
  %719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %716, i32 noundef 61633, i32 noundef %718) #10
  br label %720

720:                                              ; preds = %713, %709
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #11
  %721 = load ptr, ptr %74, align 4
  %722 = getelementptr inbounds %struct.stv0367_config, ptr %721, i32 0, i32 1
  %723 = load i32, ptr %722, align 4
  call fastcc void @stv0367_pll_setup(ptr noundef %62, i32 noundef 58000000, i32 noundef %723) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #11
  %724 = getelementptr inbounds i8, ptr %17, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %724, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %725 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 3, ptr %725, align 4, !annotation !8
  %726 = load ptr, ptr %74, align 4
  %727 = load i8, ptr %726, align 4
  %728 = zext i8 %727 to i16
  store i16 %728, ptr %18, align 4
  %729 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %729, align 2
  %730 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %730, align 4
  store i8 -16, ptr %17, align 1
  %731 = getelementptr inbounds [64 x i8], ptr %17, i32 0, i32 1
  store i8 -41, ptr %731, align 1
  %732 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 -117, ptr %732, align 1
  %733 = load i32, ptr @i2cdebug, align 4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %739, label %735

735:                                              ; preds = %720
  %736 = load i8, ptr %726, align 4
  %737 = zext i8 %736 to i32
  %738 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %737, i32 noundef 61655, i32 noundef 139) #10
  br label %739

739:                                              ; preds = %735, %720
  %740 = load ptr, ptr %73, align 8
  %741 = call i32 @i2c_transfer(ptr noundef %740, ptr noundef nonnull %18, i32 noundef 1) #11
  %742 = icmp eq i32 %741, 1
  br i1 %742, label %750, label %743

743:                                              ; preds = %739
  %744 = load ptr, ptr %74, align 4
  %745 = load i8, ptr %744, align 4
  %746 = zext i8 %745 to i32
  %747 = load i8, ptr %732, align 1
  %748 = zext i8 %747 to i32
  %749 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %746, i32 noundef 61655, i32 noundef %748) #10
  br label %750

750:                                              ; preds = %743, %739
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #11
  %751 = getelementptr inbounds i8, ptr %15, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %751, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %752 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 3, ptr %752, align 4, !annotation !8
  %753 = load ptr, ptr %74, align 4
  %754 = load i8, ptr %753, align 4
  %755 = zext i8 %754 to i16
  store i16 %755, ptr %16, align 4
  %756 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %756, align 2
  %757 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %757, align 4
  store i8 -16, ptr %15, align 1
  %758 = getelementptr inbounds [64 x i8], ptr %15, i32 0, i32 1
  store i8 -37, ptr %758, align 1
  %759 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 4, ptr %759, align 1
  %760 = load i32, ptr @i2cdebug, align 4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %766, label %762

762:                                              ; preds = %750
  %763 = load i8, ptr %753, align 4
  %764 = zext i8 %763 to i32
  %765 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %764, i32 noundef 61659, i32 noundef 4) #10
  br label %766

766:                                              ; preds = %762, %750
  %767 = load ptr, ptr %73, align 8
  %768 = call i32 @i2c_transfer(ptr noundef %767, ptr noundef nonnull %16, i32 noundef 1) #11
  %769 = icmp eq i32 %768, 1
  br i1 %769, label %777, label %770

770:                                              ; preds = %766
  %771 = load ptr, ptr %74, align 4
  %772 = load i8, ptr %771, align 4
  %773 = zext i8 %772 to i32
  %774 = load i8, ptr %759, align 1
  %775 = zext i8 %774 to i32
  %776 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %773, i32 noundef 61659, i32 noundef %775) #10
  br label %777

777:                                              ; preds = %770, %766
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  %778 = getelementptr inbounds i8, ptr %13, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %778, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %779 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %779, align 4, !annotation !8
  %780 = load ptr, ptr %74, align 4
  %781 = load i8, ptr %780, align 4
  %782 = zext i8 %781 to i16
  store i16 %782, ptr %14, align 4
  %783 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %783, align 2
  %784 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %784, align 4
  store i8 -12, ptr %13, align 1
  %785 = getelementptr inbounds [64 x i8], ptr %13, i32 0, i32 1
  store i8 101, ptr %785, align 1
  %786 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 35, ptr %786, align 1
  %787 = load i32, ptr @i2cdebug, align 4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %793, label %789

789:                                              ; preds = %777
  %790 = load i8, ptr %780, align 4
  %791 = zext i8 %790 to i32
  %792 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %791, i32 noundef 62565, i32 noundef 35) #10
  br label %793

793:                                              ; preds = %789, %777
  %794 = load ptr, ptr %73, align 8
  %795 = call i32 @i2c_transfer(ptr noundef %794, ptr noundef nonnull %14, i32 noundef 1) #11
  %796 = icmp eq i32 %795, 1
  br i1 %796, label %804, label %797

797:                                              ; preds = %793
  %798 = load ptr, ptr %74, align 4
  %799 = load i8, ptr %798, align 4
  %800 = zext i8 %799 to i32
  %801 = load i8, ptr %786, align 1
  %802 = zext i8 %801 to i32
  %803 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %800, i32 noundef 62565, i32 noundef %802) #10
  br label %804

804:                                              ; preds = %797, %793
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %805 = getelementptr inbounds i8, ptr %11, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %805, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %806 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %806, align 4, !annotation !8
  %807 = load ptr, ptr %74, align 4
  %808 = load i8, ptr %807, align 4
  %809 = zext i8 %808 to i16
  store i16 %809, ptr %12, align 4
  %810 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %810, align 2
  %811 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %811, align 4
  store i8 -12, ptr %11, align 1
  %812 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 1
  store i8 92, ptr %812, align 1
  %813 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 1, ptr %813, align 1
  %814 = load i32, ptr @i2cdebug, align 4
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %820, label %816

816:                                              ; preds = %804
  %817 = load i8, ptr %807, align 4
  %818 = zext i8 %817 to i32
  %819 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %818, i32 noundef 62556, i32 noundef 1) #10
  br label %820

820:                                              ; preds = %816, %804
  %821 = load ptr, ptr %73, align 8
  %822 = call i32 @i2c_transfer(ptr noundef %821, ptr noundef nonnull %12, i32 noundef 1) #11
  %823 = icmp eq i32 %822, 1
  br i1 %823, label %831, label %824

824:                                              ; preds = %820
  %825 = load ptr, ptr %74, align 4
  %826 = load i8, ptr %825, align 4
  %827 = zext i8 %826 to i32
  %828 = load i8, ptr %813, align 1
  %829 = zext i8 %828 to i32
  %830 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %827, i32 noundef 62556, i32 noundef %829) #10
  br label %831

831:                                              ; preds = %824, %820
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %832 = getelementptr inbounds i8, ptr %9, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %832, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %833 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %833, align 4, !annotation !8
  %834 = load ptr, ptr %74, align 4
  %835 = load i8, ptr %834, align 4
  %836 = zext i8 %835 to i16
  store i16 %836, ptr %10, align 4
  %837 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %837, align 2
  %838 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %838, align 4
  store i8 -12, ptr %9, align 1
  %839 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 1
  store i8 -114, ptr %839, align 1
  %840 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 -125, ptr %840, align 1
  %841 = load i32, ptr @i2cdebug, align 4
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %847, label %843

843:                                              ; preds = %831
  %844 = load i8, ptr %834, align 4
  %845 = zext i8 %844 to i32
  %846 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %845, i32 noundef 62606, i32 noundef 131) #10
  br label %847

847:                                              ; preds = %843, %831
  %848 = load ptr, ptr %73, align 8
  %849 = call i32 @i2c_transfer(ptr noundef %848, ptr noundef nonnull %10, i32 noundef 1) #11
  %850 = icmp eq i32 %849, 1
  br i1 %850, label %858, label %851

851:                                              ; preds = %847
  %852 = load ptr, ptr %74, align 4
  %853 = load i8, ptr %852, align 4
  %854 = zext i8 %853 to i32
  %855 = load i8, ptr %840, align 1
  %856 = zext i8 %855 to i32
  %857 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %854, i32 noundef 62606, i32 noundef %856) #10
  br label %858

858:                                              ; preds = %851, %847
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %859 = getelementptr inbounds i8, ptr %7, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %859, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %860 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %860, align 4, !annotation !8
  %861 = load ptr, ptr %74, align 4
  %862 = load i8, ptr %861, align 4
  %863 = zext i8 %862 to i16
  store i16 %863, ptr %8, align 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %864, align 2
  %865 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %865, align 4
  store i8 -12, ptr %7, align 1
  %866 = getelementptr inbounds [64 x i8], ptr %7, i32 0, i32 1
  store i8 60, ptr %866, align 1
  %867 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 5, ptr %867, align 1
  %868 = load i32, ptr @i2cdebug, align 4
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %874, label %870

870:                                              ; preds = %858
  %871 = load i8, ptr %861, align 4
  %872 = zext i8 %871 to i32
  %873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %872, i32 noundef 62524, i32 noundef 5) #10
  br label %874

874:                                              ; preds = %870, %858
  %875 = load ptr, ptr %73, align 8
  %876 = call i32 @i2c_transfer(ptr noundef %875, ptr noundef nonnull %8, i32 noundef 1) #11
  %877 = icmp eq i32 %876, 1
  br i1 %877, label %885, label %878

878:                                              ; preds = %874
  %879 = load ptr, ptr %74, align 4
  %880 = load i8, ptr %879, align 4
  %881 = zext i8 %880 to i32
  %882 = load i8, ptr %867, align 1
  %883 = zext i8 %882 to i32
  %884 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %881, i32 noundef 62524, i32 noundef %883) #10
  br label %885

885:                                              ; preds = %878, %874
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %886 = getelementptr inbounds i8, ptr %5, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %886, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %887 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %887, align 4, !annotation !8
  %888 = load ptr, ptr %74, align 4
  %889 = load i8, ptr %888, align 4
  %890 = zext i8 %889 to i16
  store i16 %890, ptr %6, align 4
  %891 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %891, align 2
  %892 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %892, align 4
  store i8 -16, ptr %5, align 1
  %893 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 1
  store i8 -63, ptr %893, align 1
  %894 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %894, align 1
  %895 = load i32, ptr @i2cdebug, align 4
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %901, label %897

897:                                              ; preds = %885
  %898 = load i8, ptr %888, align 4
  %899 = zext i8 %898 to i32
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %899, i32 noundef 61633, i32 noundef 0) #10
  br label %901

901:                                              ; preds = %897, %885
  %902 = load ptr, ptr %73, align 8
  %903 = call i32 @i2c_transfer(ptr noundef %902, ptr noundef nonnull %6, i32 noundef 1) #11
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %912, label %905

905:                                              ; preds = %901
  %906 = load ptr, ptr %74, align 4
  %907 = load i8, ptr %906, align 4
  %908 = zext i8 %907 to i32
  %909 = load i8, ptr %894, align 1
  %910 = zext i8 %909 to i32
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %908, i32 noundef 61633, i32 noundef %910) #10
  br label %912

912:                                              ; preds = %905, %901
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %913 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %913, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %914 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %914, align 4, !annotation !8
  %915 = load ptr, ptr %74, align 4
  %916 = load i8, ptr %915, align 4
  %917 = zext i8 %916 to i16
  store i16 %917, ptr %4, align 4
  %918 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %918, align 2
  %919 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %919, align 4
  store i8 -16, ptr %3, align 1
  %920 = getelementptr inbounds [64 x i8], ptr %3, i32 0, i32 1
  store i8 1, ptr %920, align 1
  %921 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 88, ptr %921, align 1
  %922 = load i32, ptr @i2cdebug, align 4
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %928, label %924

924:                                              ; preds = %912
  %925 = load i8, ptr %915, align 4
  %926 = zext i8 %925 to i32
  %927 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %926, i32 noundef 61441, i32 noundef 88) #10
  br label %928

928:                                              ; preds = %924, %912
  %929 = load ptr, ptr %73, align 8
  %930 = call i32 @i2c_transfer(ptr noundef %929, ptr noundef nonnull %4, i32 noundef 1) #11
  %931 = icmp eq i32 %930, 1
  br i1 %931, label %939, label %932

932:                                              ; preds = %928
  %933 = load ptr, ptr %74, align 4
  %934 = load i8, ptr %933, align 4
  %935 = zext i8 %934 to i32
  %936 = load i8, ptr %921, align 1
  %937 = zext i8 %936 to i32
  %938 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %935, i32 noundef 61441, i32 noundef %937) #10
  br label %939

939:                                              ; preds = %932, %928
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %940 = getelementptr inbounds %struct.stv0367ter_state, ptr %101, i32 0, i32 10
  store i32 0, ptr %940, align 4
  %941 = getelementptr inbounds %struct.stv0367ter_state, ptr %101, i32 0, i32 14
  store i8 0, ptr %941, align 1
  %942 = getelementptr inbounds %struct.stv0367ter_state, ptr %101, i32 0, i32 15
  store i8 2, ptr %942, align 2
  %943 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 42
  store i8 1, ptr %943, align 4
  %944 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %944, align 1
  %945 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 43
  store i8 1, ptr %945, align 1
  %946 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %946, align 2
  %947 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 48
  store i8 1, ptr %947, align 2
  %948 = getelementptr inbounds %struct.dvb_frontend, ptr %62, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %948, align 1
  br label %952

949:                                              ; preds = %94, %68, %64, %2
  %950 = phi ptr [ null, %2 ], [ null, %64 ], [ %66, %68 ], [ %66, %94 ]
  %951 = phi ptr [ null, %2 ], [ null, %64 ], [ null, %68 ], [ %70, %94 ]
  tail call void @kfree(ptr noundef %951) #11
  tail call void @kfree(ptr noundef %950) #11
  tail call void @kfree(ptr noundef %62) #11
  br label %952

952:                                              ; preds = %949, %939
  %953 = phi ptr [ null, %949 ], [ %62, %939 ]
  ret ptr %953
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stv0367_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv0367_state, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.stv0367_state, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #11
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stv0367_state, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @stvdebug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_init) #10
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.stv0367ter_state, ptr %9, i32 0, i32 10
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stv0367_state, ptr %7, i32 0, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr [2 x [3 x ptr]], ptr @stv0367_deftabs, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %23, %14
  %24 = phi i16 [ %30, %23 ], [ %21, %14 ]
  %25 = phi i32 [ %28, %23 ], [ 0, %14 ]
  %26 = getelementptr %struct.st_register, ptr %20, i32 %25, i32 1
  %27 = load i8, ptr %26, align 2
  tail call fastcc void @stv0367_writereg(ptr noundef %7, i16 noundef zeroext %24, i8 noundef zeroext %27) #11
  %28 = add i32 %25, 1
  %29 = getelementptr %struct.st_register, ptr %20, i32 %28
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %23

32:                                               ; preds = %23, %14
  %33 = getelementptr inbounds %struct.stv0367_state, ptr %7, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stv0367_config, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  tail call fastcc void @stv0367_pll_setup(ptr noundef %7, i32 noundef 53125000, i32 noundef %36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %37 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %37, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %38 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %33, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %5, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %43, align 4
  store i8 -16, ptr %4, align 1
  %44 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 1, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 -96, ptr %45, align 1
  %46 = load i32, ptr @i2cdebug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load i8, ptr %39, align 4
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %50, i32 noundef 61441, i32 noundef 160) #10
  br label %52

52:                                               ; preds = %48, %32
  %53 = getelementptr inbounds %struct.stv0367_state, ptr %7, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %5, i32 noundef 1) #11
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %33, align 4
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %45, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %60, i32 noundef 61441, i32 noundef %62) #10
  br label %64

64:                                               ; preds = %57, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %65 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %65, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %66 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %66, align 4, !annotation !8
  %67 = load ptr, ptr %33, align 4
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %3, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %71, align 4
  store i8 -16, ptr %2, align 1
  %72 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 -63, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %73, align 1
  %74 = load i32, ptr @i2cdebug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = load i8, ptr %67, align 4
  %78 = zext i8 %77 to i32
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %78, i32 noundef 61633, i32 noundef 0) #10
  br label %80

80:                                               ; preds = %76, %64
  %81 = load ptr, ptr %53, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %3, i32 noundef 1) #11
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %33, align 4
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i32
  %88 = load i8, ptr %73, align 1
  %89 = zext i8 %88 to i32
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %87, i32 noundef 61633, i32 noundef %89) #10
  br label %91

91:                                               ; preds = %84, %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  %92 = load ptr, ptr %33, align 4
  %93 = getelementptr inbounds %struct.stv0367_config, ptr %92, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr @stvdebug, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_set_ts_mode) #10
  br label %99

99:                                               ; preds = %97, %91
  %100 = icmp eq ptr %7, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %99
  %102 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -4094) #11
  %103 = and i8 %102, -9
  call fastcc void @stv0367_writereg(ptr noundef nonnull %7, i16 noundef zeroext -4094, i8 noundef zeroext %103) #11
  %104 = icmp eq i32 %94, 1
  %105 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3470) #11
  br i1 %104, label %110, label %106

106:                                              ; preds = %101
  %107 = and i8 %105, -65
  call fastcc void @stv0367_writereg(ptr noundef nonnull %7, i16 noundef zeroext -3470, i8 noundef zeroext %107) #11
  %108 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3470) #11
  %109 = and i8 %108, 127
  br label %114

110:                                              ; preds = %101
  %111 = or i8 %105, 64
  call fastcc void @stv0367_writereg(ptr noundef nonnull %7, i16 noundef zeroext -3470, i8 noundef zeroext %111) #11
  %112 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3470) #11
  %113 = or i8 %112, -128
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i8 [ %113, %110 ], [ %109, %106 ]
  call fastcc void @stv0367_writereg(ptr noundef nonnull %7, i16 noundef zeroext -3470, i8 noundef zeroext %115) #11
  br label %116

116:                                              ; preds = %114, %99
  %117 = load ptr, ptr %33, align 4
  %118 = getelementptr inbounds %struct.stv0367_config, ptr %117, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr @stvdebug, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_set_clk_pol) #10
  br label %124

124:                                              ; preds = %122, %116
  br i1 %100, label %137, label %125

125:                                              ; preds = %124
  switch i32 %119, label %132 [
    i32 1, label %126
    i32 2, label %129
  ]

126:                                              ; preds = %125
  %127 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3902) #11
  %128 = or i8 %127, -128
  br label %135

129:                                              ; preds = %125
  %130 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3902) #11
  %131 = and i8 %130, 127
  br label %135

132:                                              ; preds = %125
  %133 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef nonnull %7, i16 noundef zeroext -3902) #11
  %134 = and i8 %133, 127
  br label %135

135:                                              ; preds = %132, %129, %126
  %136 = phi i8 [ %134, %132 ], [ %131, %129 ], [ %128, %126 ]
  call fastcc void @stv0367_writereg(ptr noundef nonnull %7, i16 noundef zeroext -3902, i8 noundef zeroext %136) #11
  br label %137

137:                                              ; preds = %135, %124
  %138 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %7, i16 noundef zeroext -4096)
  %139 = getelementptr inbounds %struct.stv0367_state, ptr %7, i32 0, i32 3
  store i8 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.stv0367ter_state, ptr %9, i32 0, i32 14
  store i8 0, ptr %140, align 1
  %141 = getelementptr inbounds %struct.stv0367ter_state, ptr %9, i32 0, i32 15
  store i8 2, ptr %141, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_standby) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -4094) #11
  %10 = or i8 %9, -128
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -4094, i8 noundef zeroext %10) #11
  %11 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -4094) #11
  %12 = or i8 %11, 64
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -4094, i8 noundef zeroext %12) #11
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -4094) #11
  %14 = or i8 %13, 32
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -4094, i8 noundef zeroext %14) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [64 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [64 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [64 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [64 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [64 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [64 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i8], align 2
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stv0367_state, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #11
  store i16 1, ptr %25, align 2
  %30 = getelementptr inbounds %struct.stv0367_state, ptr %27, i32 0, i32 8
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = tail call i32 @stv0367ter_init(ptr noundef %0)
  br label %35

35:                                               ; preds = %33, %1
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stv0367_state, ptr %27, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef %0, i32 noundef 1) #11
  %49 = load ptr, ptr %36, align 4
  br label %50

50:                                               ; preds = %47, %43, %39
  %51 = phi ptr [ %49, %47 ], [ %37, %43 ], [ %37, %39 ]
  %52 = tail call i32 %51(ptr noundef %0) #11
  %53 = load i8, ptr %40, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 %57(ptr noundef %0, i32 noundef 0) #11
  br label %61

61:                                               ; preds = %59, %55, %50, %35
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 4
  %70 = select i1 %69, i32 0, i32 %68
  %71 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 3
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 7000000
  %75 = select i1 %74, i8 7, i8 8
  %76 = icmp eq i32 %73, 6000000
  %77 = select i1 %76, i8 6, i8 %75
  %78 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 8
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 4
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %88, label %83

83:                                               ; preds = %61
  %84 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 14
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, i32 2, i32 1
  br label %88

88:                                               ; preds = %83, %61
  %89 = phi i32 [ %87, %83 ], [ 1, %61 ]
  store i32 13, ptr %29, align 4
  %90 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 14
  %91 = getelementptr inbounds %struct.stv0367ter_state, ptr %29, i32 0, i32 6
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %93 = getelementptr inbounds i8, ptr %12, i32 3
  %94 = getelementptr inbounds i8, ptr %13, i32 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %97 = getelementptr inbounds [64 x i8], ptr %12, i32 0, i32 1
  %98 = getelementptr inbounds i8, ptr %12, i32 2
  %99 = getelementptr inbounds i8, ptr %14, i32 3
  %100 = getelementptr inbounds i8, ptr %15, i32 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %103 = getelementptr inbounds [64 x i8], ptr %14, i32 0, i32 1
  %104 = getelementptr inbounds i8, ptr %14, i32 2
  %105 = getelementptr inbounds i8, ptr %16, i32 3
  %106 = getelementptr inbounds i8, ptr %17, i32 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %109 = getelementptr inbounds [64 x i8], ptr %16, i32 0, i32 1
  %110 = getelementptr inbounds i8, ptr %16, i32 2
  %111 = getelementptr inbounds i8, ptr %18, i32 3
  %112 = getelementptr inbounds i8, ptr %19, i32 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  %115 = getelementptr inbounds [64 x i8], ptr %18, i32 0, i32 1
  %116 = getelementptr inbounds i8, ptr %18, i32 2
  %117 = getelementptr inbounds i8, ptr %2, i32 3
  %118 = getelementptr inbounds i8, ptr %3, i32 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %121 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  %122 = getelementptr inbounds i8, ptr %2, i32 2
  %123 = getelementptr inbounds i8, ptr %4, i32 3
  %124 = getelementptr inbounds i8, ptr %5, i32 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %127 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  %128 = getelementptr inbounds i8, ptr %4, i32 2
  %129 = getelementptr inbounds i8, ptr %22, i32 3
  %130 = getelementptr inbounds i8, ptr %23, i32 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  %133 = getelementptr inbounds [64 x i8], ptr %22, i32 0, i32 1
  %134 = getelementptr inbounds i8, ptr %22, i32 2
  %135 = getelementptr inbounds i8, ptr %6, i32 3
  %136 = getelementptr inbounds i8, ptr %7, i32 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %139 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  %140 = getelementptr inbounds i8, ptr %6, i32 2
  %141 = getelementptr inbounds i8, ptr %8, i32 3
  %142 = getelementptr inbounds i8, ptr %9, i32 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %145 = getelementptr inbounds [64 x i8], ptr %8, i32 0, i32 1
  %146 = getelementptr inbounds i8, ptr %8, i32 2
  %147 = getelementptr inbounds i8, ptr %10, i32 3
  %148 = getelementptr inbounds i8, ptr %11, i32 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %151 = getelementptr inbounds [64 x i8], ptr %10, i32 0, i32 1
  %152 = getelementptr inbounds i8, ptr %10, i32 2
  %153 = getelementptr inbounds i8, ptr %20, i32 3
  %154 = getelementptr inbounds i8, ptr %21, i32 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  %157 = getelementptr inbounds [64 x i8], ptr %20, i32 0, i32 1
  %158 = getelementptr inbounds i8, ptr %20, i32 2
  %159 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  br label %160

160:                                              ; preds = %1076, %88
  %161 = phi i8 [ 1, %88 ], [ %1077, %1076 ]
  %162 = phi i32 [ 13, %88 ], [ %1066, %1076 ]
  %163 = phi i32 [ 0, %88 ], [ %1079, %1076 ]
  %164 = phi i8 [ 0, %88 ], [ %1078, %1076 ]
  %165 = icmp eq i32 %162, 12
  br i1 %165, label %1081, label %166

166:                                              ; preds = %160
  %167 = load i8, ptr %90, align 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i32, ptr %80, align 4
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = getelementptr [2 x i8], ptr %25, i32 0, i32 %163
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  store i32 %175, ptr %91, align 4
  br label %176

176:                                              ; preds = %172, %169, %166
  %177 = load ptr, ptr %26, align 4
  %178 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  store i32 0, ptr %24, align 4
  %180 = load i32, ptr @stvdebug, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %176
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_algo) #10
  br label %184

184:                                              ; preds = %182, %176
  %185 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 9
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.dvb_frontend, ptr %177, i32 0, i32 1, i32 32, i32 11
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = call i32 %190(ptr noundef %177, ptr noundef nonnull %24) #11
  %194 = load i32, ptr %24, align 4
  %195 = udiv i32 %194, 1000
  br label %201

196:                                              ; preds = %188, %184
  %197 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.stv0367_config, ptr %198, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  br label %201

201:                                              ; preds = %196, %192
  %202 = phi i32 [ %200, %196 ], [ %195, %192 ]
  store i32 %202, ptr %24, align 4
  %203 = load i32, ptr %92, align 4
  %204 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 5
  store i32 %203, ptr %204, align 4
  %205 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3964) #11
  %206 = lshr i8 %205, 3
  %207 = and i8 %206, 2
  %208 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 7
  store i8 %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.stv0367_config, ptr %210, i32 0, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 1
  store i32 %212, ptr %213, align 4
  %214 = load ptr, ptr %209, align 4
  %215 = getelementptr inbounds %struct.stv0367_config, ptr %214, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  switch i32 %216, label %251 [
    i32 0, label %217
    i32 1, label %229
    i32 2, label %241
  ]

217:                                              ; preds = %201
  %218 = load i32, ptr @stvdebug, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %222

222:                                              ; preds = %220, %217
  %223 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4094) #11
  %224 = and i8 %223, -3
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4094, i8 noundef zeroext %224) #11
  %225 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3989) #11
  %226 = and i8 %225, -2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3989, i8 noundef zeroext %226) #11
  %227 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3989) #11
  %228 = and i8 %227, -5
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3989, i8 noundef zeroext %228) #11
  br label %253

229:                                              ; preds = %201
  %230 = load i32, ptr @stvdebug, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %234

234:                                              ; preds = %232, %229
  %235 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4094) #11
  %236 = and i8 %235, -3
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4094, i8 noundef zeroext %236) #11
  %237 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3989) #11
  %238 = or i8 %237, 1
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3989, i8 noundef zeroext %238) #11
  %239 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3989) #11
  %240 = or i8 %239, 4
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3989, i8 noundef zeroext %240) #11
  br label %253

241:                                              ; preds = %201
  %242 = load i32, ptr @stvdebug, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %246

246:                                              ; preds = %244, %241
  %247 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4094) #11
  %248 = or i8 %247, 2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4094, i8 noundef zeroext %248) #11
  %249 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3943) #11
  %250 = and i8 %249, -5
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3943, i8 noundef zeroext %250) #11
  br label %253

251:                                              ; preds = %201
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %1065

253:                                              ; preds = %246, %234, %222
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #11
  %254 = load i32, ptr %80, align 4
  %255 = icmp ult i32 %254, 2
  br i1 %255, label %277, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr @stvdebug, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.stv0367ter_algo) #10
  br label %261

261:                                              ; preds = %259, %256
  %262 = load i32, ptr %213, align 4
  %263 = icmp eq i32 %262, 2
  %264 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 6
  %265 = load i32, ptr %264, align 4
  %266 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %267 = trunc i32 %265 to i8
  br i1 %263, label %268, label %273

268:                                              ; preds = %261
  %269 = shl i8 %267, 6
  %270 = and i8 %269, 64
  %271 = and i8 %266, -65
  %272 = or i8 %270, %271
  br label %291

273:                                              ; preds = %261
  %274 = shl i8 %267, 7
  %275 = and i8 %266, 127
  %276 = or i8 %274, %275
  br label %291

277:                                              ; preds = %253
  %278 = load i32, ptr %213, align 4
  %279 = icmp eq i32 %278, 2
  %280 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %281 = trunc i32 %254 to i8
  br i1 %279, label %282, label %287

282:                                              ; preds = %277
  %283 = shl nuw nsw i8 %281, 6
  %284 = and i8 %283, 64
  %285 = and i8 %280, -65
  %286 = or i8 %285, %284
  br label %291

287:                                              ; preds = %277
  %288 = shl nuw i8 %281, 7
  %289 = and i8 %280, 127
  %290 = or i8 %289, %288
  br label %291

291:                                              ; preds = %287, %282, %273, %268
  %292 = phi i8 [ %286, %282 ], [ %290, %287 ], [ %272, %268 ], [ %276, %273 ]
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4064, i8 noundef zeroext %292) #11
  %293 = load i32, ptr %213, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %511, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 9
  %297 = load i8, ptr %296, align 2
  %298 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 8
  %299 = load i8, ptr %298, align 1
  %300 = icmp eq i8 %297, %299
  br i1 %300, label %511, label %301

301:                                              ; preds = %295
  %302 = load i32, ptr @stvdebug, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %301
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_agc_iir_lock_detect_set) #10
  br label %306

306:                                              ; preds = %304, %301
  %307 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3977) #11
  %308 = and i8 %307, -16
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3977, i8 noundef zeroext %308) #11
  %309 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %310 = and i8 %309, -4
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %310) #11
  %311 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3978) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %93, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  store i32 3, ptr %94, align 4, !annotation !8
  %312 = load ptr, ptr %209, align 4
  %313 = load i8, ptr %312, align 4
  %314 = zext i8 %313 to i16
  store i16 %314, ptr %13, align 4
  store i16 0, ptr %95, align 2
  store ptr %12, ptr %96, align 4
  store i8 -16, ptr %12, align 1
  store i8 118, ptr %97, align 1
  store i8 6, ptr %98, align 1
  %315 = load i32, ptr @i2cdebug, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %306
  %318 = load i8, ptr %312, align 4
  %319 = zext i8 %318 to i32
  %320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %319, i32 noundef 61558, i32 noundef 6) #10
  br label %321

321:                                              ; preds = %317, %306
  %322 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 1
  %323 = load ptr, ptr %322, align 4
  %324 = call i32 @i2c_transfer(ptr noundef %323, ptr noundef nonnull %13, i32 noundef 1) #11
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %333, label %326

326:                                              ; preds = %321
  %327 = load ptr, ptr %209, align 4
  %328 = load i8, ptr %327, align 4
  %329 = zext i8 %328 to i32
  %330 = load i8, ptr %98, align 1
  %331 = zext i8 %330 to i32
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %329, i32 noundef 61558, i32 noundef %331) #10
  br label %333

333:                                              ; preds = %326, %321
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  %334 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3977) #11
  %335 = and i8 %334, 15
  %336 = or i8 %335, 64
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3977, i8 noundef zeroext %336) #11
  %337 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %338 = and i8 %337, -4
  %339 = or i8 %338, 1
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %339) #11
  %340 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3978) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %99, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  store i32 3, ptr %100, align 4, !annotation !8
  %341 = load ptr, ptr %209, align 4
  %342 = load i8, ptr %341, align 4
  %343 = zext i8 %342 to i16
  store i16 %343, ptr %15, align 4
  store i16 0, ptr %101, align 2
  store ptr %14, ptr %102, align 4
  store i8 -16, ptr %14, align 1
  store i8 118, ptr %103, align 1
  store i8 6, ptr %104, align 1
  %344 = load i32, ptr @i2cdebug, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %333
  %347 = load i8, ptr %341, align 4
  %348 = zext i8 %347 to i32
  %349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %348, i32 noundef 61558, i32 noundef 6) #10
  br label %350

350:                                              ; preds = %346, %333
  %351 = load ptr, ptr %322, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %15, i32 noundef 1) #11
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %361, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %209, align 4
  %356 = load i8, ptr %355, align 4
  %357 = zext i8 %356 to i32
  %358 = load i8, ptr %104, align 1
  %359 = zext i8 %358 to i32
  %360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %357, i32 noundef 61558, i32 noundef %359) #10
  br label %361

361:                                              ; preds = %354, %350
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  %362 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3977) #11
  %363 = and i8 %362, 15
  %364 = or i8 %363, 64
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3977, i8 noundef zeroext %364) #11
  %365 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %366 = and i8 %365, -4
  %367 = or i8 %366, 2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %367) #11
  %368 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3978) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %105, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  store i32 3, ptr %106, align 4, !annotation !8
  %369 = load ptr, ptr %209, align 4
  %370 = load i8, ptr %369, align 4
  %371 = zext i8 %370 to i16
  store i16 %371, ptr %17, align 4
  store i16 0, ptr %107, align 2
  store ptr %16, ptr %108, align 4
  store i8 -16, ptr %16, align 1
  store i8 118, ptr %109, align 1
  store i8 1, ptr %110, align 1
  %372 = load i32, ptr @i2cdebug, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %361
  %375 = load i8, ptr %369, align 4
  %376 = zext i8 %375 to i32
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %376, i32 noundef 61558, i32 noundef 1) #10
  br label %378

378:                                              ; preds = %374, %361
  %379 = load ptr, ptr %322, align 4
  %380 = call i32 @i2c_transfer(ptr noundef %379, ptr noundef nonnull %17, i32 noundef 1) #11
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %389, label %382

382:                                              ; preds = %378
  %383 = load ptr, ptr %209, align 4
  %384 = load i8, ptr %383, align 4
  %385 = zext i8 %384 to i32
  %386 = load i8, ptr %110, align 1
  %387 = zext i8 %386 to i32
  %388 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %385, i32 noundef 61558, i32 noundef %387) #10
  br label %389

389:                                              ; preds = %382, %378
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #11
  %390 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3977) #11
  %391 = and i8 %390, 15
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3977, i8 noundef zeroext %391) #11
  %392 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %393 = or i8 %392, 3
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %393) #11
  %394 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3978) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %111, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 3, ptr %112, align 4, !annotation !8
  %395 = load ptr, ptr %209, align 4
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i16
  store i16 %397, ptr %19, align 4
  store i16 0, ptr %113, align 2
  store ptr %18, ptr %114, align 4
  store i8 -16, ptr %18, align 1
  store i8 118, ptr %115, align 1
  store i8 1, ptr %116, align 1
  %398 = load i32, ptr @i2cdebug, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %404, label %400

400:                                              ; preds = %389
  %401 = load i8, ptr %395, align 4
  %402 = zext i8 %401 to i32
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %402, i32 noundef 61558, i32 noundef 1) #10
  br label %404

404:                                              ; preds = %400, %389
  %405 = load ptr, ptr %322, align 4
  %406 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %19, i32 noundef 1) #11
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %415, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %209, align 4
  %410 = load i8, ptr %409, align 4
  %411 = zext i8 %410 to i32
  %412 = load i8, ptr %116, align 1
  %413 = zext i8 %412 to i32
  %414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %411, i32 noundef 61558, i32 noundef %413) #10
  br label %415

415:                                              ; preds = %408, %404
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #11
  %416 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3977) #11
  %417 = and i8 %416, 15
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3977, i8 noundef zeroext %417) #11
  %418 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %419 = or i8 %418, 4
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %419) #11
  %420 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3979) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %117, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  store i32 3, ptr %118, align 4, !annotation !8
  %421 = load ptr, ptr %209, align 4
  %422 = load i8, ptr %421, align 4
  %423 = zext i8 %422 to i16
  store i16 %423, ptr %3, align 4
  store i16 0, ptr %119, align 2
  store ptr %2, ptr %120, align 4
  store i8 -16, ptr %2, align 1
  store i8 117, ptr %121, align 1
  store i8 11, ptr %122, align 1
  %424 = load i32, ptr @i2cdebug, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %430, label %426

426:                                              ; preds = %415
  %427 = load i8, ptr %421, align 4
  %428 = zext i8 %427 to i32
  %429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %428, i32 noundef 61557, i32 noundef 11) #10
  br label %430

430:                                              ; preds = %426, %415
  %431 = load ptr, ptr %322, align 4
  %432 = call i32 @i2c_transfer(ptr noundef %431, ptr noundef nonnull %3, i32 noundef 1) #11
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %441, label %434

434:                                              ; preds = %430
  %435 = load ptr, ptr %209, align 4
  %436 = load i8, ptr %435, align 4
  %437 = zext i8 %436 to i32
  %438 = load i8, ptr %122, align 1
  %439 = zext i8 %438 to i32
  %440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %437, i32 noundef 61557, i32 noundef %439) #10
  br label %441

441:                                              ; preds = %434, %430
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  %442 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3974) #11
  %443 = and i8 %442, -5
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3974, i8 noundef zeroext %443) #11
  %444 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3979) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %123, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  store i32 3, ptr %124, align 4, !annotation !8
  %445 = load ptr, ptr %209, align 4
  %446 = load i8, ptr %445, align 4
  %447 = zext i8 %446 to i16
  store i16 %447, ptr %5, align 4
  store i16 0, ptr %125, align 2
  store ptr %4, ptr %126, align 4
  store i8 -16, ptr %4, align 1
  store i8 117, ptr %127, align 1
  store i8 11, ptr %128, align 1
  %448 = load i32, ptr @i2cdebug, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %454, label %450

450:                                              ; preds = %441
  %451 = load i8, ptr %445, align 4
  %452 = zext i8 %451 to i32
  %453 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %452, i32 noundef 61557, i32 noundef 11) #10
  br label %454

454:                                              ; preds = %450, %441
  %455 = load ptr, ptr %322, align 4
  %456 = call i32 @i2c_transfer(ptr noundef %455, ptr noundef nonnull %5, i32 noundef 1) #11
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %465, label %458

458:                                              ; preds = %454
  %459 = load ptr, ptr %209, align 4
  %460 = load i8, ptr %459, align 4
  %461 = zext i8 %460 to i32
  %462 = load i8, ptr %128, align 1
  %463 = zext i8 %462 to i32
  %464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %461, i32 noundef 61557, i32 noundef %463) #10
  br label %465

465:                                              ; preds = %458, %454
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  %466 = load i8, ptr %298, align 1
  %467 = load ptr, ptr %209, align 4
  %468 = getelementptr inbounds %struct.stv0367_config, ptr %467, i32 0, i32 1
  %469 = load i32, ptr %468, align 4
  %470 = load i32, ptr @stvdebug, align 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %465
  %473 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367_iir_filt_init) #10
  br label %474

474:                                              ; preds = %472, %465
  %475 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4000) #11
  %476 = and i8 %475, 127
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4000, i8 noundef zeroext %476) #11
  switch i8 %466, label %1065 [
    i8 6, label %477
    i8 7, label %480
    i8 8, label %483
  ]

477:                                              ; preds = %474
  %478 = call fastcc i32 @stv0367ter_filt_coeff_init(ptr noundef %177, ptr noundef nonnull @CellsCoeffs_6MHz_367cofdm, i32 noundef %469) #11
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %1065, label %486

480:                                              ; preds = %474
  %481 = call fastcc i32 @stv0367ter_filt_coeff_init(ptr noundef %177, ptr noundef nonnull @CellsCoeffs_7MHz_367cofdm, i32 noundef %469) #11
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %1065, label %486

483:                                              ; preds = %474
  %484 = call fastcc i32 @stv0367ter_filt_coeff_init(ptr noundef %177, ptr noundef nonnull @CellsCoeffs_8MHz_367cofdm, i32 noundef %469) #11
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %1065, label %486

486:                                              ; preds = %483, %480, %477
  %487 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4000) #11
  %488 = or i8 %487, -128
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4000, i8 noundef zeroext %488) #11
  %489 = load i8, ptr %298, align 1
  store i8 %489, ptr %296, align 2
  %490 = load i32, ptr @stvdebug, align 4
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %494, label %492

492:                                              ; preds = %486
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_agc_iir_rst) #10
  br label %494

494:                                              ; preds = %492, %486
  %495 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3981) #11
  %496 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3981) #11
  %497 = and i8 %496, 7
  %498 = or i8 %497, 56
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3981, i8 noundef zeroext %498) #11
  %499 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3984) #11
  %500 = and i8 %499, 127
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3984, i8 noundef zeroext %500) #11
  %501 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3984) #11
  %502 = and i8 %501, -65
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3984, i8 noundef zeroext %502) #11
  %503 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3984) #11
  %504 = or i8 %503, -128
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3984, i8 noundef zeroext %504) #11
  %505 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3984) #11
  %506 = or i8 %505, 64
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3984, i8 noundef zeroext %506) #11
  %507 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3981) #11
  %508 = and i8 %495, -8
  %509 = and i8 %507, 7
  %510 = or i8 %509, %508
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3981, i8 noundef zeroext %510) #11
  br label %511

511:                                              ; preds = %494, %295, %291
  %512 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 4
  %513 = load i32, ptr %512, align 4
  %514 = icmp eq i32 %513, 1
  %515 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3931) #11
  %516 = and i8 %515, -3
  %517 = select i1 %514, i8 2, i8 0
  %518 = or i8 %516, %517
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3931, i8 noundef zeroext %518) #11
  %519 = load ptr, ptr %209, align 4
  %520 = getelementptr inbounds %struct.stv0367_config, ptr %519, i32 0, i32 1
  %521 = load i32, ptr %520, align 4
  %522 = call fastcc i32 @stv0367ter_get_mclk(ptr noundef %177, i32 noundef %521) #11
  %523 = udiv i32 %522, 1000
  %524 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 8
  %525 = load i8, ptr %524, align 1
  %526 = zext i8 %525 to i32
  %527 = mul i32 %526, 209715200
  %528 = udiv i32 %527, %523
  %529 = mul i32 %528, 10
  %530 = udiv i32 %529, 7
  %531 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3942) #11
  %532 = trunc i32 %530 to i8
  %533 = shl i8 %532, 7
  %534 = and i8 %531, 127
  %535 = or i8 %533, %534
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3942, i8 noundef zeroext %535) #11
  %536 = udiv i32 %529, 14
  %537 = udiv i32 %529, 3584
  %538 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3940) #11
  %539 = trunc i32 %537 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3940, i8 noundef zeroext %539) #11
  %540 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3941) #11
  %541 = trunc i32 %536 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3941, i8 noundef zeroext %541) #11
  %542 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3940) #11
  %543 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3941) #11
  %544 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3942) #11
  %545 = load i8, ptr %524, align 1
  %546 = zext i8 %545 to i32
  %547 = mul i32 %546, 131072000
  %548 = mul nuw nsw i32 %523, 7
  %549 = udiv i32 %547, %548
  %550 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %551 = lshr i32 %549, 8
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 15
  %554 = and i8 %550, -16
  %555 = or i8 %553, %554
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4064, i8 noundef zeroext %555) #11
  %556 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4063) #11
  %557 = trunc i32 %549 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4063, i8 noundef zeroext %557) #11
  %558 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %559 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4063) #11
  %560 = load i32, ptr %24, align 4
  %561 = sub i32 %523, %560
  %562 = shl i32 %561, 16
  %563 = udiv i32 %562, %523
  %564 = load i32, ptr @stvdebug, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %511
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %563) #10
  br label %568

568:                                              ; preds = %566, %511
  %569 = lshr i32 %563, 8
  %570 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4062) #11
  %571 = trunc i32 %569 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4062, i8 noundef zeroext %571) #11
  %572 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4061) #11
  %573 = trunc i32 %563 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4061, i8 noundef zeroext %573) #11
  %574 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 13
  store i8 0, ptr %574, align 4
  %575 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 12
  store i32 0, ptr %575, align 4
  %576 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 10
  store i32 0, ptr %576, align 4
  %577 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3951) #11
  %578 = and i8 %577, -121
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3951, i8 noundef zeroext %578) #11
  %579 = load i32, ptr @stvdebug, align 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %568
  %582 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_lock_algo) #10
  br label %583

583:                                              ; preds = %581, %568
  %584 = icmp eq ptr %177, null
  br i1 %584, label %1065, label %585

585:                                              ; preds = %676, %583
  %586 = phi i1 [ false, %676 ], [ true, %583 ]
  %587 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3968) #11
  %588 = and i8 %587, -33
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3968, i8 noundef zeroext %588) #11
  %589 = load ptr, ptr %209, align 4
  %590 = getelementptr inbounds %struct.stv0367_config, ptr %589, i32 0, i32 3
  %591 = load i32, ptr %590, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %597, label %593

593:                                              ; preds = %585
  %594 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3981) #11
  %595 = and i8 %594, 7
  %596 = or i8 %595, 56
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3981, i8 noundef zeroext %596) #11
  br label %597

597:                                              ; preds = %593, %585
  %598 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3964) #11
  %599 = or i8 %598, 3
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3964, i8 noundef zeroext %599) #11
  %600 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3964) #11
  %601 = and i8 %600, -13
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3964, i8 noundef zeroext %601) #11
  %602 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3951) #11
  %603 = and i8 %602, -2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3951, i8 noundef zeroext %603) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  %604 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3968) #11
  %605 = or i8 %604, 32
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3968, i8 noundef zeroext %605) #11
  %606 = load i32, ptr @stvdebug, align 4
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %597
  %609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_check_syr) #10
  br label %610

610:                                              ; preds = %608, %597
  %611 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %612 = and i8 %611, 64
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %614, %610
  %615 = phi i32 [ %616, %614 ], [ 100, %610 ]
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %616 = add nsw i32 %615, -2
  %617 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %618 = and i8 %617, 64
  %619 = icmp eq i8 %618, 0
  %620 = icmp ugt i32 %615, 2
  %621 = select i1 %619, i1 %620, i1 false
  br i1 %621, label %614, label %622

622:                                              ; preds = %614, %610
  %623 = phi i1 [ false, %610 ], [ %619, %614 ]
  %624 = load i32, ptr @stvdebug, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %629, label %626

626:                                              ; preds = %622
  %627 = select i1 %623, ptr @.str.23, ptr @.str.24
  %628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %627) #10
  br label %629

629:                                              ; preds = %626, %622
  br i1 %623, label %1065, label %630

630:                                              ; preds = %629
  %631 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3950) #11
  %632 = lshr i8 %631, 2
  %633 = load i32, ptr @stvdebug, align 4
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %637, label %635

635:                                              ; preds = %630
  %636 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_check_cpamp) #10
  br label %637

637:                                              ; preds = %635, %630
  %638 = trunc i8 %632 to i2
  switch i2 %638, label %641 [
    i2 0, label %642
    i2 1, label %639
    i2 -2, label %640
  ]

639:                                              ; preds = %637
  br label %642

640:                                              ; preds = %637
  br label %642

641:                                              ; preds = %637
  br label %642

642:                                              ; preds = %641, %640, %639, %637
  %643 = phi i1 [ true, %637 ], [ true, %639 ], [ true, %640 ], [ false, %641 ]
  %644 = phi i32 [ 10, %637 ], [ 55, %639 ], [ 30, %640 ], [ 0, %641 ]
  %645 = phi i32 [ 20, %637 ], [ 80, %639 ], [ 40, %640 ], [ 65535, %641 ]
  %646 = load i32, ptr @stvdebug, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %650, label %648

648:                                              ; preds = %642
  %649 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.stv0367ter_check_cpamp, i32 noundef %645, i32 noundef %644) #10
  br label %650

650:                                              ; preds = %648, %642
  %651 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4060) #11
  %652 = zext i8 %651 to i32
  %653 = icmp ugt i32 %645, %652
  %654 = and i1 %643, %653
  br i1 %654, label %655, label %663

655:                                              ; preds = %655, %650
  %656 = phi i32 [ %657, %655 ], [ %644, %650 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %657 = add nsw i32 %656, -1
  %658 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4060) #11
  %659 = zext i8 %658 to i32
  %660 = icmp ugt i32 %645, %659
  %661 = icmp ugt i32 %656, 1
  %662 = select i1 %660, i1 %661, i1 false
  br i1 %662, label %655, label %663

663:                                              ; preds = %655, %650
  %664 = phi i32 [ %644, %650 ], [ %657, %655 ]
  %665 = phi i32 [ %652, %650 ], [ %659, %655 ]
  %666 = phi i1 [ %653, %650 ], [ %660, %655 ]
  %667 = load i32, ptr @stvdebug, align 4
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %676, label %669

669:                                              ; preds = %663
  %670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %665, i32 noundef %664) #10
  %671 = load i32, ptr @stvdebug, align 4
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %669
  %674 = select i1 %666, ptr @.str.27, ptr @.str.28
  %675 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %674, ptr noundef nonnull @__func__.stv0367ter_check_cpamp) #10
  br label %676

676:                                              ; preds = %673, %669, %663
  %677 = and i1 %586, %666
  br i1 %677, label %585, label %678

678:                                              ; preds = %676
  %679 = trunc i8 %632 to i2
  %680 = and i8 %632, 3
  %681 = zext i8 %680 to i32
  %682 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3950) #11
  %683 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %684 = load i32, ptr @stvdebug, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %694, label %686

686:                                              ; preds = %678
  %687 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %177) #10
  %688 = load i32, ptr @stvdebug, align 4
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %694, label %690

690:                                              ; preds = %686
  %691 = zext i8 %682 to i32
  %692 = zext i8 %683 to i32
  %693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %681, i32 noundef %691, i32 noundef %692) #10
  br label %694

694:                                              ; preds = %690, %686, %678
  %695 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3524) #11
  %696 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4095) #11
  %697 = load i32, ptr @stvdebug, align 4
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %703, label %699

699:                                              ; preds = %694
  %700 = zext i8 %695 to i32
  %701 = zext i8 %696 to i32
  %702 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %700, i32 noundef %701) #10
  br label %703

703:                                              ; preds = %699, %694
  %704 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %705 = load i32, ptr @stvdebug, align 4
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %703
  %708 = zext i8 %704 to i32
  %709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %708) #10
  br label %710

710:                                              ; preds = %707, %703
  %711 = icmp eq i8 %680, 3
  br i1 %711, label %1065, label %712

712:                                              ; preds = %710
  %713 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3376) #11
  %714 = or i8 %713, 8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3376, i8 noundef zeroext %714) #11
  %715 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3536) #11
  %716 = or i8 %715, 1
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3536, i8 noundef zeroext %716) #11
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %717 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3376) #11
  %718 = and i8 %717, -9
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3376, i8 noundef zeroext %718) #11
  %719 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3536) #11
  %720 = and i8 %719, -2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3536, i8 noundef zeroext %720) #11
  %721 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %722 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %723 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %724 = xor i2 %679, -2
  %725 = zext i2 %724 to i32
  %726 = getelementptr inbounds [4 x i32], ptr @switch.table.stv0367ter_set_frontend.53, i32 0, i32 %725
  %727 = load i32, ptr %726, align 4
  %728 = and i8 %721, 8
  %729 = icmp ne i8 %728, 0
  %730 = and i8 %722, 16
  %731 = icmp ne i8 %730, 0
  %732 = select i1 %729, i1 %731, i1 false
  %733 = icmp slt i8 %723, 0
  %734 = select i1 %732, i1 %733, i1 false
  br i1 %734, label %760, label %735

735:                                              ; preds = %712
  %736 = zext i2 %724 to i32
  %737 = getelementptr inbounds [4 x i32], ptr @switch.table.stv0367ter_set_frontend.54, i32 0, i32 %736
  %738 = load i32, ptr %737, align 4
  %739 = mul nuw nsw i32 %727, 1000
  %740 = add nuw nsw i32 %739, 1000
  br label %741

741:                                              ; preds = %741, %735
  %742 = phi i32 [ %738, %735 ], [ %745, %741 ]
  call void @usleep_range_state(i32 noundef %739, i32 noundef %740, i32 noundef 2) #11
  %743 = and i32 %742, 65535
  %744 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %745 = sub nsw i32 %743, %727
  %746 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %747 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %748 = and i8 %744, 8
  %749 = icmp ne i8 %748, 0
  %750 = and i8 %746, 16
  %751 = icmp ne i8 %750, 0
  %752 = select i1 %749, i1 %751, i1 false
  %753 = icmp slt i8 %747, 0
  %754 = select i1 %752, i1 %753, i1 false
  %755 = xor i1 %754, true
  %756 = shl i32 %745, 16
  %757 = icmp sgt i32 %756, -65536
  %758 = select i1 %755, i1 %757, i1 false
  br i1 %758, label %741, label %759

759:                                              ; preds = %741
  br i1 %754, label %760, label %1065

760:                                              ; preds = %759, %712
  %761 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3950) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %129, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  store i32 3, ptr %130, align 4, !annotation !8
  %762 = load ptr, ptr %209, align 4
  %763 = load i8, ptr %762, align 4
  %764 = zext i8 %763 to i16
  store i16 %764, ptr %23, align 4
  store i16 0, ptr %131, align 2
  store ptr %22, ptr %132, align 4
  store i8 -16, ptr %22, align 1
  store i8 78, ptr %133, align 1
  store i8 17, ptr %134, align 1
  %765 = load i32, ptr @i2cdebug, align 4
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %771, label %767

767:                                              ; preds = %760
  %768 = load i8, ptr %762, align 4
  %769 = zext i8 %768 to i32
  %770 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %769, i32 noundef 61518, i32 noundef 17) #10
  br label %771

771:                                              ; preds = %767, %760
  %772 = getelementptr inbounds %struct.stv0367_state, ptr %177, i32 0, i32 1
  %773 = load ptr, ptr %772, align 4
  %774 = call i32 @i2c_transfer(ptr noundef %773, ptr noundef nonnull %23, i32 noundef 1) #11
  %775 = icmp eq i32 %774, 1
  br i1 %775, label %783, label %776

776:                                              ; preds = %771
  %777 = load ptr, ptr %209, align 4
  %778 = load i8, ptr %777, align 4
  %779 = zext i8 %778 to i32
  %780 = load i8, ptr %134, align 1
  %781 = zext i8 %780 to i32
  %782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %779, i32 noundef 61518, i32 noundef %781) #10
  br label %783

783:                                              ; preds = %776, %771
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #11
  %784 = and i8 %761, 2
  %785 = icmp eq i8 %784, 0
  %786 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3951) #11
  br i1 %785, label %787, label %791

787:                                              ; preds = %783
  %788 = and i8 %786, -5
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3951, i8 noundef zeroext %788) #11
  %789 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4045) #11
  %790 = and i8 %789, -17
  br label %795

791:                                              ; preds = %783
  %792 = or i8 %786, 4
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3951, i8 noundef zeroext %792) #11
  %793 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4045) #11
  %794 = or i8 %793, 16
  br label %795

795:                                              ; preds = %791, %787
  %796 = phi i8 [ %794, %791 ], [ %790, %787 ]
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -4045, i8 noundef zeroext %796) #11
  %797 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3928) #11
  %798 = and i8 %797, 3
  %799 = icmp eq i8 %798, 2
  %800 = icmp eq i8 %680, 1
  %801 = select i1 %799, i1 %800, i1 false
  br i1 %801, label %802, label %870

802:                                              ; preds = %795
  %803 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3927) #11
  %804 = and i8 %803, 7
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %870, label %806

806:                                              ; preds = %802
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %135, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store i32 3, ptr %136, align 4, !annotation !8
  %807 = load ptr, ptr %209, align 4
  %808 = load i8, ptr %807, align 4
  %809 = zext i8 %808 to i16
  store i16 %809, ptr %7, align 4
  store i16 0, ptr %137, align 2
  store ptr %6, ptr %138, align 4
  store i8 -14, ptr %6, align 1
  store i8 -48, ptr %139, align 1
  store i8 -64, ptr %140, align 1
  %810 = load i32, ptr @i2cdebug, align 4
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %816, label %812

812:                                              ; preds = %806
  %813 = load i8, ptr %807, align 4
  %814 = zext i8 %813 to i32
  %815 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %814, i32 noundef 62160, i32 noundef 192) #10
  br label %816

816:                                              ; preds = %812, %806
  %817 = load ptr, ptr %772, align 4
  %818 = call i32 @i2c_transfer(ptr noundef %817, ptr noundef nonnull %7, i32 noundef 1) #11
  %819 = icmp eq i32 %818, 1
  br i1 %819, label %827, label %820

820:                                              ; preds = %816
  %821 = load ptr, ptr %209, align 4
  %822 = load i8, ptr %821, align 4
  %823 = zext i8 %822 to i32
  %824 = load i8, ptr %140, align 1
  %825 = zext i8 %824 to i32
  %826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %823, i32 noundef 62160, i32 noundef %825) #10
  br label %827

827:                                              ; preds = %820, %816
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %141, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  store i32 3, ptr %142, align 4, !annotation !8
  %828 = load ptr, ptr %209, align 4
  %829 = load i8, ptr %828, align 4
  %830 = zext i8 %829 to i16
  store i16 %830, ptr %9, align 4
  store i16 0, ptr %143, align 2
  store ptr %8, ptr %144, align 4
  store i8 -14, ptr %8, align 1
  store i8 -47, ptr %145, align 1
  store i8 96, ptr %146, align 1
  %831 = load i32, ptr @i2cdebug, align 4
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %837, label %833

833:                                              ; preds = %827
  %834 = load i8, ptr %828, align 4
  %835 = zext i8 %834 to i32
  %836 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %835, i32 noundef 62161, i32 noundef 96) #10
  br label %837

837:                                              ; preds = %833, %827
  %838 = load ptr, ptr %772, align 4
  %839 = call i32 @i2c_transfer(ptr noundef %838, ptr noundef nonnull %9, i32 noundef 1) #11
  %840 = icmp eq i32 %839, 1
  br i1 %840, label %848, label %841

841:                                              ; preds = %837
  %842 = load ptr, ptr %209, align 4
  %843 = load i8, ptr %842, align 4
  %844 = zext i8 %843 to i32
  %845 = load i8, ptr %146, align 1
  %846 = zext i8 %845 to i32
  %847 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %844, i32 noundef 62161, i32 noundef %846) #10
  br label %848

848:                                              ; preds = %841, %837
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %147, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  store i32 3, ptr %148, align 4, !annotation !8
  %849 = load ptr, ptr %209, align 4
  %850 = load i8, ptr %849, align 4
  %851 = zext i8 %850 to i16
  store i16 %851, ptr %11, align 4
  store i16 0, ptr %149, align 2
  store ptr %10, ptr %150, align 4
  store i8 -14, ptr %10, align 1
  store i8 -46, ptr %151, align 1
  store i8 0, ptr %152, align 1
  %852 = load i32, ptr @i2cdebug, align 4
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %858, label %854

854:                                              ; preds = %848
  %855 = load i8, ptr %849, align 4
  %856 = zext i8 %855 to i32
  %857 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %856, i32 noundef 62162, i32 noundef 0) #10
  br label %858

858:                                              ; preds = %854, %848
  %859 = load ptr, ptr %772, align 4
  %860 = call i32 @i2c_transfer(ptr noundef %859, ptr noundef nonnull %11, i32 noundef 1) #11
  %861 = icmp eq i32 %860, 1
  br i1 %861, label %869, label %862

862:                                              ; preds = %858
  %863 = load ptr, ptr %209, align 4
  %864 = load i8, ptr %863, align 4
  %865 = zext i8 %864 to i32
  %866 = load i8, ptr %152, align 1
  %867 = zext i8 %866 to i32
  %868 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %865, i32 noundef 62162, i32 noundef %867) #10
  br label %869

869:                                              ; preds = %862, %858
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br label %892

870:                                              ; preds = %802, %795
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %153, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 3, ptr %154, align 4, !annotation !8
  %871 = load ptr, ptr %209, align 4
  %872 = load i8, ptr %871, align 4
  %873 = zext i8 %872 to i16
  store i16 %873, ptr %21, align 4
  store i16 0, ptr %155, align 2
  store ptr %20, ptr %156, align 4
  store i8 -14, ptr %20, align 1
  store i8 -48, ptr %157, align 1
  store i8 0, ptr %158, align 1
  %874 = load i32, ptr @i2cdebug, align 4
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %880, label %876

876:                                              ; preds = %870
  %877 = load i8, ptr %871, align 4
  %878 = zext i8 %877 to i32
  %879 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %878, i32 noundef 62160, i32 noundef 0) #10
  br label %880

880:                                              ; preds = %876, %870
  %881 = load ptr, ptr %772, align 4
  %882 = call i32 @i2c_transfer(ptr noundef %881, ptr noundef nonnull %21, i32 noundef 1) #11
  %883 = icmp eq i32 %882, 1
  br i1 %883, label %891, label %884

884:                                              ; preds = %880
  %885 = load ptr, ptr %209, align 4
  %886 = load i8, ptr %885, align 4
  %887 = zext i8 %886 to i32
  %888 = load i8, ptr %158, align 1
  %889 = zext i8 %888 to i32
  %890 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %887, i32 noundef 62160, i32 noundef %889) #10
  br label %891

891:                                              ; preds = %884, %880
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #11
  br label %892

892:                                              ; preds = %891, %869
  %893 = xor i2 %679, -2
  %894 = zext i2 %893 to i32
  %895 = getelementptr inbounds [4 x i32], ptr @switch.table.stv0367ter_set_frontend.54, i32 0, i32 %894
  %896 = load i32, ptr %895, align 4
  %897 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3455) #11
  %898 = icmp sgt i8 %897, -1
  br i1 %898, label %899, label %912

899:                                              ; preds = %892
  %900 = mul nuw nsw i32 %727, 1000
  %901 = add nuw nsw i32 %900, 1000
  br label %902

902:                                              ; preds = %902, %899
  %903 = phi i32 [ %896, %899 ], [ %905, %902 ]
  call void @usleep_range_state(i32 noundef %900, i32 noundef %901, i32 noundef 2) #11
  %904 = and i32 %903, 65535
  %905 = sub nsw i32 %904, %727
  %906 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3455) #11
  %907 = icmp sgt i8 %906, -1
  %908 = shl i32 %905, 16
  %909 = icmp sgt i32 %908, -65536
  %910 = select i1 %907, i1 %909, i1 false
  br i1 %910, label %902, label %911

911:                                              ; preds = %902
  br i1 %907, label %1065, label %912

912:                                              ; preds = %911, %892
  %913 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3951) #11
  %914 = or i8 %913, 1
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3951, i8 noundef zeroext %914) #11
  %915 = load i32, ptr @stvdebug, align 4
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %919, label %917

917:                                              ; preds = %912
  %918 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %919

919:                                              ; preds = %917, %912
  store i32 12, ptr %179, align 4
  %920 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3950) #11
  %921 = lshr i8 %920, 2
  %922 = and i8 %921, 3
  %923 = zext i8 %922 to i32
  %924 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 2
  store i32 %923, ptr %924, align 4
  %925 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3950) #11
  %926 = and i8 %925, 3
  %927 = zext i8 %926 to i32
  %928 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 3
  store i32 %927, ptr %928, align 4
  %929 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 14
  store i8 1, ptr %929, align 1
  %930 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4071) #11
  %931 = zext i8 %930 to i32
  %932 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4070) #11
  %933 = and i8 %932, 15
  %934 = zext i8 %933 to i32
  %935 = shl nuw nsw i32 %934, 24
  %936 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4069) #11
  %937 = zext i8 %936 to i32
  %938 = shl nuw nsw i32 %931, 16
  %939 = or i32 %935, %938
  %940 = or i32 %939, %937
  %941 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4068) #11
  %942 = and i8 %941, 15
  %943 = zext i8 %942 to i32
  %944 = shl nuw nsw i32 %943, 8
  %945 = or i32 %944, %940
  %946 = getelementptr inbounds %struct.stv0367ter_state, ptr %179, i32 0, i32 16
  store i32 %945, ptr %946, align 4
  %947 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3916) #11
  %948 = or i8 %947, 1
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3916, i8 noundef zeroext %948) #11
  %949 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3934) #11
  %950 = zext i8 %949 to i32
  %951 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3935) #11
  %952 = zext i8 %951 to i32
  %953 = shl nuw nsw i32 %952, 8
  %954 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3936) #11
  %955 = zext i8 %954 to i32
  %956 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3916) #11
  %957 = shl nuw nsw i32 %950, 16
  %958 = or i32 %953, %957
  %959 = or i32 %958, %955
  %960 = and i8 %956, -2
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3916, i8 noundef zeroext %960) #11
  %961 = icmp ugt i32 %959, 8388607
  %962 = or i32 %959, -16777216
  %963 = select i1 %961, i32 %962, i32 %959
  %964 = sdiv i32 %963, 8192
  %965 = load i32, ptr %924, align 4
  switch i32 %965, label %975 [
    i32 0, label %966
    i32 2, label %969
    i32 1, label %972
  ]

966:                                              ; preds = %919
  %967 = mul nsw i32 %964, 4464
  %968 = sdiv i32 %967, 1000
  br label %975

969:                                              ; preds = %919
  %970 = mul nsw i32 %964, 223
  %971 = sdiv i32 %970, 100
  br label %975

972:                                              ; preds = %919
  %973 = mul nsw i32 %964, 111
  %974 = sdiv i32 %973, 100
  br label %975

975:                                              ; preds = %972, %969, %966, %919
  %976 = phi i32 [ %968, %966 ], [ %971, %969 ], [ %974, %972 ], [ %964, %919 ]
  %977 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3943) #11
  %978 = and i8 %977, 4
  %979 = icmp eq i8 %978, 0
  br i1 %979, label %989, label %980

980:                                              ; preds = %975
  %981 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %982 = lshr i8 %981, 7
  %983 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4064) #11
  %984 = lshr i8 %983, 4
  %985 = and i8 %984, 1
  %986 = icmp eq i8 %982, %985
  %987 = sub nsw i32 0, %976
  %988 = select i1 %986, i32 %987, i32 %976
  br label %989

989:                                              ; preds = %980, %975
  %990 = phi i32 [ %976, %975 ], [ %988, %980 ]
  %991 = load i8, ptr %524, align 1
  switch i8 %991, label %998 [
    i8 6, label %992
    i8 7, label %995
  ]

992:                                              ; preds = %989
  %993 = mul nsw i32 %990, 6
  %994 = sdiv i32 %993, 8
  br label %998

995:                                              ; preds = %989
  %996 = mul nsw i32 %990, 7
  %997 = sdiv i32 %996, 8
  br label %998

998:                                              ; preds = %995, %992, %989
  %999 = phi i32 [ %994, %992 ], [ %997, %995 ], [ %990, %989 ]
  %1000 = load i32, ptr %204, align 4
  %1001 = add i32 %1000, %999
  store i32 %1001, ptr %204, align 4
  br label %1002

1002:                                             ; preds = %1002, %998
  %1003 = phi i32 [ 10, %998 ], [ %1026, %1002 ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #11
  %1004 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3939) #11
  %1005 = zext i8 %1004 to i32
  %1006 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3938) #11
  %1007 = zext i8 %1006 to i32
  %1008 = shl nuw nsw i32 %1007, 8
  %1009 = or i32 %1008, %1005
  %1010 = or i32 %1009, -65536
  %1011 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3940) #11
  %1012 = zext i8 %1011 to i32
  %1013 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3941) #11
  %1014 = zext i8 %1013 to i32
  %1015 = shl nuw nsw i32 %1014, 1
  %1016 = icmp ugt i32 %1009, 32767
  %1017 = select i1 %1016, i32 %1010, i32 %1009
  %1018 = shl nuw nsw i32 %1012, 9
  %1019 = or i32 %1015, %1018
  %1020 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3942) #11
  %1021 = lshr i8 %1020, 7
  %1022 = zext i8 %1021 to i32
  %1023 = or i32 %1019, %1022
  %1024 = udiv i32 1000000, %1023
  %1025 = mul i32 %1017, %1024
  %1026 = add nsw i32 %1003, -1
  %1027 = add i32 %1025, 2047
  %1028 = icmp ult i32 %1027, 4095
  %1029 = icmp ne i32 %1026, 0
  %1030 = select i1 %1028, i1 %1029, i1 false
  br i1 %1030, label %1002, label %1031

1031:                                             ; preds = %1002
  %1032 = sdiv i32 %1025, 2048
  %1033 = icmp slt i32 %1025, 2048
  %1034 = select i1 %1033, i32 -11, i32 11
  %1035 = add nsw i32 %1034, %1032
  %1036 = select i1 %1033, i32 -1, i32 1
  %1037 = sdiv i32 %1035, 22
  %1038 = call i32 @llvm.abs.i32(i32 %1037, i1 true) #11
  %1039 = add nsw i32 %1035, 21
  %1040 = icmp ult i32 %1039, 43
  br i1 %1040, label %1056, label %1041

1041:                                             ; preds = %1041, %1031
  %1042 = phi i8 [ %1053, %1041 ], [ 0, %1031 ]
  %1043 = phi i32 [ %1044, %1041 ], [ %1023, %1031 ]
  %1044 = add i32 %1043, %1036
  %1045 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3942) #11
  %1046 = trunc i32 %1044 to i8
  %1047 = shl i8 %1046, 7
  %1048 = and i8 %1045, 127
  %1049 = or i8 %1047, %1048
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3942, i8 noundef zeroext %1049) #11
  %1050 = lshr i32 %1044, 1
  %1051 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3941) #11
  %1052 = trunc i32 %1050 to i8
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3941, i8 noundef zeroext %1052) #11
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %1053 = add i8 %1042, 1
  %1054 = zext i8 %1053 to i32
  %1055 = icmp ugt i32 %1038, %1054
  br i1 %1055, label %1041, label %1056

1056:                                             ; preds = %1041, %1031
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #11
  %1057 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -4087) #11
  %1058 = and i8 %1057, 8
  %1059 = icmp eq i8 %1058, 0
  br i1 %1059, label %1060, label %1065

1060:                                             ; preds = %1056
  %1061 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3968) #11
  %1062 = and i8 %1061, -33
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3968, i8 noundef zeroext %1062) #11
  call void @msleep(i32 noundef 20) #11
  %1063 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %177, i16 noundef zeroext -3968) #11
  %1064 = or i8 %1063, 32
  call fastcc void @stv0367_writereg(ptr noundef %177, i16 noundef zeroext -3968, i8 noundef zeroext %1064) #11
  br label %1065

1065:                                             ; preds = %1060, %1056, %911, %759, %710, %629, %583, %483, %480, %477, %474, %251
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  %1066 = load i32, ptr %29, align 4
  %1067 = icmp eq i32 %1066, 12
  br i1 %1067, label %1068, label %1076

1068:                                             ; preds = %1065
  %1069 = load i32, ptr %80, align 4
  %1070 = icmp eq i32 %1069, 2
  %1071 = icmp eq i8 %164, 1
  %1072 = select i1 %1070, i1 %1071, i1 false
  br i1 %1072, label %1073, label %1076

1073:                                             ; preds = %1068
  store i8 %161, ptr %159, align 1
  %1074 = and i8 %161, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, ptr %25, align 2
  br label %1076

1076:                                             ; preds = %1073, %1068, %1065
  %1077 = phi i8 [ %1075, %1073 ], [ %161, %1068 ], [ %161, %1065 ]
  %1078 = add i8 %164, 1
  %1079 = sext i8 %1078 to i32
  %1080 = icmp sgt i32 %89, %1079
  br i1 %1080, label %160, label %1081

1081:                                             ; preds = %1076, %160
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stv0367_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 1000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_get_frontend(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %8 = load i32, ptr @stvdebug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367_get_tuner_freq) #10
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = call i32 %14(ptr noundef %0, ptr noundef nonnull %3) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.stv0367_get_tuner_freq) #10
  br label %27

21:                                               ; preds = %16
  %22 = load i32, ptr @stvdebug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %3, align 4
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.stv0367_get_tuner_freq, i32 noundef %25) #10
  br label %29

27:                                               ; preds = %19, %12
  %28 = phi i32 [ -1, %12 ], [ %17, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %32

29:                                               ; preds = %24, %21
  %30 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %34 = sub i32 0, %33
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %34, %32 ], [ %30, %29 ]
  store i32 %36, ptr %1, align 4
  %37 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -3928) #11
  %38 = trunc i8 %37 to i2
  %39 = icmp eq i2 %38, 1
  %40 = select i1 %39, i32 1, i32 3
  %41 = icmp eq i2 %38, 0
  %42 = select i1 %41, i32 0, i32 %40
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -4064) #11
  %45 = lshr i8 %44, 7
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -3928) #11
  %49 = lshr i8 %48, 4
  %50 = and i8 %48, 64
  %51 = icmp eq i8 %50, 0
  %52 = and i8 %49, 7
  %53 = select i1 %51, i8 %52, i8 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.stv0367ter_state, ptr %7, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 1
  %59 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -3927) #11
  %60 = lshr i8 %59, 4
  %61 = select i1 %58, i8 %60, i8 %59
  %62 = and i8 %61, 7
  %63 = xor i8 %62, 4
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds [8 x i32], ptr @switch.table.stv0367ter_get_frontend, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %66, ptr %67, align 4
  %68 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -3950) #11
  %69 = lshr i8 %68, 2
  %70 = trunc i8 %69 to i2
  %71 = icmp eq i2 %70, 1
  %72 = select i1 %71, i32 1, i32 2
  %73 = icmp eq i2 %70, 0
  %74 = select i1 %73, i32 0, i32 %72
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %74, ptr %75, align 4
  %76 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -3950) #11
  %77 = and i8 %76, 3
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %78, ptr %79, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_read_status) #10
  br label %9

9:                                                ; preds = %7, %2
  store i32 0, ptr %1, align 4
  %10 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -4087) #11
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  store i32 31, ptr %1, align 4
  %14 = load i32, ptr @stvdebug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.stv0367ter_read_status) #10
  br label %18

18:                                               ; preds = %16, %13, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3367) #11
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %9, label %87

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3367) #11
  %11 = and i8 %10, 127
  %12 = zext i8 %11 to i32
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3366) #11
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3365) #11
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %12, 16
  %19 = or i32 %18, %15
  %20 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3368) #11
  %21 = or i32 %19, %17
  %22 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3368) #11
  %23 = icmp ne i32 %21, 0
  %24 = and i8 %20, -16
  %25 = icmp eq i8 %24, 112
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %84

27:                                               ; preds = %9
  %28 = icmp ult i32 %21, 5
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = mul nuw i32 %21, 1000000000
  %31 = lshr i32 %30, 17
  br label %66

32:                                               ; preds = %27
  %33 = icmp ult i32 %21, 43
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = mul nuw i32 %21, 100000000
  %36 = lshr i32 %35, 17
  %37 = mul nuw nsw i32 %36, 10
  br label %66

38:                                               ; preds = %32
  %39 = icmp ult i32 %21, 430
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = mul nuw i32 %21, 10000000
  %42 = lshr i32 %41, 17
  %43 = mul nuw nsw i32 %42, 100
  br label %66

44:                                               ; preds = %38
  %45 = icmp ult i32 %21, 4295
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = mul nuw i32 %21, 1000000
  %48 = lshr i32 %47, 17
  %49 = mul nuw nsw i32 %48, 1000
  br label %66

50:                                               ; preds = %44
  %51 = icmp ult i32 %21, 42950
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = mul nuw i32 %21, 100000
  %54 = lshr i32 %53, 17
  %55 = mul nuw nsw i32 %54, 10000
  br label %66

56:                                               ; preds = %50
  %57 = icmp ult i32 %21, 429497
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = mul nuw i32 %21, 10000
  %60 = lshr i32 %59, 17
  %61 = mul nuw i32 %60, 100000
  br label %66

62:                                               ; preds = %56
  %63 = mul i32 %21, 1000
  %64 = lshr i32 %63, 17
  %65 = mul nuw i32 %64, 100000
  br label %66

66:                                               ; preds = %62, %58, %52, %46, %40, %34, %29
  %67 = phi i32 [ %31, %29 ], [ %37, %34 ], [ %43, %40 ], [ %49, %46 ], [ %55, %52 ], [ %61, %58 ], [ %65, %62 ]
  %68 = trunc i8 %22 to i3
  switch i3 %68, label %77 [
    i3 2, label %78
    i3 3, label %69
    i3 -4, label %71
    i3 -3, label %73
    i3 -2, label %75
  ]

69:                                               ; preds = %66
  %70 = lshr i32 %67, 2
  br label %78

71:                                               ; preds = %66
  %72 = lshr i32 %67, 4
  br label %78

73:                                               ; preds = %66
  %74 = lshr i32 %67, 6
  br label %78

75:                                               ; preds = %66
  %76 = lshr i32 %67, 8
  br label %78

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %75, %73, %71, %69, %66
  %79 = phi i32 [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ], [ 0, %77 ], [ %67, %66 ]
  %80 = add nsw i32 %21, -429497
  %81 = icmp ult i32 %80, 3865470
  %82 = mul i32 %79, 10
  %83 = select i1 %81, i32 %82, i32 %79
  br label %84

84:                                               ; preds = %78, %9
  %85 = phi i32 [ 0, %9 ], [ %83, %78 ]
  %86 = getelementptr inbounds %struct.stv0367ter_state, ptr %6, i32 0, i32 10
  store i32 %85, ptr %86, align 4
  store i32 %85, ptr %1, align 4
  br label %87

87:                                               ; preds = %84, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -4096) #11
  %6 = icmp eq i8 %5, 80
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %7 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %8 = lshr i8 %7, 2
  %9 = zext i8 %8 to i32
  %10 = zext i8 %7 to i32
  %11 = mul nuw nsw i32 %10, 125
  %12 = select i1 %6, i32 %9, i32 %11
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %14 = lshr i8 %13, 2
  %15 = zext i8 %14 to i32
  %16 = zext i8 %13 to i32
  %17 = mul nuw nsw i32 %16, 125
  %18 = select i1 %6, i32 %15, i32 %17
  %19 = add nuw nsw i32 %18, %12
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %20 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %21 = lshr i8 %20, 2
  %22 = zext i8 %21 to i32
  %23 = zext i8 %20 to i32
  %24 = mul nuw nsw i32 %23, 125
  %25 = select i1 %6, i32 %22, i32 %24
  %26 = add nuw nsw i32 %25, %19
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %27 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %28 = lshr i8 %27, 2
  %29 = zext i8 %28 to i32
  %30 = zext i8 %27 to i32
  %31 = mul nuw nsw i32 %30, 125
  %32 = select i1 %6, i32 %29, i32 %31
  %33 = add nuw nsw i32 %32, %26
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %34 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %35 = lshr i8 %34, 2
  %36 = zext i8 %35 to i32
  %37 = zext i8 %34 to i32
  %38 = mul nuw nsw i32 %37, 125
  %39 = select i1 %6, i32 %36, i32 %38
  %40 = add nuw nsw i32 %39, %33
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %41 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %42 = lshr i8 %41, 2
  %43 = zext i8 %42 to i32
  %44 = zext i8 %41 to i32
  %45 = mul nuw nsw i32 %44, 125
  %46 = select i1 %6, i32 %43, i32 %45
  %47 = add nuw nsw i32 %46, %40
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %48 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %49 = lshr i8 %48, 2
  %50 = zext i8 %49 to i32
  %51 = zext i8 %48 to i32
  %52 = mul nuw nsw i32 %51, 125
  %53 = select i1 %6, i32 %50, i32 %52
  %54 = add nuw nsw i32 %53, %47
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %55 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %56 = lshr i8 %55, 2
  %57 = zext i8 %56 to i32
  %58 = zext i8 %55 to i32
  %59 = mul nuw nsw i32 %58, 125
  %60 = select i1 %6, i32 %57, i32 %59
  %61 = add nuw nsw i32 %60, %54
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %62 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %63 = lshr i8 %62, 2
  %64 = zext i8 %63 to i32
  %65 = zext i8 %62 to i32
  %66 = mul nuw nsw i32 %65, 125
  %67 = select i1 %6, i32 %64, i32 %66
  %68 = add nuw nsw i32 %67, %61
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %69 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3932) #11
  %70 = lshr i8 %69, 2
  %71 = zext i8 %70 to i32
  %72 = zext i8 %69 to i32
  %73 = mul nuw nsw i32 %72, 125
  %74 = select i1 %6, i32 %71, i32 %73
  %75 = add nuw nsw i32 %74, %68
  %76 = udiv i32 %75, 10000
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3367) #11
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stv0367ter_state, ptr %6, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  br label %25

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3431) #11
  %14 = and i8 %13, 127
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3430) #11
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or i32 %16, %19
  %21 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3429) #11
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.stv0367ter_state, ptr %6, i32 0, i32 12
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %12, %9
  %26 = phi i32 [ %11, %9 ], [ %23, %12 ]
  store i32 %26, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ter_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -4095)
  %6 = load i32, ptr @stvdebug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_gate_ctrl) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq i32 %1, 0
  %12 = and i8 %5, 125
  %13 = select i1 %11, i8 2, i8 -128
  %14 = or i8 %12, %13
  tail call fastcc void @stv0367_writereg(ptr noundef %4, i16 noundef zeroext -4095, i8 noundef zeroext %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0367_pll_setup(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [64 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [64 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [64 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [64 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [64 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [64 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [64 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = icmp eq i32 %1, 58000000
  br i1 %26, label %27, label %89

27:                                               ; preds = %3
  %28 = load i32, ptr @stvdebug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %32

32:                                               ; preds = %30, %27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %24) #11
  %33 = getelementptr inbounds i8, ptr %24, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %33, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #11
  %34 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %34, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %25, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %40, align 4
  store i8 -16, ptr %24, align 1
  %41 = getelementptr inbounds [64 x i8], ptr %24, i32 0, i32 1
  store i8 -40, ptr %41, align 1
  %42 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 27, ptr %42, align 1
  %43 = load i32, ptr @i2cdebug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load i8, ptr %36, align 4
  %47 = zext i8 %46 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %47, i32 noundef 61656, i32 noundef 27) #10
  br label %49

49:                                               ; preds = %45, %32
  %50 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %25, i32 noundef 1) #11
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %35, align 4
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = load i8, ptr %42, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %57, i32 noundef 61656, i32 noundef %59) #10
  br label %61

61:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #11
  %62 = getelementptr inbounds i8, ptr %22, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %62, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  %63 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %63, align 4, !annotation !8
  %64 = load ptr, ptr %35, align 4
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %23, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %68, align 4
  store i8 -16, ptr %22, align 1
  %69 = getelementptr inbounds [64 x i8], ptr %22, i32 0, i32 1
  store i8 -39, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 -24, ptr %70, align 1
  %71 = load i32, ptr @i2cdebug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load i8, ptr %64, align 4
  %75 = zext i8 %74 to i32
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %75, i32 noundef 61657, i32 noundef 232) #10
  br label %77

77:                                               ; preds = %73, %61
  %78 = load ptr, ptr %50, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %23, i32 noundef 1) #11
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %35, align 4
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i32
  %85 = load i8, ptr %70, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %84, i32 noundef 61657, i32 noundef %86) #10
  br label %88

88:                                               ; preds = %81, %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #11
  br label %323

89:                                               ; preds = %3
  switch i32 %2, label %204 [
    i32 16000000, label %90
    i32 25000000, label %147
    i32 30000000, label %266
  ]

90:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #11
  %91 = getelementptr inbounds i8, ptr %20, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %91, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  %92 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %92, align 4, !annotation !8
  %93 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %21, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %98, align 4
  store i8 -16, ptr %20, align 1
  %99 = getelementptr inbounds [64 x i8], ptr %20, i32 0, i32 1
  store i8 -40, ptr %99, align 1
  %100 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 2, ptr %100, align 1
  %101 = load i32, ptr @i2cdebug, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %90
  %104 = load i8, ptr %94, align 4
  %105 = zext i8 %104 to i32
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %105, i32 noundef 61656, i32 noundef 2) #10
  br label %107

107:                                              ; preds = %103, %90
  %108 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %21, i32 noundef 1) #11
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %93, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i32
  %116 = load i8, ptr %100, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %115, i32 noundef 61656, i32 noundef %117) #10
  br label %119

119:                                              ; preds = %112, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #11
  %120 = getelementptr inbounds i8, ptr %18, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %120, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %121 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %121, align 4, !annotation !8
  %122 = load ptr, ptr %93, align 4
  %123 = load i8, ptr %122, align 4
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %19, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %126, align 4
  store i8 -16, ptr %18, align 1
  %127 = getelementptr inbounds [64 x i8], ptr %18, i32 0, i32 1
  store i8 -39, ptr %127, align 1
  %128 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 27, ptr %128, align 1
  %129 = load i32, ptr @i2cdebug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %119
  %132 = load i8, ptr %122, align 4
  %133 = zext i8 %132 to i32
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %133, i32 noundef 61657, i32 noundef 27) #10
  br label %135

135:                                              ; preds = %131, %119
  %136 = load ptr, ptr %108, align 4
  %137 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %19, i32 noundef 1) #11
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %93, align 4
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i32
  %143 = load i8, ptr %128, align 1
  %144 = zext i8 %143 to i32
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %142, i32 noundef 61657, i32 noundef %144) #10
  br label %146

146:                                              ; preds = %139, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #11
  br label %323

147:                                              ; preds = %89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #11
  %148 = getelementptr inbounds i8, ptr %16, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %148, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %149 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %149, align 4, !annotation !8
  %150 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = load i8, ptr %151, align 4
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %17, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %155, align 4
  store i8 -16, ptr %16, align 1
  %156 = getelementptr inbounds [64 x i8], ptr %16, i32 0, i32 1
  store i8 -40, ptr %156, align 1
  %157 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 10, ptr %157, align 1
  %158 = load i32, ptr @i2cdebug, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %147
  %161 = load i8, ptr %151, align 4
  %162 = zext i8 %161 to i32
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %162, i32 noundef 61656, i32 noundef 10) #10
  br label %164

164:                                              ; preds = %160, %147
  %165 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %17, i32 noundef 1) #11
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %150, align 4
  %171 = load i8, ptr %170, align 4
  %172 = zext i8 %171 to i32
  %173 = load i8, ptr %157, align 1
  %174 = zext i8 %173 to i32
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %172, i32 noundef 61656, i32 noundef %174) #10
  br label %176

176:                                              ; preds = %169, %164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  %177 = getelementptr inbounds i8, ptr %14, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %177, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %178 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %178, align 4, !annotation !8
  %179 = load ptr, ptr %150, align 4
  %180 = load i8, ptr %179, align 4
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %15, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %183, align 4
  store i8 -16, ptr %14, align 1
  %184 = getelementptr inbounds [64 x i8], ptr %14, i32 0, i32 1
  store i8 -39, ptr %184, align 1
  %185 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 85, ptr %185, align 1
  %186 = load i32, ptr @i2cdebug, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %176
  %189 = load i8, ptr %179, align 4
  %190 = zext i8 %189 to i32
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %190, i32 noundef 61657, i32 noundef 85) #10
  br label %192

192:                                              ; preds = %188, %176
  %193 = load ptr, ptr %165, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %15, i32 noundef 1) #11
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %150, align 4
  %198 = load i8, ptr %197, align 4
  %199 = zext i8 %198 to i32
  %200 = load i8, ptr %185, align 1
  %201 = zext i8 %200 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %199, i32 noundef 61657, i32 noundef %201) #10
  br label %203

203:                                              ; preds = %196, %192
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  br label %323

204:                                              ; preds = %89
  %205 = load i32, ptr @stvdebug, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %209

209:                                              ; preds = %207, %204
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %210 = getelementptr inbounds i8, ptr %12, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %210, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %211 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %211, align 4, !annotation !8
  %212 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %213 = load ptr, ptr %212, align 4
  %214 = load i8, ptr %213, align 4
  %215 = zext i8 %214 to i16
  store i16 %215, ptr %13, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %216, align 2
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %217, align 4
  store i8 -16, ptr %12, align 1
  %218 = getelementptr inbounds [64 x i8], ptr %12, i32 0, i32 1
  store i8 -40, ptr %218, align 1
  %219 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 1, ptr %219, align 1
  %220 = load i32, ptr @i2cdebug, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %209
  %223 = load i8, ptr %213, align 4
  %224 = zext i8 %223 to i32
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %224, i32 noundef 61656, i32 noundef 1) #10
  br label %226

226:                                              ; preds = %222, %209
  %227 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %13, i32 noundef 1) #11
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %238, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr %212, align 4
  %233 = load i8, ptr %232, align 4
  %234 = zext i8 %233 to i32
  %235 = load i8, ptr %219, align 1
  %236 = zext i8 %235 to i32
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %234, i32 noundef 61656, i32 noundef %236) #10
  br label %238

238:                                              ; preds = %231, %226
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %239 = getelementptr inbounds i8, ptr %10, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %239, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %240 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %240, align 4, !annotation !8
  %241 = load ptr, ptr %212, align 4
  %242 = load i8, ptr %241, align 4
  %243 = zext i8 %242 to i16
  store i16 %243, ptr %11, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %244, align 2
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %245, align 4
  store i8 -16, ptr %10, align 1
  %246 = getelementptr inbounds [64 x i8], ptr %10, i32 0, i32 1
  store i8 -39, ptr %246, align 1
  %247 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 8, ptr %247, align 1
  %248 = load i32, ptr @i2cdebug, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %238
  %251 = load i8, ptr %241, align 4
  %252 = zext i8 %251 to i32
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %252, i32 noundef 61657, i32 noundef 8) #10
  br label %254

254:                                              ; preds = %250, %238
  %255 = load ptr, ptr %227, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %11, i32 noundef 1) #11
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %212, align 4
  %260 = load i8, ptr %259, align 4
  %261 = zext i8 %260 to i32
  %262 = load i8, ptr %247, align 1
  %263 = zext i8 %262 to i32
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %261, i32 noundef 61657, i32 noundef %263) #10
  br label %265

265:                                              ; preds = %258, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br label %323

266:                                              ; preds = %89
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %267 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %267, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %268 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %268, align 4, !annotation !8
  %269 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %270 = load ptr, ptr %269, align 4
  %271 = load i8, ptr %270, align 4
  %272 = zext i8 %271 to i16
  store i16 %272, ptr %9, align 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %273, align 2
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %274, align 4
  store i8 -16, ptr %8, align 1
  %275 = getelementptr inbounds [64 x i8], ptr %8, i32 0, i32 1
  store i8 -40, ptr %275, align 1
  %276 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 12, ptr %276, align 1
  %277 = load i32, ptr @i2cdebug, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %266
  %280 = load i8, ptr %270, align 4
  %281 = zext i8 %280 to i32
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %281, i32 noundef 61656, i32 noundef 12) #10
  br label %283

283:                                              ; preds = %279, %266
  %284 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %9, i32 noundef 1) #11
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %295, label %288

288:                                              ; preds = %283
  %289 = load ptr, ptr %269, align 4
  %290 = load i8, ptr %289, align 4
  %291 = zext i8 %290 to i32
  %292 = load i8, ptr %276, align 1
  %293 = zext i8 %292 to i32
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %291, i32 noundef 61656, i32 noundef %293) #10
  br label %295

295:                                              ; preds = %288, %283
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %296 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %296, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %297 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %297, align 4, !annotation !8
  %298 = load ptr, ptr %269, align 4
  %299 = load i8, ptr %298, align 4
  %300 = zext i8 %299 to i16
  store i16 %300, ptr %7, align 4
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %301, align 2
  %302 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %302, align 4
  store i8 -16, ptr %6, align 1
  %303 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  store i8 -39, ptr %303, align 1
  %304 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 85, ptr %304, align 1
  %305 = load i32, ptr @i2cdebug, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %295
  %308 = load i8, ptr %298, align 4
  %309 = zext i8 %308 to i32
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %309, i32 noundef 61657, i32 noundef 85) #10
  br label %311

311:                                              ; preds = %307, %295
  %312 = load ptr, ptr %284, align 4
  %313 = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %7, i32 noundef 1) #11
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %322, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %269, align 4
  %317 = load i8, ptr %316, align 4
  %318 = zext i8 %317 to i32
  %319 = load i8, ptr %304, align 1
  %320 = zext i8 %319 to i32
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %318, i32 noundef 61657, i32 noundef %320) #10
  br label %322

322:                                              ; preds = %315, %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %323

323:                                              ; preds = %322, %265, %203, %146, %88
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %324 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %324, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %325 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %325, align 4, !annotation !8
  %326 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = load i8, ptr %327, align 4
  %329 = zext i8 %328 to i16
  store i16 %329, ptr %5, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %330, align 2
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %331, align 4
  store i8 -16, ptr %4, align 1
  %332 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 -38, ptr %332, align 1
  %333 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 24, ptr %333, align 1
  %334 = load i32, ptr @i2cdebug, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %323
  %337 = load i8, ptr %327, align 4
  %338 = zext i8 %337 to i32
  %339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %338, i32 noundef 61658, i32 noundef 24) #10
  br label %340

340:                                              ; preds = %336, %323
  %341 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = call i32 @i2c_transfer(ptr noundef %342, ptr noundef nonnull %5, i32 noundef 1) #11
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %352, label %345

345:                                              ; preds = %340
  %346 = load ptr, ptr %326, align 4
  %347 = load i8, ptr %346, align 4
  %348 = zext i8 %347 to i32
  %349 = load i8, ptr %333, align 1
  %350 = zext i8 %349 to i32
  %351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %348, i32 noundef 61658, i32 noundef %350) #10
  br label %352

352:                                              ; preds = %345, %340
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0367_writereg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %6 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = zext i16 %1 to i32
  %15 = lshr i16 %1, 8
  %16 = trunc i16 %15 to i8
  store i8 %16, ptr %4, align 1
  %17 = trunc i16 %1 to i8
  %18 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %19, align 1
  %20 = load i32, ptr @i2cdebug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i8, ptr %9, align 4
  %24 = zext i8 %23 to i32
  %25 = zext i8 %2 to i32
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %24, i32 noundef %14, i32 noundef %25) #10
  br label %27

27:                                               ; preds = %22, %3
  %28 = getelementptr inbounds %struct.stv0367_state, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %5, i32 noundef 1) #11
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %8, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %19, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %35, i32 noundef %14, i32 noundef %37) #10
  br label %39

39:                                               ; preds = %32, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367ter_get_mclk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @stvdebug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_get_mclk) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3903) #11
  %9 = and i8 %8, 12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3879) #11
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i8 1, i8 %12
  %15 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3880) #11
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 1, i8 %15
  %18 = zext i8 %14 to i32
  %19 = zext i8 %17 to i32
  %20 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3878) #11
  %21 = lshr i8 %20, 4
  %22 = and i8 %21, 7
  %23 = tail call i8 @llvm.umin.i8(i8 %22, i8 5)
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %1, 1
  %26 = mul i32 %25, %18
  %27 = shl nuw nsw i32 %19, %24
  %28 = udiv i32 %26, %27
  %29 = load i32, ptr @stvdebug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %11
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %18, i32 noundef %19, i32 noundef %24, i32 noundef %28, i32 noundef %1) #10
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i32 [ %1, %7 ], [ %28, %31 ]
  %35 = load i32, ptr @stvdebug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stv0367ter_get_mclk, i32 noundef %34) #10
  br label %39

39:                                               ; preds = %37, %33, %11
  %40 = phi i32 [ %34, %37 ], [ %34, %33 ], [ %28, %11 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367ter_filt_coeff_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_filt_coeff_init) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call fastcc i32 @stv0367ter_get_mclk(ptr noundef %0, i32 noundef %2)
  switch i32 %9, label %54 [
    i32 53125000, label %12
    i32 54000000, label %10
    i32 52500000, label %11
  ]

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi i32 [ 0, %10 ], [ 2, %11 ], [ 1, %8 ]
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 1, %12 ], [ %52, %14 ]
  %16 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -4000) #11
  %17 = add nsw i32 %15, -1
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 7
  %20 = and i8 %16, -8
  %21 = or i8 %19, %20
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -4000, i8 noundef zeroext %21) #11
  %22 = getelementptr [6 x [5 x i16]], ptr %1, i32 %13, i32 %17, i32 0
  %23 = load i16, ptr %22, align 2
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3999, i8 noundef zeroext %25)
  %26 = load i16, ptr %22, align 2
  %27 = trunc i16 %26 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3998, i8 noundef zeroext %27)
  %28 = getelementptr [6 x [5 x i16]], ptr %1, i32 %13, i32 %17, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = lshr i16 %29, 8
  %31 = trunc i16 %30 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3997, i8 noundef zeroext %31)
  %32 = load i16, ptr %28, align 2
  %33 = trunc i16 %32 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3996, i8 noundef zeroext %33)
  %34 = getelementptr [6 x [5 x i16]], ptr %1, i32 %13, i32 %17, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3995, i8 noundef zeroext %37)
  %38 = load i16, ptr %34, align 2
  %39 = trunc i16 %38 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3994, i8 noundef zeroext %39)
  %40 = getelementptr [6 x [5 x i16]], ptr %1, i32 %13, i32 %17, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3993, i8 noundef zeroext %43)
  %44 = load i16, ptr %40, align 2
  %45 = trunc i16 %44 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3992, i8 noundef zeroext %45)
  %46 = getelementptr [6 x [5 x i16]], ptr %1, i32 %13, i32 %17, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = lshr i16 %47, 8
  %49 = trunc i16 %48 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3991, i8 noundef zeroext %49)
  %50 = load i16, ptr %46, align 2
  %51 = trunc i16 %50 to i8
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3990, i8 noundef zeroext %51)
  %52 = add nuw nsw i32 %15, 1
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %14

54:                                               ; preds = %14, %8
  %55 = phi i32 [ 0, %8 ], [ 1, %14 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @stvdebug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_init) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [2 x [3 x ptr]], ptr @stv0367_deftabs, i32 0, i32 %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %20, %12
  %21 = phi i16 [ %27, %20 ], [ %18, %12 ]
  %22 = phi i32 [ %25, %20 ], [ 0, %12 ]
  %23 = getelementptr %struct.st_register, ptr %17, i32 %22, i32 1
  %24 = load i8, ptr %23, align 2
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext %21, i8 noundef zeroext %24) #11
  %25 = add i32 %22, 1
  %26 = getelementptr %struct.st_register, ptr %17, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %20

29:                                               ; preds = %20, %12
  %30 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.stv0367_config, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %51 [
    i32 4, label %34
    i32 1, label %42
    i32 2, label %42
    i32 3, label %46
    i32 0, label %46
  ]

34:                                               ; preds = %29
  %35 = load i32, ptr @stvdebug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %39

39:                                               ; preds = %37, %34
  %40 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %41 = or i8 %40, 3
  br label %49

42:                                               ; preds = %29, %29
  %43 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %44 = and i8 %43, -4
  %45 = or i8 %44, 1
  br label %49

46:                                               ; preds = %29, %29
  %47 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %48 = and i8 %47, -4
  br label %49

49:                                               ; preds = %46, %42, %39
  %50 = phi i8 [ %48, %46 ], [ %45, %42 ], [ %41, %39 ]
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2888, i8 noundef zeroext %50) #11
  br label %51

51:                                               ; preds = %49, %29
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr inbounds %struct.stv0367_config, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %63 [
    i32 1, label %55
    i32 2, label %58
    i32 0, label %58
  ]

55:                                               ; preds = %51
  %56 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %57 = and i8 %56, 127
  br label %61

58:                                               ; preds = %51, %51
  %59 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %60 = or i8 %59, -128
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i8 [ %60, %58 ], [ %57, %55 ]
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2888, i8 noundef zeroext %62) #11
  br label %63

63:                                               ; preds = %61, %51
  %64 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %65 = and i8 %64, -9
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2888, i8 noundef zeroext %65) #11
  %66 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2904) #11
  %67 = or i8 %66, 8
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2904, i8 noundef zeroext %67) #11
  %68 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2888) #11
  %69 = or i8 %68, 4
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2888, i8 noundef zeroext %69) #11
  %70 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -2882) #11
  %71 = and i8 %70, -33
  tail call fastcc void @stv0367_writereg(ptr noundef %5, i16 noundef zeroext -2882, i8 noundef zeroext %71) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %72 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %72, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %73 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %30, align 4
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %3, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %78, align 4
  store i8 -16, ptr %2, align 1
  %79 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 -63, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %80, align 1
  %81 = load i32, ptr @i2cdebug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %63
  %84 = load i8, ptr %74, align 4
  %85 = zext i8 %84 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %85, i32 noundef 61633, i32 noundef 0) #10
  br label %87

87:                                               ; preds = %83, %63
  %88 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %3, i32 noundef 1) #11
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %30, align 4
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = load i8, ptr %80, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %95, i32 noundef 61633, i32 noundef %97) #10
  br label %99

99:                                               ; preds = %92, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  %100 = load ptr, ptr %30, align 4
  %101 = getelementptr inbounds %struct.stv0367_config, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = call fastcc i32 @stv0367cab_get_mclk(ptr noundef %0, i32 noundef %102)
  %104 = getelementptr inbounds %struct.stv0367cab_state, ptr %7, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  %105 = load ptr, ptr %30, align 4
  %106 = getelementptr inbounds %struct.stv0367_config, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = call fastcc i32 @stv0367cab_get_mclk(ptr noundef %0, i32 noundef %107) #11
  %109 = getelementptr inbounds %struct.stv0367cab_state, ptr %7, i32 0, i32 2
  store i32 %108, ptr %109, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @stvdebug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_standby) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3903) #11
  %10 = or i8 %9, 12
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3903, i8 noundef zeroext %10) #11
  %11 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3903) #11
  %12 = or i8 %11, 1
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3903, i8 noundef zeroext %12) #11
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -4094) #11
  %14 = or i8 %13, -128
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -4094, i8 noundef zeroext %14) #11
  %15 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -4094) #11
  %16 = or i8 %15, 32
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -4094, i8 noundef zeroext %16) #11
  %17 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3881) #11
  %18 = and i8 %17, -9
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3881, i8 noundef zeroext %18) #11
  %19 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3881) #11
  %20 = and i8 %19, -17
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3881, i8 noundef zeroext %20) #11
  %21 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3877) #11
  %22 = or i8 %21, 4
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3877, i8 noundef zeroext %22) #11
  %23 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %3, i16 noundef zeroext -3877) #11
  %24 = or i8 %23, 2
  tail call fastcc void @stv0367_writereg(ptr noundef %3, i16 noundef zeroext -3877, i8 noundef zeroext %24) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [64 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [64 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [64 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [64 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [64 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [64 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [64 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [64 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [64 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [64 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [64 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [64 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [64 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [64 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [64 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [64 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [64 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [64 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [64 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [64 x i8], align 1
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [64 x i8], align 1
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [64 x i8], align 1
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [64 x i8], align 1
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [64 x i8], align 1
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [64 x i8], align 1
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [64 x i8], align 1
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [64 x i8], align 1
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [64 x i8], align 1
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca [64 x i8], align 1
  %66 = alloca %struct.i2c_msg, align 4
  %67 = alloca [64 x i8], align 1
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [64 x i8], align 1
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [64 x i8], align 1
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [64 x i8], align 1
  %74 = alloca %struct.i2c_msg, align 4
  %75 = alloca [64 x i8], align 1
  %76 = alloca %struct.i2c_msg, align 4
  %77 = alloca [64 x i8], align 1
  %78 = alloca %struct.i2c_msg, align 4
  %79 = alloca [64 x i8], align 1
  %80 = alloca %struct.i2c_msg, align 4
  %81 = alloca [64 x i8], align 1
  %82 = alloca %struct.i2c_msg, align 4
  %83 = alloca [64 x i8], align 1
  %84 = alloca %struct.i2c_msg, align 4
  %85 = alloca [64 x i8], align 1
  %86 = alloca %struct.i2c_msg, align 4
  %87 = alloca [64 x i8], align 1
  %88 = alloca %struct.i2c_msg, align 4
  %89 = alloca [64 x i8], align 1
  %90 = alloca %struct.i2c_msg, align 4
  %91 = alloca [64 x i8], align 1
  %92 = alloca %struct.i2c_msg, align 4
  %93 = alloca [64 x i8], align 1
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca [64 x i8], align 1
  %96 = alloca %struct.i2c_msg, align 4
  %97 = alloca [64 x i8], align 1
  %98 = alloca %struct.i2c_msg, align 4
  %99 = alloca [64 x i8], align 1
  %100 = alloca %struct.i2c_msg, align 4
  %101 = alloca [64 x i8], align 1
  %102 = alloca %struct.i2c_msg, align 4
  %103 = alloca [64 x i8], align 1
  %104 = alloca %struct.i2c_msg, align 4
  %105 = alloca [64 x i8], align 1
  %106 = alloca %struct.i2c_msg, align 4
  %107 = alloca [64 x i8], align 1
  %108 = alloca %struct.i2c_msg, align 4
  %109 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr @stvdebug, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %1
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %119 = load i32, ptr %118, align 4
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.stv0367cab_set_frontend, i32 noundef %117, i32 noundef %119) #10
  br label %121

121:                                              ; preds = %115, %1
  %122 = getelementptr inbounds %struct.stv0367cab_state, ptr %112, i32 0, i32 4
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  %126 = icmp ult i32 %125, 5
  %127 = select i1 %126, i32 %124, i32 0
  %128 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 8
  %129 = load i8, ptr %128, align 2
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  %132 = tail call i32 @stv0367cab_init(ptr noundef %0)
  br label %133

133:                                              ; preds = %131, %121
  %134 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %159, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 6
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = tail call i32 %143(ptr noundef %0, i32 noundef 1) #11
  %147 = load ptr, ptr %134, align 4
  br label %148

148:                                              ; preds = %145, %141, %137
  %149 = phi ptr [ %147, %145 ], [ %135, %141 ], [ %135, %137 ]
  %150 = tail call i32 %149(ptr noundef %0) #11
  %151 = load i8, ptr %138, align 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = tail call i32 %155(ptr noundef %0, i32 noundef 0) #11
  br label %159

159:                                              ; preds = %157, %153, %148, %133
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %161 = load i32, ptr %160, align 4
  %162 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -2940) #11
  %163 = trunc i32 %127 to i8
  %164 = and i8 %162, -8
  %165 = or i8 %164, %163
  tail call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -2940, i8 noundef zeroext %165) #11
  switch i32 %127, label %1582 [
    i32 0, label %166
    i32 1, label %196
    i32 2, label %415
    i32 3, label %634
    i32 4, label %1022
    i32 5, label %1302
  ]

166:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %107) #11
  %167 = getelementptr inbounds i8, ptr %107, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %167, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %108) #11
  %168 = getelementptr inbounds i8, ptr %108, i32 4
  store i32 3, ptr %168, align 4, !annotation !8
  %169 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = load i8, ptr %170, align 4
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %108, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 1
  store i16 0, ptr %173, align 2
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 3
  store ptr %107, ptr %174, align 4
  store i8 -12, ptr %107, align 1
  %175 = getelementptr inbounds [64 x i8], ptr %107, i32 0, i32 1
  store i8 61, ptr %175, align 1
  %176 = getelementptr inbounds i8, ptr %107, i32 2
  store i8 0, ptr %176, align 1
  %177 = load i32, ptr @i2cdebug, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %166
  %180 = load i8, ptr %170, align 4
  %181 = zext i8 %180 to i32
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %181, i32 noundef 62525, i32 noundef 0) #10
  br label %183

183:                                              ; preds = %179, %166
  %184 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %108, i32 noundef 1) #11
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %169, align 4
  %190 = load i8, ptr %189, align 4
  %191 = zext i8 %190 to i32
  %192 = load i8, ptr %176, align 1
  %193 = zext i8 %192 to i32
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %191, i32 noundef 62525, i32 noundef %193) #10
  br label %195

195:                                              ; preds = %188, %183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %108) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %107) #11
  br label %1582

196:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %105) #11
  %197 = getelementptr inbounds i8, ptr %105, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %197, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %106) #11
  %198 = getelementptr inbounds i8, ptr %106, i32 4
  store i32 3, ptr %198, align 4, !annotation !8
  %199 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %200 = load ptr, ptr %199, align 4
  %201 = load i8, ptr %200, align 4
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %106, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 1
  store i16 0, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 3
  store ptr %105, ptr %204, align 4
  store i8 -12, ptr %105, align 1
  %205 = getelementptr inbounds [64 x i8], ptr %105, i32 0, i32 1
  store i8 20, ptr %205, align 1
  %206 = getelementptr inbounds i8, ptr %105, i32 2
  store i8 100, ptr %206, align 1
  %207 = load i32, ptr @i2cdebug, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %196
  %210 = load i8, ptr %200, align 4
  %211 = zext i8 %210 to i32
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %211, i32 noundef 62484, i32 noundef 100) #10
  br label %213

213:                                              ; preds = %209, %196
  %214 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %106, i32 noundef 1) #11
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = load ptr, ptr %199, align 4
  %220 = load i8, ptr %219, align 4
  %221 = zext i8 %220 to i32
  %222 = load i8, ptr %206, align 1
  %223 = zext i8 %222 to i32
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %221, i32 noundef 62484, i32 noundef %223) #10
  br label %225

225:                                              ; preds = %218, %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %106) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %105) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %103) #11
  %226 = getelementptr inbounds i8, ptr %103, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %226, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %104) #11
  %227 = getelementptr inbounds i8, ptr %104, i32 4
  store i32 3, ptr %227, align 4, !annotation !8
  %228 = load ptr, ptr %199, align 4
  %229 = load i8, ptr %228, align 4
  %230 = zext i8 %229 to i16
  store i16 %230, ptr %104, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 1
  store i16 0, ptr %231, align 2
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 3
  store ptr %103, ptr %232, align 4
  store i8 -12, ptr %103, align 1
  %233 = getelementptr inbounds [64 x i8], ptr %103, i32 0, i32 1
  store i8 61, ptr %233, align 1
  %234 = getelementptr inbounds i8, ptr %103, i32 2
  store i8 0, ptr %234, align 1
  %235 = load i32, ptr @i2cdebug, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %225
  %238 = load i8, ptr %228, align 4
  %239 = zext i8 %238 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %239, i32 noundef 62525, i32 noundef 0) #10
  br label %241

241:                                              ; preds = %237, %225
  %242 = load ptr, ptr %214, align 4
  %243 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %104, i32 noundef 1) #11
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %252, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %199, align 4
  %247 = load i8, ptr %246, align 4
  %248 = zext i8 %247 to i32
  %249 = load i8, ptr %234, align 1
  %250 = zext i8 %249 to i32
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %248, i32 noundef 62525, i32 noundef %250) #10
  br label %252

252:                                              ; preds = %245, %241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %104) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %103) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %101) #11
  %253 = getelementptr inbounds i8, ptr %101, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %253, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %102) #11
  %254 = getelementptr inbounds i8, ptr %102, i32 4
  store i32 3, ptr %254, align 4, !annotation !8
  %255 = load ptr, ptr %199, align 4
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %102, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 1
  store i16 0, ptr %258, align 2
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 3
  store ptr %101, ptr %259, align 4
  store i8 -12, ptr %101, align 1
  %260 = getelementptr inbounds [64 x i8], ptr %101, i32 0, i32 1
  store i8 96, ptr %260, align 1
  %261 = getelementptr inbounds i8, ptr %101, i32 2
  store i8 -112, ptr %261, align 1
  %262 = load i32, ptr @i2cdebug, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %252
  %265 = load i8, ptr %255, align 4
  %266 = zext i8 %265 to i32
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %266, i32 noundef 62560, i32 noundef 144) #10
  br label %268

268:                                              ; preds = %264, %252
  %269 = load ptr, ptr %214, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %102, i32 noundef 1) #11
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %279, label %272

272:                                              ; preds = %268
  %273 = load ptr, ptr %199, align 4
  %274 = load i8, ptr %273, align 4
  %275 = zext i8 %274 to i32
  %276 = load i8, ptr %261, align 1
  %277 = zext i8 %276 to i32
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %275, i32 noundef 62560, i32 noundef %277) #10
  br label %279

279:                                              ; preds = %272, %268
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %102) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %101) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %99) #11
  %280 = getelementptr inbounds i8, ptr %99, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %280, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %100) #11
  %281 = getelementptr inbounds i8, ptr %100, i32 4
  store i32 3, ptr %281, align 4, !annotation !8
  %282 = load ptr, ptr %199, align 4
  %283 = load i8, ptr %282, align 4
  %284 = zext i8 %283 to i16
  store i16 %284, ptr %100, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 1
  store i16 0, ptr %285, align 2
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 3
  store ptr %99, ptr %286, align 4
  store i8 -12, ptr %99, align 1
  %287 = getelementptr inbounds [64 x i8], ptr %99, i32 0, i32 1
  store i8 -110, ptr %287, align 1
  %288 = getelementptr inbounds i8, ptr %99, i32 2
  store i8 -63, ptr %288, align 1
  %289 = load i32, ptr @i2cdebug, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %279
  %292 = load i8, ptr %282, align 4
  %293 = zext i8 %292 to i32
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %293, i32 noundef 62610, i32 noundef 193) #10
  br label %295

295:                                              ; preds = %291, %279
  %296 = load ptr, ptr %214, align 4
  %297 = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %100, i32 noundef 1) #11
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %306, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %199, align 4
  %301 = load i8, ptr %300, align 4
  %302 = zext i8 %301 to i32
  %303 = load i8, ptr %288, align 1
  %304 = zext i8 %303 to i32
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %302, i32 noundef 62610, i32 noundef %304) #10
  br label %306

306:                                              ; preds = %299, %295
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %100) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %99) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %97) #11
  %307 = getelementptr inbounds i8, ptr %97, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %307, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %98) #11
  %308 = getelementptr inbounds i8, ptr %98, i32 4
  store i32 3, ptr %308, align 4, !annotation !8
  %309 = load ptr, ptr %199, align 4
  %310 = load i8, ptr %309, align 4
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %98, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 1
  store i16 0, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %98, i32 0, i32 3
  store ptr %97, ptr %313, align 4
  store i8 -12, ptr %97, align 1
  %314 = getelementptr inbounds [64 x i8], ptr %97, i32 0, i32 1
  store i8 -109, ptr %314, align 1
  %315 = getelementptr inbounds i8, ptr %97, i32 2
  store i8 -89, ptr %315, align 1
  %316 = load i32, ptr @i2cdebug, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %306
  %319 = load i8, ptr %309, align 4
  %320 = zext i8 %319 to i32
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %320, i32 noundef 62611, i32 noundef 167) #10
  br label %322

322:                                              ; preds = %318, %306
  %323 = load ptr, ptr %214, align 4
  %324 = call i32 @i2c_transfer(ptr noundef %323, ptr noundef nonnull %98, i32 noundef 1) #11
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %333, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr %199, align 4
  %328 = load i8, ptr %327, align 4
  %329 = zext i8 %328 to i32
  %330 = load i8, ptr %315, align 1
  %331 = zext i8 %330 to i32
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %329, i32 noundef 62611, i32 noundef %331) #10
  br label %333

333:                                              ; preds = %326, %322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %98) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %97) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %95) #11
  %334 = getelementptr inbounds i8, ptr %95, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %334, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %96) #11
  %335 = getelementptr inbounds i8, ptr %96, i32 4
  store i32 3, ptr %335, align 4, !annotation !8
  %336 = load ptr, ptr %199, align 4
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i16
  store i16 %338, ptr %96, align 4
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %339, align 2
  %340 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %95, ptr %340, align 4
  store i8 -12, ptr %95, align 1
  %341 = getelementptr inbounds [64 x i8], ptr %95, i32 0, i32 1
  store i8 -107, ptr %341, align 1
  %342 = getelementptr inbounds i8, ptr %95, i32 2
  store i8 -107, ptr %342, align 1
  %343 = load i32, ptr @i2cdebug, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %333
  %346 = load i8, ptr %336, align 4
  %347 = zext i8 %346 to i32
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %347, i32 noundef 62613, i32 noundef 149) #10
  br label %349

349:                                              ; preds = %345, %333
  %350 = load ptr, ptr %214, align 4
  %351 = call i32 @i2c_transfer(ptr noundef %350, ptr noundef nonnull %96, i32 noundef 1) #11
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %360, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %199, align 4
  %355 = load i8, ptr %354, align 4
  %356 = zext i8 %355 to i32
  %357 = load i8, ptr %342, align 1
  %358 = zext i8 %357 to i32
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %356, i32 noundef 62613, i32 noundef %358) #10
  br label %360

360:                                              ; preds = %353, %349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %96) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %95) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %93) #11
  %361 = getelementptr inbounds i8, ptr %93, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %361, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #11
  %362 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 3, ptr %362, align 4, !annotation !8
  %363 = load ptr, ptr %199, align 4
  %364 = load i8, ptr %363, align 4
  %365 = zext i8 %364 to i16
  store i16 %365, ptr %94, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  store i16 0, ptr %366, align 2
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  store ptr %93, ptr %367, align 4
  store i8 -12, ptr %93, align 1
  %368 = getelementptr inbounds [64 x i8], ptr %93, i32 0, i32 1
  store i8 -100, ptr %368, align 1
  %369 = getelementptr inbounds i8, ptr %93, i32 2
  store i8 64, ptr %369, align 1
  %370 = load i32, ptr @i2cdebug, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %360
  %373 = load i8, ptr %363, align 4
  %374 = zext i8 %373 to i32
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %374, i32 noundef 62620, i32 noundef 64) #10
  br label %376

376:                                              ; preds = %372, %360
  %377 = load ptr, ptr %214, align 4
  %378 = call i32 @i2c_transfer(ptr noundef %377, ptr noundef nonnull %94, i32 noundef 1) #11
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %387, label %380

380:                                              ; preds = %376
  %381 = load ptr, ptr %199, align 4
  %382 = load i8, ptr %381, align 4
  %383 = zext i8 %382 to i32
  %384 = load i8, ptr %369, align 1
  %385 = zext i8 %384 to i32
  %386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %383, i32 noundef 62620, i32 noundef %385) #10
  br label %387

387:                                              ; preds = %380, %376
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %93) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %91) #11
  %388 = getelementptr inbounds i8, ptr %91, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %388, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #11
  %389 = getelementptr inbounds i8, ptr %92, i32 4
  store i32 3, ptr %389, align 4, !annotation !8
  %390 = load ptr, ptr %199, align 4
  %391 = load i8, ptr %390, align 4
  %392 = zext i8 %391 to i16
  store i16 %392, ptr %92, align 4
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  store i16 0, ptr %393, align 2
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  store ptr %91, ptr %394, align 4
  store i8 -12, ptr %91, align 1
  %395 = getelementptr inbounds [64 x i8], ptr %91, i32 0, i32 1
  store i8 -98, ptr %395, align 1
  %396 = getelementptr inbounds i8, ptr %91, i32 2
  store i8 -118, ptr %396, align 1
  %397 = load i32, ptr @i2cdebug, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %387
  %400 = load i8, ptr %390, align 4
  %401 = zext i8 %400 to i32
  %402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %401, i32 noundef 62622, i32 noundef 138) #10
  br label %403

403:                                              ; preds = %399, %387
  %404 = load ptr, ptr %214, align 4
  %405 = call i32 @i2c_transfer(ptr noundef %404, ptr noundef nonnull %92, i32 noundef 1) #11
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %414, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr %199, align 4
  %409 = load i8, ptr %408, align 4
  %410 = zext i8 %409 to i32
  %411 = load i8, ptr %396, align 1
  %412 = zext i8 %411 to i32
  %413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %410, i32 noundef 62622, i32 noundef %412) #10
  br label %414

414:                                              ; preds = %407, %403
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %91) #11
  br label %1582

415:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %89) #11
  %416 = getelementptr inbounds i8, ptr %89, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %416, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #11
  %417 = getelementptr inbounds i8, ptr %90, i32 4
  store i32 3, ptr %417, align 4, !annotation !8
  %418 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %419 = load ptr, ptr %418, align 4
  %420 = load i8, ptr %419, align 4
  %421 = zext i8 %420 to i16
  store i16 %421, ptr %90, align 4
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  store i16 0, ptr %422, align 2
  %423 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  store ptr %89, ptr %423, align 4
  store i8 -12, ptr %89, align 1
  %424 = getelementptr inbounds [64 x i8], ptr %89, i32 0, i32 1
  store i8 61, ptr %424, align 1
  %425 = getelementptr inbounds i8, ptr %89, i32 2
  store i8 0, ptr %425, align 1
  %426 = load i32, ptr @i2cdebug, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %432, label %428

428:                                              ; preds = %415
  %429 = load i8, ptr %419, align 4
  %430 = zext i8 %429 to i32
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %430, i32 noundef 62525, i32 noundef 0) #10
  br label %432

432:                                              ; preds = %428, %415
  %433 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %434 = load ptr, ptr %433, align 4
  %435 = call i32 @i2c_transfer(ptr noundef %434, ptr noundef nonnull %90, i32 noundef 1) #11
  %436 = icmp eq i32 %435, 1
  br i1 %436, label %444, label %437

437:                                              ; preds = %432
  %438 = load ptr, ptr %418, align 4
  %439 = load i8, ptr %438, align 4
  %440 = zext i8 %439 to i32
  %441 = load i8, ptr %425, align 1
  %442 = zext i8 %441 to i32
  %443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %440, i32 noundef 62525, i32 noundef %442) #10
  br label %444

444:                                              ; preds = %437, %432
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %89) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %87) #11
  %445 = getelementptr inbounds i8, ptr %87, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %445, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #11
  %446 = getelementptr inbounds i8, ptr %88, i32 4
  store i32 3, ptr %446, align 4, !annotation !8
  %447 = load ptr, ptr %418, align 4
  %448 = load i8, ptr %447, align 4
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %88, align 4
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  store i16 0, ptr %450, align 2
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  store ptr %87, ptr %451, align 4
  store i8 -12, ptr %87, align 1
  %452 = getelementptr inbounds [64 x i8], ptr %87, i32 0, i32 1
  store i8 20, ptr %452, align 1
  %453 = getelementptr inbounds i8, ptr %87, i32 2
  store i8 110, ptr %453, align 1
  %454 = load i32, ptr @i2cdebug, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %460, label %456

456:                                              ; preds = %444
  %457 = load i8, ptr %447, align 4
  %458 = zext i8 %457 to i32
  %459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %458, i32 noundef 62484, i32 noundef 110) #10
  br label %460

460:                                              ; preds = %456, %444
  %461 = load ptr, ptr %433, align 4
  %462 = call i32 @i2c_transfer(ptr noundef %461, ptr noundef nonnull %88, i32 noundef 1) #11
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %471, label %464

464:                                              ; preds = %460
  %465 = load ptr, ptr %418, align 4
  %466 = load i8, ptr %465, align 4
  %467 = zext i8 %466 to i32
  %468 = load i8, ptr %453, align 1
  %469 = zext i8 %468 to i32
  %470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %467, i32 noundef 62484, i32 noundef %469) #10
  br label %471

471:                                              ; preds = %464, %460
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %87) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %85) #11
  %472 = getelementptr inbounds i8, ptr %85, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %472, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %86) #11
  %473 = getelementptr inbounds i8, ptr %86, i32 4
  store i32 3, ptr %473, align 4, !annotation !8
  %474 = load ptr, ptr %418, align 4
  %475 = load i8, ptr %474, align 4
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %86, align 4
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  store i16 0, ptr %477, align 2
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  store ptr %85, ptr %478, align 4
  store i8 -12, ptr %85, align 1
  %479 = getelementptr inbounds [64 x i8], ptr %85, i32 0, i32 1
  store i8 96, ptr %479, align 1
  %480 = getelementptr inbounds i8, ptr %85, i32 2
  store i8 -80, ptr %480, align 1
  %481 = load i32, ptr @i2cdebug, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %487, label %483

483:                                              ; preds = %471
  %484 = load i8, ptr %474, align 4
  %485 = zext i8 %484 to i32
  %486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %485, i32 noundef 62560, i32 noundef 176) #10
  br label %487

487:                                              ; preds = %483, %471
  %488 = load ptr, ptr %433, align 4
  %489 = call i32 @i2c_transfer(ptr noundef %488, ptr noundef nonnull %86, i32 noundef 1) #11
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %498, label %491

491:                                              ; preds = %487
  %492 = load ptr, ptr %418, align 4
  %493 = load i8, ptr %492, align 4
  %494 = zext i8 %493 to i32
  %495 = load i8, ptr %480, align 1
  %496 = zext i8 %495 to i32
  %497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %494, i32 noundef 62560, i32 noundef %496) #10
  br label %498

498:                                              ; preds = %491, %487
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %86) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %85) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %83) #11
  %499 = getelementptr inbounds i8, ptr %83, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %499, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %84) #11
  %500 = getelementptr inbounds i8, ptr %84, i32 4
  store i32 3, ptr %500, align 4, !annotation !8
  %501 = load ptr, ptr %418, align 4
  %502 = load i8, ptr %501, align 4
  %503 = zext i8 %502 to i16
  store i16 %503, ptr %84, align 4
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  store i16 0, ptr %504, align 2
  %505 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 3
  store ptr %83, ptr %505, align 4
  store i8 -12, ptr %83, align 1
  %506 = getelementptr inbounds [64 x i8], ptr %83, i32 0, i32 1
  store i8 -110, ptr %506, align 1
  %507 = getelementptr inbounds i8, ptr %83, i32 2
  store i8 -63, ptr %507, align 1
  %508 = load i32, ptr @i2cdebug, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %514, label %510

510:                                              ; preds = %498
  %511 = load i8, ptr %501, align 4
  %512 = zext i8 %511 to i32
  %513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %512, i32 noundef 62610, i32 noundef 193) #10
  br label %514

514:                                              ; preds = %510, %498
  %515 = load ptr, ptr %433, align 4
  %516 = call i32 @i2c_transfer(ptr noundef %515, ptr noundef nonnull %84, i32 noundef 1) #11
  %517 = icmp eq i32 %516, 1
  br i1 %517, label %525, label %518

518:                                              ; preds = %514
  %519 = load ptr, ptr %418, align 4
  %520 = load i8, ptr %519, align 4
  %521 = zext i8 %520 to i32
  %522 = load i8, ptr %507, align 1
  %523 = zext i8 %522 to i32
  %524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %521, i32 noundef 62610, i32 noundef %523) #10
  br label %525

525:                                              ; preds = %518, %514
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %84) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %83) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %81) #11
  %526 = getelementptr inbounds i8, ptr %81, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %526, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %82) #11
  %527 = getelementptr inbounds i8, ptr %82, i32 4
  store i32 3, ptr %527, align 4, !annotation !8
  %528 = load ptr, ptr %418, align 4
  %529 = load i8, ptr %528, align 4
  %530 = zext i8 %529 to i16
  store i16 %530, ptr %82, align 4
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 1
  store i16 0, ptr %531, align 2
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 3
  store ptr %81, ptr %532, align 4
  store i8 -12, ptr %81, align 1
  %533 = getelementptr inbounds [64 x i8], ptr %81, i32 0, i32 1
  store i8 -109, ptr %533, align 1
  %534 = getelementptr inbounds i8, ptr %81, i32 2
  store i8 -73, ptr %534, align 1
  %535 = load i32, ptr @i2cdebug, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %541, label %537

537:                                              ; preds = %525
  %538 = load i8, ptr %528, align 4
  %539 = zext i8 %538 to i32
  %540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %539, i32 noundef 62611, i32 noundef 183) #10
  br label %541

541:                                              ; preds = %537, %525
  %542 = load ptr, ptr %433, align 4
  %543 = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %82, i32 noundef 1) #11
  %544 = icmp eq i32 %543, 1
  br i1 %544, label %552, label %545

545:                                              ; preds = %541
  %546 = load ptr, ptr %418, align 4
  %547 = load i8, ptr %546, align 4
  %548 = zext i8 %547 to i32
  %549 = load i8, ptr %534, align 1
  %550 = zext i8 %549 to i32
  %551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %548, i32 noundef 62611, i32 noundef %550) #10
  br label %552

552:                                              ; preds = %545, %541
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %82) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %81) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %79) #11
  %553 = getelementptr inbounds i8, ptr %79, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %553, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %80) #11
  %554 = getelementptr inbounds i8, ptr %80, i32 4
  store i32 3, ptr %554, align 4, !annotation !8
  %555 = load ptr, ptr %418, align 4
  %556 = load i8, ptr %555, align 4
  %557 = zext i8 %556 to i16
  store i16 %557, ptr %80, align 4
  %558 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 1
  store i16 0, ptr %558, align 2
  %559 = getelementptr inbounds %struct.i2c_msg, ptr %80, i32 0, i32 3
  store ptr %79, ptr %559, align 4
  store i8 -12, ptr %79, align 1
  %560 = getelementptr inbounds [64 x i8], ptr %79, i32 0, i32 1
  store i8 -107, ptr %560, align 1
  %561 = getelementptr inbounds i8, ptr %79, i32 2
  store i8 -99, ptr %561, align 1
  %562 = load i32, ptr @i2cdebug, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %568, label %564

564:                                              ; preds = %552
  %565 = load i8, ptr %555, align 4
  %566 = zext i8 %565 to i32
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %566, i32 noundef 62613, i32 noundef 157) #10
  br label %568

568:                                              ; preds = %564, %552
  %569 = load ptr, ptr %433, align 4
  %570 = call i32 @i2c_transfer(ptr noundef %569, ptr noundef nonnull %80, i32 noundef 1) #11
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %579, label %572

572:                                              ; preds = %568
  %573 = load ptr, ptr %418, align 4
  %574 = load i8, ptr %573, align 4
  %575 = zext i8 %574 to i32
  %576 = load i8, ptr %561, align 1
  %577 = zext i8 %576 to i32
  %578 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %575, i32 noundef 62613, i32 noundef %577) #10
  br label %579

579:                                              ; preds = %572, %568
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %80) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %79) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %77) #11
  %580 = getelementptr inbounds i8, ptr %77, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %580, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %78) #11
  %581 = getelementptr inbounds i8, ptr %78, i32 4
  store i32 3, ptr %581, align 4, !annotation !8
  %582 = load ptr, ptr %418, align 4
  %583 = load i8, ptr %582, align 4
  %584 = zext i8 %583 to i16
  store i16 %584, ptr %78, align 4
  %585 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 1
  store i16 0, ptr %585, align 2
  %586 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  store ptr %77, ptr %586, align 4
  store i8 -12, ptr %77, align 1
  %587 = getelementptr inbounds [64 x i8], ptr %77, i32 0, i32 1
  store i8 -100, ptr %587, align 1
  %588 = getelementptr inbounds i8, ptr %77, i32 2
  store i8 127, ptr %588, align 1
  %589 = load i32, ptr @i2cdebug, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %595, label %591

591:                                              ; preds = %579
  %592 = load i8, ptr %582, align 4
  %593 = zext i8 %592 to i32
  %594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %593, i32 noundef 62620, i32 noundef 127) #10
  br label %595

595:                                              ; preds = %591, %579
  %596 = load ptr, ptr %433, align 4
  %597 = call i32 @i2c_transfer(ptr noundef %596, ptr noundef nonnull %78, i32 noundef 1) #11
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %606, label %599

599:                                              ; preds = %595
  %600 = load ptr, ptr %418, align 4
  %601 = load i8, ptr %600, align 4
  %602 = zext i8 %601 to i32
  %603 = load i8, ptr %588, align 1
  %604 = zext i8 %603 to i32
  %605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %602, i32 noundef 62620, i32 noundef %604) #10
  br label %606

606:                                              ; preds = %599, %595
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %78) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %77) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %75) #11
  %607 = getelementptr inbounds i8, ptr %75, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %607, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %76) #11
  %608 = getelementptr inbounds i8, ptr %76, i32 4
  store i32 3, ptr %608, align 4, !annotation !8
  %609 = load ptr, ptr %418, align 4
  %610 = load i8, ptr %609, align 4
  %611 = zext i8 %610 to i16
  store i16 %611, ptr %76, align 4
  %612 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %612, align 2
  %613 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %75, ptr %613, align 4
  store i8 -12, ptr %75, align 1
  %614 = getelementptr inbounds [64 x i8], ptr %75, i32 0, i32 1
  store i8 -98, ptr %614, align 1
  %615 = getelementptr inbounds i8, ptr %75, i32 2
  store i8 -89, ptr %615, align 1
  %616 = load i32, ptr @i2cdebug, align 4
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %622, label %618

618:                                              ; preds = %606
  %619 = load i8, ptr %609, align 4
  %620 = zext i8 %619 to i32
  %621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %620, i32 noundef 62622, i32 noundef 167) #10
  br label %622

622:                                              ; preds = %618, %606
  %623 = load ptr, ptr %433, align 4
  %624 = call i32 @i2c_transfer(ptr noundef %623, ptr noundef nonnull %76, i32 noundef 1) #11
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %633, label %626

626:                                              ; preds = %622
  %627 = load ptr, ptr %418, align 4
  %628 = load i8, ptr %627, align 4
  %629 = zext i8 %628 to i32
  %630 = load i8, ptr %615, align 1
  %631 = zext i8 %630 to i32
  %632 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %629, i32 noundef 62622, i32 noundef %631) #10
  br label %633

633:                                              ; preds = %626, %622
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %76) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %75) #11
  br label %1582

634:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %73) #11
  %635 = getelementptr inbounds i8, ptr %73, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %635, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #11
  %636 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 3, ptr %636, align 4, !annotation !8
  %637 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %638 = load ptr, ptr %637, align 4
  %639 = load i8, ptr %638, align 4
  %640 = zext i8 %639 to i16
  store i16 %640, ptr %74, align 4
  %641 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %641, align 2
  %642 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %642, align 4
  store i8 -12, ptr %73, align 1
  %643 = getelementptr inbounds [64 x i8], ptr %73, i32 0, i32 1
  store i8 61, ptr %643, align 1
  %644 = getelementptr inbounds i8, ptr %73, i32 2
  store i8 -126, ptr %644, align 1
  %645 = load i32, ptr @i2cdebug, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %651, label %647

647:                                              ; preds = %634
  %648 = load i8, ptr %638, align 4
  %649 = zext i8 %648 to i32
  %650 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %649, i32 noundef 62525, i32 noundef 130) #10
  br label %651

651:                                              ; preds = %647, %634
  %652 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %653 = load ptr, ptr %652, align 4
  %654 = call i32 @i2c_transfer(ptr noundef %653, ptr noundef nonnull %74, i32 noundef 1) #11
  %655 = icmp eq i32 %654, 1
  br i1 %655, label %663, label %656

656:                                              ; preds = %651
  %657 = load ptr, ptr %637, align 4
  %658 = load i8, ptr %657, align 4
  %659 = zext i8 %658 to i32
  %660 = load i8, ptr %644, align 1
  %661 = zext i8 %660 to i32
  %662 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %659, i32 noundef 62525, i32 noundef %661) #10
  br label %663

663:                                              ; preds = %656, %651
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %73) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %71) #11
  %664 = getelementptr inbounds i8, ptr %71, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %664, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #11
  %665 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 3, ptr %665, align 4, !annotation !8
  %666 = load ptr, ptr %637, align 4
  %667 = load i8, ptr %666, align 4
  %668 = zext i8 %667 to i16
  store i16 %668, ptr %72, align 4
  %669 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %669, align 2
  %670 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %670, align 4
  store i8 -12, ptr %71, align 1
  %671 = getelementptr inbounds [64 x i8], ptr %71, i32 0, i32 1
  store i8 20, ptr %671, align 1
  %672 = getelementptr inbounds i8, ptr %71, i32 2
  store i8 90, ptr %672, align 1
  %673 = load i32, ptr @i2cdebug, align 4
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %679, label %675

675:                                              ; preds = %663
  %676 = load i8, ptr %666, align 4
  %677 = zext i8 %676 to i32
  %678 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %677, i32 noundef 62484, i32 noundef 90) #10
  br label %679

679:                                              ; preds = %675, %663
  %680 = load ptr, ptr %652, align 4
  %681 = call i32 @i2c_transfer(ptr noundef %680, ptr noundef nonnull %72, i32 noundef 1) #11
  %682 = icmp eq i32 %681, 1
  br i1 %682, label %690, label %683

683:                                              ; preds = %679
  %684 = load ptr, ptr %637, align 4
  %685 = load i8, ptr %684, align 4
  %686 = zext i8 %685 to i32
  %687 = load i8, ptr %672, align 1
  %688 = zext i8 %687 to i32
  %689 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %686, i32 noundef 62484, i32 noundef %688) #10
  br label %690

690:                                              ; preds = %683, %679
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %71) #11
  %691 = icmp ugt i32 %161, 4500000
  br i1 %691, label %692, label %774

692:                                              ; preds = %690
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %69) #11
  %693 = getelementptr inbounds i8, ptr %69, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %693, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #11
  %694 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 3, ptr %694, align 4, !annotation !8
  %695 = load ptr, ptr %637, align 4
  %696 = load i8, ptr %695, align 4
  %697 = zext i8 %696 to i16
  store i16 %697, ptr %70, align 4
  %698 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %698, align 2
  %699 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %699, align 4
  store i8 -12, ptr %69, align 1
  %700 = getelementptr inbounds [64 x i8], ptr %69, i32 0, i32 1
  store i8 96, ptr %700, align 1
  %701 = getelementptr inbounds i8, ptr %69, i32 2
  store i8 -80, ptr %701, align 1
  %702 = load i32, ptr @i2cdebug, align 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %708, label %704

704:                                              ; preds = %692
  %705 = load i8, ptr %695, align 4
  %706 = zext i8 %705 to i32
  %707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %706, i32 noundef 62560, i32 noundef 176) #10
  br label %708

708:                                              ; preds = %704, %692
  %709 = load ptr, ptr %652, align 4
  %710 = call i32 @i2c_transfer(ptr noundef %709, ptr noundef nonnull %70, i32 noundef 1) #11
  %711 = icmp eq i32 %710, 1
  br i1 %711, label %719, label %712

712:                                              ; preds = %708
  %713 = load ptr, ptr %637, align 4
  %714 = load i8, ptr %713, align 4
  %715 = zext i8 %714 to i32
  %716 = load i8, ptr %701, align 1
  %717 = zext i8 %716 to i32
  %718 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %715, i32 noundef 62560, i32 noundef %717) #10
  br label %719

719:                                              ; preds = %712, %708
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %69) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %67) #11
  %720 = getelementptr inbounds i8, ptr %67, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %720, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #11
  %721 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 3, ptr %721, align 4, !annotation !8
  %722 = load ptr, ptr %637, align 4
  %723 = load i8, ptr %722, align 4
  %724 = zext i8 %723 to i16
  store i16 %724, ptr %68, align 4
  %725 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %725, align 2
  %726 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %726, align 4
  store i8 -12, ptr %67, align 1
  %727 = getelementptr inbounds [64 x i8], ptr %67, i32 0, i32 1
  store i8 -110, ptr %727, align 1
  %728 = getelementptr inbounds i8, ptr %67, i32 2
  store i8 -63, ptr %728, align 1
  %729 = load i32, ptr @i2cdebug, align 4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %735, label %731

731:                                              ; preds = %719
  %732 = load i8, ptr %722, align 4
  %733 = zext i8 %732 to i32
  %734 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %733, i32 noundef 62610, i32 noundef 193) #10
  br label %735

735:                                              ; preds = %731, %719
  %736 = load ptr, ptr %652, align 4
  %737 = call i32 @i2c_transfer(ptr noundef %736, ptr noundef nonnull %68, i32 noundef 1) #11
  %738 = icmp eq i32 %737, 1
  br i1 %738, label %746, label %739

739:                                              ; preds = %735
  %740 = load ptr, ptr %637, align 4
  %741 = load i8, ptr %740, align 4
  %742 = zext i8 %741 to i32
  %743 = load i8, ptr %728, align 1
  %744 = zext i8 %743 to i32
  %745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %742, i32 noundef 62610, i32 noundef %744) #10
  br label %746

746:                                              ; preds = %739, %735
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %67) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %65) #11
  %747 = getelementptr inbounds i8, ptr %65, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %747, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #11
  %748 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 3, ptr %748, align 4, !annotation !8
  %749 = load ptr, ptr %637, align 4
  %750 = load i8, ptr %749, align 4
  %751 = zext i8 %750 to i16
  store i16 %751, ptr %66, align 4
  %752 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %752, align 2
  %753 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %65, ptr %753, align 4
  store i8 -12, ptr %65, align 1
  %754 = getelementptr inbounds [64 x i8], ptr %65, i32 0, i32 1
  store i8 -109, ptr %754, align 1
  %755 = getelementptr inbounds i8, ptr %65, i32 2
  store i8 -91, ptr %755, align 1
  %756 = load i32, ptr @i2cdebug, align 4
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %762, label %758

758:                                              ; preds = %746
  %759 = load i8, ptr %749, align 4
  %760 = zext i8 %759 to i32
  %761 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %760, i32 noundef 62611, i32 noundef 165) #10
  br label %762

762:                                              ; preds = %758, %746
  %763 = load ptr, ptr %652, align 4
  %764 = call i32 @i2c_transfer(ptr noundef %763, ptr noundef nonnull %66, i32 noundef 1) #11
  %765 = icmp eq i32 %764, 1
  br i1 %765, label %773, label %766

766:                                              ; preds = %762
  %767 = load ptr, ptr %637, align 4
  %768 = load i8, ptr %767, align 4
  %769 = zext i8 %768 to i32
  %770 = load i8, ptr %755, align 1
  %771 = zext i8 %770 to i32
  %772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %769, i32 noundef 62611, i32 noundef %771) #10
  br label %773

773:                                              ; preds = %766, %762
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %65) #11
  br label %940

774:                                              ; preds = %690
  %775 = icmp ugt i32 %161, 2500000
  br i1 %775, label %776, label %858

776:                                              ; preds = %774
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %63) #11
  %777 = getelementptr inbounds i8, ptr %63, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %777, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #11
  %778 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 3, ptr %778, align 4, !annotation !8
  %779 = load ptr, ptr %637, align 4
  %780 = load i8, ptr %779, align 4
  %781 = zext i8 %780 to i16
  store i16 %781, ptr %64, align 4
  %782 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %782, align 2
  %783 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %783, align 4
  store i8 -12, ptr %63, align 1
  %784 = getelementptr inbounds [64 x i8], ptr %63, i32 0, i32 1
  store i8 96, ptr %784, align 1
  %785 = getelementptr inbounds i8, ptr %63, i32 2
  store i8 -96, ptr %785, align 1
  %786 = load i32, ptr @i2cdebug, align 4
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %792, label %788

788:                                              ; preds = %776
  %789 = load i8, ptr %779, align 4
  %790 = zext i8 %789 to i32
  %791 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %790, i32 noundef 62560, i32 noundef 160) #10
  br label %792

792:                                              ; preds = %788, %776
  %793 = load ptr, ptr %652, align 4
  %794 = call i32 @i2c_transfer(ptr noundef %793, ptr noundef nonnull %64, i32 noundef 1) #11
  %795 = icmp eq i32 %794, 1
  br i1 %795, label %803, label %796

796:                                              ; preds = %792
  %797 = load ptr, ptr %637, align 4
  %798 = load i8, ptr %797, align 4
  %799 = zext i8 %798 to i32
  %800 = load i8, ptr %785, align 1
  %801 = zext i8 %800 to i32
  %802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %799, i32 noundef 62560, i32 noundef %801) #10
  br label %803

803:                                              ; preds = %796, %792
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %63) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %61) #11
  %804 = getelementptr inbounds i8, ptr %61, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %804, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #11
  %805 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 3, ptr %805, align 4, !annotation !8
  %806 = load ptr, ptr %637, align 4
  %807 = load i8, ptr %806, align 4
  %808 = zext i8 %807 to i16
  store i16 %808, ptr %62, align 4
  %809 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %809, align 2
  %810 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %810, align 4
  store i8 -12, ptr %61, align 1
  %811 = getelementptr inbounds [64 x i8], ptr %61, i32 0, i32 1
  store i8 -110, ptr %811, align 1
  %812 = getelementptr inbounds i8, ptr %61, i32 2
  store i8 -63, ptr %812, align 1
  %813 = load i32, ptr @i2cdebug, align 4
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %819, label %815

815:                                              ; preds = %803
  %816 = load i8, ptr %806, align 4
  %817 = zext i8 %816 to i32
  %818 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %817, i32 noundef 62610, i32 noundef 193) #10
  br label %819

819:                                              ; preds = %815, %803
  %820 = load ptr, ptr %652, align 4
  %821 = call i32 @i2c_transfer(ptr noundef %820, ptr noundef nonnull %62, i32 noundef 1) #11
  %822 = icmp eq i32 %821, 1
  br i1 %822, label %830, label %823

823:                                              ; preds = %819
  %824 = load ptr, ptr %637, align 4
  %825 = load i8, ptr %824, align 4
  %826 = zext i8 %825 to i32
  %827 = load i8, ptr %812, align 1
  %828 = zext i8 %827 to i32
  %829 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %826, i32 noundef 62610, i32 noundef %828) #10
  br label %830

830:                                              ; preds = %823, %819
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %61) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %59) #11
  %831 = getelementptr inbounds i8, ptr %59, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %831, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #11
  %832 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 3, ptr %832, align 4, !annotation !8
  %833 = load ptr, ptr %637, align 4
  %834 = load i8, ptr %833, align 4
  %835 = zext i8 %834 to i16
  store i16 %835, ptr %60, align 4
  %836 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %836, align 2
  %837 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %837, align 4
  store i8 -12, ptr %59, align 1
  %838 = getelementptr inbounds [64 x i8], ptr %59, i32 0, i32 1
  store i8 -109, ptr %838, align 1
  %839 = getelementptr inbounds i8, ptr %59, i32 2
  store i8 -90, ptr %839, align 1
  %840 = load i32, ptr @i2cdebug, align 4
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %846, label %842

842:                                              ; preds = %830
  %843 = load i8, ptr %833, align 4
  %844 = zext i8 %843 to i32
  %845 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %844, i32 noundef 62611, i32 noundef 166) #10
  br label %846

846:                                              ; preds = %842, %830
  %847 = load ptr, ptr %652, align 4
  %848 = call i32 @i2c_transfer(ptr noundef %847, ptr noundef nonnull %60, i32 noundef 1) #11
  %849 = icmp eq i32 %848, 1
  br i1 %849, label %857, label %850

850:                                              ; preds = %846
  %851 = load ptr, ptr %637, align 4
  %852 = load i8, ptr %851, align 4
  %853 = zext i8 %852 to i32
  %854 = load i8, ptr %839, align 1
  %855 = zext i8 %854 to i32
  %856 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %853, i32 noundef 62611, i32 noundef %855) #10
  br label %857

857:                                              ; preds = %850, %846
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %59) #11
  br label %940

858:                                              ; preds = %774
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %57) #11
  %859 = getelementptr inbounds i8, ptr %57, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %859, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #11
  %860 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 3, ptr %860, align 4, !annotation !8
  %861 = load ptr, ptr %637, align 4
  %862 = load i8, ptr %861, align 4
  %863 = zext i8 %862 to i16
  store i16 %863, ptr %58, align 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %864, align 2
  %865 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %865, align 4
  store i8 -12, ptr %57, align 1
  %866 = getelementptr inbounds [64 x i8], ptr %57, i32 0, i32 1
  store i8 96, ptr %866, align 1
  %867 = getelementptr inbounds i8, ptr %57, i32 2
  store i8 -96, ptr %867, align 1
  %868 = load i32, ptr @i2cdebug, align 4
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %874, label %870

870:                                              ; preds = %858
  %871 = load i8, ptr %861, align 4
  %872 = zext i8 %871 to i32
  %873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %872, i32 noundef 62560, i32 noundef 160) #10
  br label %874

874:                                              ; preds = %870, %858
  %875 = load ptr, ptr %652, align 4
  %876 = call i32 @i2c_transfer(ptr noundef %875, ptr noundef nonnull %58, i32 noundef 1) #11
  %877 = icmp eq i32 %876, 1
  br i1 %877, label %885, label %878

878:                                              ; preds = %874
  %879 = load ptr, ptr %637, align 4
  %880 = load i8, ptr %879, align 4
  %881 = zext i8 %880 to i32
  %882 = load i8, ptr %867, align 1
  %883 = zext i8 %882 to i32
  %884 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %881, i32 noundef 62560, i32 noundef %883) #10
  br label %885

885:                                              ; preds = %878, %874
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %57) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %55) #11
  %886 = getelementptr inbounds i8, ptr %55, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %886, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #11
  %887 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 3, ptr %887, align 4, !annotation !8
  %888 = load ptr, ptr %637, align 4
  %889 = load i8, ptr %888, align 4
  %890 = zext i8 %889 to i16
  store i16 %890, ptr %56, align 4
  %891 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %891, align 2
  %892 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %892, align 4
  store i8 -12, ptr %55, align 1
  %893 = getelementptr inbounds [64 x i8], ptr %55, i32 0, i32 1
  store i8 -110, ptr %893, align 1
  %894 = getelementptr inbounds i8, ptr %55, i32 2
  store i8 -47, ptr %894, align 1
  %895 = load i32, ptr @i2cdebug, align 4
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %901, label %897

897:                                              ; preds = %885
  %898 = load i8, ptr %888, align 4
  %899 = zext i8 %898 to i32
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %899, i32 noundef 62610, i32 noundef 209) #10
  br label %901

901:                                              ; preds = %897, %885
  %902 = load ptr, ptr %652, align 4
  %903 = call i32 @i2c_transfer(ptr noundef %902, ptr noundef nonnull %56, i32 noundef 1) #11
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %912, label %905

905:                                              ; preds = %901
  %906 = load ptr, ptr %637, align 4
  %907 = load i8, ptr %906, align 4
  %908 = zext i8 %907 to i32
  %909 = load i8, ptr %894, align 1
  %910 = zext i8 %909 to i32
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %908, i32 noundef 62610, i32 noundef %910) #10
  br label %912

912:                                              ; preds = %905, %901
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %55) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %53) #11
  %913 = getelementptr inbounds i8, ptr %53, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %913, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #11
  %914 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 3, ptr %914, align 4, !annotation !8
  %915 = load ptr, ptr %637, align 4
  %916 = load i8, ptr %915, align 4
  %917 = zext i8 %916 to i16
  store i16 %917, ptr %54, align 4
  %918 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %918, align 2
  %919 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %919, align 4
  store i8 -12, ptr %53, align 1
  %920 = getelementptr inbounds [64 x i8], ptr %53, i32 0, i32 1
  store i8 -109, ptr %920, align 1
  %921 = getelementptr inbounds i8, ptr %53, i32 2
  store i8 -89, ptr %921, align 1
  %922 = load i32, ptr @i2cdebug, align 4
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %928, label %924

924:                                              ; preds = %912
  %925 = load i8, ptr %915, align 4
  %926 = zext i8 %925 to i32
  %927 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %926, i32 noundef 62611, i32 noundef 167) #10
  br label %928

928:                                              ; preds = %924, %912
  %929 = load ptr, ptr %652, align 4
  %930 = call i32 @i2c_transfer(ptr noundef %929, ptr noundef nonnull %54, i32 noundef 1) #11
  %931 = icmp eq i32 %930, 1
  br i1 %931, label %939, label %932

932:                                              ; preds = %928
  %933 = load ptr, ptr %637, align 4
  %934 = load i8, ptr %933, align 4
  %935 = zext i8 %934 to i32
  %936 = load i8, ptr %921, align 1
  %937 = zext i8 %936 to i32
  %938 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %935, i32 noundef 62611, i32 noundef %937) #10
  br label %939

939:                                              ; preds = %932, %928
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %53) #11
  br label %940

940:                                              ; preds = %939, %857, %773
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %51) #11
  %941 = getelementptr inbounds i8, ptr %51, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %941, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #11
  %942 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 3, ptr %942, align 4, !annotation !8
  %943 = load ptr, ptr %637, align 4
  %944 = load i8, ptr %943, align 4
  %945 = zext i8 %944 to i16
  store i16 %945, ptr %52, align 4
  %946 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %946, align 2
  %947 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store ptr %51, ptr %947, align 4
  store i8 -12, ptr %51, align 1
  %948 = getelementptr inbounds [64 x i8], ptr %51, i32 0, i32 1
  store i8 -107, ptr %948, align 1
  %949 = getelementptr inbounds i8, ptr %51, i32 2
  store i8 -107, ptr %949, align 1
  %950 = load i32, ptr @i2cdebug, align 4
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %956, label %952

952:                                              ; preds = %940
  %953 = load i8, ptr %943, align 4
  %954 = zext i8 %953 to i32
  %955 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %954, i32 noundef 62613, i32 noundef 149) #10
  br label %956

956:                                              ; preds = %952, %940
  %957 = load ptr, ptr %652, align 4
  %958 = call i32 @i2c_transfer(ptr noundef %957, ptr noundef nonnull %52, i32 noundef 1) #11
  %959 = icmp eq i32 %958, 1
  br i1 %959, label %967, label %960

960:                                              ; preds = %956
  %961 = load ptr, ptr %637, align 4
  %962 = load i8, ptr %961, align 4
  %963 = zext i8 %962 to i32
  %964 = load i8, ptr %949, align 1
  %965 = zext i8 %964 to i32
  %966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %963, i32 noundef 62613, i32 noundef %965) #10
  br label %967

967:                                              ; preds = %960, %956
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %51) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %49) #11
  %968 = getelementptr inbounds i8, ptr %49, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %968, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #11
  %969 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 3, ptr %969, align 4, !annotation !8
  %970 = load ptr, ptr %637, align 4
  %971 = load i8, ptr %970, align 4
  %972 = zext i8 %971 to i16
  store i16 %972, ptr %50, align 4
  %973 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %973, align 2
  %974 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %974, align 4
  store i8 -12, ptr %49, align 1
  %975 = getelementptr inbounds [64 x i8], ptr %49, i32 0, i32 1
  store i8 -100, ptr %975, align 1
  %976 = getelementptr inbounds i8, ptr %49, i32 2
  store i8 64, ptr %976, align 1
  %977 = load i32, ptr @i2cdebug, align 4
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %983, label %979

979:                                              ; preds = %967
  %980 = load i8, ptr %970, align 4
  %981 = zext i8 %980 to i32
  %982 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %981, i32 noundef 62620, i32 noundef 64) #10
  br label %983

983:                                              ; preds = %979, %967
  %984 = load ptr, ptr %652, align 4
  %985 = call i32 @i2c_transfer(ptr noundef %984, ptr noundef nonnull %50, i32 noundef 1) #11
  %986 = icmp eq i32 %985, 1
  br i1 %986, label %994, label %987

987:                                              ; preds = %983
  %988 = load ptr, ptr %637, align 4
  %989 = load i8, ptr %988, align 4
  %990 = zext i8 %989 to i32
  %991 = load i8, ptr %976, align 1
  %992 = zext i8 %991 to i32
  %993 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %990, i32 noundef 62620, i32 noundef %992) #10
  br label %994

994:                                              ; preds = %987, %983
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %49) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #11
  %995 = getelementptr inbounds i8, ptr %47, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %995, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #11
  %996 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 3, ptr %996, align 4, !annotation !8
  %997 = load ptr, ptr %637, align 4
  %998 = load i8, ptr %997, align 4
  %999 = zext i8 %998 to i16
  store i16 %999, ptr %48, align 4
  %1000 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %1000, align 2
  %1001 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %1001, align 4
  store i8 -12, ptr %47, align 1
  %1002 = getelementptr inbounds [64 x i8], ptr %47, i32 0, i32 1
  store i8 -98, ptr %1002, align 1
  %1003 = getelementptr inbounds i8, ptr %47, i32 2
  store i8 -103, ptr %1003, align 1
  %1004 = load i32, ptr @i2cdebug, align 4
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1010, label %1006

1006:                                             ; preds = %994
  %1007 = load i8, ptr %997, align 4
  %1008 = zext i8 %1007 to i32
  %1009 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1008, i32 noundef 62622, i32 noundef 153) #10
  br label %1010

1010:                                             ; preds = %1006, %994
  %1011 = load ptr, ptr %652, align 4
  %1012 = call i32 @i2c_transfer(ptr noundef %1011, ptr noundef nonnull %48, i32 noundef 1) #11
  %1013 = icmp eq i32 %1012, 1
  br i1 %1013, label %1021, label %1014

1014:                                             ; preds = %1010
  %1015 = load ptr, ptr %637, align 4
  %1016 = load i8, ptr %1015, align 4
  %1017 = zext i8 %1016 to i32
  %1018 = load i8, ptr %1003, align 1
  %1019 = zext i8 %1018 to i32
  %1020 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1017, i32 noundef 62622, i32 noundef %1019) #10
  br label %1021

1021:                                             ; preds = %1014, %1010
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #11
  br label %1582

1022:                                             ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %45) #11
  %1023 = getelementptr inbounds i8, ptr %45, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1023, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #11
  %1024 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 3, ptr %1024, align 4, !annotation !8
  %1025 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %1026 = load ptr, ptr %1025, align 4
  %1027 = load i8, ptr %1026, align 4
  %1028 = zext i8 %1027 to i16
  store i16 %1028, ptr %46, align 4
  %1029 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %1029, align 2
  %1030 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %1030, align 4
  store i8 -12, ptr %45, align 1
  %1031 = getelementptr inbounds [64 x i8], ptr %45, i32 0, i32 1
  store i8 61, ptr %1031, align 1
  %1032 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 0, ptr %1032, align 1
  %1033 = load i32, ptr @i2cdebug, align 4
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1039, label %1035

1035:                                             ; preds = %1022
  %1036 = load i8, ptr %1026, align 4
  %1037 = zext i8 %1036 to i32
  %1038 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1037, i32 noundef 62525, i32 noundef 0) #10
  br label %1039

1039:                                             ; preds = %1035, %1022
  %1040 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %1041 = load ptr, ptr %1040, align 4
  %1042 = call i32 @i2c_transfer(ptr noundef %1041, ptr noundef nonnull %46, i32 noundef 1) #11
  %1043 = icmp eq i32 %1042, 1
  br i1 %1043, label %1051, label %1044

1044:                                             ; preds = %1039
  %1045 = load ptr, ptr %1025, align 4
  %1046 = load i8, ptr %1045, align 4
  %1047 = zext i8 %1046 to i32
  %1048 = load i8, ptr %1032, align 1
  %1049 = zext i8 %1048 to i32
  %1050 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1047, i32 noundef 62525, i32 noundef %1049) #10
  br label %1051

1051:                                             ; preds = %1044, %1039
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %45) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %43) #11
  %1052 = getelementptr inbounds i8, ptr %43, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1052, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #11
  %1053 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 3, ptr %1053, align 4, !annotation !8
  %1054 = load ptr, ptr %1025, align 4
  %1055 = load i8, ptr %1054, align 4
  %1056 = zext i8 %1055 to i16
  store i16 %1056, ptr %44, align 4
  %1057 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %1057, align 2
  %1058 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %1058, align 4
  store i8 -12, ptr %43, align 1
  %1059 = getelementptr inbounds [64 x i8], ptr %43, i32 0, i32 1
  store i8 20, ptr %1059, align 1
  %1060 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 118, ptr %1060, align 1
  %1061 = load i32, ptr @i2cdebug, align 4
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1067, label %1063

1063:                                             ; preds = %1051
  %1064 = load i8, ptr %1054, align 4
  %1065 = zext i8 %1064 to i32
  %1066 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1065, i32 noundef 62484, i32 noundef 118) #10
  br label %1067

1067:                                             ; preds = %1063, %1051
  %1068 = load ptr, ptr %1040, align 4
  %1069 = call i32 @i2c_transfer(ptr noundef %1068, ptr noundef nonnull %44, i32 noundef 1) #11
  %1070 = icmp eq i32 %1069, 1
  br i1 %1070, label %1078, label %1071

1071:                                             ; preds = %1067
  %1072 = load ptr, ptr %1025, align 4
  %1073 = load i8, ptr %1072, align 4
  %1074 = zext i8 %1073 to i32
  %1075 = load i8, ptr %1060, align 1
  %1076 = zext i8 %1075 to i32
  %1077 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1074, i32 noundef 62484, i32 noundef %1076) #10
  br label %1078

1078:                                             ; preds = %1071, %1067
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %43) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %41) #11
  %1079 = getelementptr inbounds i8, ptr %41, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1079, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #11
  %1080 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 3, ptr %1080, align 4, !annotation !8
  %1081 = load ptr, ptr %1025, align 4
  %1082 = load i8, ptr %1081, align 4
  %1083 = zext i8 %1082 to i16
  store i16 %1083, ptr %42, align 4
  %1084 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %1084, align 2
  %1085 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %1085, align 4
  store i8 -12, ptr %41, align 1
  %1086 = getelementptr inbounds [64 x i8], ptr %41, i32 0, i32 1
  store i8 96, ptr %1086, align 1
  %1087 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 -112, ptr %1087, align 1
  %1088 = load i32, ptr @i2cdebug, align 4
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1094, label %1090

1090:                                             ; preds = %1078
  %1091 = load i8, ptr %1081, align 4
  %1092 = zext i8 %1091 to i32
  %1093 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1092, i32 noundef 62560, i32 noundef 144) #10
  br label %1094

1094:                                             ; preds = %1090, %1078
  %1095 = load ptr, ptr %1040, align 4
  %1096 = call i32 @i2c_transfer(ptr noundef %1095, ptr noundef nonnull %42, i32 noundef 1) #11
  %1097 = icmp eq i32 %1096, 1
  br i1 %1097, label %1105, label %1098

1098:                                             ; preds = %1094
  %1099 = load ptr, ptr %1025, align 4
  %1100 = load i8, ptr %1099, align 4
  %1101 = zext i8 %1100 to i32
  %1102 = load i8, ptr %1087, align 1
  %1103 = zext i8 %1102 to i32
  %1104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1101, i32 noundef 62560, i32 noundef %1103) #10
  br label %1105

1105:                                             ; preds = %1098, %1094
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %41) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %39) #11
  %1106 = getelementptr inbounds i8, ptr %39, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1106, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #11
  %1107 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 3, ptr %1107, align 4, !annotation !8
  %1108 = load ptr, ptr %1025, align 4
  %1109 = load i8, ptr %1108, align 4
  %1110 = zext i8 %1109 to i16
  store i16 %1110, ptr %40, align 4
  %1111 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %1111, align 2
  %1112 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %1112, align 4
  store i8 -12, ptr %39, align 1
  %1113 = getelementptr inbounds [64 x i8], ptr %39, i32 0, i32 1
  store i8 -110, ptr %1113, align 1
  %1114 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 -79, ptr %1114, align 1
  %1115 = load i32, ptr @i2cdebug, align 4
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1121, label %1117

1117:                                             ; preds = %1105
  %1118 = load i8, ptr %1108, align 4
  %1119 = zext i8 %1118 to i32
  %1120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1119, i32 noundef 62610, i32 noundef 177) #10
  br label %1121

1121:                                             ; preds = %1117, %1105
  %1122 = load ptr, ptr %1040, align 4
  %1123 = call i32 @i2c_transfer(ptr noundef %1122, ptr noundef nonnull %40, i32 noundef 1) #11
  %1124 = icmp eq i32 %1123, 1
  br i1 %1124, label %1132, label %1125

1125:                                             ; preds = %1121
  %1126 = load ptr, ptr %1025, align 4
  %1127 = load i8, ptr %1126, align 4
  %1128 = zext i8 %1127 to i32
  %1129 = load i8, ptr %1114, align 1
  %1130 = zext i8 %1129 to i32
  %1131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1128, i32 noundef 62610, i32 noundef %1130) #10
  br label %1132

1132:                                             ; preds = %1125, %1121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %39) #11
  %1133 = icmp ugt i32 %161, 4500000
  br i1 %1133, label %1134, label %1162

1134:                                             ; preds = %1132
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %37) #11
  %1135 = getelementptr inbounds i8, ptr %37, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1135, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #11
  %1136 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 3, ptr %1136, align 4, !annotation !8
  %1137 = load ptr, ptr %1025, align 4
  %1138 = load i8, ptr %1137, align 4
  %1139 = zext i8 %1138 to i16
  store i16 %1139, ptr %38, align 4
  %1140 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %1140, align 2
  %1141 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %1141, align 4
  store i8 -12, ptr %37, align 1
  %1142 = getelementptr inbounds [64 x i8], ptr %37, i32 0, i32 1
  store i8 -109, ptr %1142, align 1
  %1143 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 -89, ptr %1143, align 1
  %1144 = load i32, ptr @i2cdebug, align 4
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1150, label %1146

1146:                                             ; preds = %1134
  %1147 = load i8, ptr %1137, align 4
  %1148 = zext i8 %1147 to i32
  %1149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1148, i32 noundef 62611, i32 noundef 167) #10
  br label %1150

1150:                                             ; preds = %1146, %1134
  %1151 = load ptr, ptr %1040, align 4
  %1152 = call i32 @i2c_transfer(ptr noundef %1151, ptr noundef nonnull %38, i32 noundef 1) #11
  %1153 = icmp eq i32 %1152, 1
  br i1 %1153, label %1161, label %1154

1154:                                             ; preds = %1150
  %1155 = load ptr, ptr %1025, align 4
  %1156 = load i8, ptr %1155, align 4
  %1157 = zext i8 %1156 to i32
  %1158 = load i8, ptr %1143, align 1
  %1159 = zext i8 %1158 to i32
  %1160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1157, i32 noundef 62611, i32 noundef %1159) #10
  br label %1161

1161:                                             ; preds = %1154, %1150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %37) #11
  br label %1220

1162:                                             ; preds = %1132
  %1163 = icmp ugt i32 %161, 2500000
  br i1 %1163, label %1164, label %1192

1164:                                             ; preds = %1162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %35) #11
  %1165 = getelementptr inbounds i8, ptr %35, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1165, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #11
  %1166 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 3, ptr %1166, align 4, !annotation !8
  %1167 = load ptr, ptr %1025, align 4
  %1168 = load i8, ptr %1167, align 4
  %1169 = zext i8 %1168 to i16
  store i16 %1169, ptr %36, align 4
  %1170 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %1170, align 2
  %1171 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %1171, align 4
  store i8 -12, ptr %35, align 1
  %1172 = getelementptr inbounds [64 x i8], ptr %35, i32 0, i32 1
  store i8 -109, ptr %1172, align 1
  %1173 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 -90, ptr %1173, align 1
  %1174 = load i32, ptr @i2cdebug, align 4
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1180, label %1176

1176:                                             ; preds = %1164
  %1177 = load i8, ptr %1167, align 4
  %1178 = zext i8 %1177 to i32
  %1179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1178, i32 noundef 62611, i32 noundef 166) #10
  br label %1180

1180:                                             ; preds = %1176, %1164
  %1181 = load ptr, ptr %1040, align 4
  %1182 = call i32 @i2c_transfer(ptr noundef %1181, ptr noundef nonnull %36, i32 noundef 1) #11
  %1183 = icmp eq i32 %1182, 1
  br i1 %1183, label %1191, label %1184

1184:                                             ; preds = %1180
  %1185 = load ptr, ptr %1025, align 4
  %1186 = load i8, ptr %1185, align 4
  %1187 = zext i8 %1186 to i32
  %1188 = load i8, ptr %1173, align 1
  %1189 = zext i8 %1188 to i32
  %1190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1187, i32 noundef 62611, i32 noundef %1189) #10
  br label %1191

1191:                                             ; preds = %1184, %1180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %35) #11
  br label %1220

1192:                                             ; preds = %1162
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %33) #11
  %1193 = getelementptr inbounds i8, ptr %33, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1193, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #11
  %1194 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 3, ptr %1194, align 4, !annotation !8
  %1195 = load ptr, ptr %1025, align 4
  %1196 = load i8, ptr %1195, align 4
  %1197 = zext i8 %1196 to i16
  store i16 %1197, ptr %34, align 4
  %1198 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %1198, align 2
  %1199 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %1199, align 4
  store i8 -12, ptr %33, align 1
  %1200 = getelementptr inbounds [64 x i8], ptr %33, i32 0, i32 1
  store i8 -109, ptr %1200, align 1
  %1201 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 -105, ptr %1201, align 1
  %1202 = load i32, ptr @i2cdebug, align 4
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1208, label %1204

1204:                                             ; preds = %1192
  %1205 = load i8, ptr %1195, align 4
  %1206 = zext i8 %1205 to i32
  %1207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1206, i32 noundef 62611, i32 noundef 151) #10
  br label %1208

1208:                                             ; preds = %1204, %1192
  %1209 = load ptr, ptr %1040, align 4
  %1210 = call i32 @i2c_transfer(ptr noundef %1209, ptr noundef nonnull %34, i32 noundef 1) #11
  %1211 = icmp eq i32 %1210, 1
  br i1 %1211, label %1219, label %1212

1212:                                             ; preds = %1208
  %1213 = load ptr, ptr %1025, align 4
  %1214 = load i8, ptr %1213, align 4
  %1215 = zext i8 %1214 to i32
  %1216 = load i8, ptr %1201, align 1
  %1217 = zext i8 %1216 to i32
  %1218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1215, i32 noundef 62611, i32 noundef %1217) #10
  br label %1219

1219:                                             ; preds = %1212, %1208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %33) #11
  br label %1220

1220:                                             ; preds = %1219, %1191, %1161
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #11
  %1221 = getelementptr inbounds i8, ptr %31, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1221, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  %1222 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 3, ptr %1222, align 4, !annotation !8
  %1223 = load ptr, ptr %1025, align 4
  %1224 = load i8, ptr %1223, align 4
  %1225 = zext i8 %1224 to i16
  store i16 %1225, ptr %32, align 4
  %1226 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %1226, align 2
  %1227 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %1227, align 4
  store i8 -12, ptr %31, align 1
  %1228 = getelementptr inbounds [64 x i8], ptr %31, i32 0, i32 1
  store i8 -107, ptr %1228, align 1
  %1229 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 -114, ptr %1229, align 1
  %1230 = load i32, ptr @i2cdebug, align 4
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1236, label %1232

1232:                                             ; preds = %1220
  %1233 = load i8, ptr %1223, align 4
  %1234 = zext i8 %1233 to i32
  %1235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1234, i32 noundef 62613, i32 noundef 142) #10
  br label %1236

1236:                                             ; preds = %1232, %1220
  %1237 = load ptr, ptr %1040, align 4
  %1238 = call i32 @i2c_transfer(ptr noundef %1237, ptr noundef nonnull %32, i32 noundef 1) #11
  %1239 = icmp eq i32 %1238, 1
  br i1 %1239, label %1247, label %1240

1240:                                             ; preds = %1236
  %1241 = load ptr, ptr %1025, align 4
  %1242 = load i8, ptr %1241, align 4
  %1243 = zext i8 %1242 to i32
  %1244 = load i8, ptr %1229, align 1
  %1245 = zext i8 %1244 to i32
  %1246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1243, i32 noundef 62613, i32 noundef %1245) #10
  br label %1247

1247:                                             ; preds = %1240, %1236
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #11
  %1248 = getelementptr inbounds i8, ptr %29, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1248, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #11
  %1249 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 3, ptr %1249, align 4, !annotation !8
  %1250 = load ptr, ptr %1025, align 4
  %1251 = load i8, ptr %1250, align 4
  %1252 = zext i8 %1251 to i16
  store i16 %1252, ptr %30, align 4
  %1253 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %1253, align 2
  %1254 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %1254, align 4
  store i8 -12, ptr %29, align 1
  %1255 = getelementptr inbounds [64 x i8], ptr %29, i32 0, i32 1
  store i8 -100, ptr %1255, align 1
  %1256 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 127, ptr %1256, align 1
  %1257 = load i32, ptr @i2cdebug, align 4
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1263, label %1259

1259:                                             ; preds = %1247
  %1260 = load i8, ptr %1250, align 4
  %1261 = zext i8 %1260 to i32
  %1262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1261, i32 noundef 62620, i32 noundef 127) #10
  br label %1263

1263:                                             ; preds = %1259, %1247
  %1264 = load ptr, ptr %1040, align 4
  %1265 = call i32 @i2c_transfer(ptr noundef %1264, ptr noundef nonnull %30, i32 noundef 1) #11
  %1266 = icmp eq i32 %1265, 1
  br i1 %1266, label %1274, label %1267

1267:                                             ; preds = %1263
  %1268 = load ptr, ptr %1025, align 4
  %1269 = load i8, ptr %1268, align 4
  %1270 = zext i8 %1269 to i32
  %1271 = load i8, ptr %1256, align 1
  %1272 = zext i8 %1271 to i32
  %1273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1270, i32 noundef 62620, i32 noundef %1272) #10
  br label %1274

1274:                                             ; preds = %1267, %1263
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #11
  %1275 = getelementptr inbounds i8, ptr %27, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1275, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  %1276 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 3, ptr %1276, align 4, !annotation !8
  %1277 = load ptr, ptr %1025, align 4
  %1278 = load i8, ptr %1277, align 4
  %1279 = zext i8 %1278 to i16
  store i16 %1279, ptr %28, align 4
  %1280 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %1280, align 2
  %1281 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %1281, align 4
  store i8 -12, ptr %27, align 1
  %1282 = getelementptr inbounds [64 x i8], ptr %27, i32 0, i32 1
  store i8 -98, ptr %1282, align 1
  %1283 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 -89, ptr %1283, align 1
  %1284 = load i32, ptr @i2cdebug, align 4
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1290, label %1286

1286:                                             ; preds = %1274
  %1287 = load i8, ptr %1277, align 4
  %1288 = zext i8 %1287 to i32
  %1289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1288, i32 noundef 62622, i32 noundef 167) #10
  br label %1290

1290:                                             ; preds = %1286, %1274
  %1291 = load ptr, ptr %1040, align 4
  %1292 = call i32 @i2c_transfer(ptr noundef %1291, ptr noundef nonnull %28, i32 noundef 1) #11
  %1293 = icmp eq i32 %1292, 1
  br i1 %1293, label %1301, label %1294

1294:                                             ; preds = %1290
  %1295 = load ptr, ptr %1025, align 4
  %1296 = load i8, ptr %1295, align 4
  %1297 = zext i8 %1296 to i32
  %1298 = load i8, ptr %1283, align 1
  %1299 = zext i8 %1298 to i32
  %1300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1297, i32 noundef 62622, i32 noundef %1299) #10
  br label %1301

1301:                                             ; preds = %1294, %1290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #11
  br label %1582

1302:                                             ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #11
  %1303 = getelementptr inbounds i8, ptr %25, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1303, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %1304 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 3, ptr %1304, align 4, !annotation !8
  %1305 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %1306 = load ptr, ptr %1305, align 4
  %1307 = load i8, ptr %1306, align 4
  %1308 = zext i8 %1307 to i16
  store i16 %1308, ptr %26, align 4
  %1309 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %1309, align 2
  %1310 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %1310, align 4
  store i8 -12, ptr %25, align 1
  %1311 = getelementptr inbounds [64 x i8], ptr %25, i32 0, i32 1
  store i8 61, ptr %1311, align 1
  %1312 = getelementptr inbounds i8, ptr %25, i32 2
  store i8 -108, ptr %1312, align 1
  %1313 = load i32, ptr @i2cdebug, align 4
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1319, label %1315

1315:                                             ; preds = %1302
  %1316 = load i8, ptr %1306, align 4
  %1317 = zext i8 %1316 to i32
  %1318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1317, i32 noundef 62525, i32 noundef 148) #10
  br label %1319

1319:                                             ; preds = %1315, %1302
  %1320 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %1321 = load ptr, ptr %1320, align 4
  %1322 = call i32 @i2c_transfer(ptr noundef %1321, ptr noundef nonnull %26, i32 noundef 1) #11
  %1323 = icmp eq i32 %1322, 1
  br i1 %1323, label %1331, label %1324

1324:                                             ; preds = %1319
  %1325 = load ptr, ptr %1305, align 4
  %1326 = load i8, ptr %1325, align 4
  %1327 = zext i8 %1326 to i32
  %1328 = load i8, ptr %1312, align 1
  %1329 = zext i8 %1328 to i32
  %1330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1327, i32 noundef 62525, i32 noundef %1329) #10
  br label %1331

1331:                                             ; preds = %1324, %1319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #11
  %1332 = getelementptr inbounds i8, ptr %23, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1332, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %1333 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 3, ptr %1333, align 4, !annotation !8
  %1334 = load ptr, ptr %1305, align 4
  %1335 = load i8, ptr %1334, align 4
  %1336 = zext i8 %1335 to i16
  store i16 %1336, ptr %24, align 4
  %1337 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %1337, align 2
  %1338 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %1338, align 4
  store i8 -12, ptr %23, align 1
  %1339 = getelementptr inbounds [64 x i8], ptr %23, i32 0, i32 1
  store i8 20, ptr %1339, align 1
  %1340 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 90, ptr %1340, align 1
  %1341 = load i32, ptr @i2cdebug, align 4
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1347, label %1343

1343:                                             ; preds = %1331
  %1344 = load i8, ptr %1334, align 4
  %1345 = zext i8 %1344 to i32
  %1346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1345, i32 noundef 62484, i32 noundef 90) #10
  br label %1347

1347:                                             ; preds = %1343, %1331
  %1348 = load ptr, ptr %1320, align 4
  %1349 = call i32 @i2c_transfer(ptr noundef %1348, ptr noundef nonnull %24, i32 noundef 1) #11
  %1350 = icmp eq i32 %1349, 1
  br i1 %1350, label %1358, label %1351

1351:                                             ; preds = %1347
  %1352 = load ptr, ptr %1305, align 4
  %1353 = load i8, ptr %1352, align 4
  %1354 = zext i8 %1353 to i32
  %1355 = load i8, ptr %1340, align 1
  %1356 = zext i8 %1355 to i32
  %1357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1354, i32 noundef 62484, i32 noundef %1356) #10
  br label %1358

1358:                                             ; preds = %1351, %1347
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #11
  %1359 = getelementptr inbounds i8, ptr %21, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1359, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %1360 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 3, ptr %1360, align 4, !annotation !8
  %1361 = load ptr, ptr %1305, align 4
  %1362 = load i8, ptr %1361, align 4
  %1363 = zext i8 %1362 to i16
  store i16 %1363, ptr %22, align 4
  %1364 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %1364, align 2
  %1365 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %1365, align 4
  store i8 -12, ptr %21, align 1
  %1366 = getelementptr inbounds [64 x i8], ptr %21, i32 0, i32 1
  store i8 96, ptr %1366, align 1
  %1367 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 -96, ptr %1367, align 1
  %1368 = load i32, ptr @i2cdebug, align 4
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1374, label %1370

1370:                                             ; preds = %1358
  %1371 = load i8, ptr %1361, align 4
  %1372 = zext i8 %1371 to i32
  %1373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1372, i32 noundef 62560, i32 noundef 160) #10
  br label %1374

1374:                                             ; preds = %1370, %1358
  %1375 = load ptr, ptr %1320, align 4
  %1376 = call i32 @i2c_transfer(ptr noundef %1375, ptr noundef nonnull %22, i32 noundef 1) #11
  %1377 = icmp eq i32 %1376, 1
  br i1 %1377, label %1385, label %1378

1378:                                             ; preds = %1374
  %1379 = load ptr, ptr %1305, align 4
  %1380 = load i8, ptr %1379, align 4
  %1381 = zext i8 %1380 to i32
  %1382 = load i8, ptr %1367, align 1
  %1383 = zext i8 %1382 to i32
  %1384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1381, i32 noundef 62560, i32 noundef %1383) #10
  br label %1385

1385:                                             ; preds = %1378, %1374
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #11
  %1386 = icmp ugt i32 %161, 4500000
  br i1 %1386, label %1387, label %1415

1387:                                             ; preds = %1385
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #11
  %1388 = getelementptr inbounds i8, ptr %19, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1388, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %1389 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %1389, align 4, !annotation !8
  %1390 = load ptr, ptr %1305, align 4
  %1391 = load i8, ptr %1390, align 4
  %1392 = zext i8 %1391 to i16
  store i16 %1392, ptr %20, align 4
  %1393 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %1393, align 2
  %1394 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %1394, align 4
  store i8 -12, ptr %19, align 1
  %1395 = getelementptr inbounds [64 x i8], ptr %19, i32 0, i32 1
  store i8 -110, ptr %1395, align 1
  %1396 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 -63, ptr %1396, align 1
  %1397 = load i32, ptr @i2cdebug, align 4
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1403, label %1399

1399:                                             ; preds = %1387
  %1400 = load i8, ptr %1390, align 4
  %1401 = zext i8 %1400 to i32
  %1402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1401, i32 noundef 62610, i32 noundef 193) #10
  br label %1403

1403:                                             ; preds = %1399, %1387
  %1404 = load ptr, ptr %1320, align 4
  %1405 = call i32 @i2c_transfer(ptr noundef %1404, ptr noundef nonnull %20, i32 noundef 1) #11
  %1406 = icmp eq i32 %1405, 1
  br i1 %1406, label %1414, label %1407

1407:                                             ; preds = %1403
  %1408 = load ptr, ptr %1305, align 4
  %1409 = load i8, ptr %1408, align 4
  %1410 = zext i8 %1409 to i32
  %1411 = load i8, ptr %1396, align 1
  %1412 = zext i8 %1411 to i32
  %1413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1410, i32 noundef 62610, i32 noundef %1412) #10
  br label %1414

1414:                                             ; preds = %1407, %1403
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #11
  br label %1473

1415:                                             ; preds = %1385
  %1416 = icmp ugt i32 %161, 2500000
  br i1 %1416, label %1417, label %1445

1417:                                             ; preds = %1415
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #11
  %1418 = getelementptr inbounds i8, ptr %17, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1418, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %1419 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 3, ptr %1419, align 4, !annotation !8
  %1420 = load ptr, ptr %1305, align 4
  %1421 = load i8, ptr %1420, align 4
  %1422 = zext i8 %1421 to i16
  store i16 %1422, ptr %18, align 4
  %1423 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %1423, align 2
  %1424 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %1424, align 4
  store i8 -12, ptr %17, align 1
  %1425 = getelementptr inbounds [64 x i8], ptr %17, i32 0, i32 1
  store i8 -110, ptr %1425, align 1
  %1426 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 -63, ptr %1426, align 1
  %1427 = load i32, ptr @i2cdebug, align 4
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1433, label %1429

1429:                                             ; preds = %1417
  %1430 = load i8, ptr %1420, align 4
  %1431 = zext i8 %1430 to i32
  %1432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1431, i32 noundef 62610, i32 noundef 193) #10
  br label %1433

1433:                                             ; preds = %1429, %1417
  %1434 = load ptr, ptr %1320, align 4
  %1435 = call i32 @i2c_transfer(ptr noundef %1434, ptr noundef nonnull %18, i32 noundef 1) #11
  %1436 = icmp eq i32 %1435, 1
  br i1 %1436, label %1444, label %1437

1437:                                             ; preds = %1433
  %1438 = load ptr, ptr %1305, align 4
  %1439 = load i8, ptr %1438, align 4
  %1440 = zext i8 %1439 to i32
  %1441 = load i8, ptr %1426, align 1
  %1442 = zext i8 %1441 to i32
  %1443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1440, i32 noundef 62610, i32 noundef %1442) #10
  br label %1444

1444:                                             ; preds = %1437, %1433
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #11
  br label %1473

1445:                                             ; preds = %1415
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #11
  %1446 = getelementptr inbounds i8, ptr %15, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1446, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %1447 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 3, ptr %1447, align 4, !annotation !8
  %1448 = load ptr, ptr %1305, align 4
  %1449 = load i8, ptr %1448, align 4
  %1450 = zext i8 %1449 to i16
  store i16 %1450, ptr %16, align 4
  %1451 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %1451, align 2
  %1452 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %1452, align 4
  store i8 -12, ptr %15, align 1
  %1453 = getelementptr inbounds [64 x i8], ptr %15, i32 0, i32 1
  store i8 -110, ptr %1453, align 1
  %1454 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 -47, ptr %1454, align 1
  %1455 = load i32, ptr @i2cdebug, align 4
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1461, label %1457

1457:                                             ; preds = %1445
  %1458 = load i8, ptr %1448, align 4
  %1459 = zext i8 %1458 to i32
  %1460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1459, i32 noundef 62610, i32 noundef 209) #10
  br label %1461

1461:                                             ; preds = %1457, %1445
  %1462 = load ptr, ptr %1320, align 4
  %1463 = call i32 @i2c_transfer(ptr noundef %1462, ptr noundef nonnull %16, i32 noundef 1) #11
  %1464 = icmp eq i32 %1463, 1
  br i1 %1464, label %1472, label %1465

1465:                                             ; preds = %1461
  %1466 = load ptr, ptr %1305, align 4
  %1467 = load i8, ptr %1466, align 4
  %1468 = zext i8 %1467 to i32
  %1469 = load i8, ptr %1454, align 1
  %1470 = zext i8 %1469 to i32
  %1471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1468, i32 noundef 62610, i32 noundef %1470) #10
  br label %1472

1472:                                             ; preds = %1465, %1461
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #11
  br label %1473

1473:                                             ; preds = %1472, %1444, %1414
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  %1474 = getelementptr inbounds i8, ptr %13, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1474, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %1475 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %1475, align 4, !annotation !8
  %1476 = load ptr, ptr %1305, align 4
  %1477 = load i8, ptr %1476, align 4
  %1478 = zext i8 %1477 to i16
  store i16 %1478, ptr %14, align 4
  %1479 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %1479, align 2
  %1480 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %1480, align 4
  store i8 -12, ptr %13, align 1
  %1481 = getelementptr inbounds [64 x i8], ptr %13, i32 0, i32 1
  store i8 -109, ptr %1481, align 1
  %1482 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 -89, ptr %1482, align 1
  %1483 = load i32, ptr @i2cdebug, align 4
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1489, label %1485

1485:                                             ; preds = %1473
  %1486 = load i8, ptr %1476, align 4
  %1487 = zext i8 %1486 to i32
  %1488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1487, i32 noundef 62611, i32 noundef 167) #10
  br label %1489

1489:                                             ; preds = %1485, %1473
  %1490 = load ptr, ptr %1320, align 4
  %1491 = call i32 @i2c_transfer(ptr noundef %1490, ptr noundef nonnull %14, i32 noundef 1) #11
  %1492 = icmp eq i32 %1491, 1
  br i1 %1492, label %1500, label %1493

1493:                                             ; preds = %1489
  %1494 = load ptr, ptr %1305, align 4
  %1495 = load i8, ptr %1494, align 4
  %1496 = zext i8 %1495 to i32
  %1497 = load i8, ptr %1482, align 1
  %1498 = zext i8 %1497 to i32
  %1499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1496, i32 noundef 62611, i32 noundef %1498) #10
  br label %1500

1500:                                             ; preds = %1493, %1489
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %1501 = getelementptr inbounds i8, ptr %11, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1501, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %1502 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %1502, align 4, !annotation !8
  %1503 = load ptr, ptr %1305, align 4
  %1504 = load i8, ptr %1503, align 4
  %1505 = zext i8 %1504 to i16
  store i16 %1505, ptr %12, align 4
  %1506 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %1506, align 2
  %1507 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %1507, align 4
  store i8 -12, ptr %11, align 1
  %1508 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 1
  store i8 -107, ptr %1508, align 1
  %1509 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 -123, ptr %1509, align 1
  %1510 = load i32, ptr @i2cdebug, align 4
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1516, label %1512

1512:                                             ; preds = %1500
  %1513 = load i8, ptr %1503, align 4
  %1514 = zext i8 %1513 to i32
  %1515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1514, i32 noundef 62613, i32 noundef 133) #10
  br label %1516

1516:                                             ; preds = %1512, %1500
  %1517 = load ptr, ptr %1320, align 4
  %1518 = call i32 @i2c_transfer(ptr noundef %1517, ptr noundef nonnull %12, i32 noundef 1) #11
  %1519 = icmp eq i32 %1518, 1
  br i1 %1519, label %1527, label %1520

1520:                                             ; preds = %1516
  %1521 = load ptr, ptr %1305, align 4
  %1522 = load i8, ptr %1521, align 4
  %1523 = zext i8 %1522 to i32
  %1524 = load i8, ptr %1509, align 1
  %1525 = zext i8 %1524 to i32
  %1526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1523, i32 noundef 62613, i32 noundef %1525) #10
  br label %1527

1527:                                             ; preds = %1520, %1516
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %1528 = getelementptr inbounds i8, ptr %9, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1528, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %1529 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %1529, align 4, !annotation !8
  %1530 = load ptr, ptr %1305, align 4
  %1531 = load i8, ptr %1530, align 4
  %1532 = zext i8 %1531 to i16
  store i16 %1532, ptr %10, align 4
  %1533 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %1533, align 2
  %1534 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %1534, align 4
  store i8 -12, ptr %9, align 1
  %1535 = getelementptr inbounds [64 x i8], ptr %9, i32 0, i32 1
  store i8 -100, ptr %1535, align 1
  %1536 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 64, ptr %1536, align 1
  %1537 = load i32, ptr @i2cdebug, align 4
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1543, label %1539

1539:                                             ; preds = %1527
  %1540 = load i8, ptr %1530, align 4
  %1541 = zext i8 %1540 to i32
  %1542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1541, i32 noundef 62620, i32 noundef 64) #10
  br label %1543

1543:                                             ; preds = %1539, %1527
  %1544 = load ptr, ptr %1320, align 4
  %1545 = call i32 @i2c_transfer(ptr noundef %1544, ptr noundef nonnull %10, i32 noundef 1) #11
  %1546 = icmp eq i32 %1545, 1
  br i1 %1546, label %1554, label %1547

1547:                                             ; preds = %1543
  %1548 = load ptr, ptr %1305, align 4
  %1549 = load i8, ptr %1548, align 4
  %1550 = zext i8 %1549 to i32
  %1551 = load i8, ptr %1536, align 1
  %1552 = zext i8 %1551 to i32
  %1553 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1550, i32 noundef 62620, i32 noundef %1552) #10
  br label %1554

1554:                                             ; preds = %1547, %1543
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %1555 = getelementptr inbounds i8, ptr %7, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1555, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %1556 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %1556, align 4, !annotation !8
  %1557 = load ptr, ptr %1305, align 4
  %1558 = load i8, ptr %1557, align 4
  %1559 = zext i8 %1558 to i16
  store i16 %1559, ptr %8, align 4
  %1560 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %1560, align 2
  %1561 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %1561, align 4
  store i8 -12, ptr %7, align 1
  %1562 = getelementptr inbounds [64 x i8], ptr %7, i32 0, i32 1
  store i8 -98, ptr %1562, align 1
  %1563 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 -89, ptr %1563, align 1
  %1564 = load i32, ptr @i2cdebug, align 4
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1570, label %1566

1566:                                             ; preds = %1554
  %1567 = load i8, ptr %1557, align 4
  %1568 = zext i8 %1567 to i32
  %1569 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1568, i32 noundef 62622, i32 noundef 167) #10
  br label %1570

1570:                                             ; preds = %1566, %1554
  %1571 = load ptr, ptr %1320, align 4
  %1572 = call i32 @i2c_transfer(ptr noundef %1571, ptr noundef nonnull %8, i32 noundef 1) #11
  %1573 = icmp eq i32 %1572, 1
  br i1 %1573, label %1581, label %1574

1574:                                             ; preds = %1570
  %1575 = load ptr, ptr %1305, align 4
  %1576 = load i8, ptr %1575, align 4
  %1577 = zext i8 %1576 to i32
  %1578 = load i8, ptr %1563, align 1
  %1579 = zext i8 %1578 to i32
  %1580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1577, i32 noundef 62622, i32 noundef %1579) #10
  br label %1581

1581:                                             ; preds = %1574, %1570
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %1582

1582:                                             ; preds = %1581, %1301, %1021, %633, %414, %195, %159
  %1583 = getelementptr inbounds %struct.stv0367cab_state, ptr %112, i32 0, i32 2
  %1584 = load i32, ptr %1583, align 4
  %1585 = getelementptr inbounds %struct.stv0367cab_state, ptr %112, i32 0, i32 1
  %1586 = load i32, ptr %1585, align 4
  %1587 = load i32, ptr %160, align 4
  %1588 = load i32, ptr @stvdebug, align 4
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1592, label %1590

1590:                                             ; preds = %1582
  %1591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_set_srate) #10
  br label %1592

1592:                                             ; preds = %1590, %1582
  %1593 = icmp ult i32 %127, 6
  br i1 %1593, label %1594, label %1597

1594:                                             ; preds = %1592
  %1595 = getelementptr inbounds [6 x i32], ptr @switch.table.stv0367cab_set_frontend, i32 0, i32 %127
  %1596 = load i32, ptr %1595, align 4
  br label %1597

1597:                                             ; preds = %1594, %1592
  %1598 = phi i32 [ 0, %1592 ], [ %1596, %1594 ]
  %1599 = icmp eq i32 %1584, 0
  br i1 %1599, label %1603, label %1600

1600:                                             ; preds = %1597
  %1601 = shl i32 %1587, 8
  %1602 = udiv i32 %1601, %1584
  br label %1603

1603:                                             ; preds = %1600, %1597
  %1604 = phi i32 [ %1602, %1600 ], [ 0, %1597 ]
  %1605 = trunc i32 %1604 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -2921, i8 noundef zeroext %1605) #11
  %1606 = udiv i32 %1586, 2000
  %1607 = icmp ult i32 %1586, 2000
  br i1 %1607, label %1632, label %1608

1608:                                             ; preds = %1603
  %1609 = icmp ult i32 %1587, 2097152
  br i1 %1609, label %1617, label %1610

1610:                                             ; preds = %1608
  %1611 = icmp ult i32 %1587, 4194304
  br i1 %1611, label %1617, label %1612

1612:                                             ; preds = %1610
  %1613 = icmp ult i32 %1587, 8388607
  %1614 = select i1 %1613, i32 9, i32 8
  %1615 = select i1 %1613, i32 5, i32 6
  %1616 = select i1 %1613, i32 2500000, i32 1250000
  br label %1617

1617:                                             ; preds = %1612, %1610, %1608
  %1618 = phi i32 [ 11, %1608 ], [ 10, %1610 ], [ %1614, %1612 ]
  %1619 = phi i32 [ 3, %1608 ], [ 4, %1610 ], [ %1615, %1612 ]
  %1620 = phi i32 [ 10000000, %1608 ], [ 5000000, %1610 ], [ %1616, %1612 ]
  %1621 = shl i32 %1587, %1618
  %1622 = udiv i32 %1621, %1606
  %1623 = shl i32 %1622, 14
  %1624 = udiv i32 %1623, 125
  %1625 = shl nuw i32 %1624, %1619
  %1626 = udiv i32 %1621, 439
  %1627 = shl nuw i32 %1626, 8
  %1628 = udiv i32 %1627, %1606
  %1629 = mul i32 %1628, %1598
  %1630 = udiv i32 %1629, %1620
  %1631 = trunc i32 %1625 to i8
  br label %1632

1632:                                             ; preds = %1617, %1603
  %1633 = phi i8 [ %1605, %1603 ], [ %1631, %1617 ]
  %1634 = phi i32 [ %1604, %1603 ], [ %1625, %1617 ]
  %1635 = phi i32 [ 0, %1603 ], [ %1630, %1617 ]
  %1636 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3012) #11
  %1637 = and i8 %1636, -9
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3012, i8 noundef zeroext %1637) #11
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3032, i8 noundef zeroext %1633) #11
  %1638 = lshr i32 %1634, 8
  %1639 = trunc i32 %1638 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3031, i8 noundef zeroext %1639) #11
  %1640 = lshr i32 %1634, 16
  %1641 = trunc i32 %1640 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3030, i8 noundef zeroext %1641) #11
  %1642 = lshr i32 %1634, 24
  %1643 = trunc i32 %1642 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3029, i8 noundef zeroext %1643) #11
  %1644 = trunc i32 %1635 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3028, i8 noundef zeroext %1644) #11
  %1645 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3027) #11
  %1646 = lshr i32 %1635, 8
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 3
  %1649 = and i8 %1645, -4
  %1650 = or i8 %1649, %1648
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3027, i8 noundef zeroext %1650) #11
  %1651 = load ptr, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %1652 = load i32, ptr @stvdebug, align 4
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1656, label %1654

1654:                                             ; preds = %1632
  %1655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_algo) #10
  br label %1656

1656:                                             ; preds = %1654, %1632
  %1657 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 9
  %1658 = load i8, ptr %1657, align 1
  %1659 = icmp eq i8 %1658, 0
  br i1 %1659, label %1668, label %1660

1660:                                             ; preds = %1656
  %1661 = getelementptr inbounds %struct.dvb_frontend, ptr %110, i32 0, i32 1, i32 32, i32 11
  %1662 = load ptr, ptr %1661, align 4
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1668, label %1664

1664:                                             ; preds = %1660
  %1665 = call i32 %1662(ptr noundef %110, ptr noundef nonnull %6) #11
  %1666 = load i32, ptr %6, align 4
  %1667 = udiv i32 %1666, 1000
  br label %1673

1668:                                             ; preds = %1660, %1656
  %1669 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %1670 = load ptr, ptr %1669, align 4
  %1671 = getelementptr inbounds %struct.stv0367_config, ptr %1670, i32 0, i32 2
  %1672 = load i32, ptr %1671, align 4
  br label %1673

1673:                                             ; preds = %1668, %1664
  %1674 = phi i32 [ %1672, %1668 ], [ %1667, %1664 ]
  store i32 %1674, ptr %6, align 4
  %1675 = load i32, ptr %160, align 4
  %1676 = udiv i32 100000000, %1675
  %1677 = load i32, ptr %123, align 4
  %1678 = add i32 %1677, -1
  %1679 = icmp ult i32 %1678, 5
  br i1 %1679, label %1680, label %1683

1680:                                             ; preds = %1673
  %1681 = getelementptr inbounds [5 x i32], ptr @switch.table.stv0367cab_set_frontend.55, i32 0, i32 %1678
  %1682 = load i32, ptr %1681, align 4
  br label %1683

1683:                                             ; preds = %1680, %1673
  %1684 = phi i32 [ %1682, %1680 ], [ 5000000, %1673 ]
  %1685 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 3
  %1686 = load i32, ptr %1685, align 4
  %1687 = sdiv i32 %1686, 1000
  %1688 = mul i32 %1687, %1684
  %1689 = udiv i32 %1675, 1000
  %1690 = udiv i32 %1688, %1689
  %1691 = mul i32 %1690, 1000
  %1692 = udiv i32 %1691, %1675
  %1693 = call i32 @llvm.umax.i32(i32 %1692, i32 50) #11
  %1694 = add nuw nsw i32 %1676, 25
  %1695 = add i32 %1693, %1694
  %1696 = add i32 %1695, 100
  %1697 = load i32, ptr @stvdebug, align 4
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1701, label %1699

1699:                                             ; preds = %1683
  %1700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.stv0367cab_algo, i32 noundef %1696) #10
  br label %1701

1701:                                             ; preds = %1699, %1683
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %1702 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1702, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %1703 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %1703, align 4, !annotation !8
  %1704 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 2
  %1705 = load ptr, ptr %1704, align 4
  %1706 = load i8, ptr %1705, align 4
  %1707 = zext i8 %1706 to i16
  store i16 %1707, ptr %5, align 4
  %1708 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1708, align 2
  %1709 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1709, align 4
  store i8 -12, ptr %4, align 1
  %1710 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 2, ptr %1710, align 1
  %1711 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 4, ptr %1711, align 1
  %1712 = load i32, ptr @i2cdebug, align 4
  %1713 = icmp eq i32 %1712, 0
  br i1 %1713, label %1718, label %1714

1714:                                             ; preds = %1701
  %1715 = load i8, ptr %1705, align 4
  %1716 = zext i8 %1715 to i32
  %1717 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1716, i32 noundef 62466, i32 noundef 4) #10
  br label %1718

1718:                                             ; preds = %1714, %1701
  %1719 = getelementptr inbounds %struct.stv0367_state, ptr %110, i32 0, i32 1
  %1720 = load ptr, ptr %1719, align 4
  %1721 = call i32 @i2c_transfer(ptr noundef %1720, ptr noundef nonnull %5, i32 noundef 1) #11
  %1722 = icmp eq i32 %1721, 1
  br i1 %1722, label %1730, label %1723

1723:                                             ; preds = %1718
  %1724 = load ptr, ptr %1704, align 4
  %1725 = load i8, ptr %1724, align 4
  %1726 = zext i8 %1725 to i32
  %1727 = load i8, ptr %1711, align 1
  %1728 = zext i8 %1727 to i32
  %1729 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1726, i32 noundef 62466, i32 noundef %1728) #10
  br label %1730

1730:                                             ; preds = %1723, %1718
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  %1731 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3056) #11
  %1732 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3056) #11
  %1733 = and i8 %1732, -8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3056, i8 noundef zeroext %1733) #11
  %1734 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -2914) #11
  %1735 = and i8 %1734, -65
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -2914, i8 noundef zeroext %1735) #11
  %1736 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -2926) #11
  %1737 = and i8 %1736, -9
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -2926, i8 noundef zeroext %1737) #11
  %1738 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 2
  %1739 = load i32, ptr %1738, align 4
  %1740 = load i32, ptr %6, align 4
  %1741 = mul i32 %1740, 1000
  %1742 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 4
  %1743 = load i32, ptr %1742, align 4
  %1744 = add i32 %1741, %1743
  %1745 = udiv i32 %1739, 1000
  %1746 = load i32, ptr @stvdebug, align 4
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1750, label %1748

1748:                                             ; preds = %1730
  %1749 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.stv0367cab_set_derot_freq, i32 noundef %1739, i32 noundef %1744) #10
  br label %1750

1750:                                             ; preds = %1748, %1730
  %1751 = icmp ult i32 %1739, 1000
  br i1 %1751, label %1763, label %1752

1752:                                             ; preds = %1750
  %1753 = icmp slt i32 %1744, 1000000
  %1754 = lshr i32 %1739, 2
  %1755 = select i1 %1753, i32 %1754, i32 %1744
  %1756 = icmp ugt i32 %1755, %1739
  %1757 = select i1 %1756, i32 %1739, i32 0
  %1758 = sub i32 %1755, %1757
  %1759 = udiv i32 %1758, 1000
  %1760 = shl i32 %1759, 15
  %1761 = udiv i32 %1760, %1745
  %1762 = shl i32 %1761, 8
  br label %1763

1763:                                             ; preds = %1752, %1750
  %1764 = phi i32 [ %1762, %1752 ], [ 0, %1750 ]
  %1765 = call i32 @llvm.umin.i32(i32 %1764, i32 8388607) #11
  %1766 = load i32, ptr @stvdebug, align 4
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1770, label %1768

1768:                                             ; preds = %1763
  %1769 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.stv0367cab_set_derot_freq, i32 noundef %1765) #10
  br label %1770

1770:                                             ; preds = %1768, %1763
  %1771 = trunc i32 %1765 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3035, i8 noundef zeroext %1771) #11
  %1772 = lshr i32 %1765, 8
  %1773 = trunc i32 %1772 to i8
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3034, i8 noundef zeroext %1773) #11
  %1774 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3033) #11
  %1775 = lshr i32 %1765, 16
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1774, -128
  %1778 = or i8 %1777, %1776
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3033, i8 noundef zeroext %1778) #11
  %1779 = load i32, ptr %160, align 4
  %1780 = add i32 %1779, -10800001
  %1781 = icmp ult i32 %1780, -9000001
  br i1 %1781, label %1782, label %1787

1782:                                             ; preds = %1770
  %1783 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3012) #11
  %1784 = and i8 %1783, -2
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3012, i8 noundef zeroext %1784) #11
  %1785 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3012) #11
  %1786 = and i8 %1785, -9
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3012, i8 noundef zeroext %1786) #11
  br label %1787

1787:                                             ; preds = %1782, %1770
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %1788 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1788, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %1789 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %1789, align 4, !annotation !8
  %1790 = load ptr, ptr %1704, align 4
  %1791 = load i8, ptr %1790, align 4
  %1792 = zext i8 %1791 to i16
  store i16 %1792, ptr %3, align 4
  %1793 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1793, align 2
  %1794 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1794, align 4
  store i8 -12, ptr %2, align 1
  %1795 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 2, ptr %1795, align 1
  %1796 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %1796, align 1
  %1797 = load i32, ptr @i2cdebug, align 4
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1803, label %1799

1799:                                             ; preds = %1787
  %1800 = load i8, ptr %1790, align 4
  %1801 = zext i8 %1800 to i32
  %1802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1801, i32 noundef 62466, i32 noundef 0) #10
  br label %1803

1803:                                             ; preds = %1799, %1787
  %1804 = load ptr, ptr %1719, align 4
  %1805 = call i32 @i2c_transfer(ptr noundef %1804, ptr noundef nonnull %3, i32 noundef 1) #11
  %1806 = icmp eq i32 %1805, 1
  br i1 %1806, label %1814, label %1807

1807:                                             ; preds = %1803
  %1808 = load ptr, ptr %1704, align 4
  %1809 = load i8, ptr %1808, align 4
  %1810 = zext i8 %1809 to i32
  %1811 = load i8, ptr %1796, align 1
  %1812 = zext i8 %1811 to i32
  %1813 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %1810, i32 noundef 62466, i32 noundef %1812) #10
  br label %1814

1814:                                             ; preds = %1807, %1803
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  br label %1815

1815:                                             ; preds = %1873, %1814
  %1816 = phi i32 [ 0, %1814 ], [ %1860, %1873 ]
  %1817 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -2974) #11
  %1818 = and i8 %1817, 15
  %1819 = zext i8 %1818 to i32
  %1820 = icmp uge i32 %1816, %1695
  %1821 = icmp eq i8 %1818, 4
  %1822 = select i1 %1820, i1 %1821, i1 false
  br i1 %1822, label %1859, label %1823

1823:                                             ; preds = %1815
  %1824 = icmp uge i32 %1816, %1694
  %1825 = icmp eq i8 %1818, 2
  %1826 = select i1 %1824, i1 %1825, i1 false
  br i1 %1826, label %1827, label %1857

1827:                                             ; preds = %1823
  %1828 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3044) #11
  %1829 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3043) #11
  %1830 = zext i8 %1829 to i32
  %1831 = shl nuw nsw i32 %1830, 8
  %1832 = zext i8 %1828 to i32
  %1833 = or i32 %1831, %1832
  %1834 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3042) #11
  %1835 = and i8 %1834, 3
  %1836 = zext i8 %1835 to i32
  %1837 = shl nuw nsw i32 %1836, 16
  %1838 = or i32 %1837, %1833
  %1839 = sub nuw nsw i32 262144, %1838
  %1840 = icmp ugt i32 %1838, 131071
  %1841 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3055) #11
  %1842 = lshr i8 %1841, 4
  %1843 = zext i8 %1842 to i32
  %1844 = sub nsw i32 11, %1843
  %1845 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3052) #11
  %1846 = select i1 %1840, i32 %1839, i32 %1838
  %1847 = lshr i32 %1846, %1844
  %1848 = zext i8 %1845 to i32
  %1849 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3051) #11
  %1850 = and i8 %1849, 3
  %1851 = zext i8 %1850 to i32
  %1852 = shl nuw nsw i32 %1851, 8
  %1853 = add nsw i32 %1848, -10
  %1854 = add nsw i32 %1853, %1852
  %1855 = icmp ult i32 %1847, %1854
  %1856 = select i1 %1855, i32 15, i32 2
  br label %1859

1857:                                             ; preds = %1823
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #11
  %1858 = add i32 %1816, 10
  br label %1859

1859:                                             ; preds = %1857, %1827, %1815
  %1860 = phi i32 [ %1858, %1857 ], [ %1696, %1815 ], [ %1696, %1827 ]
  %1861 = phi i32 [ %1819, %1857 ], [ 4, %1815 ], [ %1856, %1827 ]
  %1862 = load i32, ptr @stvdebug, align 4
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1866, label %1864

1864:                                             ; preds = %1859
  %1865 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %1861, i32 noundef %1860) #10
  br label %1866

1866:                                             ; preds = %1864, %1859
  %1867 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3064) #11
  %1868 = load i32, ptr @stvdebug, align 4
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1873, label %1870

1870:                                             ; preds = %1866
  %1871 = zext i8 %1867 to i32
  %1872 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %1871) #10
  br label %1873

1873:                                             ; preds = %1870, %1866
  %1874 = add nsw i32 %1861, -13
  %1875 = icmp ult i32 %1874, -2
  %1876 = icmp ult i32 %1860, %1696
  %1877 = select i1 %1875, i1 %1876, i1 false
  br i1 %1877, label %1815, label %1878

1878:                                             ; preds = %1873
  %1879 = load i32, ptr @stvdebug, align 4
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1883, label %1881

1881:                                             ; preds = %1878
  %1882 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %1861) #10
  br label %1883

1883:                                             ; preds = %1881, %1878
  %1884 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3064) #11
  %1885 = load i32, ptr @stvdebug, align 4
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1890, label %1887

1887:                                             ; preds = %1883
  %1888 = zext i8 %1884 to i32
  %1889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %1888) #10
  br label %1890

1890:                                             ; preds = %1887, %1883
  %1891 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3063) #11
  %1892 = load i32, ptr @stvdebug, align 4
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1897, label %1894

1894:                                             ; preds = %1890
  %1895 = zext i8 %1891 to i32
  %1896 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %1895) #10
  br label %1897

1897:                                             ; preds = %1894, %1890
  %1898 = load i32, ptr %1738, align 4
  %1899 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3035) #11
  %1900 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3034) #11
  %1901 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3033) #11
  %1902 = load i32, ptr @stvdebug, align 4
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1915, label %1904

1904:                                             ; preds = %1897
  %1905 = and i8 %1901, 127
  %1906 = zext i8 %1905 to i32
  %1907 = shl nuw nsw i32 %1906, 8
  %1908 = zext i8 %1900 to i32
  %1909 = or i32 %1907, %1908
  %1910 = udiv i32 %1898, 1000
  %1911 = mul i32 %1909, %1910
  %1912 = add i32 %1911, 1
  %1913 = lshr i32 %1912, 15
  %1914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %1913) #10
  br label %1915

1915:                                             ; preds = %1904, %1897
  %1916 = add nsw i32 %1861, -11
  %1917 = icmp ult i32 %1916, 2
  br i1 %1917, label %1918, label %1971

1918:                                             ; preds = %1946, %1915
  %1919 = phi i32 [ %1948, %1946 ], [ 0, %1915 ]
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #11
  %1920 = load ptr, ptr %111, align 4
  %1921 = getelementptr inbounds %struct.stv0367cab_state, ptr %1920, i32 0, i32 9
  %1922 = load i32, ptr %1921, align 4
  %1923 = icmp eq i32 %1922, 0
  %1924 = select i1 %1923, i32 -200540156, i32 %1922
  %1925 = and i32 %1924, 1
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %1927, label %1946

1927:                                             ; preds = %1918
  %1928 = and i32 %1924, 2
  %1929 = icmp eq i32 %1928, 0
  br i1 %1929, label %1930, label %1946

1930:                                             ; preds = %1927
  %1931 = and i32 %1924, 4
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1933, label %1946

1933:                                             ; preds = %1930
  %1934 = and i32 %1924, 8
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %1936, label %1946

1936:                                             ; preds = %1933
  %1937 = and i32 %1924, 16
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %1939, label %1946

1939:                                             ; preds = %1936
  %1940 = and i32 %1924, 32
  %1941 = icmp eq i32 %1940, 0
  br i1 %1941, label %1942, label %1946

1942:                                             ; preds = %1939
  %1943 = and i32 %1924, 64
  %1944 = icmp eq i32 %1943, 0
  %1945 = select i1 %1944, i32 7, i32 6
  br label %1946

1946:                                             ; preds = %1942, %1939, %1936, %1933, %1930, %1927, %1918
  %1947 = phi i32 [ 0, %1918 ], [ 1, %1927 ], [ 2, %1930 ], [ 3, %1933 ], [ 4, %1936 ], [ 5, %1939 ], [ %1945, %1942 ]
  %1948 = add nuw nsw i32 %1919, 5
  %1949 = trunc i32 %1924 to i8
  %1950 = lshr i32 %1924, 16
  %1951 = trunc i32 %1950 to i16
  %1952 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext %1951) #11
  %1953 = and i8 %1952, %1949
  %1954 = zext i8 %1953 to i32
  %1955 = lshr i32 %1954, %1947
  %1956 = icmp eq i32 %1955, 0
  %1957 = icmp ult i32 %1919, 15
  %1958 = select i1 %1956, i1 %1957, i1 false
  br i1 %1958, label %1918, label %1959

1959:                                             ; preds = %1946
  br i1 %1956, label %1971, label %1960

1960:                                             ; preds = %1959
  %1961 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -2940) #11
  %1962 = lshr i8 %1961, 6
  %1963 = and i8 %1962, 1
  %1964 = zext i8 %1963 to i32
  %1965 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 8
  store i32 %1964, ptr %1965, align 4
  %1966 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 1
  %1967 = load i32, ptr %1966, align 4
  %1968 = call fastcc i32 @stv0367cab_GetSymbolRate(ptr noundef %110, i32 noundef %1967) #11
  %1969 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 7
  store i32 %1968, ptr %1969, align 4
  %1970 = getelementptr inbounds %struct.stv0367cab_state, ptr %1651, i32 0, i32 5
  store i32 1, ptr %1970, align 4
  br label %1979

1971:                                             ; preds = %1959, %1915
  %1972 = trunc i32 %1861 to i8
  %1973 = add i8 %1972, -2
  %1974 = icmp ult i8 %1973, 14
  br i1 %1974, label %1975, label %1979

1975:                                             ; preds = %1971
  %1976 = sext i8 %1973 to i32
  %1977 = getelementptr inbounds [14 x i32], ptr @switch.table.stv0367cab_read_status, i32 0, i32 %1976
  %1978 = load i32, ptr %1977, align 4
  br label %1979

1979:                                             ; preds = %1975, %1971, %1960
  %1980 = phi i32 [ 11, %1960 ], [ 1, %1971 ], [ %1978, %1975 ]
  %1981 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %110, i16 noundef zeroext -3056) #11
  %1982 = and i8 %1731, 7
  %1983 = and i8 %1981, -8
  %1984 = or i8 %1983, %1982
  call fastcc void @stv0367_writereg(ptr noundef %110, i16 noundef zeroext -3056, i8 noundef zeroext %1984) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  store i32 %1980, ptr %112, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_get_frontend(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv0367_state, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %9 = load i32, ptr @stvdebug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_get_frontend) #10
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.stv0367_state, ptr %6, i32 0, i32 9
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 32, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 %19(ptr noundef %6, ptr noundef nonnull %4) #11
  %23 = load i32, ptr %4, align 4
  %24 = udiv i32 %23, 1000
  br label %30

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %struct.stv0367_state, ptr %6, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.stv0367_config, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %29, %25 ], [ %24, %21 ]
  store i32 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.stv0367cab_state, ptr %8, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = call fastcc i32 @stv0367cab_GetSymbolRate(ptr noundef %6, i32 noundef %33)
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %34, ptr %35, align 4
  %36 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -2940) #11
  %37 = trunc i8 %36 to i3
  %38 = xor i3 %37, -4
  %39 = zext i3 %38 to i8
  %40 = lshr i8 -29, %39
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = zext i3 %38 to i32
  %45 = getelementptr inbounds [8 x i32], ptr @switch.table.stv0367cab_get_frontend, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %49 = load i32, ptr @stvdebug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367_get_tuner_freq) #10
  br label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = call i32 %55(ptr noundef %0, ptr noundef nonnull %3) #11
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.stv0367_get_tuner_freq) #10
  br label %70

62:                                               ; preds = %57
  %63 = load i32, ptr @stvdebug, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %3, align 4
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.stv0367_get_tuner_freq, i32 noundef %66) #10
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %60, %53
  %71 = phi i32 [ %58, %60 ], [ %69, %68 ], [ -1, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  store i32 %71, ptr %1, align 4
  %72 = load i32, ptr @stvdebug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.stv0367cab_get_frontend, i32 noundef %71) #10
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, ptr %4, align 4
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr inbounds %struct.stv0367cab_state, ptr %8, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  br i1 %78, label %81, label %99

81:                                               ; preds = %76
  %82 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3035) #11
  %83 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3034) #11
  %84 = zext i8 %83 to i32
  %85 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3033) #11
  %86 = and i8 %85, 127
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = or i32 %88, %84
  %90 = udiv i32 %80, 1000
  %91 = mul i32 %89, %90
  %92 = add i32 %91, 1
  %93 = lshr i32 %92, 15
  %94 = load i32, ptr %79, align 4
  %95 = udiv i32 %94, 4000
  %96 = load i32, ptr %1, align 4
  %97 = sub i32 %96, %95
  %98 = add i32 %97, %93
  br label %124

99:                                               ; preds = %76
  %100 = udiv i32 %80, 1000
  %101 = icmp ugt i32 %77, %100
  %102 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3035) #11
  %103 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3034) #11
  %104 = zext i8 %103 to i32
  %105 = call fastcc zeroext i8 @stv0367_readreg(ptr noundef %6, i16 noundef zeroext -3033) #11
  %106 = and i8 %105, 127
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = or i32 %108, %104
  %110 = mul i32 %109, %100
  %111 = add i32 %110, 1
  %112 = lshr i32 %111, 15
  br i1 %101, label %113, label %120

113:                                              ; preds = %99
  %114 = load i32, ptr %79, align 4
  %115 = udiv i32 %114, 1000
  %116 = load i32, ptr %1, align 4
  %117 = add i32 %77, %116
  %118 = add nuw nsw i32 %115, %112
  %119 = sub i32 %117, %118
  br label %124

120:                                              ; preds = %99
  %121 = load i32, ptr %1, align 4
  %122 = add i32 %121, %77
  %123 = sub i32 %122, %112
  br label %124

124:                                              ; preds = %120, %113, %81
  %125 = phi i32 [ %98, %81 ], [ %123, %120 ], [ %119, %113 ]
  store i32 %125, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_read_status) #10
  br label %9

9:                                                ; preds = %7, %2
  store i32 0, ptr %1, align 4
  %10 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2974) #11
  %11 = and i8 %10, 15
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -2
  %14 = icmp ult i32 %13, 14
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds [14 x i32], ptr @switch.table.stv0367cab_read_status, i32 0, i32 %13
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ 1, %9 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  store i32 %19, ptr %21, align 4
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.stv0367cab_state, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -200540156, i32 %24
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %18
  %30 = and i32 %26, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = and i32 %26, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = and i32 %26, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = and i32 %26, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = and i32 %26, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = and i32 %26, 64
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 7, i32 6
  br label %48

48:                                               ; preds = %44, %41, %38, %35, %32, %29, %18
  %49 = phi i32 [ 0, %18 ], [ 1, %29 ], [ 2, %32 ], [ 3, %35 ], [ 4, %38 ], [ 5, %41 ], [ %47, %44 ]
  %50 = trunc i32 %26 to i8
  %51 = lshr i32 %26, 16
  %52 = trunc i32 %51 to i16
  %53 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext %52) #11
  %54 = and i8 %53, %50
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, %49
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  store i32 31, ptr %1, align 4
  %59 = load i32, ptr @stvdebug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.stv0367cab_read_status) #10
  br label %88

63:                                               ; preds = %48
  %64 = load ptr, ptr %20, align 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 2
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, ptr %1, align 4
  %69 = or i32 %68, 1
  store i32 %69, ptr %1, align 4
  %70 = load ptr, ptr %20, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 5
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load i32, ptr %1, align 4
  %75 = or i32 %74, 2
  store i32 %75, ptr %1, align 4
  %76 = load ptr, ptr %20, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 9
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32, ptr %1, align 4
  %81 = or i32 %80, 4
  store i32 %81, ptr %1, align 4
  %82 = load ptr, ptr %20, align 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 10
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, ptr %1, align 4
  %87 = or i32 %86, 8
  store i32 %87, ptr %1, align 4
  br label %88

88:                                               ; preds = %85, %79, %73, %67, %63, %61, %58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_read_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @stv0367cab_get_rf_lvl(ptr noundef %4)
  %6 = load i32, ptr @stvdebug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.stv0367cab_read_strength, i32 noundef %5) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp slt i32 %5, -71
  %12 = trunc i32 %5 to i16
  %13 = mul i16 %12, -1311
  %14 = add i16 %13, -28842
  %15 = select i1 %11, i16 -1, i16 %14
  store i16 %15, ptr %1, align 2
  %16 = load i32, ptr @stvdebug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = zext i16 %15 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.stv0367cab_read_strength, i32 noundef %19) #10
  br label %21

21:                                               ; preds = %18, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2940) #11
  %6 = and i8 %5, 7
  %7 = xor i8 %6, 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds [8 x i32], ptr @switch.table.stv0367cab_read_snr, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = tail call fastcc i32 @stv0367cab_snr_readreg(ptr noundef %0, i32 noundef 1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2939) #11
  %15 = lshr i8 %14, 6
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 8, %16
  %18 = mul nuw nsw i32 %17, %10
  %19 = udiv i32 %18, %11
  %20 = icmp ugt i32 %19, 5011
  br i1 %20, label %48, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, 3980
  br i1 %22, label %48, label %23

23:                                               ; preds = %21
  %24 = icmp ugt i32 %19, 3161
  br i1 %24, label %48, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i32 %19, 2511
  br i1 %26, label %48, label %27

27:                                               ; preds = %25
  %28 = icmp ugt i32 %19, 1994
  br i1 %28, label %48, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i32 %19, 1584
  br i1 %30, label %48, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %19, 1258
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %19, 999
  br i1 %34, label %48, label %35

35:                                               ; preds = %33
  %36 = icmp ugt i32 %19, 793
  br i1 %36, label %48, label %37

37:                                               ; preds = %35
  %38 = icmp ugt i32 %19, 500
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i32 %19, 315
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = icmp ugt i32 %19, 199
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = icmp ugt i32 %19, 157
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = icmp ugt i32 %19, 125
  %47 = select i1 %46, i32 7, i32 0
  br label %48

48:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %13, %2
  %49 = phi i32 [ 100, %13 ], [ 93, %21 ], [ 86, %23 ], [ 79, %25 ], [ 72, %27 ], [ 65, %29 ], [ 58, %31 ], [ 50, %33 ], [ 43, %35 ], [ 36, %37 ], [ 29, %39 ], [ 22, %41 ], [ 14, %43 ], [ 0, %2 ], [ %47, %45 ]
  %50 = load i32, ptr @stvdebug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.stv0367cab_read_snr, i32 noundef %49) #10
  br label %54

54:                                               ; preds = %52, %48
  %55 = mul nuw nsw i32 %49, 65535
  %56 = udiv i32 %55, 100
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_read_ucblcks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2893)
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2894)
  %9 = zext i8 %8 to i32
  %10 = or i32 %7, %9
  store i32 %10, ptr %1, align 4
  %11 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2895)
  %12 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2896)
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2896)
  %14 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2897)
  %15 = load i32, ptr @stvdebug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = zext i8 %13 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = zext i8 %14 to i32
  %21 = or i32 %19, %20
  %22 = zext i8 %11 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = zext i8 %12 to i32
  %25 = or i32 %23, %24
  %26 = load i32, ptr %1, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.stv0367cab_read_ucblcks, i32 noundef %26, i32 noundef %25, i32 noundef %21) #10
  br label %28

28:                                               ; preds = %17, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367cab_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367cab_gate_ctrl) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -4095) #11
  %11 = icmp sgt i32 %1, 0
  %12 = select i1 %11, i8 -128, i8 0
  %13 = and i8 %10, 127
  %14 = or i8 %12, %13
  tail call fastcc void @stv0367_writereg(ptr noundef %4, i16 noundef zeroext -4095, i8 noundef zeroext %14) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367cab_get_mclk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3903) #11
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3879) #11
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 1, i8 %9
  %12 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3880) #11
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i8 1, i8 %12
  %15 = zext i8 %11 to i32
  %16 = zext i8 %14 to i32
  %17 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -3878) #11
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 7
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 5)
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %1, 1
  %23 = mul i32 %22, %15
  %24 = shl nuw nsw i32 %16, %21
  %25 = udiv i32 %23, %24
  %26 = load i32, ptr @stvdebug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %25) #10
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ %1, %2 ], [ %25, %28 ]
  %32 = load i32, ptr @stvdebug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %31) #10
  br label %36

36:                                               ; preds = %34, %30, %8
  %37 = phi i32 [ %31, %34 ], [ %31, %30 ], [ %25, %8 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367cab_GetSymbolRate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3032)
  %4 = zext i8 %3 to i32
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3031)
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or i32 %7, %4
  %9 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3030)
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %8, %11
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3029)
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = or i32 %12, %15
  %17 = icmp ult i32 %16, 134217728
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = lshr i32 %16, 10
  br label %31

20:                                               ; preds = %2
  %21 = icmp ult i32 %16, 268435456
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = lshr i32 %16, 11
  br label %31

24:                                               ; preds = %20
  %25 = icmp ult i32 %16, 536870912
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = lshr i32 %16, 12
  br label %31

28:                                               ; preds = %24
  %29 = lshr i32 %16, 13
  %30 = and i32 %29, 131071
  br label %31

31:                                               ; preds = %28, %26, %22, %18
  %32 = phi i32 [ %23, %22 ], [ %30, %28 ], [ %27, %26 ], [ %19, %18 ]
  %33 = phi i32 [ 10, %22 ], [ 8, %28 ], [ 9, %26 ], [ 11, %18 ]
  %34 = udiv i32 %1, 2000
  %35 = mul i32 %32, %34
  %36 = lshr i32 %35, 7
  %37 = mul nuw i32 %36, 125
  %38 = lshr i32 %37, %33
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367cab_get_rf_lvl(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3883) #11
  %3 = and i8 %2, -33
  tail call fastcc void @stv0367_writereg(ptr noundef %0, i16 noundef zeroext -3883, i8 noundef zeroext %3) #11
  %4 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3883) #11
  %5 = and i8 %4, 3
  %6 = zext i8 %5 to i32
  %7 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3884) #11
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 2
  %10 = or i32 %9, %6
  %11 = mul nuw nsw i32 %10, 100
  %12 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3040) #11
  %13 = udiv i32 %11, 1023
  %14 = zext i8 %12 to i32
  %15 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %0, i16 noundef zeroext -3039) #11
  %16 = and i8 %15, 15
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %18, %14
  %20 = icmp ult i32 %19, 2048
  %21 = select i1 %20, i32 2048, i32 -2048
  %22 = add nsw i32 %21, %19
  %23 = mul nsw i32 %22, 100
  %24 = icmp ult i32 %11, 92070
  %25 = icmp slt i32 %23, 114660
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = icmp sgt i32 %23, 118754
  br i1 %28, label %49, label %44

29:                                               ; preds = %41, %1
  %30 = phi i32 [ %42, %41 ], [ 0, %1 ]
  %31 = getelementptr [31 x i32], ptr @stv0367cab_RF_LookUp1, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %13, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = trunc i32 %30 to i8
  %36 = getelementptr <{ [31 x i32], [31 x i32], [29 x [31 x i32]] }>, ptr @stv0367cab_RF_LookUp1, i32 0, i32 1, i32 %30
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 0, %37
  %39 = icmp eq i8 %35, 31
  %40 = select i1 %39, i32 -56, i32 %38
  br label %79

41:                                               ; preds = %29
  %42 = add nuw nsw i32 %30, 1
  %43 = icmp eq i32 %42, 31
  br i1 %43, label %79, label %29

44:                                               ; preds = %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %27
  %45 = phi i32 [ 0, %27 ], [ 1, %49 ], [ 2, %51 ], [ 3, %53 ], [ 4, %55 ], [ 5, %57 ], [ 6, %59 ], [ 7, %61 ], [ 8, %63 ], [ 9, %65 ], [ 10, %67 ], [ 11, %69 ], [ 12, %71 ], [ 13, %73 ], [ 14, %75 ], [ 15, %77 ]
  %46 = getelementptr <{ [16 x i32], [16 x i32], [14 x [16 x i32]] }>, ptr @stv0367cab_RF_LookUp2, i32 0, i32 1, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 0, %47
  br label %79

49:                                               ; preds = %27
  %50 = icmp ugt i32 %23, 122849
  br i1 %50, label %51, label %44

51:                                               ; preds = %49
  %52 = icmp ugt i32 %23, 131039
  br i1 %52, label %53, label %44

53:                                               ; preds = %51
  %54 = icmp ugt i32 %23, 135134
  br i1 %54, label %55, label %44

55:                                               ; preds = %53
  %56 = icmp ugt i32 %23, 143324
  br i1 %56, label %57, label %44

57:                                               ; preds = %55
  %58 = icmp ugt i32 %23, 147419
  br i1 %58, label %59, label %44

59:                                               ; preds = %57
  %60 = icmp ugt i32 %23, 151514
  br i1 %60, label %61, label %44

61:                                               ; preds = %59
  %62 = icmp ugt i32 %23, 155609
  br i1 %62, label %63, label %44

63:                                               ; preds = %61
  %64 = icmp ugt i32 %23, 159704
  br i1 %64, label %65, label %44

65:                                               ; preds = %63
  %66 = icmp ugt i32 %23, 163799
  br i1 %66, label %67, label %44

67:                                               ; preds = %65
  %68 = icmp ugt i32 %23, 167894
  br i1 %68, label %69, label %44

69:                                               ; preds = %67
  %70 = icmp ugt i32 %23, 171989
  br i1 %70, label %71, label %44

71:                                               ; preds = %69
  %72 = icmp ugt i32 %23, 176084
  br i1 %72, label %73, label %44

73:                                               ; preds = %71
  %74 = icmp ugt i32 %23, 180179
  br i1 %74, label %75, label %44

75:                                               ; preds = %73
  %76 = icmp ugt i32 %23, 184274
  br i1 %76, label %77, label %44

77:                                               ; preds = %75
  %78 = icmp ugt i32 %23, 188369
  br i1 %78, label %79, label %44

79:                                               ; preds = %77, %44, %41, %34
  %80 = phi i32 [ %40, %34 ], [ %48, %44 ], [ -72, %77 ], [ -56, %41 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0367cab_snr_readreg(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %6 = zext i8 %5 to i32
  %7 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or i32 %9, %6
  %11 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %12 = zext i8 %11 to i32
  %13 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = add nuw nsw i32 %10, %12
  %17 = add nuw nsw i32 %16, %15
  %18 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %19 = zext i8 %18 to i32
  %20 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = add nuw nsw i32 %17, %19
  %24 = add nuw nsw i32 %23, %22
  %25 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %26 = zext i8 %25 to i32
  %27 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = add i32 %24, %26
  %31 = add i32 %30, %29
  %32 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %33 = zext i8 %32 to i32
  %34 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = add i32 %31, %33
  %38 = add i32 %37, %36
  %39 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %40 = zext i8 %39 to i32
  %41 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = add i32 %38, %40
  %45 = add i32 %44, %43
  %46 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %47 = zext i8 %46 to i32
  %48 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = add i32 %45, %47
  %52 = add i32 %51, %50
  %53 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %54 = zext i8 %53 to i32
  %55 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = add i32 %52, %54
  %59 = add i32 %58, %57
  %60 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %61 = zext i8 %60 to i32
  %62 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = add i32 %59, %61
  %66 = add i32 %65, %64
  %67 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2938) #11
  %68 = zext i8 %67 to i32
  %69 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %4, i16 noundef zeroext -2937) #11
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = add i32 %66, %68
  %73 = add i32 %72, %71
  %74 = icmp eq i32 %1, 0
  %75 = udiv i32 %73, 10
  %76 = select i1 %74, i32 %73, i32 %75
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ddb_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stv0367_state, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %10 [
    i32 1, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %1
  store i32 0, ptr %4, align 4
  %7 = tail call i32 @stv0367ter_sleep(ptr noundef %0)
  br label %10

8:                                                ; preds = %1
  store i32 0, ptr %4, align 4
  %9 = tail call i32 @stv0367cab_sleep(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %6, %1
  %11 = phi i32 [ 0, %8 ], [ 0, %6 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ddb_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [64 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [64 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [64 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [64 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [64 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [64 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [64 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [64 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [64 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [64 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [64 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [64 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [64 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [64 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [64 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [64 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [64 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [64 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %49 = load i32, ptr %48, align 4
  switch i32 %49, label %687 [
    i32 3, label %50
    i32 1, label %359
  ]

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %357, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %44) #11
  %55 = getelementptr inbounds i8, ptr %44, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %55, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #11
  %56 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 3, ptr %56, align 4, !annotation !8
  %57 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %45, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %62, align 4
  store i8 -12, ptr %44, align 1
  %63 = getelementptr inbounds [64 x i8], ptr %44, i32 0, i32 1
  store i8 0, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 0, ptr %64, align 1
  %65 = load i32, ptr @i2cdebug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = load i8, ptr %58, align 4
  %69 = zext i8 %68 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %69, i32 noundef 62464, i32 noundef 0) #10
  br label %71

71:                                               ; preds = %67, %54
  %72 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %45, i32 noundef 1) #11
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %57, align 4
  %78 = load i8, ptr %77, align 4
  %79 = zext i8 %78 to i32
  %80 = load i8, ptr %64, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %79, i32 noundef 62464, i32 noundef %81) #10
  br label %83

83:                                               ; preds = %76, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %44) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %42) #11
  %84 = getelementptr inbounds i8, ptr %42, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %84, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #11
  %85 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 3, ptr %85, align 4, !annotation !8
  %86 = load ptr, ptr %57, align 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %43, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %90, align 4
  store i8 -12, ptr %42, align 1
  %91 = getelementptr inbounds [64 x i8], ptr %42, i32 0, i32 1
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 0, ptr %92, align 1
  %93 = load i32, ptr @i2cdebug, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %83
  %96 = load i8, ptr %86, align 4
  %97 = zext i8 %96 to i32
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %97, i32 noundef 62465, i32 noundef 0) #10
  br label %99

99:                                               ; preds = %95, %83
  %100 = load ptr, ptr %72, align 4
  %101 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %43, i32 noundef 1) #11
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %57, align 4
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = load i8, ptr %92, align 1
  %108 = zext i8 %107 to i32
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %106, i32 noundef 62465, i32 noundef %108) #10
  br label %110

110:                                              ; preds = %103, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %42) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %40) #11
  %111 = getelementptr inbounds i8, ptr %40, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %111, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #11
  %112 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 3, ptr %112, align 4, !annotation !8
  %113 = load ptr, ptr %57, align 4
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %41, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %117, align 4
  store i8 -12, ptr %40, align 1
  %118 = getelementptr inbounds [64 x i8], ptr %40, i32 0, i32 1
  store i8 2, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 0, ptr %119, align 1
  %120 = load i32, ptr @i2cdebug, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %110
  %123 = load i8, ptr %113, align 4
  %124 = zext i8 %123 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %124, i32 noundef 62466, i32 noundef 0) #10
  br label %126

126:                                              ; preds = %122, %110
  %127 = load ptr, ptr %72, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %41, i32 noundef 1) #11
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %57, align 4
  %132 = load i8, ptr %131, align 4
  %133 = zext i8 %132 to i32
  %134 = load i8, ptr %119, align 1
  %135 = zext i8 %134 to i32
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %133, i32 noundef 62466, i32 noundef %135) #10
  br label %137

137:                                              ; preds = %130, %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %40) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %38) #11
  %138 = getelementptr inbounds i8, ptr %38, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %138, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #11
  %139 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 3, ptr %139, align 4, !annotation !8
  %140 = load ptr, ptr %57, align 4
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %39, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %144, align 4
  store i8 -12, ptr %38, align 1
  %145 = getelementptr inbounds [64 x i8], ptr %38, i32 0, i32 1
  store i8 3, ptr %145, align 1
  %146 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 0, ptr %146, align 1
  %147 = load i32, ptr @i2cdebug, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %137
  %150 = load i8, ptr %140, align 4
  %151 = zext i8 %150 to i32
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %151, i32 noundef 62467, i32 noundef 0) #10
  br label %153

153:                                              ; preds = %149, %137
  %154 = load ptr, ptr %72, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %39, i32 noundef 1) #11
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %57, align 4
  %159 = load i8, ptr %158, align 4
  %160 = zext i8 %159 to i32
  %161 = load i8, ptr %146, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %160, i32 noundef 62467, i32 noundef %162) #10
  br label %164

164:                                              ; preds = %157, %153
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %38) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %36) #11
  %165 = getelementptr inbounds i8, ptr %36, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %165, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #11
  %166 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 3, ptr %166, align 4, !annotation !8
  %167 = load ptr, ptr %57, align 4
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %37, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %171, align 4
  store i8 -12, ptr %36, align 1
  %172 = getelementptr inbounds [64 x i8], ptr %36, i32 0, i32 1
  store i8 4, ptr %172, align 1
  %173 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 0, ptr %173, align 1
  %174 = load i32, ptr @i2cdebug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %164
  %177 = load i8, ptr %167, align 4
  %178 = zext i8 %177 to i32
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %178, i32 noundef 62468, i32 noundef 0) #10
  br label %180

180:                                              ; preds = %176, %164
  %181 = load ptr, ptr %72, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %37, i32 noundef 1) #11
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %57, align 4
  %186 = load i8, ptr %185, align 4
  %187 = zext i8 %186 to i32
  %188 = load i8, ptr %173, align 1
  %189 = zext i8 %188 to i32
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %187, i32 noundef 62468, i32 noundef %189) #10
  br label %191

191:                                              ; preds = %184, %180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %36) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %34) #11
  %192 = getelementptr inbounds i8, ptr %34, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %192, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #11
  %193 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 3, ptr %193, align 4, !annotation !8
  %194 = load ptr, ptr %57, align 4
  %195 = load i8, ptr %194, align 4
  %196 = zext i8 %195 to i16
  store i16 %196, ptr %35, align 4
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %197, align 2
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %198, align 4
  store i8 -12, ptr %34, align 1
  %199 = getelementptr inbounds [64 x i8], ptr %34, i32 0, i32 1
  store i8 5, ptr %199, align 1
  %200 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 0, ptr %200, align 1
  %201 = load i32, ptr @i2cdebug, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %191
  %204 = load i8, ptr %194, align 4
  %205 = zext i8 %204 to i32
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %205, i32 noundef 62469, i32 noundef 0) #10
  br label %207

207:                                              ; preds = %203, %191
  %208 = load ptr, ptr %72, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %35, i32 noundef 1) #11
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %57, align 4
  %213 = load i8, ptr %212, align 4
  %214 = zext i8 %213 to i32
  %215 = load i8, ptr %200, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %214, i32 noundef 62469, i32 noundef %216) #10
  br label %218

218:                                              ; preds = %211, %207
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %34) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %32) #11
  %219 = getelementptr inbounds i8, ptr %32, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %219, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #11
  %220 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 3, ptr %220, align 4, !annotation !8
  %221 = load ptr, ptr %57, align 4
  %222 = load i8, ptr %221, align 4
  %223 = zext i8 %222 to i16
  store i16 %223, ptr %33, align 4
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %224, align 2
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %225, align 4
  store i8 -16, ptr %32, align 1
  %226 = getelementptr inbounds [64 x i8], ptr %32, i32 0, i32 1
  store i8 -41, ptr %226, align 1
  %227 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 -119, ptr %227, align 1
  %228 = load i32, ptr @i2cdebug, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %218
  %231 = load i8, ptr %221, align 4
  %232 = zext i8 %231 to i32
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %232, i32 noundef 61655, i32 noundef 137) #10
  br label %234

234:                                              ; preds = %230, %218
  %235 = load ptr, ptr %72, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %33, i32 noundef 1) #11
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %245, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %57, align 4
  %240 = load i8, ptr %239, align 4
  %241 = zext i8 %240 to i32
  %242 = load i8, ptr %227, align 1
  %243 = zext i8 %242 to i32
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %241, i32 noundef 61655, i32 noundef %243) #10
  br label %245

245:                                              ; preds = %238, %234
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %32) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #11
  %246 = getelementptr inbounds i8, ptr %30, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %246, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #11
  %247 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 3, ptr %247, align 4, !annotation !8
  %248 = load ptr, ptr %57, align 4
  %249 = load i8, ptr %248, align 4
  %250 = zext i8 %249 to i16
  store i16 %250, ptr %31, align 4
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %251, align 2
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %252, align 4
  store i8 -16, ptr %30, align 1
  %253 = getelementptr inbounds [64 x i8], ptr %30, i32 0, i32 1
  store i8 -37, ptr %253, align 1
  %254 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 4, ptr %254, align 1
  %255 = load i32, ptr @i2cdebug, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %245
  %258 = load i8, ptr %248, align 4
  %259 = zext i8 %258 to i32
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %259, i32 noundef 61659, i32 noundef 4) #10
  br label %261

261:                                              ; preds = %257, %245
  %262 = load ptr, ptr %72, align 4
  %263 = call i32 @i2c_transfer(ptr noundef %262, ptr noundef nonnull %31, i32 noundef 1) #11
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %272, label %265

265:                                              ; preds = %261
  %266 = load ptr, ptr %57, align 4
  %267 = load i8, ptr %266, align 4
  %268 = zext i8 %267 to i32
  %269 = load i8, ptr %254, align 1
  %270 = zext i8 %269 to i32
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %268, i32 noundef 61659, i32 noundef %270) #10
  br label %272

272:                                              ; preds = %265, %261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #11
  %273 = getelementptr inbounds i8, ptr %28, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %273, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #11
  %274 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 3, ptr %274, align 4, !annotation !8
  %275 = load ptr, ptr %57, align 4
  %276 = load i8, ptr %275, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %29, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %279, align 4
  store i8 -16, ptr %28, align 1
  %280 = getelementptr inbounds [64 x i8], ptr %28, i32 0, i32 1
  store i8 -63, ptr %280, align 1
  %281 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 13, ptr %281, align 1
  %282 = load i32, ptr @i2cdebug, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %272
  %285 = load i8, ptr %275, align 4
  %286 = zext i8 %285 to i32
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %286, i32 noundef 61633, i32 noundef 13) #10
  br label %288

288:                                              ; preds = %284, %272
  %289 = load ptr, ptr %72, align 4
  %290 = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %29, i32 noundef 1) #11
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %299, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %57, align 4
  %294 = load i8, ptr %293, align 4
  %295 = zext i8 %294 to i32
  %296 = load i8, ptr %281, align 1
  %297 = zext i8 %296 to i32
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %295, i32 noundef 61633, i32 noundef %297) #10
  br label %299

299:                                              ; preds = %292, %288
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #11
  %300 = getelementptr inbounds i8, ptr %26, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %300, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #11
  %301 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 3, ptr %301, align 4, !annotation !8
  %302 = load ptr, ptr %57, align 4
  %303 = load i8, ptr %302, align 4
  %304 = zext i8 %303 to i16
  store i16 %304, ptr %27, align 4
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %305, align 2
  %306 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %306, align 4
  store i8 -16, ptr %26, align 1
  %307 = getelementptr inbounds [64 x i8], ptr %26, i32 0, i32 1
  store i8 2, ptr %307, align 1
  %308 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 0, ptr %308, align 1
  %309 = load i32, ptr @i2cdebug, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %299
  %312 = load i8, ptr %302, align 4
  %313 = zext i8 %312 to i32
  %314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %313, i32 noundef 61442, i32 noundef 0) #10
  br label %315

315:                                              ; preds = %311, %299
  %316 = load ptr, ptr %72, align 4
  %317 = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %27, i32 noundef 1) #11
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %326, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %57, align 4
  %321 = load i8, ptr %320, align 4
  %322 = zext i8 %321 to i32
  %323 = load i8, ptr %308, align 1
  %324 = zext i8 %323 to i32
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %322, i32 noundef 61442, i32 noundef %324) #10
  br label %326

326:                                              ; preds = %319, %315
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #11
  %327 = load ptr, ptr %57, align 4
  %328 = getelementptr inbounds %struct.stv0367_config, ptr %327, i32 0, i32 1
  %329 = load i32, ptr %328, align 4
  call fastcc void @stv0367_pll_setup(ptr noundef %47, i32 noundef 53125000, i32 noundef %329) #11
  call void @msleep(i32 noundef 50) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %24) #11
  %330 = getelementptr inbounds i8, ptr %24, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %330, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #11
  %331 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %331, align 4, !annotation !8
  %332 = load ptr, ptr %57, align 4
  %333 = load i8, ptr %332, align 4
  %334 = zext i8 %333 to i16
  store i16 %334, ptr %25, align 4
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %335, align 2
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %336, align 4
  store i8 -16, ptr %24, align 1
  %337 = getelementptr inbounds [64 x i8], ptr %24, i32 0, i32 1
  store i8 -63, ptr %337, align 1
  %338 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 0, ptr %338, align 1
  %339 = load i32, ptr @i2cdebug, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %326
  %342 = load i8, ptr %332, align 4
  %343 = zext i8 %342 to i32
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %343, i32 noundef 61633, i32 noundef 0) #10
  br label %345

345:                                              ; preds = %341, %326
  %346 = load ptr, ptr %72, align 4
  %347 = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %25, i32 noundef 1) #11
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %356, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %57, align 4
  %351 = load i8, ptr %350, align 4
  %352 = zext i8 %351 to i32
  %353 = load i8, ptr %338, align 1
  %354 = zext i8 %353 to i32
  %355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %352, i32 noundef 61633, i32 noundef %354) #10
  br label %356

356:                                              ; preds = %349, %345
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %24) #11
  store i32 1, ptr %51, align 4
  br label %357

357:                                              ; preds = %356, %50
  %358 = call i32 @stv0367ter_set_frontend(ptr noundef %0)
  br label %687

359:                                              ; preds = %1
  %360 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 10
  %361 = load i32, ptr %360, align 4
  %362 = icmp eq i32 %361, 2
  br i1 %362, label %679, label %363

363:                                              ; preds = %359
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #11
  %364 = getelementptr inbounds i8, ptr %22, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %364, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  %365 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %365, align 4, !annotation !8
  %366 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 2
  %367 = load ptr, ptr %366, align 4
  %368 = load i8, ptr %367, align 4
  %369 = zext i8 %368 to i16
  store i16 %369, ptr %23, align 4
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %370, align 2
  %371 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %371, align 4
  store i8 -12, ptr %22, align 1
  %372 = getelementptr inbounds [64 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %372, align 1
  %373 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 0, ptr %373, align 1
  %374 = load i32, ptr @i2cdebug, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %380, label %376

376:                                              ; preds = %363
  %377 = load i8, ptr %367, align 4
  %378 = zext i8 %377 to i32
  %379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %378, i32 noundef 62464, i32 noundef 0) #10
  br label %380

380:                                              ; preds = %376, %363
  %381 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = call i32 @i2c_transfer(ptr noundef %382, ptr noundef nonnull %23, i32 noundef 1) #11
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %392, label %385

385:                                              ; preds = %380
  %386 = load ptr, ptr %366, align 4
  %387 = load i8, ptr %386, align 4
  %388 = zext i8 %387 to i32
  %389 = load i8, ptr %373, align 1
  %390 = zext i8 %389 to i32
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %388, i32 noundef 62464, i32 noundef %390) #10
  br label %392

392:                                              ; preds = %385, %380
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #11
  %393 = getelementptr inbounds i8, ptr %20, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %393, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  %394 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %394, align 4, !annotation !8
  %395 = load ptr, ptr %366, align 4
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i16
  store i16 %397, ptr %21, align 4
  %398 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %398, align 2
  %399 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %399, align 4
  store i8 -12, ptr %20, align 1
  %400 = getelementptr inbounds [64 x i8], ptr %20, i32 0, i32 1
  store i8 1, ptr %400, align 1
  %401 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 1, ptr %401, align 1
  %402 = load i32, ptr @i2cdebug, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %392
  %405 = load i8, ptr %395, align 4
  %406 = zext i8 %405 to i32
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %406, i32 noundef 62465, i32 noundef 1) #10
  br label %408

408:                                              ; preds = %404, %392
  %409 = load ptr, ptr %381, align 4
  %410 = call i32 @i2c_transfer(ptr noundef %409, ptr noundef nonnull %21, i32 noundef 1) #11
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %419, label %412

412:                                              ; preds = %408
  %413 = load ptr, ptr %366, align 4
  %414 = load i8, ptr %413, align 4
  %415 = zext i8 %414 to i32
  %416 = load i8, ptr %401, align 1
  %417 = zext i8 %416 to i32
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %415, i32 noundef 62465, i32 noundef %417) #10
  br label %419

419:                                              ; preds = %412, %408
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #11
  %420 = getelementptr inbounds i8, ptr %18, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %420, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %421 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %421, align 4, !annotation !8
  %422 = load ptr, ptr %366, align 4
  %423 = load i8, ptr %422, align 4
  %424 = zext i8 %423 to i16
  store i16 %424, ptr %19, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %425, align 2
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %426, align 4
  store i8 -12, ptr %18, align 1
  %427 = getelementptr inbounds [64 x i8], ptr %18, i32 0, i32 1
  store i8 2, ptr %427, align 1
  %428 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 6, ptr %428, align 1
  %429 = load i32, ptr @i2cdebug, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %435, label %431

431:                                              ; preds = %419
  %432 = load i8, ptr %422, align 4
  %433 = zext i8 %432 to i32
  %434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %433, i32 noundef 62466, i32 noundef 6) #10
  br label %435

435:                                              ; preds = %431, %419
  %436 = load ptr, ptr %381, align 4
  %437 = call i32 @i2c_transfer(ptr noundef %436, ptr noundef nonnull %19, i32 noundef 1) #11
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %446, label %439

439:                                              ; preds = %435
  %440 = load ptr, ptr %366, align 4
  %441 = load i8, ptr %440, align 4
  %442 = zext i8 %441 to i32
  %443 = load i8, ptr %428, align 1
  %444 = zext i8 %443 to i32
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %442, i32 noundef 62466, i32 noundef %444) #10
  br label %446

446:                                              ; preds = %439, %435
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #11
  %447 = getelementptr inbounds i8, ptr %16, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %447, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %448 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %448, align 4, !annotation !8
  %449 = load ptr, ptr %366, align 4
  %450 = load i8, ptr %449, align 4
  %451 = zext i8 %450 to i16
  store i16 %451, ptr %17, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %452, align 2
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %453, align 4
  store i8 -12, ptr %16, align 1
  %454 = getelementptr inbounds [64 x i8], ptr %16, i32 0, i32 1
  store i8 3, ptr %454, align 1
  %455 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 3, ptr %455, align 1
  %456 = load i32, ptr @i2cdebug, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %446
  %459 = load i8, ptr %449, align 4
  %460 = zext i8 %459 to i32
  %461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %460, i32 noundef 62467, i32 noundef 3) #10
  br label %462

462:                                              ; preds = %458, %446
  %463 = load ptr, ptr %381, align 4
  %464 = call i32 @i2c_transfer(ptr noundef %463, ptr noundef nonnull %17, i32 noundef 1) #11
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %473, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %366, align 4
  %468 = load i8, ptr %467, align 4
  %469 = zext i8 %468 to i32
  %470 = load i8, ptr %455, align 1
  %471 = zext i8 %470 to i32
  %472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %469, i32 noundef 62467, i32 noundef %471) #10
  br label %473

473:                                              ; preds = %466, %462
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  %474 = getelementptr inbounds i8, ptr %14, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %474, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %475 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %475, align 4, !annotation !8
  %476 = load ptr, ptr %366, align 4
  %477 = load i8, ptr %476, align 4
  %478 = zext i8 %477 to i16
  store i16 %478, ptr %15, align 4
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %479, align 2
  %480 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %480, align 4
  store i8 -12, ptr %14, align 1
  %481 = getelementptr inbounds [64 x i8], ptr %14, i32 0, i32 1
  store i8 4, ptr %481, align 1
  %482 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 0, ptr %482, align 1
  %483 = load i32, ptr @i2cdebug, align 4
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %489, label %485

485:                                              ; preds = %473
  %486 = load i8, ptr %476, align 4
  %487 = zext i8 %486 to i32
  %488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %487, i32 noundef 62468, i32 noundef 0) #10
  br label %489

489:                                              ; preds = %485, %473
  %490 = load ptr, ptr %381, align 4
  %491 = call i32 @i2c_transfer(ptr noundef %490, ptr noundef nonnull %15, i32 noundef 1) #11
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %500, label %493

493:                                              ; preds = %489
  %494 = load ptr, ptr %366, align 4
  %495 = load i8, ptr %494, align 4
  %496 = zext i8 %495 to i32
  %497 = load i8, ptr %482, align 1
  %498 = zext i8 %497 to i32
  %499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %496, i32 noundef 62468, i32 noundef %498) #10
  br label %500

500:                                              ; preds = %493, %489
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %501 = getelementptr inbounds i8, ptr %12, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %501, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %502 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %502, align 4, !annotation !8
  %503 = load ptr, ptr %366, align 4
  %504 = load i8, ptr %503, align 4
  %505 = zext i8 %504 to i16
  store i16 %505, ptr %13, align 4
  %506 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %506, align 2
  %507 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %507, align 4
  store i8 -12, ptr %12, align 1
  %508 = getelementptr inbounds [64 x i8], ptr %12, i32 0, i32 1
  store i8 5, ptr %508, align 1
  %509 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 0, ptr %509, align 1
  %510 = load i32, ptr @i2cdebug, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %516, label %512

512:                                              ; preds = %500
  %513 = load i8, ptr %503, align 4
  %514 = zext i8 %513 to i32
  %515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %514, i32 noundef 62469, i32 noundef 0) #10
  br label %516

516:                                              ; preds = %512, %500
  %517 = load ptr, ptr %381, align 4
  %518 = call i32 @i2c_transfer(ptr noundef %517, ptr noundef nonnull %13, i32 noundef 1) #11
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %527, label %520

520:                                              ; preds = %516
  %521 = load ptr, ptr %366, align 4
  %522 = load i8, ptr %521, align 4
  %523 = zext i8 %522 to i32
  %524 = load i8, ptr %509, align 1
  %525 = zext i8 %524 to i32
  %526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %523, i32 noundef 62469, i32 noundef %525) #10
  br label %527

527:                                              ; preds = %520, %516
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %528 = getelementptr inbounds i8, ptr %10, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %528, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %529 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %529, align 4, !annotation !8
  %530 = load ptr, ptr %366, align 4
  %531 = load i8, ptr %530, align 4
  %532 = zext i8 %531 to i16
  store i16 %532, ptr %11, align 4
  %533 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %533, align 2
  %534 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %534, align 4
  store i8 -16, ptr %10, align 1
  %535 = getelementptr inbounds [64 x i8], ptr %10, i32 0, i32 1
  store i8 -41, ptr %535, align 1
  %536 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 -117, ptr %536, align 1
  %537 = load i32, ptr @i2cdebug, align 4
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %543, label %539

539:                                              ; preds = %527
  %540 = load i8, ptr %530, align 4
  %541 = zext i8 %540 to i32
  %542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %541, i32 noundef 61655, i32 noundef 139) #10
  br label %543

543:                                              ; preds = %539, %527
  %544 = load ptr, ptr %381, align 4
  %545 = call i32 @i2c_transfer(ptr noundef %544, ptr noundef nonnull %11, i32 noundef 1) #11
  %546 = icmp eq i32 %545, 1
  br i1 %546, label %554, label %547

547:                                              ; preds = %543
  %548 = load ptr, ptr %366, align 4
  %549 = load i8, ptr %548, align 4
  %550 = zext i8 %549 to i32
  %551 = load i8, ptr %536, align 1
  %552 = zext i8 %551 to i32
  %553 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %550, i32 noundef 61655, i32 noundef %552) #10
  br label %554

554:                                              ; preds = %547, %543
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %555 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %555, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %556 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %556, align 4, !annotation !8
  %557 = load ptr, ptr %366, align 4
  %558 = load i8, ptr %557, align 4
  %559 = zext i8 %558 to i16
  store i16 %559, ptr %9, align 4
  %560 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %560, align 2
  %561 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %561, align 4
  store i8 -16, ptr %8, align 1
  %562 = getelementptr inbounds [64 x i8], ptr %8, i32 0, i32 1
  store i8 -37, ptr %562, align 1
  %563 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 4, ptr %563, align 1
  %564 = load i32, ptr @i2cdebug, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %570, label %566

566:                                              ; preds = %554
  %567 = load i8, ptr %557, align 4
  %568 = zext i8 %567 to i32
  %569 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %568, i32 noundef 61659, i32 noundef 4) #10
  br label %570

570:                                              ; preds = %566, %554
  %571 = load ptr, ptr %381, align 4
  %572 = call i32 @i2c_transfer(ptr noundef %571, ptr noundef nonnull %9, i32 noundef 1) #11
  %573 = icmp eq i32 %572, 1
  br i1 %573, label %581, label %574

574:                                              ; preds = %570
  %575 = load ptr, ptr %366, align 4
  %576 = load i8, ptr %575, align 4
  %577 = zext i8 %576 to i32
  %578 = load i8, ptr %563, align 1
  %579 = zext i8 %578 to i32
  %580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %577, i32 noundef 61659, i32 noundef %579) #10
  br label %581

581:                                              ; preds = %574, %570
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %582 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %582, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %583 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %583, align 4, !annotation !8
  %584 = load ptr, ptr %366, align 4
  %585 = load i8, ptr %584, align 4
  %586 = zext i8 %585 to i16
  store i16 %586, ptr %7, align 4
  %587 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %587, align 2
  %588 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %588, align 4
  store i8 -16, ptr %6, align 1
  %589 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  store i8 -63, ptr %589, align 1
  %590 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 13, ptr %590, align 1
  %591 = load i32, ptr @i2cdebug, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %597, label %593

593:                                              ; preds = %581
  %594 = load i8, ptr %584, align 4
  %595 = zext i8 %594 to i32
  %596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %595, i32 noundef 61633, i32 noundef 13) #10
  br label %597

597:                                              ; preds = %593, %581
  %598 = load ptr, ptr %381, align 4
  %599 = call i32 @i2c_transfer(ptr noundef %598, ptr noundef nonnull %7, i32 noundef 1) #11
  %600 = icmp eq i32 %599, 1
  br i1 %600, label %608, label %601

601:                                              ; preds = %597
  %602 = load ptr, ptr %366, align 4
  %603 = load i8, ptr %602, align 4
  %604 = zext i8 %603 to i32
  %605 = load i8, ptr %590, align 1
  %606 = zext i8 %605 to i32
  %607 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %604, i32 noundef 61633, i32 noundef %606) #10
  br label %608

608:                                              ; preds = %601, %597
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %609 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %609, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %610 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %610, align 4, !annotation !8
  %611 = load ptr, ptr %366, align 4
  %612 = load i8, ptr %611, align 4
  %613 = zext i8 %612 to i16
  store i16 %613, ptr %5, align 4
  %614 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %614, align 2
  %615 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %615, align 4
  store i8 -16, ptr %4, align 1
  %616 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 2, ptr %616, align 1
  %617 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 16, ptr %617, align 1
  %618 = load i32, ptr @i2cdebug, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %624, label %620

620:                                              ; preds = %608
  %621 = load i8, ptr %611, align 4
  %622 = zext i8 %621 to i32
  %623 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %622, i32 noundef 61442, i32 noundef 16) #10
  br label %624

624:                                              ; preds = %620, %608
  %625 = load ptr, ptr %381, align 4
  %626 = call i32 @i2c_transfer(ptr noundef %625, ptr noundef nonnull %5, i32 noundef 1) #11
  %627 = icmp eq i32 %626, 1
  br i1 %627, label %635, label %628

628:                                              ; preds = %624
  %629 = load ptr, ptr %366, align 4
  %630 = load i8, ptr %629, align 4
  %631 = zext i8 %630 to i32
  %632 = load i8, ptr %617, align 1
  %633 = zext i8 %632 to i32
  %634 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %631, i32 noundef 61442, i32 noundef %633) #10
  br label %635

635:                                              ; preds = %628, %624
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  %636 = load ptr, ptr %366, align 4
  %637 = getelementptr inbounds %struct.stv0367_config, ptr %636, i32 0, i32 1
  %638 = load i32, ptr %637, align 4
  call fastcc void @stv0367_pll_setup(ptr noundef %47, i32 noundef 58000000, i32 noundef %638) #11
  call void @msleep(i32 noundef 50) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #11
  %639 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %639, i8 0, i32 61, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %640 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %640, align 4, !annotation !8
  %641 = load ptr, ptr %366, align 4
  %642 = load i8, ptr %641, align 4
  %643 = zext i8 %642 to i16
  store i16 %643, ptr %3, align 4
  %644 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %644, align 2
  %645 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %645, align 4
  store i8 -16, ptr %2, align 1
  %646 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 -63, ptr %646, align 1
  %647 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %647, align 1
  %648 = load i32, ptr @i2cdebug, align 4
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %654, label %650

650:                                              ; preds = %635
  %651 = load i8, ptr %641, align 4
  %652 = zext i8 %651 to i32
  %653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %652, i32 noundef 61633, i32 noundef 0) #10
  br label %654

654:                                              ; preds = %650, %635
  %655 = load ptr, ptr %381, align 4
  %656 = call i32 @i2c_transfer(ptr noundef %655, ptr noundef nonnull %3, i32 noundef 1) #11
  %657 = icmp eq i32 %656, 1
  br i1 %657, label %665, label %658

658:                                              ; preds = %654
  %659 = load ptr, ptr %366, align 4
  %660 = load i8, ptr %659, align 4
  %661 = zext i8 %660 to i32
  %662 = load i8, ptr %647, align 1
  %663 = zext i8 %662 to i32
  %664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0367_writeregs, i32 noundef %661, i32 noundef 61633, i32 noundef %663) #10
  br label %665

665:                                              ; preds = %658, %654
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #11
  %666 = load ptr, ptr %366, align 4
  %667 = getelementptr inbounds %struct.stv0367_config, ptr %666, i32 0, i32 1
  %668 = load i32, ptr %667, align 4
  %669 = call fastcc i32 @stv0367cab_get_mclk(ptr noundef %47, i32 noundef %668) #11
  %670 = getelementptr inbounds %struct.stv0367_state, ptr %47, i32 0, i32 4
  %671 = load ptr, ptr %670, align 4
  %672 = getelementptr inbounds %struct.stv0367cab_state, ptr %671, i32 0, i32 1
  store i32 %669, ptr %672, align 4
  %673 = load ptr, ptr %366, align 4
  %674 = getelementptr inbounds %struct.stv0367_config, ptr %673, i32 0, i32 1
  %675 = load i32, ptr %674, align 4
  %676 = call fastcc i32 @stv0367cab_get_mclk(ptr noundef %47, i32 noundef %675) #11
  %677 = load ptr, ptr %670, align 4
  %678 = getelementptr inbounds %struct.stv0367cab_state, ptr %677, i32 0, i32 2
  store i32 %676, ptr %678, align 4
  store i32 2, ptr %360, align 4
  br label %679

679:                                              ; preds = %665, %359
  %680 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %681 = load i32, ptr %680, align 4
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %685

683:                                              ; preds = %679
  %684 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  br label %687

685:                                              ; preds = %679
  %686 = call i32 @stv0367cab_set_frontend(ptr noundef %0)
  br label %687

687:                                              ; preds = %685, %683, %357, %1
  %688 = phi i32 [ -22, %683 ], [ 0, %685 ], [ 0, %357 ], [ -22, %1 ]
  ret i32 %688
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ddb_get_frontend(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0367_state, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %11 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @stv0367ter_get_frontend(ptr noundef %0, ptr noundef %1)
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @stv0367cab_get_frontend(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %9, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0367ddb_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0367_state, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %24 [
    i32 1, label %8
    i32 2, label %22
  ]

8:                                                ; preds = %2
  %9 = load i32, ptr @stvdebug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0367ter_read_status) #10
  br label %13

13:                                               ; preds = %11, %8
  store i32 0, ptr %1, align 4
  %14 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %5, i16 noundef zeroext -4087) #11
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  store i32 31, ptr %1, align 4
  %18 = load i32, ptr @stvdebug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.stv0367ter_read_status) #10
  br label %24

22:                                               ; preds = %2
  %23 = tail call i32 @stv0367cab_read_status(ptr noundef %0, ptr noundef %1)
  br label %24

24:                                               ; preds = %22, %20, %17, %13, %2
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.stv0367_state, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = tail call fastcc i32 @stv0367cab_get_rf_lvl(ptr noundef %25) #11
  %31 = mul i32 %30, 1000
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %32, ptr %33, align 1
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i8 [ 1, %29 ], [ 0, %24 ]
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 %35, ptr %36, align 1
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %138, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.stv0367_state, ptr %41, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %131 [
    i32 1, label %44
    i32 2, label %117
  ]

44:                                               ; preds = %40
  %45 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -4096) #11
  %46 = icmp eq i8 %45, 80
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %47 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %48 = lshr i8 %47, 2
  %49 = zext i8 %48 to i32
  %50 = zext i8 %47 to i32
  %51 = mul nuw nsw i32 %50, 125
  %52 = select i1 %46, i32 %49, i32 %51
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %53 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %54 = lshr i8 %53, 2
  %55 = zext i8 %54 to i32
  %56 = zext i8 %53 to i32
  %57 = mul nuw nsw i32 %56, 125
  %58 = select i1 %46, i32 %55, i32 %57
  %59 = add nuw nsw i32 %58, %52
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %60 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %61 = lshr i8 %60, 2
  %62 = zext i8 %61 to i32
  %63 = zext i8 %60 to i32
  %64 = mul nuw nsw i32 %63, 125
  %65 = select i1 %46, i32 %62, i32 %64
  %66 = add nuw nsw i32 %59, %65
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %67 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %68 = lshr i8 %67, 2
  %69 = zext i8 %68 to i32
  %70 = zext i8 %67 to i32
  %71 = mul nuw nsw i32 %70, 125
  %72 = select i1 %46, i32 %69, i32 %71
  %73 = add nuw nsw i32 %66, %72
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %74 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %75 = lshr i8 %74, 2
  %76 = zext i8 %75 to i32
  %77 = zext i8 %74 to i32
  %78 = mul nuw nsw i32 %77, 125
  %79 = select i1 %46, i32 %76, i32 %78
  %80 = add nuw nsw i32 %73, %79
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %81 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %82 = lshr i8 %81, 2
  %83 = zext i8 %82 to i32
  %84 = zext i8 %81 to i32
  %85 = mul nuw nsw i32 %84, 125
  %86 = select i1 %46, i32 %83, i32 %85
  %87 = add nuw nsw i32 %80, %86
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %88 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %89 = lshr i8 %88, 2
  %90 = zext i8 %89 to i32
  %91 = zext i8 %88 to i32
  %92 = mul nuw nsw i32 %91, 125
  %93 = select i1 %46, i32 %90, i32 %92
  %94 = add nuw nsw i32 %87, %93
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %95 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %96 = lshr i8 %95, 2
  %97 = zext i8 %96 to i32
  %98 = zext i8 %95 to i32
  %99 = mul nuw nsw i32 %98, 125
  %100 = select i1 %46, i32 %97, i32 %99
  %101 = add nuw nsw i32 %94, %100
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %102 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %103 = lshr i8 %102, 2
  %104 = zext i8 %103 to i32
  %105 = zext i8 %102 to i32
  %106 = mul nuw nsw i32 %105, 125
  %107 = select i1 %46, i32 %104, i32 %106
  %108 = add nuw nsw i32 %101, %107
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #11
  %109 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -3932) #11
  %110 = lshr i8 %109, 2
  %111 = zext i8 %110 to i32
  %112 = zext i8 %109 to i32
  %113 = mul nuw nsw i32 %112, 125
  %114 = select i1 %46, i32 %111, i32 %113
  %115 = add nuw nsw i32 %108, %114
  %116 = udiv i32 %115, 10
  br label %133

117:                                              ; preds = %40
  %118 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %41, i16 noundef zeroext -2940) #11
  %119 = and i8 %118, 7
  %120 = xor i8 %119, 4
  %121 = zext i8 %120 to i32
  %122 = getelementptr inbounds [8 x i32], ptr @switch.table.stv0367ddb_read_status, i32 0, i32 %121
  %123 = load i32, ptr %122, align 4
  %124 = tail call fastcc i32 @stv0367cab_snr_readreg(ptr noundef %0, i32 noundef 0) #11
  %125 = add i32 %124, -1
  %126 = icmp ult i32 %125, %123
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = udiv i32 %123, %124
  %129 = tail call i32 @intlog2(i32 noundef %128) #11
  %130 = udiv i32 %129, 5581
  br label %133

131:                                              ; preds = %40
  %132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %132, align 1
  br label %140

133:                                              ; preds = %127, %117, %44
  %134 = phi i32 [ %116, %44 ], [ 0, %117 ], [ %130, %127 ]
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %135, align 1
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %136, ptr %137, align 1
  br label %140

138:                                              ; preds = %34
  %139 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %139, align 1
  br label %140

140:                                              ; preds = %138, %133, %131
  %141 = load i32, ptr %1, align 4
  %142 = and i32 %141, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %180, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %146 = getelementptr inbounds %struct.stv0367_state, ptr %145, i32 0, i32 10
  %147 = load i32, ptr %146, align 4
  switch i32 %147, label %172 [
    i32 1, label %148
    i32 2, label %169
  ]

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.stv0367_state, ptr %145, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  %151 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %145, i16 noundef zeroext -3367) #11
  %152 = icmp sgt i8 %151, -1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.stv0367ter_state, ptr %150, i32 0, i32 12
  %155 = load i32, ptr %154, align 4
  br label %174

156:                                              ; preds = %148
  %157 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %145, i16 noundef zeroext -3431) #11
  %158 = and i8 %157, 127
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 16
  %161 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %145, i16 noundef zeroext -3430) #11
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 8
  %164 = or i32 %160, %163
  %165 = tail call fastcc zeroext i8 @stv0367_readreg(ptr noundef %145, i16 noundef zeroext -3429) #11
  %166 = zext i8 %165 to i32
  %167 = or i32 %164, %166
  %168 = getelementptr inbounds %struct.stv0367ter_state, ptr %150, i32 0, i32 12
  store i32 %167, ptr %168, align 4
  br label %174

169:                                              ; preds = %144
  %170 = call i32 @stv0367cab_read_ucblcks(ptr noundef %0, ptr noundef nonnull %3) #11
  %171 = load i32, ptr %3, align 4
  br label %174

172:                                              ; preds = %144
  %173 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %173, align 1
  br label %179

174:                                              ; preds = %169, %156, %153
  %175 = phi i32 [ %171, %169 ], [ %155, %153 ], [ %167, %156 ]
  %176 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %176, align 1
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %177, ptr %178, align 1
  br label %179

179:                                              ; preds = %174, %172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %182

180:                                              ; preds = %140
  %181 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %181, align 1
  br label %182

182:                                              ; preds = %180, %179
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
