; ModuleID = '/llk/IR/drivers/media/dvb-frontends/af9033.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/af9033.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.clock_adc = type { i32, i32 }
%struct.reg_val = type { i32, i8 }
%struct.coeff = type { i32, i32, [36 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.af9033_dev = type { ptr, ptr, %struct.dvb_frontend, %struct.af9033_config, i8, i8, i32, i8, i8, i32, i64, i64, i64, i64, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.af9033_config = type { i32, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.af9033_ops = type { ptr, ptr }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@af9033_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"af9033\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author261 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [52 x i8] c"description=Afatech AF9033 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@af9033_driver = internal global %struct.i2c_driver { i32 0, ptr @af9033_probe, ptr @af9033_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @af9033_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"af9033\00", align 1
@af9033_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Unsupported clock %u Hz. Only 12000000 Hz is supported currently\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"firmware version: LINK %d.%d.%d.%d - OFDM %d.%d.%d.%d\0A\00", align 1
@af9033_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Afatech AF9033 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @af9033_init, ptr @af9033_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9033_set_frontend, ptr @af9033_get_tune_settings, ptr @af9033_get_frontend, ptr @af9033_read_status, ptr @af9033_read_ber, ptr @af9033_read_signal_strength, ptr @af9033_read_snr, ptr @af9033_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9033_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Afatech AF9033 successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clock_adc_lut = internal unnamed_addr constant [11 x %struct.clock_adc] [%struct.clock_adc { i32 16384000, i32 20480000 }, %struct.clock_adc { i32 20480000, i32 20480000 }, %struct.clock_adc { i32 36000000, i32 20250000 }, %struct.clock_adc { i32 30000000, i32 20156250 }, %struct.clock_adc { i32 26000000, i32 20583333 }, %struct.clock_adc { i32 28000000, i32 20416667 }, %struct.clock_adc { i32 32000000, i32 20500000 }, %struct.clock_adc { i32 34000000, i32 20187500 }, %struct.clock_adc { i32 24000000, i32 20500000 }, %struct.clock_adc { i32 22000000, i32 20625000 }, %struct.clock_adc { i32 12000000, i32 20250000 }], align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Couldn't find ADC config for clock %d\0A\00", align 1
@ofsm_init_it9135_v1 = internal constant [108 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@ofsm_init_it9135_v2 = internal constant [95 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@ofsm_init = internal constant [108 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388804, i8 5 }, %struct.reg_val { i32 8388808, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_tua9001 = internal constant [37 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 39 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388717, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388725, i8 3 }, %struct.reg_val { i32 8388726, i8 2 }, %struct.reg_val { i32 8388727, i8 0 }, %struct.reg_val { i32 8388728, i8 1 }, %struct.reg_val { i32 8388729, i8 0 }, %struct.reg_val { i32 8388730, i8 126 }, %struct.reg_val { i32 8388731, i8 62 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 1 }, %struct.reg_val { i32 8388757, i8 2 }, %struct.reg_val { i32 8388758, i8 1 }, %struct.reg_val { i32 8388760, i8 10 }, %struct.reg_val { i32 8388763, i8 5 }, %struct.reg_val { i32 8388764, i8 -128 }, %struct.reg_val { i32 8388787, i8 0 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388809, i8 93 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], align 4
@tuner_init_fc0011 = internal constant [56 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 40 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 -91 }, %struct.reg_val { i32 8388718, i8 1 }, %struct.reg_val { i32 8388721, i8 10 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388763, i8 45 }, %struct.reg_val { i32 8388764, i8 96 }, %struct.reg_val { i32 8388765, i8 35 }, %struct.reg_val { i32 8388772, i8 80 }, %struct.reg_val { i32 8388781, i8 80 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388791, i8 -120 }, %struct.reg_val { i32 8388792, i8 -90 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 1 }, %struct.reg_val { i32 8388809, i8 105 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450058, i8 27 }, %struct.reg_val { i32 8450059, i8 27 }, %struct.reg_val { i32 8450060, i8 27 }, %struct.reg_val { i32 8450061, i8 27 }, %struct.reg_val { i32 8450062, i8 -1 }, %struct.reg_val { i32 8450063, i8 1 }, %struct.reg_val { i32 8450064, i8 0 }, %struct.reg_val { i32 8450065, i8 2 }, %struct.reg_val { i32 8450066, i8 -1 }, %struct.reg_val { i32 8450067, i8 1 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450075, i8 -17 }, %struct.reg_val { i32 8450076, i8 1 }, %struct.reg_val { i32 8450077, i8 15 }, %struct.reg_val { i32 8450078, i8 2 }, %struct.reg_val { i32 8450079, i8 110 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450085, i8 -34 }, %struct.reg_val { i32 8450086, i8 0 }, %struct.reg_val { i32 8450087, i8 10 }, %struct.reg_val { i32 8450088, i8 3 }, %struct.reg_val { i32 8450089, i8 110 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], align 4
@tuner_init_mxl5007t = internal constant [30 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 27 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 -106 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388801, i8 1 }, %struct.reg_val { i32 8388802, i8 0 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450066, i8 -38 }, %struct.reg_val { i32 8450067, i8 0 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 2 }, %struct.reg_val { i32 8450534, i8 0 }], align 4
@tuner_init_tda18218 = internal constant [29 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 -95 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450066, i8 -38 }, %struct.reg_val { i32 8450067, i8 0 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 2 }, %struct.reg_val { i32 8450534, i8 0 }], align 4
@tuner_init_fc2580 = internal constant [34 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 50 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 0 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 5 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388817, i8 1 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450062, i8 0 }, %struct.reg_val { i32 8450063, i8 2 }, %struct.reg_val { i32 8450064, i8 0 }, %struct.reg_val { i32 8450065, i8 2 }, %struct.reg_val { i32 8450066, i8 0 }, %struct.reg_val { i32 8450067, i8 2 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -106 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -106 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 1 }], align 4
@tuner_init_fc0012 = internal constant [38 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 46 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388697, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388717, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388725, i8 3 }, %struct.reg_val { i32 8388726, i8 2 }, %struct.reg_val { i32 8388727, i8 1 }, %struct.reg_val { i32 8388728, i8 0 }, %struct.reg_val { i32 8388729, i8 0 }, %struct.reg_val { i32 8388730, i8 -112 }, %struct.reg_val { i32 8388731, i8 -112 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 1 }, %struct.reg_val { i32 8388757, i8 2 }, %struct.reg_val { i32 8388758, i8 1 }, %struct.reg_val { i32 8388760, i8 10 }, %struct.reg_val { i32 8388763, i8 5 }, %struct.reg_val { i32 8388764, i8 -128 }, %struct.reg_val { i32 8388787, i8 0 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388809, i8 93 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450079, i8 -96 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], align 4
@tuner_init_it9135_38 = internal constant [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 56 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -56 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388739, i8 2 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -56 }, %struct.reg_val { i32 8388743, i8 -72 }, %struct.reg_val { i32 8388744, i8 -48 }, %struct.reg_val { i32 8388745, i8 -61 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 50 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 2 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 0 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -56 }, %struct.reg_val { i32 8388870, i8 5 }, %struct.reg_val { i32 8388871, i8 123 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -56 }, %struct.reg_val { i32 8388891, i8 123 }, %struct.reg_val { i32 8388892, i8 -118 }, %struct.reg_val { i32 8388893, i8 -96 }, %struct.reg_val { i32 8388898, i8 2 }, %struct.reg_val { i32 8388899, i8 24 }, %struct.reg_val { i32 8388900, i8 -61 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 1 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -56 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 0 }, %struct.reg_val { i32 8450182, i8 2 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_it9135_51 = internal constant [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 81 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 6 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -56 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388739, i8 2 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -64 }, %struct.reg_val { i32 8388743, i8 -106 }, %struct.reg_val { i32 8388744, i8 -49 }, %struct.reg_val { i32 8388745, i8 -61 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 60 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 122 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 1 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -80 }, %struct.reg_val { i32 8388870, i8 2 }, %struct.reg_val { i32 8388871, i8 122 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -64 }, %struct.reg_val { i32 8388891, i8 122 }, %struct.reg_val { i32 8388892, i8 -84 }, %struct.reg_val { i32 8388893, i8 -116 }, %struct.reg_val { i32 8388898, i8 2 }, %struct.reg_val { i32 8388899, i8 112 }, %struct.reg_val { i32 8388900, i8 -92 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 1 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -64 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 -64 }, %struct.reg_val { i32 8450182, i8 1 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_it9135_52 = internal constant [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 82 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 16 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -96 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 23 }, %struct.reg_val { i32 8388739, i8 3 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -77 }, %struct.reg_val { i32 8388743, i8 -105 }, %struct.reg_val { i32 8388744, i8 -64 }, %struct.reg_val { i32 8388745, i8 -98 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 92 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 60 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -111 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 116 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 2 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -92 }, %struct.reg_val { i32 8388870, i8 2 }, %struct.reg_val { i32 8388871, i8 110 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -51 }, %struct.reg_val { i32 8388891, i8 98 }, %struct.reg_val { i32 8388892, i8 -92 }, %struct.reg_val { i32 8388893, i8 -116 }, %struct.reg_val { i32 8388898, i8 3 }, %struct.reg_val { i32 8388899, i8 24 }, %struct.reg_val { i32 8388900, i8 -98 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -74 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 -64 }, %struct.reg_val { i32 8450182, i8 1 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_it9135_60 = internal constant [209 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 96 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 10 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -116 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 24 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -66 }, %struct.reg_val { i32 8388743, i8 -96 }, %struct.reg_val { i32 8388744, i8 -58 }, %struct.reg_val { i32 8388745, i8 -74 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -96 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 10 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 0 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -66 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -66 }, %struct.reg_val { i32 8388900, i8 -82 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 86 }, %struct.reg_val { i32 8388907, i8 80 }, %struct.reg_val { i32 8388908, i8 71 }, %struct.reg_val { i32 8388909, i8 66 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 8 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 25 }, %struct.reg_val { i32 8388932, i8 0 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 110 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 -116 }, %struct.reg_val { i32 8388941, i8 -84 }, %struct.reg_val { i32 8388942, i8 -58 }, %struct.reg_val { i32 8388945, i8 30 }, %struct.reg_val { i32 8388947, i8 -68 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -108 }, %struct.reg_val { i32 8388994, i8 110 }, %struct.reg_val { i32 8388997, i8 36 }, %struct.reg_val { i32 8389001, i8 -66 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -96 }, %struct.reg_val { i32 8389008, i8 90 }, %struct.reg_val { i32 8389009, i8 0 }, %struct.reg_val { i32 8449282, i8 64 }, %struct.reg_val { i32 8449602, i8 64 }, %struct.reg_val { i32 8449666, i8 64 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_it9135_61 = internal constant [209 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 97 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 6 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -112 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -68 }, %struct.reg_val { i32 8388743, i8 -100 }, %struct.reg_val { i32 8388744, i8 -52 }, %struct.reg_val { i32 8388745, i8 -88 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 92 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -96 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 8 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 1 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -56 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -58 }, %struct.reg_val { i32 8388900, i8 -88 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 89 }, %struct.reg_val { i32 8388907, i8 80 }, %struct.reg_val { i32 8388908, i8 71 }, %struct.reg_val { i32 8388909, i8 66 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 5 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 89 }, %struct.reg_val { i32 8388932, i8 1 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 123 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 -116 }, %struct.reg_val { i32 8388941, i8 -88 }, %struct.reg_val { i32 8388942, i8 -58 }, %struct.reg_val { i32 8388945, i8 40 }, %struct.reg_val { i32 8388947, i8 -52 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -100 }, %struct.reg_val { i32 8388994, i8 118 }, %struct.reg_val { i32 8388997, i8 40 }, %struct.reg_val { i32 8389001, i8 -86 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -5 }, %struct.reg_val { i32 8389008, i8 92 }, %struct.reg_val { i32 8389009, i8 0 }, %struct.reg_val { i32 8449282, i8 64 }, %struct.reg_val { i32 8449602, i8 64 }, %struct.reg_val { i32 8449666, i8 64 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@tuner_init_it9135_62 = internal constant [210 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 98 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -116 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -72 }, %struct.reg_val { i32 8388743, i8 -100 }, %struct.reg_val { i32 8388744, i8 -78 }, %struct.reg_val { i32 8388745, i8 -90 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 2 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 110 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 2 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -62 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -72 }, %struct.reg_val { i32 8388900, i8 -88 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 5 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 89 }, %struct.reg_val { i32 8388932, i8 0 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 123 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 112 }, %struct.reg_val { i32 8388941, i8 -106 }, %struct.reg_val { i32 8388942, i8 -48 }, %struct.reg_val { i32 8388943, i8 3 }, %struct.reg_val { i32 8388945, i8 40 }, %struct.reg_val { i32 8388947, i8 -78 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -100 }, %struct.reg_val { i32 8388994, i8 110 }, %struct.reg_val { i32 8388997, i8 36 }, %struct.reg_val { i32 8389001, i8 -72 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -5 }, %struct.reg_val { i32 8389008, i8 90 }, %struct.reg_val { i32 8449282, i8 -1 }, %struct.reg_val { i32 8449602, i8 -1 }, %struct.reg_val { i32 8449666, i8 -1 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], align 4
@coeff_lut = internal constant [3 x %struct.coeff] [%struct.coeff { i32 12000000, i32 8000000, [36 x i8] c"\01\CEU\C9\00\E7*\E4\00s\99\0F\00s\95r\00s\91\D5\009\CA\B9\00\E7*\E4\00s\95r7\02\CE\01" }, %struct.coeff { i32 12000000, i32 7000000, [36 x i8] c"\01\94\8B\10\00\CAE\88\00e%\ED\00e\22\C4\00e\1F\9B\002\91b\00\CAE\88\00e\22\C4\88\02\95\01" }, %struct.coeff { i32 12000000, i32 6000000, [36 x i8] c"\01Z\C0V\00\AD`+\00V\B2\CB\00V\B0\15\00V\AD`\00+X\0B\00\AD`+\00V\B0\15\F4\02[\01" }], align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Couldn't find config for clock %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Couldn't find ADC clock for clock %u\0A\00", align 1
@power_reference = internal unnamed_addr constant [3 x [5 x i32]] [[5 x i32] [i32 -93, i32 -91, i32 -90, i32 -89, i32 -88], [5 x i32] [i32 -87, i32 -85, i32 -84, i32 -83, i32 -82], [5 x i32] [i32 -82, i32 -80, i32 -78, i32 -77, i32 -76]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_license263], section "llvm.metadata"
@switch.table.af9033_get_frontend = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.af9033_get_frontend.9 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 0], align 4

@__mod_i2c__af9033_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @af9033_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @af9033_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @af9033_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1128) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %97, label %10

10:                                               ; preds = %2
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %11, ptr noundef align 4 dereferenceable(24) %6, i32 24, i1 false)
  %12 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 3, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 3
  %15 = zext i8 %14 to i32
  switch i32 %15, label %20 [
    i32 1, label %16
    i32 2, label %18
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 7
  store i8 1, ptr %17, align 8
  br label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 8
  store i8 1, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %16, %10
  %21 = load i32, ptr %11, align 8
  %22 = icmp eq i32 %21, 12000000
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %21) #13
  br label %95

24:                                               ; preds = %20
  %25 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @af9033_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %26 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %95

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 3, i32 2
  %32 = load i8, ptr %31, align 1
  switch i8 %32, label %35 [
    i8 56, label %33
    i8 81, label %33
    i8 82, label %33
    i8 96, label %33
    i8 97, label %33
    i8 98, label %33
  ]

33:                                               ; preds = %30, %30, %30, %30, %30, %30
  %34 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 5
  store i8 1, ptr %34, align 1
  br label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 4
  store i8 1, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ 33769, %35 ], [ 19452, %33 ]
  %39 = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef %38, ptr noundef nonnull %3, i32 noundef 4) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %43 = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef 8405393, ptr noundef %42, i32 noundef 4) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %41
  %46 = load i8, ptr %3, align 8
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, ptr %42, align 4
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %47, i32 noundef %50, i32 noundef %53, i32 noundef %56, i32 noundef %58, i32 noundef %61, i32 noundef %64, i32 noundef %67) #13
  %68 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 4
  %69 = load i8, ptr %68, align 8, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %45
  %72 = call i32 @regmap_write(ptr noundef %25, i32 noundef 8388684, i32 noundef 1) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = call i32 @regmap_write(ptr noundef %25, i32 noundef 8388608, i32 noundef 0) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74, %45
  %78 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 2
  %79 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %79, ptr noundef nonnull align 4 dereferenceable(544) @af9033_ops, i32 544, i1 false)
  %80 = getelementptr inbounds %struct.af9033_dev, ptr %8, i32 0, i32 2, i32 3
  store ptr %8, ptr %80, align 8
  %81 = getelementptr inbounds %struct.af9033_config, ptr %6, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  store ptr %78, ptr %82, align 4
  %83 = getelementptr inbounds %struct.af9033_config, ptr %6, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.af9033_ops, ptr %84, i32 0, i32 1
  store ptr @af9033_pid_filter, ptr %87, align 4
  %88 = load ptr, ptr %83, align 4
  store ptr @af9033_pid_filter_ctrl, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %77
  %90 = load ptr, ptr %26, align 4
  %91 = getelementptr inbounds %struct.af9033_config, ptr %6, i32 0, i32 8
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %92, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.3) #13
  br label %97

93:                                               ; preds = %74, %71, %41, %37
  %94 = phi i32 [ %39, %37 ], [ %43, %41 ], [ %72, %71 ], [ %75, %74 ]
  call void @regmap_exit(ptr noundef %25) #11
  br label %95

95:                                               ; preds = %93, %28, %23
  %96 = phi i32 [ -19, %23 ], [ %29, %28 ], [ %94, %93 ]
  call void @kfree(ptr noundef nonnull %8) #11
  br label %97

97:                                               ; preds = %95, %89, %2
  %98 = phi i32 [ 0, %89 ], [ %96, %95 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.af9033_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @regmap_exit(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_pid_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %8 = trunc i16 %2 to i8
  store i8 %8, ptr %5, align 2
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  %10 = lshr i16 %2, 8
  %11 = trunc i16 %10 to i8
  store i8 %11, ptr %9, align 1
  %12 = icmp ugt i16 %2, 8191
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.af9033_dev, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 8452502, ptr noundef nonnull %5, i32 noundef 2) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  %20 = call i32 @regmap_write(ptr noundef %19, i32 noundef 8452500, i32 noundef %3) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 4
  %24 = call i32 @regmap_write(ptr noundef %23, i32 noundef 8452501, i32 noundef %1) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18, %13
  %27 = phi i32 [ %16, %13 ], [ %20, %18 ], [ %24, %22 ]
  br label %28

28:                                               ; preds = %26, %22, %4
  %29 = phi i32 [ %27, %26 ], [ 0, %4 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_pid_filter_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 8452499, i32 noundef 1, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_init(ptr nocapture noundef %0) #2 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca [26 x %struct.reg_val_mask], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %3) #11
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(208) %7, i8 0, i32 204, i1 false), !annotation !8
  store i32 8452900, ptr %3, align 4
  %8 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 0, i32 2
  store i8 8, ptr %8, align 1
  %9 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 1
  store i32 8388684, ptr %9, align 4
  %10 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 1, i32 2
  store i8 -1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 2
  store i32 63041, ptr %11, align 4
  %12 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 2, i32 1
  %13 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 2
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 2, i32 2
  store i8 -1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 3
  store i32 8451530, ptr %17, align 4
  %18 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 3, i32 1
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 3, i32 2
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 4
  store i32 8451861, ptr %20, align 4
  %21 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 4, i32 1
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 4, i32 2
  store i8 1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 5
  store i32 62495, ptr %23, align 4
  %24 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 5, i32 1
  store i8 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 5, i32 2
  store i8 4, ptr %25, align 1
  %26 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 6
  store i32 62490, ptr %26, align 4
  %27 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 6, i32 1
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 6, i32 2
  store i8 1, ptr %28, align 1
  %29 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 7
  store i32 8451889, ptr %29, align 4
  %30 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 7, i32 2
  store i8 1, ptr %30, align 1
  %31 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 8
  store i32 55582, ptr %31, align 4
  %32 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 8, i32 2
  store i8 1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 9
  store i32 55577, ptr %33, align 4
  %34 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 9, i32 2
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 10
  store i32 8451890, ptr %35, align 4
  %36 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 10, i32 2
  store i8 1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 11
  store i32 55583, ptr %37, align 4
  %38 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 11, i32 2
  store i8 1, ptr %38, align 1
  %39 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 12
  store i32 55578, ptr %39, align 4
  %40 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 12, i32 2
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 13
  store i32 8451888, ptr %41, align 4
  %42 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 13, i32 2
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 14
  store i32 8451960, ptr %43, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 14, i32 2
  store i8 -1, ptr %44, align 1
  %45 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 15
  store i32 8451900, ptr %45, align 4
  %46 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 15, i32 1
  store i8 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 15, i32 2
  store i8 1, ptr %47, align 1
  %48 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 16
  store i32 8451958, ptr %48, align 4
  %49 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 16, i32 2
  store i8 1, ptr %49, align 1
  %50 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 17
  store i32 55549, ptr %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 17, i32 1
  store i8 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 17, i32 2
  store i8 -1, ptr %52, align 1
  %53 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 18
  store i32 55344, ptr %53, align 4
  %54 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 18, i32 1
  store i8 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 18, i32 2
  store i8 -1, ptr %55, align 1
  %56 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 19
  store i32 55345, ptr %56, align 4
  %57 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 19, i32 2
  store i8 -1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 20
  store i32 55346, ptr %58, align 4
  %59 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 20, i32 2
  store i8 -1, ptr %59, align 1
  %60 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 21
  store i32 8452485, ptr %60, align 4
  %61 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 21, i32 1
  %62 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 8
  %63 = load i8, ptr %62, align 1, !range !9
  store i8 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 21, i32 2
  store i8 1, ptr %64, align 1
  %65 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 22
  store i32 8452486, ptr %65, align 4
  %66 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 22, i32 1
  %67 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 7
  %68 = load i8, ptr %67, align 8, !range !9
  store i8 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 22, i32 2
  store i8 1, ptr %69, align 1
  %70 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 23
  store i32 55335, ptr %70, align 4
  %71 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 23, i32 2
  store i8 -1, ptr %71, align 1
  %72 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 24
  store i32 55337, ptr %72, align 4
  %73 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 24, i32 2
  store i8 -1, ptr %73, align 1
  %74 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 25
  store i32 8388677, ptr %74, align 4
  %75 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 25, i32 1
  %76 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 1
  %77 = load i8, ptr %76, align 4
  store i8 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.reg_val_mask, ptr %3, i32 25, i32 2
  store i8 -1, ptr %78, align 1
  %79 = load i32, ptr %13, align 8
  %80 = zext i32 %79 to i64
  %81 = shl nuw nsw i64 %80, 19
  %82 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %81) #14, !srcloc !10
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %81, i64 %82, i32 0) #14, !srcloc !11
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = lshr i64 %84, 18
  %86 = trunc i64 %85 to i8
  store i8 %86, ptr %2, align 4
  %87 = lshr i64 %84, 26
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  store i8 %88, ptr %89, align 1
  %90 = lshr i64 %84, 34
  %91 = trunc i64 %90 to i8
  %92 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  store i8 %91, ptr %92, align 2
  %93 = lshr i64 %84, 42
  %94 = trunc i64 %93 to i8
  %95 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 @regmap_bulk_write(ptr noundef %97, i32 noundef 8388645, ptr noundef nonnull %2, i32 noundef 4) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %241

100:                                              ; preds = %1
  %101 = load i32, ptr %13, align 8
  switch i32 %101, label %102 [
    i32 16384000, label %114
    i32 20480000, label %104
    i32 36000000, label %105
    i32 30000000, label %106
    i32 26000000, label %107
    i32 28000000, label %108
    i32 32000000, label %109
    i32 34000000, label %110
    i32 24000000, label %111
    i32 22000000, label %112
    i32 12000000, label %113
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.4, i32 noundef %101) #13
  br label %241

104:                                              ; preds = %100
  br label %114

105:                                              ; preds = %100
  br label %114

106:                                              ; preds = %100
  br label %114

107:                                              ; preds = %100
  br label %114

108:                                              ; preds = %100
  br label %114

109:                                              ; preds = %100
  br label %114

110:                                              ; preds = %100
  br label %114

111:                                              ; preds = %100
  br label %114

112:                                              ; preds = %100
  br label %114

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %100
  %115 = phi i32 [ 0, %100 ], [ 1, %104 ], [ 2, %105 ], [ 3, %106 ], [ 4, %107 ], [ 5, %108 ], [ 6, %109 ], [ 7, %110 ], [ 8, %111 ], [ 9, %112 ], [ 10, %113 ]
  %116 = getelementptr [11 x %struct.clock_adc], ptr @clock_adc_lut, i32 0, i32 %115, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = shl nuw nsw i64 %118, 19
  %120 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %119) #14, !srcloc !10
  %121 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %119, i64 %120, i32 0) #14, !srcloc !11
  %122 = extractvalue { i64, i32 } %121, 0
  %123 = lshr i64 %122, 18
  %124 = trunc i64 %123 to i8
  store i8 %124, ptr %2, align 4
  %125 = lshr i64 %122, 26
  %126 = trunc i64 %125 to i8
  store i8 %126, ptr %89, align 1
  %127 = lshr i64 %122, 34
  %128 = trunc i64 %127 to i8
  store i8 %128, ptr %92, align 2
  %129 = load ptr, ptr %96, align 4
  %130 = call i32 @regmap_bulk_write(ptr noundef %129, i32 noundef 8450509, ptr noundef nonnull %2, i32 noundef 3) #11
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %241

132:                                              ; preds = %135
  %133 = add nuw nsw i32 %136, 1
  %134 = icmp eq i32 %133, 26
  br i1 %134, label %148, label %135

135:                                              ; preds = %132, %114
  %136 = phi i32 [ %133, %132 ], [ 0, %114 ]
  %137 = load ptr, ptr %96, align 4
  %138 = getelementptr [26 x %struct.reg_val_mask], ptr %3, i32 0, i32 %136
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr [26 x %struct.reg_val_mask], ptr %3, i32 0, i32 %136, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr [26 x %struct.reg_val_mask], ptr %3, i32 0, i32 %136, i32 1
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i32
  %146 = call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef %139, i32 noundef %142, i32 noundef %145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %132, label %241

148:                                              ; preds = %132
  %149 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 5
  %150 = load i8, ptr %149, align 8, !range !9
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %96, align 4
  %154 = call i32 @regmap_write(ptr noundef %153, i32 noundef 8453032, i32 noundef 0) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %241

156:                                              ; preds = %152, %148
  %157 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 3
  %158 = load i8, ptr %157, align 2
  %159 = and i8 %158, 3
  %160 = icmp eq i8 %159, 0
  %161 = load ptr, ptr %96, align 4
  br i1 %160, label %162, label %169

162:                                              ; preds = %156
  %163 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef 8452517, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %241

165:                                              ; preds = %162
  %166 = load ptr, ptr %96, align 4
  %167 = call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef 8452533, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %241

169:                                              ; preds = %156
  %170 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef 8452496, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %241

172:                                              ; preds = %169
  %173 = load ptr, ptr %96, align 4
  %174 = call i32 @regmap_update_bits_base(ptr noundef %173, i32 noundef 8452533, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %241

176:                                              ; preds = %172, %165
  %177 = load i8, ptr %14, align 1
  switch i8 %177, label %179 [
    i8 56, label %180
    i8 81, label %180
    i8 82, label %180
    i8 96, label %178
    i8 97, label %178
    i8 98, label %178
  ]

178:                                              ; preds = %176, %176, %176
  br label %180

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179, %178, %176, %176, %176
  %181 = phi i32 [ 108, %179 ], [ 95, %178 ], [ 108, %176 ], [ 108, %176 ], [ 108, %176 ]
  %182 = phi ptr [ @ofsm_init, %179 ], [ @ofsm_init_it9135_v2, %178 ], [ @ofsm_init_it9135_v1, %176 ], [ @ofsm_init_it9135_v1, %176 ], [ @ofsm_init_it9135_v1, %176 ]
  %183 = call fastcc i32 @af9033_wr_reg_val_tab(ptr noundef %5, ptr noundef nonnull %182, i32 noundef %181)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %241

185:                                              ; preds = %180
  %186 = load i8, ptr %14, align 1
  switch i8 %186, label %241 [
    i8 39, label %198
    i8 40, label %187
    i8 -96, label %188
    i8 -95, label %189
    i8 50, label %190
    i8 46, label %191
    i8 56, label %192
    i8 81, label %193
    i8 82, label %194
    i8 96, label %195
    i8 97, label %196
    i8 98, label %197
  ]

187:                                              ; preds = %185
  br label %198

188:                                              ; preds = %185
  br label %198

189:                                              ; preds = %185
  br label %198

190:                                              ; preds = %185
  br label %198

191:                                              ; preds = %185
  br label %198

192:                                              ; preds = %185
  br label %198

193:                                              ; preds = %185
  br label %198

194:                                              ; preds = %185
  br label %198

195:                                              ; preds = %185
  br label %198

196:                                              ; preds = %185
  br label %198

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %185
  %199 = phi i32 [ 210, %197 ], [ 209, %196 ], [ 209, %195 ], [ 212, %194 ], [ 212, %193 ], [ 212, %192 ], [ 38, %191 ], [ 34, %190 ], [ 29, %189 ], [ 30, %188 ], [ 56, %187 ], [ 37, %185 ]
  %200 = phi ptr [ @tuner_init_it9135_62, %197 ], [ @tuner_init_it9135_61, %196 ], [ @tuner_init_it9135_60, %195 ], [ @tuner_init_it9135_52, %194 ], [ @tuner_init_it9135_51, %193 ], [ @tuner_init_it9135_38, %192 ], [ @tuner_init_fc0012, %191 ], [ @tuner_init_fc2580, %190 ], [ @tuner_init_tda18218, %189 ], [ @tuner_init_mxl5007t, %188 ], [ @tuner_init_fc0011, %187 ], [ @tuner_init_tua9001, %185 ]
  %201 = call fastcc i32 @af9033_wr_reg_val_tab(ptr noundef %5, ptr noundef nonnull %200, i32 noundef %199)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %241

203:                                              ; preds = %198
  %204 = load i8, ptr %157, align 2
  %205 = and i8 %204, 3
  %206 = icmp eq i8 %205, 2
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load ptr, ptr %96, align 4
  %209 = call i32 @regmap_update_bits_base(ptr noundef %208, i32 noundef 55580, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %241

211:                                              ; preds = %207
  %212 = load ptr, ptr %96, align 4
  %213 = call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef 55575, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %241

215:                                              ; preds = %211
  %216 = load ptr, ptr %96, align 4
  %217 = call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef 55574, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %241

219:                                              ; preds = %215, %203
  %220 = load i8, ptr %14, align 1
  %221 = add i8 %220, -96
  %222 = icmp ult i8 %221, 3
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load ptr, ptr %96, align 4
  %225 = call i32 @regmap_write(ptr noundef %224, i32 noundef 8388608, i32 noundef 1) #11
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %223, %219
  %228 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 6
  store i32 0, ptr %228, align 4
  %229 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %229, align 4
  %230 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %230, align 1
  %231 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %231, align 1
  %232 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %232, align 1
  %233 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %233, align 1
  %234 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %234, align 1
  %235 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %235, align 2
  %236 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %236, align 1
  %237 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %237, align 1
  %238 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %238, align 1
  %239 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %239, align 4
  %240 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %240, align 1
  br label %241

241:                                              ; preds = %227, %223, %215, %211, %207, %198, %185, %180, %172, %169, %165, %162, %152, %135, %114, %102, %1
  %242 = phi i32 [ 0, %227 ], [ %98, %1 ], [ -19, %102 ], [ %130, %114 ], [ %154, %152 ], [ %163, %162 ], [ %167, %165 ], [ %183, %180 ], [ %201, %198 ], [ %209, %207 ], [ %213, %211 ], [ %217, %215 ], [ %225, %223 ], [ %170, %169 ], [ %174, %172 ], [ -19, %185 ], [ %146, %135 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 8388684, i32 noundef 1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 8388608, i32 noundef 0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %9
  %14 = tail call i64 @ktime_get() #11
  %15 = add i64 %14, 1000000000
  %16 = load ptr, ptr %5, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 8388684, ptr noundef nonnull %2) #11
  %18 = icmp ne i32 %17, 0
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %29, %13
  %23 = call i64 @ktime_get() #11
  %24 = icmp sgt i64 %23, %15
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 8388684, ptr noundef nonnull %2) #11
  %28 = load i32, ptr %2, align 4
  br label %36

29:                                               ; preds = %22
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #11
  %30 = load ptr, ptr %5, align 4
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 8388684, ptr noundef nonnull %2) #11
  %32 = icmp ne i32 %31, 0
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %22

36:                                               ; preds = %29, %25, %13
  %37 = phi i32 [ %28, %25 ], [ %19, %13 ], [ %33, %29 ]
  %38 = phi i32 [ %27, %25 ], [ %17, %13 ], [ %31, %29 ]
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i32 %37, 0
  %41 = select i1 %39, i1 true, i1 %40
  %42 = select i1 %41, i32 0, i32 -110
  %43 = select i1 %39, i32 %38, i32 %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %36
  %46 = load ptr, ptr %5, align 4
  %47 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 8452900, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 3, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = and i8 %51, 3
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 55575, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load ptr, ptr %5, align 4
  %60 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 55574, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54, %45, %36, %9, %1
  %63 = phi i32 [ %7, %1 ], [ %11, %9 ], [ %43, %36 ], [ %47, %45 ], [ %56, %54 ], [ %60, %58 ]
  br label %64

64:                                               ; preds = %62, %58, %49
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_set_frontend(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %141 [
    i32 6000000, label %12
    i32 7000000, label %10
    i32 8000000, label %11
  ]

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %10, %1
  %13 = phi i32 [ 2, %11 ], [ 1, %10 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %15(ptr noundef %0) #11
  %19 = load i32, ptr %8, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ %9, %12 ]
  %22 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %113, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 12000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  switch i32 %21, label %30 [
    i32 8000000, label %34
    i32 7000000, label %32
    i32 6000000, label %33
  ]

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.6, i32 noundef %27) #13
  br label %141

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %32, %29
  %35 = phi i32 [ 0, %29 ], [ 1, %32 ], [ 2, %33 ]
  %36 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr [3 x %struct.coeff], ptr @coeff_lut, i32 0, i32 %35, i32 2
  %39 = tail call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef 8388609, ptr noundef %38, i32 noundef 36) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %141

41:                                               ; preds = %34
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %22, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %113, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3
  %47 = load i32, ptr %46, align 8
  switch i32 %47, label %48 [
    i32 16384000, label %60
    i32 20480000, label %50
    i32 36000000, label %51
    i32 30000000, label %52
    i32 26000000, label %53
    i32 28000000, label %54
    i32 32000000, label %55
    i32 34000000, label %56
    i32 24000000, label %57
    i32 22000000, label %58
    i32 12000000, label %59
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.7, i32 noundef %47) #13
  br label %141

50:                                               ; preds = %45
  br label %60

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  br label %60

53:                                               ; preds = %45
  br label %60

54:                                               ; preds = %45
  br label %60

55:                                               ; preds = %45
  br label %60

56:                                               ; preds = %45
  br label %60

57:                                               ; preds = %45
  br label %60

58:                                               ; preds = %45
  br label %60

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %45
  %61 = phi i32 [ 0, %45 ], [ 1, %50 ], [ 2, %51 ], [ 3, %52 ], [ 4, %53 ], [ 5, %54 ], [ 6, %55 ], [ 7, %56 ], [ 8, %57 ], [ 9, %58 ], [ 10, %59 ]
  %62 = getelementptr [11 x %struct.clock_adc], ptr @clock_adc_lut, i32 0, i32 %61, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = icmp eq i8 %65, 1
  %67 = zext i1 %66 to i32
  %68 = shl i32 %63, %67
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = call i32 %70(ptr noundef %0, ptr noundef nonnull %3) #11
  %74 = load i32, ptr %3, align 4
  br label %76

75:                                               ; preds = %60
  store i32 0, ptr %3, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ 0, %75 ], [ %74, %72 ]
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 23
  %80 = lshr i32 %68, 1
  %81 = zext i32 %80 to i64
  %82 = add nuw nsw i64 %79, %81
  %83 = icmp ult i64 %82, 4294967296
  br i1 %83, label %84, label %87, !prof !12

84:                                               ; preds = %76
  %85 = trunc i64 %82 to i32
  %86 = udiv i32 %85, %68
  br label %91

87:                                               ; preds = %76
  %88 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %68, i64 %82) #14, !srcloc !13
  %89 = extractvalue { i64, i64 } %88, 1
  %90 = trunc i64 %89 to i32
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i32 [ %86, %84 ], [ %90, %87 ]
  %93 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 3, i32 4
  %94 = load i8, ptr %93, align 1, !range !9
  %95 = icmp eq i8 %94, 0
  %96 = icmp ne i32 %77, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = sub i32 8388608, %92
  %99 = select i1 %97, i32 %98, i32 %92
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %2, align 1
  %101 = lshr i32 %99, 8
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %102, ptr %103, align 1
  %104 = lshr i32 %99, 16
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %105, ptr %106, align 1
  %107 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 @regmap_bulk_write(ptr noundef %108, i32 noundef 8388649, ptr noundef nonnull %2, i32 noundef 3) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %91
  %112 = load i32, ptr %8, align 4
  store i32 %112, ptr %22, align 4
  br label %113

113:                                              ; preds = %111, %41, %20
  %114 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 8452356, i32 noundef 3, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load ptr, ptr %114, align 4
  %120 = call i32 @regmap_write(ptr noundef %119, i32 noundef 8388672, i32 noundef 0) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load ptr, ptr %114, align 4
  %124 = call i32 @regmap_write(ptr noundef %123, i32 noundef 8388679, i32 noundef 0) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load ptr, ptr %114, align 4
  %128 = call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef 8452505, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i32, ptr %7, align 4
  %132 = icmp ugt i32 %131, 230000000
  %133 = zext i1 %132 to i32
  %134 = load ptr, ptr %114, align 4
  %135 = call i32 @regmap_write(ptr noundef %134, i32 noundef 8388683, i32 noundef %133) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load ptr, ptr %114, align 4
  %139 = call i32 @regmap_write(ptr noundef %138, i32 noundef 8388608, i32 noundef 0) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137, %130, %126, %122, %118, %113, %91, %48, %34, %30, %1
  %142 = phi i32 [ -22, %30 ], [ %39, %34 ], [ -22, %48 ], [ %109, %91 ], [ %116, %113 ], [ %120, %118 ], [ %124, %122 ], [ %128, %126 ], [ %135, %130 ], [ %139, %137 ], [ -22, %1 ]
  br label %143

143:                                              ; preds = %141, %137
  %144 = phi i32 [ %142, %141 ], [ 0, %137 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #11
  ret i32 %144
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @af9033_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 2000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.af9033_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 8452352, ptr noundef nonnull %3, i32 noundef 8) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 3
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = zext i8 %12 to i32
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 3
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 7
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = zext i8 %25 to i32
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 3
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32
  %37 = getelementptr inbounds [3 x i32], ptr @switch.table.af9033_get_frontend, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 3
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = zext i8 %43 to i32
  %47 = mul nuw nsw i32 %46, 1000000
  %48 = add nuw nsw i32 %47, 6000000
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 7
  %54 = icmp ult i8 %53, 6
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = zext i8 %53 to i32
  %57 = getelementptr inbounds [6 x i32], ptr @switch.table.af9033_get_frontend.9, i32 0, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 7
  %64 = icmp ult i8 %63, 6
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = zext i8 %63 to i32
  %67 = getelementptr inbounds [6 x i32], ptr @switch.table.af9033_get_frontend.9, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %65, %60, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_read_status(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  store i32 0, ptr %1, align 4
  %7 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 8388679, ptr noundef nonnull %4) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %236

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  switch i32 %12, label %16 [
    i32 1, label %13
    i32 2, label %38
  ]

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = load ptr, ptr %7, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8451497, ptr noundef nonnull %4) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %236

20:                                               ; preds = %16
  %21 = load i32, ptr %4, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %1, align 4
  %26 = or i32 %25, 7
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %7, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 8452505, ptr noundef nonnull %4) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %236

31:                                               ; preds = %27
  %32 = load i32, ptr %4, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %1, align 4
  %37 = or i32 %36, 31
  store i32 %37, ptr %1, align 4
  br label %38

38:                                               ; preds = %35, %31, %11
  %39 = load i32, ptr %1, align 4
  %40 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = and i32 %39, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 4
  %45 = load i8, ptr %44, align 8, !range !9
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %7, align 4
  br i1 %46, label %54, label %48

48:                                               ; preds = %43
  %49 = call i32 @regmap_read(ptr noundef %47, i32 noundef 8388682, ptr noundef nonnull %4) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %236

51:                                               ; preds = %48
  %52 = load i32, ptr %4, align 4
  %53 = mul i32 %52, -1000
  br label %61

54:                                               ; preds = %43
  %55 = call i32 @regmap_read(ptr noundef %47, i32 noundef 8388855, ptr noundef nonnull %4) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %236

57:                                               ; preds = %54
  %58 = load i32, ptr %4, align 4
  %59 = mul i32 %58, 1000
  %60 = add i32 %59, -100000
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi i32 [ %53, %51 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %64, align 1
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %65, ptr %66, align 1
  br label %70

67:                                               ; preds = %38
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %69, align 1
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, ptr %40, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %163, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %7, align 4
  %76 = call i32 @regmap_bulk_read(ptr noundef %75, i32 noundef 8388652, ptr noundef nonnull %3, i32 noundef 3) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %236

78:                                               ; preds = %74
  %79 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %86, %82
  %88 = load i8, ptr %3, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %87, %89
  %91 = load ptr, ptr %7, align 4
  %92 = call i32 @regmap_read(ptr noundef %91, i32 noundef 8451979, ptr noundef nonnull %4) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %236

94:                                               ; preds = %78
  %95 = load i32, ptr %4, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = udiv i32 %90, %95
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %98, %97 ], [ %90, %94 ]
  %101 = load ptr, ptr %7, align 4
  %102 = call i32 @regmap_read(ptr noundef %101, i32 noundef 8452352, ptr noundef nonnull %4) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %236

104:                                              ; preds = %99
  %105 = load i32, ptr %4, align 4
  %106 = and i32 %105, 3
  switch i32 %106, label %111 [
    i32 0, label %107
    i32 1, label %112
    i32 2, label %109
  ]

107:                                              ; preds = %104
  %108 = shl nsw i32 %100, 2
  br label %112

109:                                              ; preds = %104
  %110 = shl nsw i32 %100, 1
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %109, %107, %104
  %113 = phi i32 [ 0, %111 ], [ %110, %109 ], [ %108, %107 ], [ %100, %104 ]
  %114 = load ptr, ptr %7, align 4
  %115 = call i32 @regmap_read(ptr noundef %114, i32 noundef 8452355, ptr noundef nonnull %4) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %236

117:                                              ; preds = %112
  %118 = load i32, ptr %4, align 4
  %119 = and i32 %118, 3
  switch i32 %119, label %158 [
    i32 0, label %120
    i32 1, label %132
    i32 2, label %145
  ]

120:                                              ; preds = %117
  %121 = call i32 @llvm.umax.i32(i32 %113, i32 653799)
  %122 = call i32 @llvm.umin.i32(i32 %121, i32 1689999)
  %123 = call i32 @intlog10(i32 noundef %122) #11
  %124 = sub nuw nsw i32 1690000, %122
  %125 = call i32 @intlog10(i32 noundef %124) #11
  %126 = add i32 %123, 3355443
  %127 = sub i32 %126, %125
  %128 = zext i32 %127 to i64
  %129 = mul nuw nsw i64 %128, 13000
  %130 = lshr i64 %129, 24
  %131 = trunc i64 %130 to i32
  br label %158

132:                                              ; preds = %117
  %133 = call i32 @llvm.umax.i32(i32 %113, i32 371105)
  %134 = call i32 @llvm.umin.i32(i32 %133, i32 827999)
  %135 = add nsw i32 %134, -370000
  %136 = call i32 @intlog10(i32 noundef %135) #11
  %137 = sub nuw nsw i32 828000, %134
  %138 = call i32 @intlog10(i32 noundef %137) #11
  %139 = add i32 %136, 43900382
  %140 = sub i32 %139, %138
  %141 = zext i32 %140 to i64
  %142 = mul nuw nsw i64 %141, 6000
  %143 = lshr i64 %142, 24
  %144 = trunc i64 %143 to i32
  br label %158

145:                                              ; preds = %117
  %146 = call i32 @llvm.umax.i32(i32 %113, i32 193246)
  %147 = call i32 @llvm.umin.i32(i32 %146, i32 424999)
  %148 = add nsw i32 %147, -193000
  %149 = call i32 @intlog10(i32 noundef %148) #11
  %150 = sub nuw nsw i32 425000, %147
  %151 = call i32 @intlog10(i32 noundef %150) #11
  %152 = add i32 %149, 49912218
  %153 = sub i32 %152, %151
  %154 = zext i32 %153 to i64
  %155 = mul nuw nsw i64 %154, 8000
  %156 = lshr i64 %155, 24
  %157 = trunc i64 %156 to i32
  br label %158

158:                                              ; preds = %145, %132, %120, %117
  %159 = phi i32 [ %157, %145 ], [ %144, %132 ], [ %131, %120 ], [ 0, %117 ]
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %160, align 1
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %161, ptr %162, align 1
  br label %165

163:                                              ; preds = %70
  %164 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %164, align 1
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i32, ptr %40, align 4
  %167 = and i32 %166, 16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %236, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %7, align 4
  %171 = call i32 @regmap_bulk_read(ptr noundef %170, i32 noundef 8388658, ptr noundef nonnull %3, i32 noundef 7) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %236

173:                                              ; preds = %169
  %174 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i16
  %177 = shl nuw i16 %176, 8
  %178 = load i8, ptr %3, align 1
  %179 = zext i8 %178 to i16
  %180 = or i16 %177, %179
  %181 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 16
  %185 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = shl nuw nsw i32 %187, 8
  %189 = or i32 %188, %184
  %190 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = or i32 %189, %192
  %194 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i16
  %197 = shl nuw i16 %196, 8
  %198 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i16
  %201 = or i16 %197, %200
  %202 = zext i16 %180 to i64
  %203 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 13
  %204 = load i64, ptr %203, align 8
  %205 = add i64 %204, %202
  store i64 %205, ptr %203, align 8
  %206 = zext i16 %201 to i64
  %207 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 14
  %208 = load i64, ptr %207, align 8
  %209 = add i64 %208, %206
  store i64 %209, ptr %207, align 8
  %210 = zext i32 %193 to i64
  %211 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 11
  %212 = load i64, ptr %211, align 8
  %213 = add i64 %212, %210
  store i64 %213, ptr %211, align 8
  %214 = zext i16 %201 to i32
  %215 = mul nuw nsw i32 %214, 1632
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 12
  %218 = load i64, ptr %217, align 8
  %219 = add i64 %218, %216
  store i64 %219, ptr %217, align 8
  %220 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %220, align 1
  %221 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %221, align 1
  %222 = load i64, ptr %207, align 8
  %223 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  store i64 %222, ptr %223, align 1
  %224 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %224, align 2
  %225 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %225, align 1
  %226 = load i64, ptr %203, align 8
  %227 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %226, ptr %227, align 1
  %228 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %228, align 1
  %229 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %229, align 1
  %230 = load i64, ptr %217, align 8
  %231 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %230, ptr %231, align 1
  %232 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %232, align 4
  %233 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %233, align 1
  %234 = load i64, ptr %211, align 8
  %235 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %234, ptr %235, align 1
  br label %236

236:                                              ; preds = %173, %169, %165, %112, %99, %78, %74, %54, %48, %27, %16, %2
  %237 = phi i32 [ 0, %165 ], [ 0, %173 ], [ %9, %2 ], [ %18, %16 ], [ %29, %27 ], [ %49, %48 ], [ %76, %74 ], [ %92, %78 ], [ %102, %99 ], [ %115, %112 ], [ %55, %54 ], [ %171, %169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  ret i32 %237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9033_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 11
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 10
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %6, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 2, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 4
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.af9033_dev, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef 8388680, ptr noundef nonnull %3) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = call i32 @regmap_read(ptr noundef %12, i32 noundef 8388855, ptr noundef nonnull %3) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load ptr, ptr %11, align 4
  %23 = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 8452352, ptr noundef nonnull %4, i32 noundef 7) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load i32, ptr %7, align 4
  %27 = icmp ult i32 %26, 300000001
  %28 = select i1 %27, i32 -7, i32 -4
  %29 = load i32, ptr %3, align 4
  %30 = add i32 %29, -100
  %31 = add i32 %30, %28
  %32 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 3
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 7
  %39 = zext i8 %38 to i32
  %40 = getelementptr [3 x [5 x i32]], ptr @power_reference, i32 0, i32 %35, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %31, %41
  %43 = icmp slt i32 %42, -15
  br i1 %43, label %66, label %44

44:                                               ; preds = %25
  %45 = icmp slt i32 %42, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = trunc i32 %42 to i8
  %48 = shl nsw i8 %47, 1
  %49 = add nsw i8 %48, 30
  %50 = udiv i8 %49, 3
  %51 = zext i8 %50 to i32
  br label %66

52:                                               ; preds = %44
  %53 = icmp ult i32 %42, 20
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = shl nuw nsw i32 %42, 2
  %56 = add nuw nsw i32 %55, 10
  br label %66

57:                                               ; preds = %52
  %58 = icmp ult i32 %42, 35
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = trunc i32 %42 to i8
  %61 = shl nuw nsw i8 %60, 1
  %62 = add nsw i8 %61, -40
  %63 = udiv i8 %62, 3
  %64 = add nuw nsw i8 %63, 90
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %59, %57, %54, %46, %25, %16
  %67 = phi i32 [ %17, %16 ], [ %51, %46 ], [ %56, %54 ], [ %65, %59 ], [ 0, %25 ], [ 100, %57 ]
  %68 = mul i32 %67, 65535
  %69 = udiv i32 %68, 100
  %70 = trunc i32 %69 to i16
  store i16 %70, ptr %1, align 2
  br label %71

71:                                               ; preds = %66, %21, %18, %13
  %72 = phi i32 [ 0, %66 ], [ %14, %13 ], [ %19, %18 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.af9033_dev, ptr %7, i32 0, i32 2, i32 8, i32 43, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.af9033_dev, ptr %7, i32 0, i32 4
  %13 = load i8, ptr %12, align 8, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.af9033_dev, ptr %7, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  %16 = load i64, ptr %15, align 1
  br i1 %14, label %20, label %17

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %18 = call i64 @div_s64_rem(i64 noundef %16, i32 noundef 100, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %19 = trunc i64 %18 to i16
  br label %48

20:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %21 = call i64 @div_s64_rem(i64 noundef %16, i32 noundef 1000, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %22 = trunc i64 %21 to i16
  store i16 %22, ptr %1, align 2
  %23 = getelementptr inbounds %struct.af9033_dev, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 8452355, ptr noundef nonnull %5) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load i32, ptr %5, align 4
  %29 = and i32 %28, 3
  switch i32 %29, label %50 [
    i32 0, label %30
    i32 1, label %36
    i32 2, label %42
  ]

30:                                               ; preds = %27
  %31 = load i16, ptr %1, align 2
  %32 = zext i16 %31 to i32
  %33 = mul nuw i32 %32, 65535
  %34 = sdiv i32 %33, 23
  %35 = trunc i32 %34 to i16
  br label %48

36:                                               ; preds = %27
  %37 = load i16, ptr %1, align 2
  %38 = zext i16 %37 to i32
  %39 = mul nuw i32 %38, 65535
  %40 = sdiv i32 %39, 26
  %41 = trunc i32 %40 to i16
  br label %48

42:                                               ; preds = %27
  %43 = load i16, ptr %1, align 2
  %44 = zext i16 %43 to i32
  %45 = mul nuw i32 %44, 65535
  %46 = sdiv i32 %45, 32
  %47 = trunc i32 %46 to i16
  br label %48

48:                                               ; preds = %42, %36, %30, %17, %2
  %49 = phi i16 [ %35, %30 ], [ %41, %36 ], [ %47, %42 ], [ %19, %17 ], [ 0, %2 ]
  store i16 %49, ptr %1, align 2
  br label %50

50:                                               ; preds = %48, %27, %20
  %51 = phi i32 [ %25, %20 ], [ -22, %27 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9033_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 13
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9033_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9033_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 64004, i32 noundef 1, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @af9033_wr_reg_val_tab(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [213 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 213, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(213) %4, i8 0, i32 213, i1 false), !annotation !8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = add nsw i32 %2, -1
  %8 = getelementptr inbounds %struct.af9033_dev, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %34, %6
  %10 = phi i32 [ 0, %6 ], [ %36, %34 ]
  %11 = phi i32 [ 0, %6 ], [ %35, %34 ]
  %12 = getelementptr %struct.reg_val, ptr %1, i32 %11
  %13 = getelementptr %struct.reg_val, ptr %1, i32 %11, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr [213 x i8], ptr %4, i32 0, i32 %10
  store i8 %14, ptr %15, align 1
  %16 = icmp eq i32 %11, %7
  %17 = load i32, ptr %12, align 4
  br i1 %16, label %24, label %18

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %11, 1
  %20 = getelementptr %struct.reg_val, ptr %1, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18, %9
  %25 = load ptr, ptr %8, align 4
  %26 = sub i32 %17, %10
  %27 = add i32 %10, 1
  %28 = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef %26, ptr noundef nonnull %4, i32 noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %11, 1
  br label %34

32:                                               ; preds = %18
  %33 = add i32 %10, 1
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %19, %32 ]
  %36 = phi i32 [ 0, %30 ], [ %33, %32 ]
  %37 = icmp eq i32 %35, %2
  br i1 %37, label %38, label %9

38:                                               ; preds = %34, %24, %3
  %39 = phi i32 [ 0, %3 ], [ %28, %24 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 213, ptr nonnull %4) #11
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 1185349, i64 1185376}
!11 = !{i64 1186044, i64 1186071, i64 1186104, i64 1186125, i64 1186152, i64 1186178}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148671180, i64 2148671460, i64 2148671794, i64 2148672128}
