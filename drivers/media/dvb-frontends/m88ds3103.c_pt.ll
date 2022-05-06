; ModuleID = '/llk/IR/drivers/media/dvb-frontends/m88ds3103.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/m88ds3103.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88ds3103_get_agc_pwm:\09\09\09\09\09"
module asm "\09.asciz \09\22m88ds3103_get_agc_pwm\22\09\09\09\09\09"
module asm "__kstrtabns_m88ds3103_get_agc_pwm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88ds3103_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22m88ds3103_attach\22\09\09\09\09\09"
module asm "__kstrtabns_m88ds3103_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.m88ds3103_reg_val = type { i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.m88ds3103_dev = type { ptr, ptr, %struct.regmap_config, ptr, %struct.m88ds3103_config, ptr, %struct.dvb_frontend, i32, i32, i32, i8, ptr, i8, i8, i32, i64, i64, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.m88ds3103_config = type { i8, i32, i16, i8, i32, i8, i8, i8, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__kstrtab_m88ds3103_get_agc_pwm = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88ds3103_get_agc_pwm = external dso_local constant [0 x i8], align 1
@__ksymtab_m88ds3103_get_agc_pwm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88ds3103_get_agc_pwm to i32), ptr @__kstrtab_m88ds3103_get_agc_pwm, ptr @__kstrtabns_m88ds3103_get_agc_pwm }, section "___ksymtab+m88ds3103_get_agc_pwm", align 4
@.str = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@__kstrtab_m88ds3103_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88ds3103_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_m88ds3103_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88ds3103_attach to i32), ptr @__kstrtab_m88ds3103_attach, ptr @__kstrtabns_m88ds3103_attach }, section "___ksymtab+m88ds3103_attach", align 4
@m88ds3103_id_table = internal constant [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m88ds3103\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"m88rs6000\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"m88ds3103b\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author251 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [69 x i8] c"description=Montage Technology M88DS3103 DVB-S/S2 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [32 x i8] c"firmware=dvb-demod-m88ds3103.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [32 x i8] c"firmware=dvb-demod-m88rs6000.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [33 x i8] c"firmware=dvb-demod-m88ds3103b.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@m88ds3103_driver = internal global %struct.i2c_driver { i32 0, ptr @m88ds3103_probe, ptr @m88ds3103_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @m88ds3103_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown device. Chip_id=%02x\0A\00", align 1
@m88ds3103_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Montage Technology M88DS3103\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179327 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @m88ds3103_release, ptr null, ptr @m88ds3103_init, ptr @m88ds3103_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m88ds3103_set_frontend, ptr @m88ds3103_get_tune_settings, ptr @m88ds3103_get_frontend, ptr @m88ds3103_read_status, ptr @m88ds3103_read_ber, ptr null, ptr @m88ds3103_read_snr, ptr null, ptr null, ptr @m88ds3103_diseqc_send_master_cmd, ptr null, ptr @m88ds3103_diseqc_send_burst, ptr @m88ds3103_set_tone, ptr @m88ds3103_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Montage Technology M88DS3103B\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Montage Technology M88RS6000\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\03\11\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"i2c wr failed=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"found a '%s' in cold state\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"dvb-demod-m88ds3103b.fw\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"dvb-demod-m88rs6000.fw\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"dvb-demod-m88ds3103.fw\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"firmware version: %X.%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"0x%02x (ret=%i, reg=0x%02x, value=0x%02x)\0A\00", align 1
@m88ds3103_set_frontend.reset_buf = internal constant [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 7, i32 128, i32 0 }, %struct.reg_sequence { i32 7, i32 0, i32 0 }], align 4
@m88rs6000_dvbs_init_reg_vals = internal constant [83 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 3 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 32, i8 0 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -126 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 49, i8 64 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 51, i8 53 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 48 }, %struct.m88ds3103_reg_val { i8 101, i8 64 }, %struct.m88ds3103_reg_val { i8 104, i8 38 }, %struct.m88ds3103_reg_val { i8 105, i8 76 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 124, i8 0 }, %struct.m88ds3103_reg_val { i8 -82, i8 -126 }, %struct.m88ds3103_reg_val { i8 -128, i8 100 }, %struct.m88ds3103_reg_val { i8 -127, i8 102 }, %struct.m88ds3103_reg_val { i8 -126, i8 68 }, %struct.m88ds3103_reg_val { i8 -123, i8 4 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -66, i8 0 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -32, i8 -8 }, %struct.m88ds3103_reg_val { i8 -26, i8 -117 }, %struct.m88ds3103_reg_val { i8 -48, i8 64 }, %struct.m88ds3103_reg_val { i8 -8, i8 32 }, %struct.m88ds3103_reg_val { i8 -6, i8 15 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }, %struct.m88ds3103_reg_val { i8 41, i8 17 }], align 1
@m88ds3103_dvbs_init_reg_vals = internal constant [80 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 3 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -118 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 49, i8 64 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 86, i8 1 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 48 }, %struct.m88ds3103_reg_val { i8 101, i8 64 }, %struct.m88ds3103_reg_val { i8 104, i8 38 }, %struct.m88ds3103_reg_val { i8 105, i8 76 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 124, i8 0 }, %struct.m88ds3103_reg_val { i8 -82, i8 -126 }, %struct.m88ds3103_reg_val { i8 -128, i8 100 }, %struct.m88ds3103_reg_val { i8 -127, i8 102 }, %struct.m88ds3103_reg_val { i8 -126, i8 68 }, %struct.m88ds3103_reg_val { i8 -123, i8 4 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -32, i8 -8 }, %struct.m88ds3103_reg_val { i8 -26, i8 -117 }, %struct.m88ds3103_reg_val { i8 -48, i8 64 }, %struct.m88ds3103_reg_val { i8 -8, i8 32 }, %struct.m88ds3103_reg_val { i8 -6, i8 15 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }], align 1
@m88rs6000_dvbs2_init_reg_vals = internal constant [86 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 7 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 32, i8 0 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -126 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 51, i8 53 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 16 }, %struct.m88ds3103_reg_val { i8 101, i8 32 }, %struct.m88ds3103_reg_val { i8 104, i8 70 }, %struct.m88ds3103_reg_val { i8 105, i8 -51 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 -123, i8 8 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -122, i8 0 }, %struct.m88ds3103_reg_val { i8 -121, i8 15 }, %struct.m88ds3103_reg_val { i8 -119, i8 0 }, %struct.m88ds3103_reg_val { i8 -117, i8 68 }, %struct.m88ds3103_reg_val { i8 -116, i8 102 }, %struct.m88ds3103_reg_val { i8 -99, i8 -63 }, %struct.m88ds3103_reg_val { i8 -118, i8 16 }, %struct.m88ds3103_reg_val { i8 -83, i8 64 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -66, i8 0 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -63, i8 16 }, %struct.m88ds3103_reg_val { i8 -62, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -54, i8 35 }, %struct.m88ds3103_reg_val { i8 -53, i8 36 }, %struct.m88ds3103_reg_val { i8 -52, i8 -12 }, %struct.m88ds3103_reg_val { i8 -50, i8 116 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }, %struct.m88ds3103_reg_val { i8 41, i8 1 }], align 1
@m88ds3103_dvbs2_init_reg_vals = internal constant [83 x %struct.m88ds3103_reg_val] [%struct.m88ds3103_reg_val { i8 35, i8 7 }, %struct.m88ds3103_reg_val { i8 8, i8 7 }, %struct.m88ds3103_reg_val { i8 12, i8 2 }, %struct.m88ds3103_reg_val { i8 33, i8 84 }, %struct.m88ds3103_reg_val { i8 37, i8 -118 }, %struct.m88ds3103_reg_val { i8 39, i8 49 }, %struct.m88ds3103_reg_val { i8 48, i8 8 }, %struct.m88ds3103_reg_val { i8 50, i8 50 }, %struct.m88ds3103_reg_val { i8 53, i8 -1 }, %struct.m88ds3103_reg_val { i8 58, i8 0 }, %struct.m88ds3103_reg_val { i8 55, i8 16 }, %struct.m88ds3103_reg_val { i8 56, i8 16 }, %struct.m88ds3103_reg_val { i8 57, i8 2 }, %struct.m88ds3103_reg_val { i8 66, i8 96 }, %struct.m88ds3103_reg_val { i8 74, i8 -128 }, %struct.m88ds3103_reg_val { i8 75, i8 4 }, %struct.m88ds3103_reg_val { i8 77, i8 -111 }, %struct.m88ds3103_reg_val { i8 93, i8 -56 }, %struct.m88ds3103_reg_val { i8 80, i8 54 }, %struct.m88ds3103_reg_val { i8 81, i8 54 }, %struct.m88ds3103_reg_val { i8 82, i8 54 }, %struct.m88ds3103_reg_val { i8 83, i8 54 }, %struct.m88ds3103_reg_val { i8 86, i8 1 }, %struct.m88ds3103_reg_val { i8 99, i8 15 }, %struct.m88ds3103_reg_val { i8 100, i8 16 }, %struct.m88ds3103_reg_val { i8 101, i8 32 }, %struct.m88ds3103_reg_val { i8 104, i8 70 }, %struct.m88ds3103_reg_val { i8 105, i8 -51 }, %struct.m88ds3103_reg_val { i8 112, i8 32 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 64 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -128 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 -96 }, %struct.m88ds3103_reg_val { i8 113, i8 112 }, %struct.m88ds3103_reg_val { i8 114, i8 4 }, %struct.m88ds3103_reg_val { i8 115, i8 0 }, %struct.m88ds3103_reg_val { i8 112, i8 31 }, %struct.m88ds3103_reg_val { i8 118, i8 56 }, %struct.m88ds3103_reg_val { i8 119, i8 -90 }, %struct.m88ds3103_reg_val { i8 120, i8 12 }, %struct.m88ds3103_reg_val { i8 121, i8 -128 }, %struct.m88ds3103_reg_val { i8 127, i8 20 }, %struct.m88ds3103_reg_val { i8 -123, i8 8 }, %struct.m88ds3103_reg_val { i8 -51, i8 -12 }, %struct.m88ds3103_reg_val { i8 -112, i8 51 }, %struct.m88ds3103_reg_val { i8 -122, i8 0 }, %struct.m88ds3103_reg_val { i8 -121, i8 15 }, %struct.m88ds3103_reg_val { i8 -119, i8 0 }, %struct.m88ds3103_reg_val { i8 -117, i8 68 }, %struct.m88ds3103_reg_val { i8 -116, i8 102 }, %struct.m88ds3103_reg_val { i8 -99, i8 -63 }, %struct.m88ds3103_reg_val { i8 -118, i8 16 }, %struct.m88ds3103_reg_val { i8 -83, i8 64 }, %struct.m88ds3103_reg_val { i8 -96, i8 68 }, %struct.m88ds3103_reg_val { i8 -64, i8 8 }, %struct.m88ds3103_reg_val { i8 -63, i8 16 }, %struct.m88ds3103_reg_val { i8 -62, i8 8 }, %struct.m88ds3103_reg_val { i8 -61, i8 16 }, %struct.m88ds3103_reg_val { i8 -60, i8 8 }, %struct.m88ds3103_reg_val { i8 -59, i8 -16 }, %struct.m88ds3103_reg_val { i8 -58, i8 -1 }, %struct.m88ds3103_reg_val { i8 -57, i8 0 }, %struct.m88ds3103_reg_val { i8 -56, i8 26 }, %struct.m88ds3103_reg_val { i8 -55, i8 -128 }, %struct.m88ds3103_reg_val { i8 -54, i8 35 }, %struct.m88ds3103_reg_val { i8 -53, i8 36 }, %struct.m88ds3103_reg_val { i8 -52, i8 -12 }, %struct.m88ds3103_reg_val { i8 -50, i8 116 }, %struct.m88ds3103_reg_val zeroinitializer, %struct.m88ds3103_reg_val { i8 -67, i8 1 }, %struct.m88ds3103_reg_val { i8 -72, i8 0 }], align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"0x%02x (ret=%d, reg=0x%02x)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_m88ds3103_attach, ptr @__ksymtab_m88ds3103_get_agc_pwm], section "llvm.metadata"
@switch.table.m88ds3103_get_frontend = private unnamed_addr constant [5 x i32] [i32 7, i32 5, i32 3, i32 2, i32 1], align 4
@switch.table.m88ds3103_get_frontend.18 = private unnamed_addr constant [9 x i32] [i32 12, i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 8, i32 11], align 4
@switch.table.m88ds3103_get_frontend.19 = private unnamed_addr constant [4 x i32] [i32 0, i32 9, i32 10, i32 11], align 4

@__mod_i2c__m88ds3103_id_table_device_table = dso_local alias [4 x %struct.i2c_device_id], ptr @m88ds3103_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @m88ds3103_get_agc_pwm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 63, ptr noundef nonnull %3) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %1, align 1
  br label %13

13:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @m88ds3103_attach(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = alloca %struct.m88ds3103_platform_data, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 32, i1 false)
  %7 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 1
  store i16 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 5
  %22 = and i8 %20, 3
  store i8 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 6
  store i8 %24, ptr %25, align 1
  %26 = lshr i8 %20, 2
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 7
  %29 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 7
  %34 = load i8, ptr %33, align 2
  %35 = shl i8 %34, 1
  %36 = and i8 %35, 2
  %37 = or i8 %36, %27
  %38 = getelementptr inbounds %struct.m88ds3103_config, ptr %0, i32 0, i32 9
  %39 = load i8, ptr %38, align 4
  %40 = shl i8 %39, 2
  %41 = and i8 %40, 4
  %42 = or i8 %37, %41
  %43 = and i8 %40, 8
  %44 = or i8 %42, %43
  store i8 %44, ptr %28, align 2
  %45 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 10
  store i8 1, ptr %45, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false)
  %46 = call i32 @strscpy(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 20) #13
  %47 = load i8, ptr %0, align 4
  %48 = zext i8 %47 to i16
  %49 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  store i16 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 4
  store ptr %5, ptr %50, align 4
  %51 = call ptr @i2c_new_client_device(ptr noundef %1, ptr noundef nonnull %4) #13
  %52 = icmp eq ptr %51, null
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %54 = or i1 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4, i32 6
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = call ptr %61(ptr noundef nonnull %51) #13
  store ptr %62, ptr %2, align 4
  %63 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %5, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = call ptr %64(ptr noundef nonnull %51) #13
  br label %66

66:                                               ; preds = %59, %55, %3
  %67 = phi ptr [ %65, %59 ], [ null, %55 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  ret ptr %67
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @m88ds3103_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @m88ds3103_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1304) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %175, label %10

10:                                               ; preds = %2
  store ptr %0, ptr %8, align 8
  %11 = load i32, ptr %6, align 4
  %12 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4
  %13 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 1
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 2
  store i16 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 3
  store i8 %19, ptr %20, align 2
  %21 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, 1000
  %24 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 5
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, -2
  %31 = or i8 %30, %27
  store i8 %31, ptr %28, align 8
  %32 = load i8, ptr %25, align 4
  %33 = and i8 %32, 2
  %34 = and i8 %31, -3
  %35 = or i8 %34, %33
  store i8 %35, ptr %28, align 8
  %36 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 7
  %37 = load i8, ptr %36, align 2
  %38 = shl i8 %37, 2
  %39 = and i8 %38, 4
  %40 = and i8 %35, -5
  %41 = or i8 %39, %40
  store i8 %41, ptr %28, align 8
  %42 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 6
  store i8 %44, ptr %45, align 1
  %46 = load i8, ptr %36, align 2
  %47 = lshr i8 %46, 1
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 7
  %50 = load i8, ptr %49, align 2
  %51 = and i8 %50, -2
  %52 = or i8 %51, %48
  store i8 %52, ptr %49, align 2
  %53 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 8
  store i8 %54, ptr %55, align 1
  %56 = load i8, ptr %36, align 2
  %57 = lshr i8 %56, 2
  %58 = and i8 %57, 1
  %59 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 4, i32 9
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, -2
  %62 = or i8 %61, %58
  store i8 %62, ptr %59, align 4
  %63 = load i8, ptr %36, align 2
  %64 = lshr i8 %63, 2
  %65 = and i8 %64, 2
  %66 = and i8 %62, -3
  %67 = or i8 %65, %66
  store i8 %67, ptr %59, align 4
  %68 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 5
  store ptr %12, ptr %68, align 8
  %69 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 2
  %70 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 2, i32 1
  store i32 8, ptr %70, align 4
  %71 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 2, i32 4
  store i32 8, ptr %71, align 8
  %72 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 2, i32 14
  store ptr %8, ptr %72, align 8
  %73 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef %69, ptr noundef null, ptr noundef null) #13
  %74 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 3
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %10
  %77 = ptrtoint ptr %73 to i32
  br label %173

78:                                               ; preds = %10
  %79 = call i32 @regmap_read(ptr noundef %73, i32 noundef 0, ptr noundef nonnull %3) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %173

81:                                               ; preds = %78
  %82 = load i32, ptr %3, align 4
  %83 = lshr i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 12
  store i8 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  store i8 %88, ptr %89, align 1
  switch i8 %84, label %90 [
    i8 116, label %92
    i8 112, label %92
  ]

90:                                               ; preds = %81
  %91 = and i32 %83, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %91) #15
  br label %173

92:                                               ; preds = %81, %81
  %93 = load ptr, ptr %68, align 8
  %94 = getelementptr inbounds %struct.m88ds3103_config, ptr %93, i32 0, i32 6
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %173 [
    i8 0, label %96
    i8 1, label %97
    i8 2, label %98
  ]

96:                                               ; preds = %92
  store i32 128, ptr %3, align 4
  br label %99

97:                                               ; preds = %92
  store i32 0, ptr %3, align 4
  br label %99

98:                                               ; preds = %92
  store i32 16, ptr %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %96
  %100 = phi i32 [ 16, %98 ], [ 0, %97 ], [ 128, %96 ]
  %101 = load i32, ptr %21, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %173, label %103

103:                                              ; preds = %99
  %104 = icmp eq i8 %84, 116
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  store i32 0, ptr %3, align 4
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ 0, %105 ], [ %100, %103 ]
  %108 = load ptr, ptr %74, align 4
  %109 = call i32 @regmap_write(ptr noundef %108, i32 noundef 41, i32 noundef %107) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %173

111:                                              ; preds = %106
  %112 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %8, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %173

114:                                              ; preds = %111
  %115 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %8, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %173

117:                                              ; preds = %114
  %118 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %8, i8 noundef zeroext 35, i8 noundef zeroext 16, i8 noundef zeroext 16)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %173

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = call ptr @i2c_mux_alloc(ptr noundef %122, ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @m88ds3103_select, ptr noundef null) #13
  %124 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 11
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %173, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.i2c_mux_core, ptr %123, i32 0, i32 3
  store ptr %8, ptr %127, align 4
  %128 = load ptr, ptr %124, align 4
  %129 = call i32 @i2c_mux_add_adapter(ptr noundef %128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %173

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 6, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %132, ptr noundef nonnull align 4 dereferenceable(544) @m88ds3103_ops, i32 544, i1 false)
  %133 = load i8, ptr %89, align 1
  %134 = icmp eq i8 %133, 2
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i8, ptr %85, align 8
  %137 = icmp eq i8 %136, 116
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %131
  %139 = phi ptr [ @.str.2, %131 ], [ @.str.3, %135 ]
  %140 = call i32 @strscpy(ptr noundef %132, ptr noundef nonnull %139, i32 noundef 128) #13
  br label %141

141:                                              ; preds = %138, %135
  %142 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 10
  %143 = load i8, ptr %142, align 4
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 6, i32 1, i32 3
  store ptr null, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 6, i32 3
  store ptr %8, ptr %149, align 4
  %150 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %150, align 8
  %151 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 8
  store ptr @m88ds3103_get_dvb_frontend, ptr %151, align 4
  %152 = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %6, i32 0, i32 9
  store ptr @m88ds3103_get_i2c_adapter, ptr %152, align 4
  %153 = load i8, ptr %89, align 1
  %154 = icmp eq i8 %153, 2
  br i1 %154, label %155, label %175

155:                                              ; preds = %148
  %156 = call fastcc i32 @m88ds3103_update_bits(ptr noundef nonnull %8, i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %157 = load ptr, ptr %74, align 4
  %158 = call i32 @regmap_read(ptr noundef %157, i32 noundef 41, ptr noundef nonnull %3) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load i32, ptr %3, align 4
  %162 = and i32 %161, 128
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i8 33, i8 32
  %165 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 17
  store i8 %164, ptr %165, align 8
  %166 = load ptr, ptr %121, align 8
  %167 = zext i8 %164 to i16
  %168 = call ptr @i2c_new_dummy_device(ptr noundef %166, i16 noundef zeroext %167) #13
  %169 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 1
  store ptr %168, ptr %169, align 4
  %170 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %175

171:                                              ; preds = %160
  %172 = ptrtoint ptr %168 to i32
  br label %173

173:                                              ; preds = %171, %155, %126, %120, %117, %114, %111, %106, %99, %92, %90, %78, %76
  %174 = phi i32 [ %77, %76 ], [ %79, %78 ], [ -19, %90 ], [ %109, %106 ], [ %112, %111 ], [ %115, %114 ], [ %118, %117 ], [ %129, %126 ], [ %158, %155 ], [ %172, %171 ], [ -22, %92 ], [ -22, %99 ], [ -12, %120 ]
  call void @kfree(ptr noundef nonnull %8) #13
  br label %175

175:                                              ; preds = %173, %160, %148, %2
  %176 = phi i32 [ 0, %160 ], [ 0, %148 ], [ %174, %173 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.m88ds3103_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @i2c_unregister_device(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.m88ds3103_dev, ptr %3, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %10) #13
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103_update_bits(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %3, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = icmp eq i8 %2, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  br label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = zext i8 %1 to i32
  %14 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %13, ptr noundef nonnull %6, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = and i8 %3, %2
  %18 = xor i8 %2, -1
  %19 = load i8, ptr %6, align 1
  %20 = and i8 %19, %18
  store i8 %20, ptr %6, align 1
  %21 = or i8 %20, %17
  store i8 %21, ptr %5, align 1
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i32 [ %9, %8 ], [ %13, %16 ]
  %24 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef %23, ptr noundef nonnull %5, i32 noundef 1) #13
  br label %27

27:                                               ; preds = %22, %10
  %28 = phi i32 [ %26, %22 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_select(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @.str.4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @__i2c_transfer(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #13
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.5, i32 noundef %15) #15
  %19 = icmp sgt i32 %15, -1
  %20 = select i1 %19, i32 -121, i32 %15
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i32 [ %20, %17 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @m88ds3103_get_dvb_frontend(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.m88ds3103_dev, ptr %3, i32 0, i32 6
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @m88ds3103_get_i2c_adapter(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.m88ds3103_dev, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m88ds3103_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  tail call void @i2c_unregister_device(ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_init(ptr nocapture noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 10
  store i8 0, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !8
  %14 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 1) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %155

19:                                               ; preds = %1
  %20 = load i8, ptr %7, align 1
  %21 = and i8 %20, -2
  store i8 %21, ptr %7, align 1
  %22 = or i8 %20, 1
  store i8 %22, ptr %6, align 1
  %23 = load ptr, ptr %14, align 4
  %24 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %155

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %27 = load ptr, ptr %14, align 4
  %28 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 1) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %155

31:                                               ; preds = %26
  %32 = load i8, ptr %5, align 1
  %33 = and i8 %32, -2
  store i8 %33, ptr %5, align 1
  store i8 %33, ptr %4, align 1
  %34 = load ptr, ptr %14, align 4
  %35 = call i32 @regmap_bulk_write(ptr noundef %34, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %155

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %38 = load ptr, ptr %14, align 4
  %39 = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 35, ptr noundef nonnull %3, i32 noundef 1) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %155

42:                                               ; preds = %37
  %43 = load i8, ptr %3, align 1
  %44 = and i8 %43, -17
  store i8 %44, ptr %3, align 1
  store i8 %44, ptr %2, align 1
  %45 = load ptr, ptr %14, align 4
  %46 = call i32 @regmap_bulk_write(ptr noundef %45, i32 noundef 35, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %155

48:                                               ; preds = %42
  %49 = load ptr, ptr %14, align 4
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 185, ptr noundef nonnull %8) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %155

52:                                               ; preds = %48
  %53 = load i32, ptr %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %145

55:                                               ; preds = %52
  %56 = load ptr, ptr %14, align 4
  %57 = call i32 @regmap_write(ptr noundef %56, i32 noundef 7, i32 noundef 224) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %155

59:                                               ; preds = %55
  %60 = load ptr, ptr %14, align 4
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 7, i32 noundef 0) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %155

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %65 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 6, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.6, ptr noundef %65) #15
  %66 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 13
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 12
  %71 = load i8, ptr %70, align 8
  %72 = icmp eq i8 %71, 116
  %73 = select i1 %72, ptr @.str.8, ptr @.str.9
  br label %74

74:                                               ; preds = %69, %63
  %75 = phi ptr [ @.str.7, %63 ], [ %73, %69 ]
  %76 = call i32 @request_firmware(ptr noundef nonnull %9, ptr noundef nonnull %75, ptr noundef %64) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10, ptr noundef nonnull %75) #15
  br label %155

79:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.11, ptr noundef nonnull %75) #15
  %80 = load ptr, ptr %14, align 4
  %81 = call i32 @regmap_write(ptr noundef %80, i32 noundef 178, i32 noundef 1) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %152

83:                                               ; preds = %79
  %84 = load ptr, ptr %9, align 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 5
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.m88ds3103_config, ptr %89, i32 0, i32 2
  %91 = load i16, ptr %90, align 4
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %92, -1
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 %85)
  %95 = load ptr, ptr %14, align 4
  %96 = getelementptr inbounds %struct.firmware, ptr %84, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 @regmap_bulk_write(ptr noundef %95, i32 noundef 176, ptr noundef %97, i32 noundef %94) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %111, %87
  %101 = phi i32 [ %98, %87 ], [ %122, %111 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.12, i32 noundef %101) #15
  br label %152

102:                                              ; preds = %111, %87
  %103 = phi i32 [ %109, %111 ], [ %85, %87 ]
  %104 = load ptr, ptr %88, align 8
  %105 = getelementptr inbounds %struct.m88ds3103_config, ptr %104, i32 0, i32 2
  %106 = load i16, ptr %105, align 4
  %107 = zext i16 %106 to i32
  %108 = add i32 %103, 1
  %109 = sub i32 %108, %107
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %102
  %112 = load ptr, ptr %9, align 4
  %113 = load i32, ptr %112, align 4
  %114 = zext i16 %106 to i32
  %115 = add nsw i32 %114, -1
  %116 = call i32 @llvm.smin.i32(i32 %115, i32 %109)
  %117 = load ptr, ptr %14, align 4
  %118 = getelementptr inbounds %struct.firmware, ptr %112, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = sub i32 %113, %109
  %121 = getelementptr i8, ptr %119, i32 %120
  %122 = call i32 @regmap_bulk_write(ptr noundef %117, i32 noundef 176, ptr noundef %121, i32 noundef %116) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %102, label %100

124:                                              ; preds = %102, %83
  %125 = load ptr, ptr %14, align 4
  %126 = call i32 @regmap_write(ptr noundef %125, i32 noundef 178, i32 noundef 0) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %124
  %129 = load ptr, ptr %9, align 4
  call void @release_firmware(ptr noundef %129) #13
  %130 = load ptr, ptr %14, align 4
  %131 = call i32 @regmap_read(ptr noundef %130, i32 noundef 185, ptr noundef nonnull %8) #13
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %128
  %134 = load i32, ptr %8, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.13) #15
  br label %155

137:                                              ; preds = %133
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.14, ptr noundef %65) #15
  %138 = load i32, ptr %8, align 4
  %139 = lshr i32 %138, 4
  %140 = and i32 %139, 15
  %141 = and i32 %138, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.15, i32 noundef %140, i32 noundef %141) #15
  %142 = load i8, ptr %66, align 1
  %143 = icmp eq i8 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  call fastcc void @m88ds3103b_dt_write(ptr noundef %11, i32 noundef 33, i32 noundef 146)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %11, i32 noundef 21, i32 noundef 108)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %11, i32 noundef 23, i32 noundef 193)
  call fastcc void @m88ds3103b_dt_write(ptr noundef %11, i32 noundef 23, i32 noundef 129)
  br label %145

145:                                              ; preds = %144, %137, %52
  store i8 1, ptr %13, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %146, align 1
  %147 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %147, align 1
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %148, align 4
  %149 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %149, align 1
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %150, align 1
  %151 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %151, align 1
  br label %155

152:                                              ; preds = %124, %100, %79
  %153 = phi i32 [ %81, %79 ], [ %101, %100 ], [ %126, %124 ]
  %154 = load ptr, ptr %9, align 4
  call void @release_firmware(ptr noundef %154) #13
  br label %155

155:                                              ; preds = %152, %145, %136, %128, %78, %59, %55, %48, %42, %41, %31, %30, %19, %18
  %156 = phi i32 [ 0, %145 ], [ %24, %19 ], [ %35, %31 ], [ %46, %42 ], [ %50, %48 ], [ %57, %55 ], [ %61, %59 ], [ %76, %78 ], [ %153, %152 ], [ %131, %128 ], [ -22, %136 ], [ %16, %18 ], [ %28, %30 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 8
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 7
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 12
  %15 = load i8, ptr %14, align 8
  %16 = icmp eq i8 %15, 116
  %17 = select i1 %16, i32 41, i32 39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  store i8 0, ptr %9, align 1, !annotation !8
  %18 = getelementptr inbounds %struct.m88ds3103_dev, ptr %11, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %17, ptr noundef nonnull %9, i32 noundef 1) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  br label %64

23:                                               ; preds = %1
  %24 = load i8, ptr %9, align 1
  %25 = and i8 %24, -2
  store i8 %25, ptr %9, align 1
  store i8 %25, ptr %8, align 1
  %26 = load ptr, ptr %18, align 4
  %27 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %17, ptr noundef nonnull %8, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !8
  %30 = load ptr, ptr %18, align 4
  %31 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 1) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %64

34:                                               ; preds = %29
  %35 = load i8, ptr %7, align 1
  %36 = and i8 %35, -2
  store i8 %36, ptr %7, align 1
  store i8 %36, ptr %6, align 1
  %37 = load ptr, ptr %18, align 4
  %38 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef 8, ptr noundef nonnull %6, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %41 = load ptr, ptr %18, align 4
  %42 = call i32 @regmap_bulk_read(ptr noundef %41, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 1) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %64

45:                                               ; preds = %40
  %46 = load i8, ptr %5, align 1
  %47 = and i8 %46, -2
  store i8 %47, ptr %5, align 1
  %48 = or i8 %46, 1
  store i8 %48, ptr %4, align 1
  %49 = load ptr, ptr %18, align 4
  %50 = call i32 @regmap_bulk_write(ptr noundef %49, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %53 = load ptr, ptr %18, align 4
  %54 = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 35, ptr noundef nonnull %3, i32 noundef 1) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %64

57:                                               ; preds = %52
  %58 = load i8, ptr %3, align 1
  %59 = and i8 %58, -17
  store i8 %59, ptr %3, align 1
  %60 = or i8 %58, 16
  store i8 %60, ptr %2, align 1
  %61 = load ptr, ptr %18, align 4
  %62 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef 35, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57, %56, %45, %44, %34, %33, %23, %22
  %65 = phi i32 [ %27, %23 ], [ %38, %34 ], [ %50, %45 ], [ %62, %57 ], [ %20, %22 ], [ %31, %33 ], [ %42, %44 ], [ %54, %56 ]
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi i32 [ %65, %64 ], [ 0, %57 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_frontend(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 10
  %11 = load i8, ptr %10, align 8, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %412, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_multi_reg_write(ptr noundef %15, ptr noundef nonnull @m88ds3103_set_frontend.reset_buf, i32 noundef 2) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %412

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 12
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 116
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load ptr, ptr %14, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 178, ptr noundef nonnull %6) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %412

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 4
  %35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 0, i32 noundef 0) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %412

37:                                               ; preds = %33
  %38 = load ptr, ptr %14, align 4
  %39 = call i32 @regmap_write(ptr noundef %38, i32 noundef 178, i32 noundef 0) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %412

41:                                               ; preds = %37, %30, %22
  %42 = load ptr, ptr %14, align 4
  %43 = call i32 @regmap_write(ptr noundef %42, i32 noundef 6, i32 noundef 224) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %412

45:                                               ; preds = %41, %18
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = call i32 %47(ptr noundef %0) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %412

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = call i32 %54(ptr noundef %0, ptr noundef nonnull %5) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %412

59:                                               ; preds = %52
  %60 = load i32, ptr %9, align 4
  store i32 %60, ptr %5, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8, ptr %19, align 8
  %63 = icmp eq i8 %62, 116
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, 45010000
  %68 = select i1 %67, i32 110250000, i32 96000000
  %69 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 14
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 5
  %73 = select i1 %72, i32 96000000, i32 144000000
  %74 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  call fastcc void @m88ds3103b_select_mclk(ptr noundef %8)
  %78 = udiv i32 %73, 1000
  call fastcc void @m88ds3103b_set_mclk(ptr noundef %8, i32 noundef %78)
  br label %79

79:                                               ; preds = %77, %64
  %80 = load ptr, ptr %14, align 4
  %81 = call i32 @regmap_write(ptr noundef %80, i32 noundef 6, i32 noundef 0) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %412

83:                                               ; preds = %79
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #13
  br label %125

84:                                               ; preds = %61
  %85 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 14
  store i32 96000000, ptr %85, align 4
  %86 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 5
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.m88ds3103_config, ptr %87, i32 0, i32 3
  %89 = load i8, ptr %88, align 2
  switch i8 %89, label %412 [
    i8 0, label %100
    i8 1, label %100
    i8 2, label %90
    i8 3, label %90
  ]

90:                                               ; preds = %84, %84
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, 18000000
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = icmp ult i32 %96, 28000000
  br i1 %99, label %104, label %105

100:                                              ; preds = %84, %84
  %101 = getelementptr inbounds %struct.m88ds3103_config, ptr %87, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %106 [
    i32 96000000, label %103
    i32 144000000, label %104
    i32 192000000, label %105
  ]

103:                                              ; preds = %100, %94, %90
  br label %106

104:                                              ; preds = %100, %98
  br label %106

105:                                              ; preds = %100, %98
  br label %106

106:                                              ; preds = %105, %104, %103, %100
  %107 = phi i32 [ %102, %100 ], [ 192000000, %105 ], [ 144000000, %104 ], [ 96000000, %103 ]
  %108 = phi i8 [ 0, %100 ], [ 3, %105 ], [ 0, %104 ], [ 2, %103 ]
  %109 = phi i8 [ 0, %100 ], [ 0, %105 ], [ 64, %104 ], [ 64, %103 ]
  %110 = shl nuw i8 %108, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %110, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %111 = load ptr, ptr %14, align 4
  %112 = call i32 @regmap_bulk_read(ptr noundef %111, i32 noundef 34, ptr noundef nonnull %3, i32 noundef 1) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %412

115:                                              ; preds = %106
  %116 = load i8, ptr %3, align 1
  %117 = and i8 %116, 63
  store i8 %117, ptr %3, align 1
  %118 = or i8 %117, %110
  store i8 %118, ptr %2, align 1
  %119 = load ptr, ptr %14, align 4
  %120 = call i32 @regmap_bulk_write(ptr noundef %119, i32 noundef 34, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %412

122:                                              ; preds = %115
  %123 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 36, i8 noundef zeroext -64, i8 noundef zeroext %109)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %412

125:                                              ; preds = %122, %83
  %126 = phi i8 [ 0, %83 ], [ %108, %122 ]
  %127 = phi i32 [ %73, %83 ], [ %107, %122 ]
  %128 = load ptr, ptr %14, align 4
  %129 = call i32 @regmap_write(ptr noundef %128, i32 noundef 178, i32 noundef 1) #13
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %412

131:                                              ; preds = %125
  %132 = load ptr, ptr %14, align 4
  %133 = call i32 @regmap_write(ptr noundef %132, i32 noundef 0, i32 noundef 1) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %412

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %137 = load i32, ptr %136, align 4
  switch i32 %137, label %412 [
    i32 5, label %138
    i32 6, label %143
  ]

138:                                              ; preds = %135
  %139 = load i8, ptr %19, align 8
  %140 = icmp eq i8 %139, 116
  %141 = select i1 %140, ptr @m88rs6000_dvbs_init_reg_vals, ptr @m88ds3103_dvbs_init_reg_vals
  %142 = select i1 %140, i32 83, i32 80
  br label %148

143:                                              ; preds = %135
  %144 = load i8, ptr %19, align 8
  %145 = icmp eq i8 %144, 116
  %146 = select i1 %145, ptr @m88rs6000_dvbs2_init_reg_vals, ptr @m88ds3103_dvbs2_init_reg_vals
  %147 = select i1 %145, i32 86, i32 83
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i8 [ %139, %138 ], [ %144, %143 ]
  %150 = phi ptr [ %141, %138 ], [ %146, %143 ]
  %151 = phi i32 [ %142, %138 ], [ %147, %143 ]
  %152 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 7
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %137, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  %156 = call fastcc i32 @m88ds3103_wr_reg_val_tab(ptr noundef %8, ptr noundef nonnull %150, i32 noundef %151)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %412

158:                                              ; preds = %155
  %159 = load i8, ptr %19, align 8
  br label %160

160:                                              ; preds = %158, %148
  %161 = phi i8 [ %159, %158 ], [ %149, %148 ]
  %162 = icmp eq i8 %161, 116
  br i1 %162, label %163, label %222

163:                                              ; preds = %160
  %164 = load i32, ptr %136, align 4
  %165 = icmp eq i32 %164, 6
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %168 = load i32, ptr %167, align 4
  %169 = icmp ult i32 %168, 5000001
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load ptr, ptr %14, align 4
  %172 = call i32 @regmap_write(ptr noundef %171, i32 noundef 192, i32 noundef 4) #13
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %412

174:                                              ; preds = %170
  store i8 9, ptr %4, align 1
  %175 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 34, ptr %175, align 1
  %176 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 -120, ptr %176, align 1
  %177 = load ptr, ptr %14, align 4
  %178 = call i32 @regmap_bulk_write(ptr noundef %177, i32 noundef 138, ptr noundef nonnull %4, i32 noundef 3) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %412

180:                                              ; preds = %174, %166, %163
  %181 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext -99, i8 noundef zeroext 8, i8 noundef zeroext 8)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %412

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %185 = load i8, ptr %184, align 1
  %186 = icmp eq i8 %185, 2
  br i1 %186, label %187, label %212

187:                                              ; preds = %183
  %188 = call fastcc i32 @m88ds3103b_dt_read(ptr noundef %8, i8 noundef zeroext 21)
  %189 = trunc i32 %188 to i8
  store i8 %189, ptr %4, align 1
  %190 = call fastcc i32 @m88ds3103b_dt_read(ptr noundef %8, i8 noundef zeroext 22)
  %191 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %192 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %193 = load i32, ptr %192, align 4
  %194 = icmp ugt i32 %193, 45010000
  %195 = load i8, ptr %4, align 1
  %196 = and i8 %195, -4
  %197 = or i8 %196, 2
  %198 = select i1 %194, i8 %197, i8 %196
  %199 = select i1 %194, i8 115, i8 96
  %200 = select i1 %194, i32 110250000, i32 96000000
  store i8 %198, ptr %4, align 1
  store i8 %199, ptr %191, align 1
  %201 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 14
  store i32 %200, ptr %201, align 4
  %202 = zext i8 %198 to i32
  call fastcc void @m88ds3103b_dt_write(ptr noundef %8, i32 noundef 21, i32 noundef %202)
  %203 = load i8, ptr %191, align 1
  %204 = zext i8 %203 to i32
  call fastcc void @m88ds3103b_dt_write(ptr noundef %8, i32 noundef 22, i32 noundef %204)
  %205 = load ptr, ptr %14, align 4
  %206 = call i32 @regmap_read(ptr noundef %205, i32 noundef 48, ptr noundef nonnull %6) #13
  %207 = load i32, ptr %6, align 4
  %208 = and i32 %207, -129
  store i32 %208, ptr %6, align 4
  %209 = load ptr, ptr %14, align 4
  %210 = and i32 %207, 127
  %211 = call i32 @regmap_write(ptr noundef %209, i32 noundef 48, i32 noundef %210) #13
  br label %212

212:                                              ; preds = %187, %183
  %213 = load ptr, ptr %14, align 4
  %214 = call i32 @regmap_write(ptr noundef %213, i32 noundef 241, i32 noundef 1) #13
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %412

216:                                              ; preds = %212
  %217 = load i8, ptr %184, align 1
  %218 = icmp eq i8 %217, 2
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 48, i8 noundef zeroext -128, i8 noundef zeroext -128)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %412

222:                                              ; preds = %219, %216, %160
  %223 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 5
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr inbounds %struct.m88ds3103_config, ptr %224, i32 0, i32 3
  %226 = load i8, ptr %225, align 2
  switch i8 %226, label %412 [
    i8 0, label %235
    i8 1, label %227
    i8 2, label %228
    i8 3, label %234
  ]

227:                                              ; preds = %222
  br label %235

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %230 = load i8, ptr %229, align 1
  %231 = icmp eq i8 %230, 2
  %232 = select i1 %231, i8 1, i8 2
  %233 = select i1 %231, i8 1, i8 %126
  br label %235

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234, %228, %227, %222
  %236 = phi i8 [ 3, %234 ], [ 6, %227 ], [ 6, %222 ], [ %232, %228 ]
  %237 = phi i8 [ %126, %234 ], [ 32, %227 ], [ %226, %222 ], [ %233, %228 ]
  %238 = getelementptr inbounds %struct.m88ds3103_config, ptr %224, i32 0, i32 5
  %239 = load i8, ptr %238, align 4
  %240 = shl i8 %239, 6
  %241 = and i8 %240, 64
  %242 = or i8 %241, %236
  %243 = load ptr, ptr %14, align 4
  %244 = zext i8 %242 to i32
  %245 = call i32 @regmap_write(ptr noundef %243, i32 noundef 253, i32 noundef %244) #13
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %412

247:                                              ; preds = %235
  %248 = load ptr, ptr %223, align 8
  %249 = getelementptr inbounds %struct.m88ds3103_config, ptr %248, i32 0, i32 3
  %250 = load i8, ptr %249, align 2
  switch i8 %250, label %263 [
    i8 0, label %251
    i8 1, label %251
    i8 2, label %254
  ]

251:                                              ; preds = %247, %247
  %252 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 41, i8 noundef zeroext 32, i8 noundef zeroext %237)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %275, label %412

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %256 = load i8, ptr %255, align 1
  %257 = icmp eq i8 %256, 2
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 41, i8 noundef zeroext 1, i8 noundef zeroext %237)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %412

261:                                              ; preds = %258
  %262 = load ptr, ptr %223, align 8
  br label %263

263:                                              ; preds = %261, %254, %247
  %264 = phi ptr [ %262, %261 ], [ %248, %254 ], [ %248, %247 ]
  %265 = getelementptr inbounds %struct.m88ds3103_config, ptr %264, i32 0, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %127, -1
  %268 = add i32 %267, %266
  %269 = udiv i32 %268, %266
  %270 = lshr i32 %269, 1
  %271 = add nuw i32 %270, 255
  %272 = add i32 %269, 1
  %273 = lshr i32 %272, 1
  %274 = add nuw i32 %273, 255
  br label %275

275:                                              ; preds = %263, %251
  %276 = phi i32 [ %271, %263 ], [ 63, %251 ]
  %277 = phi i32 [ %274, %263 ], [ 63, %251 ]
  %278 = lshr i32 %276, 2
  %279 = and i32 %278, 15
  %280 = load ptr, ptr %14, align 4
  %281 = call i32 @regmap_update_bits_base(ptr noundef %280, i32 noundef 254, i32 noundef 15, i32 noundef %279, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %412

283:                                              ; preds = %275
  %284 = shl i32 %276, 6
  %285 = or i32 %284, %277
  %286 = load ptr, ptr %14, align 4
  %287 = and i32 %285, 255
  %288 = call i32 @regmap_write(ptr noundef %286, i32 noundef 234, i32 noundef %287) #13
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %412

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %292 = load i32, ptr %291, align 4
  %293 = icmp ult i32 %292, 3000001
  %294 = icmp ult i32 %292, 10000001
  %295 = select i1 %294, i32 16, i32 6
  %296 = select i1 %293, i32 32, i32 %295
  %297 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 13
  %298 = load i8, ptr %297, align 1
  %299 = icmp eq i8 %298, 2
  br i1 %299, label %300, label %302

300:                                              ; preds = %290
  %301 = udiv i32 %127, 1000
  call fastcc void @m88ds3103b_set_mclk(ptr noundef %8, i32 noundef %301)
  br label %302

302:                                              ; preds = %300, %290
  %303 = load ptr, ptr %14, align 4
  %304 = call i32 @regmap_write(ptr noundef %303, i32 noundef 195, i32 noundef 8) #13
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %412

306:                                              ; preds = %302
  %307 = load ptr, ptr %14, align 4
  %308 = call i32 @regmap_write(ptr noundef %307, i32 noundef 200, i32 noundef %296) #13
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %412

310:                                              ; preds = %306
  %311 = load ptr, ptr %14, align 4
  %312 = call i32 @regmap_write(ptr noundef %311, i32 noundef 196, i32 noundef 8) #13
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %412

314:                                              ; preds = %310
  %315 = load ptr, ptr %14, align 4
  %316 = call i32 @regmap_write(ptr noundef %315, i32 noundef 199, i32 noundef 0) #13
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %412

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 14
  %320 = load i32, ptr %319, align 4
  %321 = load i32, ptr %291, align 4
  %322 = zext i32 %321 to i64
  %323 = shl nuw nsw i64 %322, 16
  %324 = sdiv i32 %320, 2
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %323, %325
  %327 = icmp ult i64 %326, 4294967296
  br i1 %327, label %328, label %334, !prof !10

328:                                              ; preds = %318
  %329 = trunc i64 %326 to i32
  %330 = udiv i32 %329, %320
  %331 = trunc i32 %330 to i8
  %332 = lshr i32 %330, 8
  %333 = trunc i32 %332 to i8
  br label %340

334:                                              ; preds = %318
  %335 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %320, i64 %326) #16, !srcloc !11
  %336 = extractvalue { i64, i64 } %335, 1
  %337 = trunc i64 %336 to i8
  %338 = lshr i64 %336, 8
  %339 = trunc i64 %338 to i8
  br label %340

340:                                              ; preds = %334, %328
  %341 = phi i8 [ %331, %328 ], [ %337, %334 ]
  %342 = phi i8 [ %333, %328 ], [ %339, %334 ]
  store i8 %341, ptr %4, align 1
  %343 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %342, ptr %343, align 1
  %344 = load ptr, ptr %14, align 4
  %345 = call i32 @regmap_bulk_write(ptr noundef %344, i32 noundef 97, ptr noundef nonnull %4, i32 noundef 2) #13
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %412

347:                                              ; preds = %340
  %348 = load ptr, ptr %223, align 8
  %349 = getelementptr inbounds %struct.m88ds3103_config, ptr %348, i32 0, i32 5
  %350 = load i8, ptr %349, align 4
  %351 = and i8 %350, 2
  %352 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 77, i8 noundef zeroext 2, i8 noundef zeroext %351)
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %412

354:                                              ; preds = %347
  %355 = load ptr, ptr %223, align 8
  %356 = getelementptr inbounds %struct.m88ds3103_config, ptr %355, i32 0, i32 5
  %357 = load i8, ptr %356, align 4
  %358 = shl i8 %357, 2
  %359 = and i8 %358, 16
  %360 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 48, i8 noundef zeroext 16, i8 noundef zeroext %359)
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %412

362:                                              ; preds = %354
  %363 = load ptr, ptr %14, align 4
  %364 = load ptr, ptr %223, align 8
  %365 = getelementptr inbounds %struct.m88ds3103_config, ptr %364, i32 0, i32 8
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %368 = call i32 @regmap_write(ptr noundef %363, i32 noundef 51, i32 noundef %367) #13
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %412

370:                                              ; preds = %362
  %371 = load i8, ptr %297, align 1
  %372 = icmp eq i8 %371, 2
  br i1 %372, label %373, label %382

373:                                              ; preds = %370
  %374 = load i32, ptr %136, align 4
  %375 = icmp eq i32 %374, 5
  %376 = select i1 %375, i8 16, i8 0
  %377 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext 41, i8 noundef zeroext 16, i8 noundef zeroext %376)
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %412

379:                                              ; preds = %373
  %380 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %8, i8 noundef zeroext -55, i8 noundef zeroext 8, i8 noundef zeroext 8)
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %412

382:                                              ; preds = %379, %370
  %383 = load i32, ptr %5, align 4
  %384 = load i32, ptr %9, align 4
  %385 = sub i32 %383, %384
  %386 = shl i32 %385, 16
  %387 = load i32, ptr %319, align 4
  %388 = sdiv i32 %387, 1000
  %389 = icmp slt i32 %386, 1
  %390 = icmp sgt i32 %387, 999
  %391 = xor i1 %390, %389
  %392 = select i1 %391, i32 2000, i32 -2000
  %393 = sdiv i32 %387, %392
  %394 = add i32 %386, %393
  %395 = sdiv i32 %394, %388
  %396 = trunc i32 %395 to i8
  store i8 %396, ptr %4, align 1
  %397 = lshr i32 %395, 8
  %398 = trunc i32 %397 to i8
  store i8 %398, ptr %343, align 1
  %399 = load ptr, ptr %14, align 4
  %400 = call i32 @regmap_bulk_write(ptr noundef %399, i32 noundef 94, ptr noundef nonnull %4, i32 noundef 2) #13
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %412

402:                                              ; preds = %382
  %403 = load ptr, ptr %14, align 4
  %404 = call i32 @regmap_write(ptr noundef %403, i32 noundef 0, i32 noundef 0) #13
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load ptr, ptr %14, align 4
  %408 = call i32 @regmap_write(ptr noundef %407, i32 noundef 178, i32 noundef 0) #13
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %406
  %411 = load i32, ptr %136, align 4
  store i32 %411, ptr %152, align 4
  br label %412

412:                                              ; preds = %410, %406, %402, %382, %379, %373, %362, %354, %347, %340, %314, %310, %306, %302, %283, %275, %258, %251, %235, %222, %219, %212, %180, %174, %170, %155, %135, %131, %125, %122, %115, %114, %84, %79, %56, %49, %41, %37, %33, %26, %13, %1
  %413 = phi i32 [ 0, %410 ], [ %16, %13 ], [ %28, %26 ], [ %35, %33 ], [ %39, %37 ], [ %43, %41 ], [ %50, %49 ], [ %57, %56 ], [ %81, %79 ], [ %129, %125 ], [ %133, %131 ], [ %156, %155 ], [ %172, %170 ], [ %178, %174 ], [ %181, %180 ], [ %214, %212 ], [ %220, %219 ], [ %245, %235 ], [ %281, %275 ], [ %288, %283 ], [ %304, %302 ], [ %308, %306 ], [ %312, %310 ], [ %316, %314 ], [ %345, %340 ], [ %352, %347 ], [ %360, %354 ], [ %368, %362 ], [ %377, %373 ], [ %380, %379 ], [ %400, %382 ], [ %404, %402 ], [ %408, %406 ], [ %259, %258 ], [ %252, %251 ], [ %120, %115 ], [ %123, %122 ], [ -11, %1 ], [ -22, %84 ], [ -22, %135 ], [ -22, %222 ], [ %112, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #13
  ret i32 %413
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @m88ds3103_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 3000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_get_frontend(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 8, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %114, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %114, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %114 [
    i32 5, label %17
    i32 6, label %43
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 224, ptr noundef nonnull %3, i32 noundef 1) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %25 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 230, ptr noundef %24, i32 noundef 1) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %114

27:                                               ; preds = %22
  %28 = load i8, ptr %3, align 1
  %29 = lshr i8 %28, 2
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = load i8, ptr %24, align 1
  %34 = icmp ult i8 %33, -96
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = lshr i8 %33, 5
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds [5 x i32], ptr @switch.table.m88ds3103_get_frontend, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %35, %27
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 0, ptr %42, align 4
  br label %92

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef 126, ptr noundef nonnull %3, i32 noundef 1) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %43
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %51 = call i32 @regmap_bulk_read(ptr noundef %49, i32 noundef 137, ptr noundef %50, i32 noundef 1) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %114

53:                                               ; preds = %48
  %54 = load ptr, ptr %44, align 4
  %55 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %56 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef 242, ptr noundef %55, i32 noundef 1) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %114

58:                                               ; preds = %53
  %59 = load i8, ptr %3, align 1
  %60 = and i8 %59, 15
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, -2
  %63 = icmp ult i32 %62, 9
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds [9 x i32], ptr @switch.table.m88ds3103_get_frontend.18, i32 0, i32 %62
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = lshr i8 %59, 5
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 13
  store i32 %72, ptr %73, align 4
  %74 = lshr i8 %59, 6
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [4 x i32], ptr @switch.table.m88ds3103_get_frontend.19, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %77, ptr %78, align 4
  %79 = load i8, ptr %50, align 1
  %80 = lshr i8 %79, 7
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = load i8, ptr %55, align 1
  %84 = and i8 %83, 3
  %85 = zext i8 %84 to i32
  switch i32 %85, label %92 [
    i32 0, label %86
    i32 1, label %88
    i32 2, label %90
  ]

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  store i32 0, ptr %87, align 4
  br label %92

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  store i32 2, ptr %89, align 4
  br label %92

90:                                               ; preds = %68
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  store i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %88, %86, %68, %41
  %93 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 @regmap_bulk_read(ptr noundef %94, i32 noundef 109, ptr noundef nonnull %3, i32 noundef 2) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = load i8, ptr %3, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %101, %103
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.m88ds3103_dev, ptr %5, i32 0, i32 14
  %107 = load i32, ptr %106, align 4
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %105, %108
  %110 = add nsw i64 %109, 32768
  %111 = lshr i64 %110, 16
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %112, ptr %113, align 4
  br label %114

114:                                              ; preds = %97, %92, %53, %48, %43, %22, %17, %14, %9, %2
  %115 = phi i32 [ 0, %97 ], [ %46, %43 ], [ %51, %48 ], [ %56, %53 ], [ %95, %92 ], [ %20, %17 ], [ %25, %22 ], [ 0, %9 ], [ 0, %2 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %268, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %268 [
    i32 5, label %14
    i32 6, label %23
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 209, ptr noundef nonnull %3) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %268

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %32, label %33

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 13, ptr noundef nonnull %3) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %268

28:                                               ; preds = %23
  %29 = load i32, ptr %3, align 4
  %30 = and i32 %29, 143
  %31 = icmp eq i32 %30, 143
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  store i32 31, ptr %1, align 4
  br label %33

33:                                               ; preds = %32, %28, %19
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 8
  store i32 %34, ptr %35, align 8
  %36 = and i32 %34, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %153, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %12, align 4
  switch i32 %39, label %268 [
    i32 5, label %47
    i32 6, label %40
  ]

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %42 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %43 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %44 = load ptr, ptr %41, align 4
  %45 = call i32 @regmap_bulk_read(ptr noundef %44, i32 noundef 140, ptr noundef nonnull %4, i32 noundef 3) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %85, label %268

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 255, ptr noundef nonnull %3) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %268

52:                                               ; preds = %47
  %53 = load i32, ptr %3, align 4
  %54 = load ptr, ptr %48, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 255, ptr noundef nonnull %3) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %268

57:                                               ; preds = %52
  %58 = load i32, ptr %3, align 4
  %59 = load ptr, ptr %48, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 255, ptr noundef nonnull %3) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %268

62:                                               ; preds = %57
  %63 = add i32 %58, %53
  %64 = load i32, ptr %3, align 4
  %65 = add i32 %64, %63
  %66 = icmp sgt i32 %65, 0
  %67 = select i1 %66, i32 12, i32 -12
  %68 = add i32 %67, %65
  %69 = add i32 %68, 23
  %70 = icmp ult i32 %69, 47
  br i1 %70, label %151, label %71

71:                                               ; preds = %62
  %72 = sdiv i32 %68, 24
  %73 = call i32 @intlog2(i32 noundef %72) #13
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 10000
  %76 = call i32 @intlog2(i32 noundef 10) #13
  %77 = icmp ult i64 %75, 4294967296
  br i1 %77, label %78, label %81, !prof !10

78:                                               ; preds = %71
  %79 = trunc i64 %75 to i32
  %80 = udiv i32 %79, %76
  br label %144

81:                                               ; preds = %71
  %82 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %76, i64 %75) #16, !srcloc !11
  %83 = extractvalue { i64, i64 } %82, 1
  %84 = trunc i64 %83 to i32
  br label %144

85:                                               ; preds = %40
  %86 = load i8, ptr %42, align 1
  %87 = load i8, ptr %4, align 1
  %88 = load i8, ptr %43, align 1
  %89 = load ptr, ptr %41, align 4
  %90 = call i32 @regmap_bulk_read(ptr noundef %89, i32 noundef 140, ptr noundef nonnull %4, i32 noundef 3) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %268

92:                                               ; preds = %85
  %93 = load i8, ptr %42, align 1
  %94 = load i8, ptr %4, align 1
  %95 = load i8, ptr %43, align 1
  %96 = load ptr, ptr %41, align 4
  %97 = call i32 @regmap_bulk_read(ptr noundef %96, i32 noundef 140, ptr noundef nonnull %4, i32 noundef 3) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %268

99:                                               ; preds = %92
  %100 = zext i8 %95 to i32
  %101 = mul nuw nsw i32 %100, %100
  %102 = lshr i32 %101, 1
  %103 = zext i8 %88 to i32
  %104 = mul nuw nsw i32 %103, %103
  %105 = lshr i32 %104, 1
  %106 = add nuw nsw i32 %102, %105
  %107 = zext i8 %93 to i32
  %108 = shl nuw nsw i32 %107, 6
  %109 = and i8 %94, 60
  %110 = zext i8 %109 to i32
  %111 = or i32 %108, %110
  %112 = lshr exact i32 %111, 2
  %113 = zext i8 %86 to i32
  %114 = shl nuw nsw i32 %113, 6
  %115 = and i8 %87, 60
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = lshr exact i32 %117, 2
  %119 = add nuw nsw i32 %112, %118
  %120 = load i8, ptr %42, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 6
  %123 = load i8, ptr %4, align 1
  %124 = and i8 %123, 60
  %125 = zext i8 %124 to i32
  %126 = or i32 %122, %125
  %127 = lshr exact i32 %126, 2
  %128 = load i8, ptr %43, align 1
  %129 = zext i8 %128 to i32
  %130 = mul nuw nsw i32 %129, %129
  %131 = lshr i32 %130, 1
  %132 = add nuw nsw i32 %127, %119
  %133 = add nuw nsw i32 %131, %106
  %134 = udiv i32 %132, 3
  %135 = udiv i32 %133, 3
  %136 = icmp ugt i32 %135, %134
  br i1 %136, label %137, label %151

137:                                              ; preds = %99
  %138 = udiv i32 %135, %134
  %139 = call i32 @intlog10(i32 noundef %138) #13
  %140 = zext i32 %139 to i64
  %141 = mul nuw nsw i64 %140, 10000
  %142 = lshr i64 %141, 24
  %143 = trunc i64 %142 to i32
  br label %144

144:                                              ; preds = %137, %81, %78
  %145 = phi i32 [ %143, %137 ], [ %80, %78 ], [ %84, %81 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %148, align 1
  %149 = zext i32 %145 to i64
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %149, ptr %150, align 1
  br label %155

151:                                              ; preds = %144, %99, %62
  %152 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %152, align 1
  br label %155

153:                                              ; preds = %33
  %154 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %154, align 1
  br label %155

155:                                              ; preds = %153, %151, %147
  %156 = load i32, ptr %35, align 8
  %157 = and i32 %156, 16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %265, label %159

159:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %160 = load i32, ptr %12, align 4
  switch i32 %160, label %254 [
    i32 5, label %161
    i32 6, label %199
  ]

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @regmap_write(ptr noundef %163, i32 noundef 249, i32 noundef 4) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %254

166:                                              ; preds = %161
  %167 = load ptr, ptr %162, align 4
  %168 = call i32 @regmap_read(ptr noundef %167, i32 noundef 248, ptr noundef nonnull %5) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %254

170:                                              ; preds = %166
  %171 = load i32, ptr %5, align 4
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %256

174:                                              ; preds = %170
  %175 = load ptr, ptr %162, align 4
  %176 = call i32 @regmap_bulk_read(ptr noundef %175, i32 noundef 246, ptr noundef nonnull %4, i32 noundef 2) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %254

178:                                              ; preds = %174
  %179 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = shl nuw nsw i32 %181, 8
  %183 = load i8, ptr %4, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %182, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 15
  %188 = load i64, ptr %187, align 8
  %189 = add i64 %188, %186
  store i64 %189, ptr %187, align 8
  %190 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 16
  %191 = load i64, ptr %190, align 8
  %192 = add i64 %191, 8388608
  store i64 %192, ptr %190, align 8
  %193 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 9
  store i32 %185, ptr %193, align 4
  %194 = load i32, ptr %5, align 4
  %195 = or i32 %194, 16
  store i32 %195, ptr %5, align 4
  %196 = load ptr, ptr %162, align 4
  %197 = call i32 @regmap_write(ptr noundef %196, i32 noundef 248, i32 noundef %195) #13
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %256, label %254

199:                                              ; preds = %159
  %200 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 @regmap_bulk_read(ptr noundef %201, i32 noundef 213, ptr noundef nonnull %4, i32 noundef 3) #13
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %254

204:                                              ; preds = %199
  %205 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 16
  %209 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 8
  %213 = or i32 %212, %208
  %214 = load i8, ptr %4, align 1
  %215 = zext i8 %214 to i32
  %216 = or i32 %213, %215
  %217 = icmp ugt i32 %216, 4000
  br i1 %217, label %218, label %256

218:                                              ; preds = %204
  %219 = load ptr, ptr %200, align 4
  %220 = call i32 @regmap_bulk_read(ptr noundef %219, i32 noundef 247, ptr noundef nonnull %4, i32 noundef 2) #13
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %254

222:                                              ; preds = %218
  %223 = load i8, ptr %209, align 1
  %224 = zext i8 %223 to i32
  %225 = shl nuw nsw i32 %224, 8
  %226 = load i8, ptr %4, align 1
  %227 = zext i8 %226 to i32
  %228 = or i32 %225, %227
  %229 = shl nuw nsw i32 %216, 5
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 15
  %232 = load i64, ptr %231, align 8
  %233 = add i64 %232, %230
  store i64 %233, ptr %231, align 8
  %234 = zext i32 %229 to i64
  %235 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 16
  %236 = load i64, ptr %235, align 8
  %237 = add i64 %236, %234
  store i64 %237, ptr %235, align 8
  %238 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 9
  store i32 %228, ptr %238, align 4
  %239 = load ptr, ptr %200, align 4
  %240 = call i32 @regmap_write(ptr noundef %239, i32 noundef 209, i32 noundef 1) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %222
  %243 = load ptr, ptr %200, align 4
  %244 = call i32 @regmap_write(ptr noundef %243, i32 noundef 249, i32 noundef 1) #13
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = load ptr, ptr %200, align 4
  %248 = call i32 @regmap_write(ptr noundef %247, i32 noundef 249, i32 noundef 0) #13
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load ptr, ptr %200, align 4
  %252 = call i32 @regmap_write(ptr noundef %251, i32 noundef 209, i32 noundef 0) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250, %246, %242, %222, %218, %199, %178, %174, %166, %161, %159
  %255 = phi i32 [ -22, %159 ], [ %252, %250 ], [ %248, %246 ], [ %244, %242 ], [ %240, %222 ], [ %220, %218 ], [ %202, %199 ], [ %197, %178 ], [ %176, %174 ], [ %168, %166 ], [ %164, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %268

256:                                              ; preds = %250, %204, %178, %170
  %257 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %257, align 1
  %258 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 15
  %259 = load i64, ptr %258, align 8
  %260 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %259, ptr %260, align 1
  %261 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %261, align 1
  %262 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 16
  %263 = load i64, ptr %262, align 8
  %264 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %263, ptr %264, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %268

265:                                              ; preds = %155
  %266 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %266, align 1
  %267 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %267, align 1
  br label %268

268:                                              ; preds = %265, %256, %254, %92, %85, %57, %52, %47, %40, %38, %23, %14, %11, %2
  %269 = phi i32 [ 0, %256 ], [ 0, %265 ], [ %26, %23 ], [ %17, %14 ], [ -11, %2 ], [ -22, %11 ], [ %255, %254 ], [ -22, %38 ], [ %50, %47 ], [ %55, %52 ], [ %60, %57 ], [ %45, %40 ], [ %90, %85 ], [ %97, %92 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %269
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @m88ds3103_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.m88ds3103_dev, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = call i64 @div_s64_rem(i64 noundef %9, i32 noundef 100, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %11 = trunc i64 %10 to i16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ 0, %2 ]
  store i16 %13, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_diseqc_send_master_cmd(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %83, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -7
  %15 = icmp ult i8 %14, -4
  br i1 %15, label %83, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.m88ds3103_config, ptr %18, i32 0, i32 7
  %20 = load i8, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %21 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 162, ptr noundef nonnull %4, i32 noundef 1) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %83

26:                                               ; preds = %16
  %27 = shl i8 %20, 5
  %28 = and i8 %27, 32
  %29 = load i8, ptr %4, align 1
  %30 = and i8 %29, 31
  store i8 %30, ptr %4, align 1
  %31 = or i8 %30, %28
  store i8 %31, ptr %3, align 1
  %32 = load ptr, ptr %21, align 4
  %33 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 162, ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %26
  %36 = load ptr, ptr %21, align 4
  %37 = load i8, ptr %12, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 163, ptr noundef %1, i32 noundef %38) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %35
  %42 = load ptr, ptr %21, align 4
  %43 = load i8, ptr %12, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 3
  %46 = add nsw i32 %45, -1
  %47 = call i32 @regmap_write(ptr noundef %42, i32 noundef 161, i32 noundef %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %41
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %50, 12
  %52 = load i8, ptr %12, align 1
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %53, 13500
  %55 = add nsw i32 %54, -4000
  call void @usleep_range_state(i32 noundef %55, i32 noundef %54, i32 noundef 2) #13
  store i32 1, ptr %5, align 4
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = sub i32 %51, %56
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %74

59:                                               ; preds = %63, %49
  %60 = load ptr, ptr %21, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef 161, ptr noundef nonnull %5) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, ptr %5, align 4
  %65 = lshr i32 %64, 6
  %66 = and i32 %65, 1
  store i32 %66, ptr %5, align 4
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = sub i32 %51, %67
  %69 = icmp sgt i32 %68, -1
  %70 = icmp ne i32 %66, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %59, label %72

72:                                               ; preds = %63
  %73 = icmp eq i32 %66, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %72, %49
  %75 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %7, i8 noundef zeroext -95, i8 noundef zeroext -64, i8 noundef zeroext 64)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74, %72
  %78 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %7, i8 noundef zeroext -94, i8 noundef zeroext -64, i8 noundef zeroext -128)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, ptr %5, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %77, %74, %59, %41, %35, %26, %25, %11, %2
  %84 = phi i32 [ %33, %26 ], [ %39, %35 ], [ %47, %41 ], [ %78, %77 ], [ %75, %74 ], [ -11, %2 ], [ -22, %11 ], [ -110, %80 ], [ %23, %25 ], [ %61, %59 ]
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %84, %83 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.m88ds3103_config, ptr %13, i32 0, i32 7
  %15 = load i8, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %16 = getelementptr inbounds %struct.m88ds3103_dev, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 162, ptr noundef nonnull %4, i32 noundef 1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %67

21:                                               ; preds = %11
  %22 = shl i8 %15, 5
  %23 = and i8 %22, 32
  %24 = load i8, ptr %4, align 1
  %25 = and i8 %24, 31
  store i8 %25, ptr %4, align 1
  %26 = or i8 %25, %23
  store i8 %26, ptr %3, align 1
  %27 = load ptr, ptr %16, align 4
  %28 = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 162, ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %21
  switch i32 %1, label %67 [
    i32 0, label %32
    i32 1, label %31
  ]

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32 [ 1, %31 ], [ 2, %30 ]
  %34 = load ptr, ptr %16, align 4
  %35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 161, i32 noundef %33) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %38, 4
  call void @usleep_range_state(i32 noundef 8500, i32 noundef 12500, i32 noundef 2) #13
  store i32 1, ptr %5, align 4
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = sub i32 %39, %40
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %58

43:                                               ; preds = %47, %37
  %44 = load ptr, ptr %16, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 161, ptr noundef nonnull %5) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i32, ptr %5, align 4
  %49 = lshr i32 %48, 6
  %50 = and i32 %49, 1
  store i32 %50, ptr %5, align 4
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 %39, %51
  %53 = icmp sgt i32 %52, -1
  %54 = icmp ne i32 %50, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %43, label %56

56:                                               ; preds = %47
  %57 = icmp eq i32 %50, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %56, %37
  %59 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %7, i8 noundef zeroext -95, i8 noundef zeroext -64, i8 noundef zeroext 64)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %56
  %62 = call fastcc i32 @m88ds3103_update_bits(ptr noundef %7, i8 noundef zeroext -94, i8 noundef zeroext -64, i8 noundef zeroext -128)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, ptr %5, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61, %58, %43, %32, %30, %21, %20, %2
  %68 = phi i32 [ %28, %21 ], [ %35, %32 ], [ %62, %61 ], [ %59, %58 ], [ -11, %2 ], [ -22, %30 ], [ -110, %64 ], [ %18, %20 ], [ %45, %43 ]
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %68, %67 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 10
  %10 = load i8, ptr %9, align 8, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  switch i32 %1, label %51 [
    i32 0, label %14
    i32 1, label %13
  ]

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i8 [ 0, %13 ], [ 71, %12 ]
  %16 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.m88ds3103_config, ptr %17, i32 0, i32 7
  %19 = load i8, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %20 = getelementptr inbounds %struct.m88ds3103_dev, ptr %8, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 162, ptr noundef nonnull %6, i32 noundef 1) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %51

25:                                               ; preds = %14
  %26 = shl i8 %19, 5
  %27 = and i8 %26, 32
  %28 = trunc i32 %1 to i8
  %29 = shl nuw i8 %28, 7
  %30 = or i8 %27, %29
  %31 = load i8, ptr %6, align 1
  %32 = and i8 %31, 31
  store i8 %32, ptr %6, align 1
  %33 = or i8 %32, %30
  store i8 %33, ptr %5, align 1
  %34 = load ptr, ptr %20, align 4
  %35 = call i32 @regmap_bulk_write(ptr noundef %34, i32 noundef 162, ptr noundef nonnull %5, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %38 = load ptr, ptr %20, align 4
  %39 = call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef 161, ptr noundef nonnull %4, i32 noundef 1) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %51

42:                                               ; preds = %37
  %43 = and i8 %15, 4
  %44 = xor i8 %15, -1
  %45 = load i8, ptr %4, align 1
  %46 = and i8 %45, %44
  store i8 %46, ptr %4, align 1
  %47 = or i8 %46, %43
  store i8 %47, ptr %3, align 1
  %48 = load ptr, ptr %20, align 4
  %49 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 161, ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42, %41, %25, %24, %12, %2
  %52 = phi i32 [ %35, %25 ], [ %49, %42 ], [ -11, %2 ], [ -22, %12 ], [ %22, %24 ], [ %39, %41 ]
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi i32 [ %52, %51 ], [ 0, %42 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88ds3103_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.m88ds3103_dev, ptr %6, i32 0, i32 10
  %8 = load i8, ptr %7, align 8, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = icmp ult i32 %1, 3
  br i1 %11, label %12, label %42

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.m88ds3103_dev, ptr %6, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.m88ds3103_config, ptr %14, i32 0, i32 9
  %16 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %17 = getelementptr inbounds %struct.m88ds3103_dev, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 162, ptr noundef nonnull %4, i32 noundef 1) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %42

22:                                               ; preds = %12
  %23 = trunc i32 %1 to i24
  %24 = shl i24 %23, 3
  %25 = lshr i24 131072, %24
  %26 = trunc i24 %25 to i8
  %27 = trunc i32 %1 to i24
  %28 = shl i24 %27, 3
  %29 = lshr i24 256, %28
  %30 = trunc i24 %29 to i8
  %31 = and i8 %16, 2
  %32 = xor i8 %31, %26
  %33 = and i8 %16, 1
  %34 = xor i8 %33, %30
  %35 = or i8 %32, %34
  %36 = load i8, ptr %4, align 1
  %37 = and i8 %36, -4
  store i8 %37, ptr %4, align 1
  %38 = or i8 %37, %35
  store i8 %38, ptr %3, align 1
  %39 = load ptr, ptr %17, align 4
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 162, ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %22, %21, %10, %2
  %43 = phi i32 [ %40, %22 ], [ -11, %2 ], [ -22, %10 ], [ %19, %21 ]
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi i32 [ %43, %42 ], [ 0, %22 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_dt_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %10, align 2
  %14 = getelementptr inbounds i8, ptr %10, i32 1
  %15 = trunc i32 %2 to i8
  store i8 %15, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %16 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 0, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %11, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  store i8 0, ptr %9, align 1, !annotation !8
  %23 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 17, ptr noundef nonnull %9, i32 noundef 1) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i8, ptr %9, align 1
  %29 = and i8 %28, -2
  store i8 %29, ptr %9, align 1
  store i8 %29, ptr %8, align 1
  %30 = load ptr, ptr %23, align 4
  %31 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 17, ptr noundef nonnull %8, i32 noundef 1) #13
  br label %32

32:                                               ; preds = %27, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %33 = load ptr, ptr %23, align 4
  %34 = call i32 @regmap_write(ptr noundef %33, i32 noundef 3, i32 noundef 17) #13
  %35 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %11, i32 noundef 1) #13
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %55, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %43 = load i8, ptr %17, align 8
  %44 = zext i8 %43 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.16, i32 noundef %44, i32 noundef %39, i32 noundef %1, i32 noundef %2) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !8
  %45 = load ptr, ptr %23, align 4
  %46 = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef 17, ptr noundef nonnull %7, i32 noundef 1) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i8, ptr %7, align 1
  %50 = and i8 %49, -2
  store i8 %50, ptr %7, align 1
  %51 = or i8 %49, 1
  store i8 %51, ptr %6, align 1
  %52 = load ptr, ptr %23, align 4
  %53 = call i32 @regmap_bulk_write(ptr noundef %52, i32 noundef 17, ptr noundef nonnull %6, i32 noundef 1) #13
  br label %54

54:                                               ; preds = %48, %41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %66

55:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !8
  %56 = load ptr, ptr %23, align 4
  %57 = call i32 @regmap_bulk_read(ptr noundef %56, i32 noundef 17, ptr noundef nonnull %5, i32 noundef 1) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8, ptr %5, align 1
  %61 = and i8 %60, -2
  store i8 %61, ptr %5, align 1
  %62 = or i8 %60, 1
  store i8 %62, ptr %4, align 1
  %63 = load ptr, ptr %23, align 4
  %64 = call i32 @regmap_bulk_write(ptr noundef %63, i32 noundef 17, ptr noundef nonnull %4, i32 noundef 1) #13
  br label %65

65:                                               ; preds = %59, %55
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %66

66:                                               ; preds = %65, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_select_mclk(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 6, i32 8
  %3 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %2, align 4
  %5 = udiv i32 %4, 1000
  %6 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 6, i32 8, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 45010000
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = urem i32 %5, 96
  %11 = icmp ugt i32 %10, 48
  %12 = sub nuw nsw i32 96, %10
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = icmp ne i32 %13, 0
  %15 = urem i32 %5, 93
  %16 = icmp ugt i32 %15, 46
  %17 = sub nuw nsw i32 93, %15
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = icmp ugt i32 %18, %13
  %20 = call i32 @llvm.umax.i32(i32 %18, i32 %13)
  %21 = select i1 %19, i32 92, i32 96
  %22 = or i1 %14, %19
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = select i1 %19, i32 93000000, i32 96000000
  store i32 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %9
  %26 = urem i32 %5, 99
  %27 = icmp ugt i32 %26, 49
  %28 = sub nuw nsw i32 99, %26
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = icmp ugt i32 %29, %20
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 99000000, ptr %3, align 4
  br label %36

32:                                               ; preds = %25, %1
  %33 = phi i32 [ %21, %25 ], [ 115, %1 ]
  %34 = load i32, ptr %3, align 4
  switch i32 %34, label %39 [
    i32 93000000, label %40
    i32 96000000, label %35
    i32 99000000, label %36
    i32 110250000, label %38
  ]

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32, %31
  %37 = phi i32 [ 100, %31 ], [ %33, %32 ]
  br label %40

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %38, %36, %35, %32
  %41 = phi i32 [ 68, %35 ], [ 78, %38 ], [ 68, %39 ], [ 70, %36 ], [ 66, %32 ]
  %42 = phi i32 [ %33, %35 ], [ %33, %38 ], [ %33, %39 ], [ %37, %36 ], [ %33, %32 ]
  %43 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 160, i32 noundef %41) #13
  %46 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %0, i8 noundef zeroext 21)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 5, i32 noundef 64)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 17, i32 noundef 8)
  %47 = and i32 %46, 253
  %48 = or i32 %47, 2
  %49 = select i1 %8, i32 14, i32 10
  %50 = select i1 %8, i32 %48, i32 %47
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 21, i32 noundef %50)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 22, i32 noundef %42)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #13
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 5, i32 noundef 0)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 17, i32 noundef %49)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @m88ds3103b_set_mclk(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %0, i8 noundef zeroext 21)
  %4 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %0, i8 noundef zeroext 22)
  %5 = tail call fastcc i32 @m88ds3103b_dt_read(ptr noundef %0, i8 noundef zeroext 29)
  %6 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.m88ds3103_config, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %82

11:                                               ; preds = %2
  %12 = shl i32 %3, 8
  %13 = and i32 %12, 256
  %14 = and i32 %4, 255
  %15 = or i32 %13, %14
  %16 = mul nuw nsw i32 %15, 36000
  %17 = add nuw nsw i32 %16, 1152000
  %18 = udiv i32 %17, %1
  %19 = icmp ult i32 %18, 33
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = lshr i32 %18, 1
  %22 = trunc i32 %21 to i8
  %23 = sub nsw i32 %18, %21
  %24 = trunc i32 %23 to i8
  br label %32

25:                                               ; preds = %11
  %26 = icmp ult i32 %18, 35
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = trunc i32 %18 to i8
  %29 = add nsw i8 %28, -22
  br label %32

30:                                               ; preds = %25
  %31 = icmp ult i32 %18, 65
  br i1 %31, label %40, label %57

32:                                               ; preds = %27, %20
  %33 = phi i8 [ 11, %27 ], [ 0, %20 ]
  %34 = phi i8 [ 11, %27 ], [ %22, %20 ]
  %35 = phi i8 [ %29, %27 ], [ %24, %20 ]
  %36 = phi i8 [ 3, %27 ], [ 2, %20 ]
  %37 = add nsw i8 %33, -1
  %38 = icmp ult i8 %37, 7
  %39 = select i1 %38, i8 8, i8 %33
  br label %61

40:                                               ; preds = %30
  %41 = lshr i32 %18, 2
  %42 = trunc i32 %41 to i8
  %43 = and i32 %41, 255
  %44 = sub nsw i32 %18, %43
  %45 = udiv i32 %44, 3
  %46 = trunc i32 %45 to i8
  %47 = and i32 %45, 255
  %48 = sub nsw i32 %44, %47
  %49 = lshr i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = sub i32 %48, %49
  %52 = trunc i32 %51 to i8
  %53 = icmp eq i8 %42, 16
  %54 = add i8 %42, -1
  %55 = icmp ult i8 %54, 7
  %56 = select i1 %55, i8 8, i8 %42
  br i1 %53, label %57, label %61

57:                                               ; preds = %40, %30
  %58 = phi i8 [ %52, %40 ], [ 16, %30 ]
  %59 = phi i8 [ %50, %40 ], [ 16, %30 ]
  %60 = phi i8 [ %46, %40 ], [ 16, %30 ]
  br label %61

61:                                               ; preds = %57, %40, %32
  %62 = phi i8 [ 4, %57 ], [ 4, %40 ], [ %36, %32 ]
  %63 = phi i8 [ %58, %57 ], [ %52, %40 ], [ 0, %32 ]
  %64 = phi i8 [ %59, %57 ], [ %50, %40 ], [ %35, %32 ]
  %65 = phi i8 [ %60, %57 ], [ %46, %40 ], [ %34, %32 ]
  %66 = phi i8 [ 0, %57 ], [ %56, %40 ], [ %39, %32 ]
  %67 = icmp eq i8 %65, 16
  %68 = add i8 %65, -1
  %69 = icmp ult i8 %68, 7
  %70 = select i1 %69, i8 8, i8 %65
  %71 = select i1 %67, i8 0, i8 %70
  %72 = icmp eq i8 %64, 16
  %73 = add i8 %64, -1
  %74 = icmp ult i8 %73, 7
  %75 = select i1 %74, i8 8, i8 %64
  %76 = select i1 %72, i8 0, i8 %75
  %77 = icmp eq i8 %63, 16
  br i1 %77, label %159, label %78

78:                                               ; preds = %61
  %79 = add i8 %63, -1
  %80 = icmp ult i8 %79, 7
  %81 = select i1 %80, i8 8, i8 %63
  br label %159

82:                                               ; preds = %2
  %83 = and i32 %4, 255
  %84 = icmp eq i32 %83, 100
  %85 = select i1 %84, i32 99, i32 96
  %86 = icmp eq i32 %83, 92
  %87 = select i1 %86, i32 93, i32 %85
  %88 = mul i32 %87, %1
  %89 = udiv i32 %88, 96
  %90 = shl i32 %3, 8
  %91 = and i32 %90, 256
  %92 = or i32 %91, %83
  %93 = mul nuw nsw i32 %92, 36000
  %94 = add nuw nsw i32 %93, 1152000
  %95 = udiv i32 %94, %89
  %96 = icmp ult i32 %95, 33
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = lshr i32 %95, 1
  %99 = trunc i32 %98 to i8
  %100 = sub nsw i32 %95, %98
  %101 = trunc i32 %100 to i8
  br label %138

102:                                              ; preds = %82
  %103 = icmp ult i32 %95, 49
  br i1 %103, label %104, label %112

104:                                              ; preds = %102
  %105 = trunc i32 %95 to i8
  %106 = udiv i8 %105, 3
  %107 = zext i8 %106 to i32
  %108 = sub nuw nsw i32 %95, %107
  %109 = lshr i32 %108, 1
  %110 = trunc i32 %109 to i8
  %111 = sub nsw i32 %108, %109
  br label %124

112:                                              ; preds = %102
  %113 = icmp ult i32 %95, 65
  br i1 %113, label %114, label %133

114:                                              ; preds = %112
  %115 = lshr i32 %95, 2
  %116 = sub nuw nsw i32 %95, %115
  %117 = trunc i32 %116 to i8
  %118 = udiv i8 %117, 3
  %119 = zext i8 %118 to i32
  %120 = sub nuw nsw i32 %116, %119
  %121 = lshr i32 %120, 1
  %122 = sub nsw i32 %120, %121
  %123 = trunc i32 %122 to i8
  br label %124

124:                                              ; preds = %114, %104
  %125 = phi i32 [ %107, %104 ], [ %115, %114 ]
  %126 = phi i8 [ %110, %104 ], [ %118, %114 ]
  %127 = phi i32 [ %111, %104 ], [ %121, %114 ]
  %128 = phi i8 [ 0, %104 ], [ %123, %114 ]
  %129 = phi i8 [ 3, %104 ], [ 4, %114 ]
  %130 = trunc i32 %127 to i8
  %131 = trunc i32 %125 to i8
  %132 = icmp eq i8 %131, 16
  br i1 %132, label %133, label %138

133:                                              ; preds = %124, %112
  %134 = phi i8 [ %129, %124 ], [ 4, %112 ]
  %135 = phi i8 [ %128, %124 ], [ 16, %112 ]
  %136 = phi i8 [ %130, %124 ], [ 16, %112 ]
  %137 = phi i8 [ %126, %124 ], [ 16, %112 ]
  br label %138

138:                                              ; preds = %133, %124, %97
  %139 = phi i8 [ %134, %133 ], [ %129, %124 ], [ 2, %97 ]
  %140 = phi i8 [ %135, %133 ], [ %128, %124 ], [ 0, %97 ]
  %141 = phi i8 [ %136, %133 ], [ %130, %124 ], [ %101, %97 ]
  %142 = phi i8 [ %137, %133 ], [ %126, %124 ], [ %99, %97 ]
  %143 = phi i8 [ 0, %133 ], [ %131, %124 ], [ 0, %97 ]
  %144 = icmp eq i8 %142, 16
  %145 = add nsw i8 %142, -1
  %146 = icmp ult i8 %145, 8
  %147 = select i1 %146, i8 9, i8 %142
  %148 = select i1 %144, i8 0, i8 %147
  %149 = icmp eq i8 %141, 16
  %150 = add i8 %141, -1
  %151 = icmp ult i8 %150, 8
  %152 = select i1 %151, i8 9, i8 %141
  %153 = select i1 %149, i8 0, i8 %152
  %154 = icmp eq i8 %140, 16
  br i1 %154, label %159, label %155

155:                                              ; preds = %138
  %156 = add i8 %140, -1
  %157 = icmp ult i8 %156, 8
  %158 = select i1 %157, i8 9, i8 %140
  br label %159

159:                                              ; preds = %155, %138, %78, %61
  %160 = phi i8 [ %66, %61 ], [ %66, %78 ], [ %143, %138 ], [ %143, %155 ]
  %161 = phi i8 [ %71, %61 ], [ %71, %78 ], [ %148, %138 ], [ %148, %155 ]
  %162 = phi i8 [ %76, %61 ], [ %76, %78 ], [ %153, %138 ], [ %153, %155 ]
  %163 = phi i8 [ 0, %61 ], [ %81, %78 ], [ 0, %138 ], [ %158, %155 ]
  %164 = phi i8 [ %62, %61 ], [ %62, %78 ], [ %139, %138 ], [ %139, %155 ]
  %165 = add nuw i8 %164, 127
  %166 = trunc i32 %5 to i8
  %167 = and i8 %166, 124
  %168 = or i8 %167, %165
  %169 = or i8 %168, -128
  %170 = shl i8 %163, 4
  %171 = add i8 %170, %162
  %172 = shl i8 %161, 4
  %173 = add i8 %172, %160
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 5, i32 noundef 64)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 17, i32 noundef 8)
  %174 = zext i8 %169 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 29, i32 noundef %174)
  %175 = zext i8 %171 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 30, i32 noundef %175)
  %176 = zext i8 %173 to i32
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 31, i32 noundef %176)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 23, i32 noundef 193)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 23, i32 noundef 129)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #13
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 5, i32 noundef 0)
  tail call fastcc void @m88ds3103b_dt_write(ptr noundef %0, i32 noundef 17, i32 noundef 10)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103_wr_reg_val_tab(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [83 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 83, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(83) %4, i8 0, i32 83, i1 false), !annotation !8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %3
  %7 = add nsw i32 %2, -1
  %8 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %44, %6
  %11 = phi i32 [ 0, %6 ], [ %47, %44 ]
  %12 = phi i32 [ 0, %6 ], [ %45, %44 ]
  %13 = getelementptr %struct.m88ds3103_reg_val, ptr %1, i32 %12
  %14 = getelementptr %struct.m88ds3103_reg_val, ptr %1, i32 %12, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr [83 x i8], ptr %4, i32 0, i32 %11
  store i8 %15, ptr %16, align 1
  %17 = icmp eq i32 %12, %7
  %18 = load i8, ptr %13, align 1
  %19 = zext i8 %18 to i32
  br i1 %17, label %36, label %20

20:                                               ; preds = %10
  %21 = add nuw nsw i32 %12, 1
  %22 = getelementptr %struct.m88ds3103_reg_val, ptr %1, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, %19
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = add i32 %11, 1
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.m88ds3103_config, ptr %29, i32 0, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %32, -1
  %34 = srem i32 %28, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27, %20, %10
  %37 = load ptr, ptr %9, align 4
  %38 = sub i32 %19, %11
  %39 = add i32 %11, 1
  %40 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef %38, ptr noundef nonnull %4, i32 noundef %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %12, 1
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i32 [ %43, %42 ], [ %21, %27 ]
  %46 = phi i32 [ -1, %42 ], [ %11, %27 ]
  %47 = add i32 %46, 1
  %48 = icmp eq i32 %45, %2
  br i1 %48, label %49, label %10

49:                                               ; preds = %44, %36, %3
  %50 = phi i32 [ 0, %3 ], [ %40, %36 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 83, ptr nonnull %4) #13
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88ds3103b_dt_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  store i8 %1, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  %13 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %13, i8 0, i32 16, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 17
  %15 = load i8, ptr %14, align 8
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %16, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 0, ptr %8, align 1, !annotation !8
  %24 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef 17, ptr noundef nonnull %8, i32 noundef 1) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8, ptr %8, align 1
  %30 = and i8 %29, -2
  store i8 %30, ptr %8, align 1
  store i8 %30, ptr %7, align 1
  %31 = load ptr, ptr %24, align 4
  %32 = call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 17, ptr noundef nonnull %7, i32 noundef 1) #13
  br label %33

33:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %34 = load ptr, ptr %24, align 4
  %35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 3, i32 noundef 18) #13
  %36 = getelementptr inbounds %struct.m88ds3103_dev, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %11, i32 noundef 2) #13
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %57, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %44 = load i8, ptr %14, align 8
  %45 = zext i8 %44 to i32
  %46 = zext i8 %1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %40, i32 noundef %46) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !8
  %47 = load ptr, ptr %24, align 4
  %48 = call i32 @regmap_bulk_read(ptr noundef %47, i32 noundef 17, ptr noundef nonnull %6, i32 noundef 1) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i8, ptr %6, align 1
  %52 = and i8 %51, -2
  store i8 %52, ptr %6, align 1
  %53 = or i8 %51, 1
  store i8 %53, ptr %5, align 1
  %54 = load ptr, ptr %24, align 4
  %55 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 17, ptr noundef nonnull %5, i32 noundef 1) #13
  br label %56

56:                                               ; preds = %50, %42
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %70

57:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %58 = load ptr, ptr %24, align 4
  %59 = call i32 @regmap_bulk_read(ptr noundef %58, i32 noundef 17, ptr noundef nonnull %4, i32 noundef 1) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8, ptr %4, align 1
  %63 = and i8 %62, -2
  store i8 %63, ptr %4, align 1
  %64 = or i8 %62, 1
  store i8 %64, ptr %3, align 1
  %65 = load ptr, ptr %24, align 4
  %66 = call i32 @regmap_bulk_write(ptr noundef %65, i32 noundef 17, ptr noundef nonnull %3, i32 noundef 1) #13
  br label %67

67:                                               ; preds = %61, %57
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %68 = load i8, ptr %10, align 1
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %67, %56
  %71 = phi i32 [ -121, %56 ], [ %69, %67 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148652369, i64 2148652649, i64 2148652983, i64 2148653317}
