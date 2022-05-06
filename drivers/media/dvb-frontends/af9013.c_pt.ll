; ModuleID = '/llk/IR/drivers/media/dvb-frontends/af9013.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/af9013.c"
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
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.af9013_reg_mask_val = type { i16, i8, i8 }
%struct.af9013_coeff = type { i32, i32, [24 x i8] }
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
%struct.af9013_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i8, i8, i8, [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.af9013_platform_data = type { i32, i8, i32, i8, i8, i8, [4 x i8], [4 x i8], ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@af9013_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"af9013\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author267 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [52 x i8] c"description=Afatech AF9013 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [26 x i8] c"firmware=dvb-fe-af9013.fw\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@af9013_driver = internal global %struct.i2c_driver { i32 0, ptr @af9013_probe, ptr @af9013_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @af9013_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"af9013\00", align 1
@af9013_probe.regmap_bus = internal constant %struct.regmap_bus { i8 0, ptr @af9013_regmap_write, ptr null, ptr null, ptr null, ptr null, ptr @af9013_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, align 4
@af9013_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@af9013_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Afatech AF9013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @af9013_init, ptr @af9013_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9013_set_frontend, ptr @af9013_get_tune_settings, ptr @af9013_get_frontend, ptr @af9013_read_status, ptr @af9013_read_ber, ptr @af9013_read_signal_strength, ptr @af9013_read_snr, ptr @af9013_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Afatech AF9013 successfully attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"firmware version: %d.%d.%d.%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"dvb-fe-af9013.fw\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"firmware file '%s' not found %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"firmware boot timeout\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@demod_init_tab = internal unnamed_addr constant [77 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -10438, i8 -1, i8 -95 }, %struct.af9013_reg_mask_val { i16 -10437, i8 -1, i8 31 }, %struct.af9013_reg_mask_val { i16 -10436, i8 -16, i8 -96 }, %struct.af9013_reg_mask_val { i16 -10446, i8 8, i8 0 }, %struct.af9013_reg_mask_val { i16 -10447, i8 48, i8 48 }, %struct.af9013_reg_mask_val { i16 -10435, i8 -128, i8 -128 }, %struct.af9013_reg_mask_val { i16 -10432, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 4, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 8, i8 8 }, %struct.af9013_reg_mask_val { i16 -11327, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -28380, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -28379, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -11358, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11357, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -11515, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -11514, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -11516, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -28398, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28387, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28390, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28389, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25650, i8 15, i8 2 }, %struct.af9013_reg_mask_val { i16 -28394, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28382, i8 -1, i8 -48 }, %struct.af9013_reg_mask_val { i16 -11552, i8 -1, i8 -48 }, %struct.af9013_reg_mask_val { i16 -11543, i8 15, i8 13 }, %struct.af9013_reg_mask_val { i16 -11380, i8 -1, i8 -4 }, %struct.af9013_reg_mask_val { i16 -11379, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11378, i8 -1, i8 126 }, %struct.af9013_reg_mask_val { i16 -11377, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11376, i8 -1, i8 47 }, %struct.af9013_reg_mask_val { i16 -11963, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -11863, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -11944, i8 -32, i8 32 }, %struct.af9013_reg_mask_val { i16 -11943, i8 63, i8 6 }, %struct.af9013_reg_mask_val { i16 -11929, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11928, i8 15, i8 7 }, %struct.af9013_reg_mask_val { i16 -11837, i8 -32, i8 0 }, %struct.af9013_reg_mask_val { i16 -11836, i8 63, i8 0 }, %struct.af9013_reg_mask_val { i16 -11835, i8 127, i8 16 }, %struct.af9013_reg_mask_val { i16 -11834, i8 7, i8 2 }, %struct.af9013_reg_mask_val { i16 -12160, i8 124, i8 12 }, %struct.af9013_reg_mask_val { i16 -12159, i8 -16, i8 -112 }, %struct.af9013_reg_mask_val { i16 -12136, i8 -16, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12136, i8 15, i8 3 }, %struct.af9013_reg_mask_val { i16 -9280, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -9273, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -9272, i8 -16, i8 0 }, %struct.af9013_reg_mask_val { i16 -9271, i8 31, i8 1 }, %struct.af9013_reg_mask_val { i16 -11648, i8 -1, i8 -32 }, %struct.af9013_reg_mask_val { i16 -11647, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11646, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11645, i8 -1, i8 -61 }, %struct.af9013_reg_mask_val { i16 -11644, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11643, i8 15, i8 1 }, %struct.af9013_reg_mask_val { i16 -12048, i8 127, i8 26 }, %struct.af9013_reg_mask_val { i16 -12047, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -12046, i8 -1, i8 12 }, %struct.af9013_reg_mask_val { i16 -12031, i8 -32, i8 -64 }, %struct.af9013_reg_mask_val { i16 -12029, i8 15, i8 8 }, %struct.af9013_reg_mask_val { i16 -12040, i8 127, i8 32 }, %struct.af9013_reg_mask_val { i16 -12015, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12015, i8 64, i8 0 }, %struct.af9013_reg_mask_val { i16 -28405, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -28395, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -28404, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -28403, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -28402, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -25608, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25609, i8 -1, i8 5 }, %struct.af9013_reg_mask_val { i16 -25607, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 19 }, %struct.af9013_reg_mask_val { i16 -25645, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }], align 2
@tuner_init_tab_mxl5003d = internal unnamed_addr constant [65 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 9 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 51 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 108 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 61 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 82 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 61 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -94 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -96 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 86 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 86 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], align 2
@tuner_init_tab_mxl5005 = internal unnamed_addr constant [73 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 40 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 115 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 -6 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 35 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 85 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 -6 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25645, i8 -1, i8 -107 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 112 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -5 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 112 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -5 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -109 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 99 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], align 2
@tuner_init_tab_env77h11d5 = internal unnamed_addr constant [61 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25666, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 -21 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -12 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 -21 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 82 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], align 2
@tuner_init_tab_mt2060 = internal unnamed_addr constant [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 117 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 48 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 53 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -112 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -55 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 121 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 -104 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -49 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -52 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -96 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -114 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], align 2
@tuner_init_tab_mc44s803 = internal unnamed_addr constant [77 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25608, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25607, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 31 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 123 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -4 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 107 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -120 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 107 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -98 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -98 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 37 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -10437, i8 8, i8 0 }], align 2
@tuner_init_tab_qt1010 = internal unnamed_addr constant [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 9 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 40 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 32 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 -103 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -59 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -119 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -119 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -51 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -69 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -109 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 -128 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], align 2
@tuner_init_tab_mt2060_2 = internal unnamed_addr constant [62 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -25666, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 53 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -112 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -55 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 121 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 -104 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -49 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 -106 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 -128, i8 0 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], align 2
@tuner_init_tab_tda18271 = internal unnamed_addr constant [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 24 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 44 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -10 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -88 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 127 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -88 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 32 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], align 2
@tuner_init_tab_unknown = internal unnamed_addr constant [67 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 24 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 44 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -10 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], align 2
@coeff_lut = internal constant [12 x %struct.af9013_coeff] [%struct.af9013_coeff { i32 28800000, i32 8000000, [24 x i8] c"\02\8A(\A3\05\14Q\11\00\A2\8F=\00\A2\8A)\00\A2\85\14\01E\14\14" }, %struct.af9013_coeff { i32 28800000, i32 7000000, [24 x i8] c"\028\E3\8E\04q\C7\07\00\8E=U\00\8E8\E4\00\8E4r\01\1Cq2" }, %struct.af9013_coeff { i32 28800000, i32 6000000, [24 x i8] c"\01\E7\9Ez\03\CF<=\00y\EBn\00y\E7\9E\00y\E3\CF\00\F3\CF\0F" }, %struct.af9013_coeff { i32 20480000, i32 8000000, [24 x i8] c"\03\92I&\07$\92\13\00\E4\99n\00\E4\92I\00\E4\8B%\01\C9$%" }, %struct.af9013_coeff { i32 20480000, i32 7000000, [24 x i8] c"\03 \00\01\06@\00\00\00\C8\06@\00\C8\00\00\00\C7\F9\C0\01\90\00\00" }, %struct.af9013_coeff { i32 20480000, i32 6000000, [24 x i8] c"\02\AD\B6\DC\05[m.\00\ABs\13\00\ABm\B7\00\ABh\\\01V\DB\1C" }, %struct.af9013_coeff { i32 28000000, i32 8000000, [24 x i8] c"\02\9C\BC\15\059x\0A\00\A74?\00\A7/\05\00\A7)\CC\01N^\03" }, %struct.af9013_coeff { i32 28000000, i32 7000000, [24 x i8] c"\02I$\92\04\92I\09\00\92M\B7\00\92I%\00\92D\92\01$\92\12" }, %struct.af9013_coeff { i32 28000000, i32 6000000, [24 x i8] c"\01\F5\8D\10\03\EB\1A\08\00}g/\00}cD\00}_Y\00\FA\C6\22" }, %struct.af9013_coeff { i32 25000000, i32 8000000, [24 x i8] c"\02\EC\FB\9D\05\D9\F7\0E\00\BBD\C1\00\BB>\E7\00\BB9\0D\01v}4" }, %struct.af9013_coeff { i32 25000000, i32 7000000, [24 x i8] c"\02\8F\\)\05\1E\B8\14\00\A3\DC)\00\A3\D7\0A\00\A3\D1\EC\01G\AE\05" }, %struct.af9013_coeff { i32 25000000, i32 6000000, [24 x i8] c"\021\BC\B5\04cy\1B\00\8Cs\91\00\8Co-\00\8Cj\CA\01\18\DE\17" }], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_license269], section "llvm.metadata"
@switch.table.af9013_get_frontend = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.af9013_get_frontend.12 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

@__mod_i2c__af9013_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @af9013_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @af9013_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @af9013_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca ptr, align 4
  %6 = alloca [4 x i8], align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1128) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %247, label %13

13:                                               ; preds = %2
  store ptr %0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %11, ptr %14, align 8
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 5
  store i8 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 3
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 7
  store i8 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 8
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 5
  %30 = load i8, ptr %29, align 2, !range !9
  %31 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 9
  store i8 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 10
  %33 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 6
  %34 = load i32, ptr %33, align 1
  store i32 %34, ptr %32, align 1
  %35 = getelementptr %struct.af9013_state, ptr %11, i32 0, i32 11
  %36 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 7
  %37 = load i32, ptr %36, align 1
  store i32 %37, ptr %35, align 1
  %38 = tail call ptr @__regmap_init(ptr noundef %7, ptr noundef nonnull @af9013_probe.regmap_bus, ptr noundef %0, ptr noundef nonnull @af9013_probe.regmap_config, ptr noundef null, ptr noundef null) #13
  %39 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %13
  %42 = ptrtoint ptr %38 to i32
  br label %245

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = tail call ptr @i2c_mux_alloc(ptr noundef %45, ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @af9013_select, ptr noundef nonnull @af9013_deselect) #13
  %47 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 2
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %242, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.i2c_mux_core, ptr %46, i32 0, i32 3
  store ptr %11, ptr %50, align 4
  %51 = load ptr, ptr %47, align 8
  %52 = tail call i32 @i2c_mux_add_adapter(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %242

54:                                               ; preds = %49
  %55 = load i8, ptr %25, align 8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %182, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !8
  %59 = load ptr, ptr %39, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 39102, ptr noundef nonnull %3) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %178

62:                                               ; preds = %57
  %63 = load i32, ptr %3, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %180, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.4, ptr noundef nonnull @af9013_ops) #15
  %67 = call i32 @request_firmware(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %66) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %67) #15
  br label %178

70:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #15
  %71 = load ptr, ptr %5, align 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.firmware, ptr %71, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi i32 [ 0, %74 ], [ %84, %77 ]
  %79 = phi i32 [ 0, %74 ], [ %85, %77 ]
  %80 = getelementptr i8, ptr %76, i32 %78
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %79, %82
  %84 = add nuw i32 %78, 1
  %85 = and i32 %83, 65535
  %86 = icmp eq i32 %84, %72
  br i1 %86, label %87, label %77

87:                                               ; preds = %77, %70
  %88 = phi i32 [ 0, %70 ], [ %85, %77 ]
  %89 = lshr i32 %88, 8
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %4, align 4
  %91 = trunc i32 %88 to i8
  %92 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %91, ptr %92, align 1
  %93 = load i32, ptr %71, align 4
  %94 = lshr i32 %93, 8
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %95, ptr %96, align 2
  %97 = load i32, ptr %71, align 4
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 %98, ptr %99, align 1
  %100 = load ptr, ptr %39, align 4
  %101 = call i32 @regmap_bulk_write(ptr noundef %100, i32 noundef 20732, ptr noundef nonnull %4, i32 noundef 4) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %173

103:                                              ; preds = %87
  %104 = load ptr, ptr %5, align 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = call i32 @llvm.smin.i32(i32 %105, i32 16) #13
  %109 = load ptr, ptr %39, align 4
  %110 = getelementptr inbounds %struct.firmware, ptr %104, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @regmap_bulk_write(ptr noundef %109, i32 noundef 20736, ptr noundef %111, i32 noundef %108) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %117, %107
  %115 = phi i32 [ %118, %117 ], [ %105, %107 ]
  %116 = icmp sgt i32 %115, 16
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = add nsw i32 %115, -16
  %119 = load ptr, ptr %5, align 4
  %120 = load i32, ptr %119, align 4
  %121 = call i32 @llvm.smin.i32(i32 %118, i32 16) #13
  %122 = load ptr, ptr %39, align 4
  %123 = sub i32 %120, %115
  %124 = add i32 %123, 20752
  %125 = getelementptr inbounds %struct.firmware, ptr %119, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = sub i32 %120, %118
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = call i32 @regmap_bulk_write(ptr noundef %122, i32 noundef %124, ptr noundef %128, i32 noundef %121) #13
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %114, label %131

131:                                              ; preds = %117, %107
  %132 = phi i32 [ %112, %107 ], [ %129, %117 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.7, i32 noundef %132) #15
  br label %173

133:                                              ; preds = %114
  %134 = load ptr, ptr %5, align 4
  br label %135

135:                                              ; preds = %133, %103
  %136 = phi ptr [ %134, %133 ], [ %104, %103 ]
  call void @release_firmware(ptr noundef %136) #13
  %137 = load ptr, ptr %39, align 4
  %138 = call i32 @regmap_write(ptr noundef %137, i32 noundef 57861, i32 noundef 1) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %178

140:                                              ; preds = %135
  %141 = call i64 @ktime_get() #13
  %142 = add i64 %141, 1000000000
  %143 = load ptr, ptr %39, align 4
  %144 = call i32 @regmap_read(ptr noundef %143, i32 noundef 39102, ptr noundef nonnull %3) #13
  %145 = freeze i32 %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %152, %140
  %148 = load i32, ptr %3, align 4
  switch i32 %148, label %149 [
    i32 12, label %157
    i32 4, label %157
  ]

149:                                              ; preds = %147
  %150 = call i64 @ktime_get() #13
  %151 = icmp sgt i64 %150, %142
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #13
  %153 = load ptr, ptr %39, align 4
  %154 = call i32 @regmap_read(ptr noundef %153, i32 noundef 39102, ptr noundef nonnull %3) #13
  %155 = freeze i32 %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %147, label %176

157:                                              ; preds = %147, %147
  %158 = and i32 %148, -9
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %168, label %178

160:                                              ; preds = %149
  %161 = load ptr, ptr %39, align 4
  %162 = call i32 @regmap_read(ptr noundef %161, i32 noundef 39102, ptr noundef nonnull %3) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32, ptr %3, align 4
  %166 = and i32 %165, -9
  %167 = icmp eq i32 %166, 4
  br i1 %167, label %168, label %181

168:                                              ; preds = %164, %157
  %169 = phi i32 [ %165, %164 ], [ %148, %157 ]
  switch i32 %169, label %171 [
    i32 4, label %170
    i32 12, label %172
  ]

170:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.8) #15
  br label %178

171:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.9) #15
  br label %178

172:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.10, ptr noundef nonnull @af9013_ops) #15
  br label %180

173:                                              ; preds = %131, %87
  %174 = phi i32 [ %101, %87 ], [ %132, %131 ]
  %175 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %175) #13
  br label %178

176:                                              ; preds = %152
  %177 = freeze i32 %154
  br label %178

178:                                              ; preds = %176, %173, %171, %170, %160, %157, %140, %135, %69, %57
  %179 = phi i32 [ %145, %140 ], [ %162, %160 ], [ -110, %157 ], [ -19, %171 ], [ -19, %170 ], [ %138, %135 ], [ %174, %173 ], [ %67, %69 ], [ %60, %57 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %239

180:                                              ; preds = %172, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %182

181:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %239

182:                                              ; preds = %180, %54
  %183 = load ptr, ptr %39, align 4
  %184 = call i32 @regmap_bulk_read(ptr noundef %183, i32 noundef 20739, ptr noundef nonnull %6, i32 noundef 4) #13
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %233, label %239

186:                                              ; preds = %233
  %187 = getelementptr %struct.af9013_state, ptr %11, i32 0, i32 11, i32 1
  %188 = load i8, ptr %187, align 8
  %189 = load ptr, ptr %39, align 4
  %190 = zext i8 %188 to i32
  %191 = shl nuw nsw i32 %190, 4
  %192 = call i32 @regmap_update_bits_base(ptr noundef %189, i32 noundef 55093, i32 noundef 240, i32 noundef %191, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %186
  %195 = getelementptr %struct.af9013_state, ptr %11, i32 0, i32 11, i32 2
  %196 = load i8, ptr %195, align 1
  %197 = load ptr, ptr %39, align 4
  %198 = zext i8 %196 to i32
  %199 = call i32 @regmap_update_bits_base(ptr noundef %197, i32 noundef 55094, i32 noundef 15, i32 noundef %198, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %194
  %202 = getelementptr %struct.af9013_state, ptr %11, i32 0, i32 11, i32 3
  %203 = load i8, ptr %202, align 2
  %204 = load ptr, ptr %39, align 4
  %205 = zext i8 %203 to i32
  %206 = shl nuw nsw i32 %205, 4
  %207 = call i32 @regmap_update_bits_base(ptr noundef %204, i32 noundef 55094, i32 noundef 240, i32 noundef %206, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %239

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %210, ptr noundef nonnull align 4 dereferenceable(544) @af9013_ops, i32 544, i1 false)
  %211 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 3
  store ptr %11, ptr %211, align 4
  %212 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 8
  store ptr @af9013_get_dvb_frontend, ptr %212, align 4
  %213 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 9
  store ptr @af9013_get_i2c_adapter, ptr %213, align 4
  %214 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 11
  store ptr @af9013_pid_filter, ptr %214, align 4
  %215 = getelementptr inbounds %struct.af9013_platform_data, ptr %9, i32 0, i32 10
  store ptr @af9013_pid_filter_ctrl, ptr %215, align 4
  %216 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 42
  store i8 1, ptr %216, align 8
  %217 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 43
  store i8 1, ptr %217, align 1
  %218 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 46
  store i8 1, ptr %218, align 4
  %219 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 47
  store i8 1, ptr %219, align 1
  %220 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 48
  store i8 1, ptr %220, align 2
  %221 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 3, i32 8, i32 49
  store i8 1, ptr %221, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.1) #15
  %222 = load i8, ptr %6, align 4
  %223 = zext i8 %222 to i32
  %224 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  %228 = load i8, ptr %227, align 2
  %229 = zext i8 %228 to i32
  %230 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %223, i32 noundef %226, i32 noundef %229, i32 noundef %232) #15
  br label %247

233:                                              ; preds = %182
  %234 = load i8, ptr %35, align 1
  %235 = load ptr, ptr %39, align 4
  %236 = zext i8 %234 to i32
  %237 = call i32 @regmap_update_bits_base(ptr noundef %235, i32 noundef 55093, i32 noundef 15, i32 noundef %236, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %186, label %239

239:                                              ; preds = %233, %201, %194, %186, %182, %181, %178
  %240 = phi i32 [ -110, %181 ], [ %184, %182 ], [ %179, %178 ], [ %237, %233 ], [ %192, %186 ], [ %199, %194 ], [ %207, %201 ]
  %241 = load ptr, ptr %47, align 8
  call void @i2c_mux_del_adapters(ptr noundef %241) #13
  br label %242

242:                                              ; preds = %239, %49, %43
  %243 = phi i32 [ %52, %49 ], [ %240, %239 ], [ -12, %43 ]
  %244 = load ptr, ptr %39, align 4
  call void @regmap_exit(ptr noundef %244) #13
  br label %245

245:                                              ; preds = %242, %41
  %246 = phi i32 [ %42, %41 ], [ %243, %242 ]
  call void @kfree(ptr noundef nonnull %11) #13
  br label %247

247:                                              ; preds = %245, %209, %2
  %248 = phi i32 [ 0, %209 ], [ %246, %245 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.af9013_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.af9013_state, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @regmap_exit(ptr noundef %7) #13
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_regmap_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [21 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [21 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i8, ptr %1, align 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = getelementptr i8, ptr %1, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = or i16 %17, %20
  %22 = getelementptr i8, ptr %1, i32 3
  %23 = add i32 %2, -3
  %24 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = icmp ne i8 %25, 0
  %27 = icmp eq i8 %15, -82
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %67, label %29

29:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #13
  %30 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %30, i8 0, i32 18, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %31 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  store i16 %33, ptr %9, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = trunc i32 %2 to i16
  store i16 %35, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %36, align 4
  %37 = icmp ugt i32 %2, 21
  br i1 %37, label %65, label %38

38:                                               ; preds = %29
  %39 = trunc i32 %2 to i8
  %40 = shl nuw nsw i8 %39, 2
  %41 = add nsw i8 %40, -13
  store i8 %15, ptr %8, align 1
  %42 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 1
  store i8 %19, ptr %42, align 1
  %43 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 2
  store i8 %41, ptr %43, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %22, i32 %23, i1 false) #13
  %44 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  br i1 %13, label %48, label %46

46:                                               ; preds = %38
  %47 = call i32 @__i2c_transfer(ptr noundef %45, ptr noundef nonnull %9, i32 noundef 1) #13
  br label %59

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %45, i32 noundef 2) #13
  %52 = load ptr, ptr %44, align 8
  %53 = call i32 @__i2c_transfer(ptr noundef %52, ptr noundef nonnull %9, i32 noundef 1) #13
  %54 = load ptr, ptr %44, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.i2c_lock_operations, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  call void %58(ptr noundef %54, i32 noundef 2) #13
  br label %59

59:                                               ; preds = %48, %46
  %60 = phi i32 [ %47, %46 ], [ %53, %48 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = icmp eq i32 %60, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #13
  br label %155

65:                                               ; preds = %62, %59, %29
  %66 = phi i32 [ %60, %59 ], [ -22, %29 ], [ -121, %62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #13
  br label %155

67:                                               ; preds = %3
  %68 = add i16 %21, -20736
  %69 = icmp ult i16 %68, 16127
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %23, 0
  br i1 %71, label %155, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds i8, ptr %4, i32 3
  %74 = getelementptr inbounds i8, ptr %5, i32 4
  %75 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %78 = getelementptr inbounds [21 x i8], ptr %4, i32 0, i32 1
  %79 = getelementptr inbounds [21 x i8], ptr %4, i32 0, i32 2
  %80 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %81 = getelementptr inbounds i8, ptr %4, i32 4
  br label %121

82:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #13
  %83 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %83, i8 0, i32 18, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %84 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %84, align 4, !annotation !8
  %85 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %86 = load i16, ptr %85, align 2
  store i16 %86, ptr %7, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %87, align 2
  %88 = trunc i32 %2 to i16
  store i16 %88, ptr %84, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %89, align 4
  %90 = icmp ugt i32 %2, 21
  br i1 %90, label %119, label %91

91:                                               ; preds = %82
  %92 = trunc i32 %2 to i8
  %93 = shl nuw nsw i8 %92, 2
  %94 = add nuw i8 %93, 48
  %95 = or i8 %94, -61
  store i8 %15, ptr %6, align 1
  %96 = getelementptr inbounds [21 x i8], ptr %6, i32 0, i32 1
  store i8 %19, ptr %96, align 1
  %97 = getelementptr inbounds [21 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %97, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %83, ptr align 1 %22, i32 %23, i1 false) #13
  %98 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  br i1 %13, label %102, label %100

100:                                              ; preds = %91
  %101 = call i32 @__i2c_transfer(ptr noundef %99, ptr noundef nonnull %7, i32 noundef 1) #13
  br label %113

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.i2c_adapter, ptr %99, i32 0, i32 4
  %104 = load ptr, ptr %103, align 8
  %105 = load ptr, ptr %104, align 4
  call void %105(ptr noundef %99, i32 noundef 2) #13
  %106 = load ptr, ptr %98, align 8
  %107 = call i32 @__i2c_transfer(ptr noundef %106, ptr noundef nonnull %7, i32 noundef 1) #13
  %108 = load ptr, ptr %98, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 4
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.i2c_lock_operations, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  call void %112(ptr noundef %108, i32 noundef 2) #13
  br label %113

113:                                              ; preds = %102, %100
  %114 = phi i32 [ %101, %100 ], [ %107, %102 ]
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = icmp eq i32 %114, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #13
  br label %155

119:                                              ; preds = %116, %113, %82
  %120 = phi i32 [ %114, %113 ], [ -22, %82 ], [ -121, %116 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #13
  br label %155

121:                                              ; preds = %152, %72
  %122 = phi i32 [ 0, %72 ], [ %153, %152 ]
  %123 = trunc i32 %122 to i16
  %124 = add i16 %21, %123
  %125 = getelementptr i8, ptr %22, i32 %122
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %81, i8 0, i32 17, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  store i32 4, ptr %74, align 4, !annotation !8
  %126 = load i16, ptr %75, align 2
  store i16 %126, ptr %5, align 4
  store i16 0, ptr %76, align 2
  store ptr %4, ptr %77, align 4
  %127 = lshr i16 %124, 8
  %128 = trunc i16 %127 to i8
  store i8 %128, ptr %4, align 1
  %129 = trunc i16 %124 to i8
  store i8 %129, ptr %78, align 1
  store i8 3, ptr %79, align 1
  %130 = load i8, ptr %125, align 1
  store i8 %130, ptr %73, align 1
  %131 = load ptr, ptr %80, align 8
  br i1 %13, label %134, label %132

132:                                              ; preds = %121
  %133 = call i32 @__i2c_transfer(ptr noundef %131, ptr noundef nonnull %5, i32 noundef 1) #13
  br label %145

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.i2c_adapter, ptr %131, i32 0, i32 4
  %136 = load ptr, ptr %135, align 8
  %137 = load ptr, ptr %136, align 4
  call void %137(ptr noundef %131, i32 noundef 2) #13
  %138 = load ptr, ptr %80, align 8
  %139 = call i32 @__i2c_transfer(ptr noundef %138, ptr noundef nonnull %5, i32 noundef 1) #13
  %140 = load ptr, ptr %80, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 4
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.i2c_lock_operations, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  call void %144(ptr noundef %140, i32 noundef 2) #13
  br label %145

145:                                              ; preds = %134, %132
  %146 = phi i32 [ %133, %132 ], [ %139, %134 ]
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = icmp eq i32 %146, 1
  br i1 %149, label %152, label %150

150:                                              ; preds = %148, %145
  %151 = phi i32 [ %146, %145 ], [ -121, %148 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #13
  br label %155

152:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #13
  %153 = add nuw i32 %122, 1
  %154 = icmp eq i32 %153, %23
  br i1 %154, label %155, label %121

155:                                              ; preds = %152, %150, %119, %118, %70, %65, %64
  %156 = phi i32 [ 0, %64 ], [ 0, %118 ], [ %66, %65 ], [ %120, %119 ], [ %151, %150 ], [ 0, %70 ], [ 0, %152 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_regmap_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca [3 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i8, ptr %1, align 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = getelementptr i8, ptr %1, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = or i16 %17, %20
  %22 = getelementptr inbounds %struct.af9013_state, ptr %11, i32 0, i32 7
  %23 = load i8, ptr %22, align 4
  %24 = icmp ne i8 %23, 0
  %25 = icmp eq i8 %15, -82
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %113, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %7, i32 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %38 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %39 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  br label %80

41:                                               ; preds = %5
  %42 = trunc i32 %4 to i8
  %43 = shl i8 %42, 2
  %44 = add i8 %43, -2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %45 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #13, !annotation !8
  %46 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  store i16 %47, ptr %9, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %48, align 2
  store i16 3, ptr %45, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %47, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  %53 = trunc i32 %4 to i16
  store i16 %53, ptr %52, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %3, ptr %54, align 4
  store i8 %15, ptr %8, align 1
  %55 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 1
  store i8 %19, ptr %55, align 1
  %56 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 2
  store i8 %44, ptr %56, align 1
  %57 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  br i1 %13, label %61, label %59

59:                                               ; preds = %41
  %60 = call i32 @__i2c_transfer(ptr noundef %58, ptr noundef nonnull %9, i32 noundef 2) #13
  br label %72

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 4
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %63, align 4
  call void %64(ptr noundef %58, i32 noundef 2) #13
  %65 = load ptr, ptr %57, align 8
  %66 = call i32 @__i2c_transfer(ptr noundef %65, ptr noundef nonnull %9, i32 noundef 2) #13
  %67 = load ptr, ptr %57, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.i2c_lock_operations, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  call void %71(ptr noundef %67, i32 noundef 2) #13
  br label %72

72:                                               ; preds = %61, %59
  %73 = phi i32 [ %60, %59 ], [ %66, %61 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = icmp eq i32 %73, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #13
  br label %113

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %73, %72 ], [ -121, %75 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #13
  br label %113

80:                                               ; preds = %110, %29
  %81 = phi i32 [ 0, %29 ], [ %111, %110 ]
  %82 = trunc i32 %81 to i16
  %83 = add i16 %21, %82
  %84 = getelementptr i8, ptr %3, i32 %81
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #13, !annotation !8
  %85 = load i16, ptr %31, align 2
  store i16 %85, ptr %7, align 4
  store i16 0, ptr %32, align 2
  store i16 3, ptr %30, align 4
  store ptr %6, ptr %33, align 4
  store i16 %85, ptr %34, align 4
  store i16 1, ptr %35, align 2
  store i16 1, ptr %36, align 4
  store ptr %84, ptr %37, align 4
  %86 = lshr i16 %83, 8
  %87 = trunc i16 %86 to i8
  store i8 %87, ptr %6, align 1
  %88 = trunc i16 %83 to i8
  store i8 %88, ptr %38, align 1
  store i8 2, ptr %39, align 1
  %89 = load ptr, ptr %40, align 8
  br i1 %13, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 @__i2c_transfer(ptr noundef %89, ptr noundef nonnull %7, i32 noundef 2) #13
  br label %103

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %94, align 4
  call void %95(ptr noundef %89, i32 noundef 2) #13
  %96 = load ptr, ptr %40, align 8
  %97 = call i32 @__i2c_transfer(ptr noundef %96, ptr noundef nonnull %7, i32 noundef 2) #13
  %98 = load ptr, ptr %40, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %98, i32 0, i32 4
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.i2c_lock_operations, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  call void %102(ptr noundef %98, i32 noundef 2) #13
  br label %103

103:                                              ; preds = %92, %90
  %104 = phi i32 [ %91, %90 ], [ %97, %92 ]
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = icmp eq i32 %104, 2
  br i1 %107, label %110, label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ %104, %103 ], [ -121, %106 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #13
  br label %113

110:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #13
  %111 = add nuw i32 %81, 1
  %112 = icmp eq i32 %111, %4
  br i1 %112, label %113, label %80

113:                                              ; preds = %110, %108, %78, %77, %27
  %114 = phi i32 [ 0, %77 ], [ %79, %78 ], [ %109, %108 ], [ 0, %27 ], [ 0, %110 ]
  ret i32 %114
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 119831, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 120327, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 119831, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 120327, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @af9013_get_dvb_frontend(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.af9013_state, ptr %3, i32 0, i32 3
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @af9013_get_i2c_adapter(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.af9013_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %8 = icmp ugt i16 %2, 8191
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = trunc i16 %2 to i8
  store i8 %10, ptr %5, align 2
  %11 = lshr i16 %2, 8
  %12 = trunc i16 %11 to i8
  %13 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.af9013_state, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 54533, ptr noundef nonnull %5, i32 noundef 2) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load ptr, ptr %14, align 4
  %20 = shl i32 %3, 5
  %21 = zext i8 %1 to i32
  %22 = or i32 %20, %21
  %23 = call i32 @regmap_write(ptr noundef %19, i32 noundef 54532, i32 noundef %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18, %9, %4
  %26 = phi i32 [ %16, %9 ], [ %23, %18 ], [ 0, %4 ]
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %26, %25 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_pid_filter_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 54531, i32 noundef 1, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #13
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 55098, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %118

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 54295, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %118

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 54295, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %118

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 10
  %20 = tail call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 39922, ptr noundef %19, i32 noundef 4) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %118 [
    i32 28800000, label %28
    i32 20480000, label %25
    i32 28000000, label %26
    i32 25000000, label %27
  ]

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %26, %25, %22
  %29 = phi i32 [ 3, %27 ], [ 2, %26 ], [ 1, %25 ], [ 0, %22 ]
  %30 = load ptr, ptr %5, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 39890, i32 noundef 15, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %118

33:                                               ; preds = %28
  %34 = load i32, ptr %23, align 4
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 19
  %37 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %36) #16, !srcloc !10
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %36, i64 %37, i32 0) #16, !srcloc !11
  %39 = extractvalue { i64, i32 } %38, 0
  %40 = lshr i64 %39, 18
  %41 = trunc i64 %40 to i8
  store i8 %41, ptr %2, align 1
  %42 = lshr i64 %39, 26
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %43, ptr %44, align 1
  %45 = lshr i64 %39, 34
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %46, ptr %47, align 1
  %48 = load ptr, ptr %5, align 4
  %49 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 53632, ptr noundef nonnull %2, i32 noundef 3) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %118

51:                                               ; preds = %54
  %52 = add nuw nsw i32 %55, 1
  %53 = icmp eq i32 %52, 77
  br i1 %53, label %68, label %54

54:                                               ; preds = %51, %33
  %55 = phi i32 [ %52, %51 ], [ 0, %33 ]
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %55
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %55, i32 1
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %55, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %59, i32 noundef %62, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %51, label %118

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 5
  %70 = load i8, ptr %69, align 4
  switch i8 %70, label %78 [
    i8 3, label %79
    i8 13, label %71
    i8 30, label %71
    i8 -79, label %71
    i8 -127, label %72
    i8 -126, label %73
    i8 -123, label %74
    i8 -122, label %75
    i8 -94, label %75
    i8 -109, label %76
    i8 -100, label %77
    i8 -77, label %77
  ]

71:                                               ; preds = %68, %68, %68
  br label %79

72:                                               ; preds = %68
  br label %79

73:                                               ; preds = %68
  br label %79

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68, %68
  br label %79

76:                                               ; preds = %68
  br label %79

77:                                               ; preds = %68, %68
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %77, %76, %75, %74, %73, %72, %71, %68
  %80 = phi i32 [ 67, %78 ], [ 72, %77 ], [ 62, %76 ], [ 72, %75 ], [ 77, %74 ], [ 72, %73 ], [ 61, %72 ], [ 73, %71 ], [ 65, %68 ]
  %81 = phi ptr [ @tuner_init_tab_unknown, %78 ], [ @tuner_init_tab_tda18271, %77 ], [ @tuner_init_tab_mt2060_2, %76 ], [ @tuner_init_tab_qt1010, %75 ], [ @tuner_init_tab_mc44s803, %74 ], [ @tuner_init_tab_mt2060, %73 ], [ @tuner_init_tab_env77h11d5, %72 ], [ @tuner_init_tab_mxl5005, %71 ], [ @tuner_init_tab_mxl5003d, %68 ]
  br label %85

82:                                               ; preds = %85
  %83 = add nuw nsw i32 %86, 1
  %84 = icmp eq i32 %83, %80
  br i1 %84, label %99, label %85

85:                                               ; preds = %82, %79
  %86 = phi i32 [ 0, %79 ], [ %83, %82 ]
  %87 = load ptr, ptr %5, align 4
  %88 = getelementptr %struct.af9013_reg_mask_val, ptr %81, i32 %86
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr %struct.af9013_reg_mask_val, ptr %81, i32 %86, i32 1
  %92 = load i8, ptr %91, align 2
  %93 = zext i8 %92 to i32
  %94 = getelementptr %struct.af9013_reg_mask_val, ptr %81, i32 %86, i32 2
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef %90, i32 noundef %93, i32 noundef %96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %82, label %118

99:                                               ; preds = %82
  %100 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 8
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 7
  %103 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 7
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 1
  %107 = or i32 %106, 8
  %108 = select i1 %102, i32 %107, i32 %106
  %109 = load ptr, ptr %5, align 4
  %110 = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 54528, i32 noundef 14, i32 noundef %108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load ptr, ptr %5, align 4
  %114 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 55088, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 28
  store i8 1, ptr %117, align 4
  br label %118

118:                                              ; preds = %116, %112, %99, %85, %54, %33, %28, %22, %17, %13, %9, %1
  %119 = phi i32 [ 0, %116 ], [ %7, %1 ], [ %11, %9 ], [ %15, %13 ], [ %20, %17 ], [ %31, %28 ], [ %49, %33 ], [ %110, %99 ], [ %114, %112 ], [ -22, %22 ], [ %97, %85 ], [ %66, %54 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #13
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 55088, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 54295, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 44799, i32 noundef 1) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = tail call i64 @ktime_get() #13
  %19 = add i64 %18, 1000000000
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 54295, ptr noundef nonnull %2) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %33, %17
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = call i64 @ktime_get() #13
  %29 = icmp sgt i64 %28, %19
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 4
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 54295, ptr noundef nonnull %2) #13
  br label %37

33:                                               ; preds = %27
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #13
  %34 = load ptr, ptr %5, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 54295, ptr noundef nonnull %2) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %23, label %37

37:                                               ; preds = %33, %30, %23, %17
  %38 = phi i32 [ %32, %30 ], [ %21, %17 ], [ 0, %23 ], [ %35, %33 ]
  %39 = icmp ne i32 %38, 0
  %40 = load i32, ptr %2, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %39, i1 true, i1 %42
  %44 = select i1 %43, i32 0, i32 -110
  %45 = select i1 %39, i32 %38, i32 %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %42, true
  %48 = select i1 %46, i1 true, i1 %47
  %49 = select i1 %46, i32 %45, i32 -110
  br i1 %48, label %54, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr %5, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 55098, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50, %37, %13, %9, %1
  %55 = phi i32 [ %7, %1 ], [ %11, %9 ], [ %15, %13 ], [ %49, %37 ], [ %52, %50 ]
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_set_frontend(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %240

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %240 [
    i32 28800000, label %21
    i32 20480000, label %22
    i32 28000000, label %23
    i32 25000000, label %24
  ]

21:                                               ; preds = %18
  switch i32 %14, label %240 [
    i32 8000000, label %33
    i32 7000000, label %25
    i32 6000000, label %26
  ]

22:                                               ; preds = %18
  switch i32 %14, label %240 [
    i32 8000000, label %33
    i32 7000000, label %27
    i32 6000000, label %28
  ]

23:                                               ; preds = %18
  switch i32 %14, label %240 [
    i32 8000000, label %33
    i32 7000000, label %29
    i32 6000000, label %30
  ]

24:                                               ; preds = %18
  switch i32 %14, label %240 [
    i32 8000000, label %33
    i32 7000000, label %31
    i32 6000000, label %32
  ]

25:                                               ; preds = %21
  br label %33

26:                                               ; preds = %21
  br label %33

27:                                               ; preds = %22
  br label %33

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %23
  br label %33

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %34 = phi i32 [ 0, %21 ], [ 3, %22 ], [ 6, %23 ], [ 9, %24 ], [ 1, %25 ], [ 2, %26 ], [ 4, %27 ], [ 5, %28 ], [ 7, %29 ], [ 8, %30 ], [ 10, %31 ], [ 11, %32 ]
  %35 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr [12 x %struct.af9013_coeff], ptr @coeff_lut, i32 0, i32 %34, i32 2
  %38 = tail call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 44544, ptr noundef %37, i32 noundef 24) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %240

40:                                               ; preds = %33
  %41 = load i32, ptr %13, align 4
  %42 = load i32, ptr %15, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %12
  %45 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 28
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %115, label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = call i32 %50(ptr noundef %0, ptr noundef nonnull %3) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %240

55:                                               ; preds = %52
  %56 = load i32, ptr %3, align 4
  br label %60

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %3, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  %62 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 1
  br label %65

65:                                               ; preds = %65, %60
  %66 = phi i32 [ %61, %60 ], [ %68, %65 ]
  %67 = icmp ugt i32 %66, %64
  %68 = sub i32 %66, %63
  br i1 %67, label %65, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 9
  %71 = load i8, ptr %70, align 2, !range !9
  %72 = icmp eq i8 %71, 0
  %73 = sext i32 %66 to i64
  %74 = shl nsw i64 %73, 23
  %75 = zext i32 %64 to i64
  %76 = add nsw i64 %74, %75
  %77 = icmp ult i64 %76, 4294967296
  br i1 %77, label %78, label %81, !prof !12

78:                                               ; preds = %69
  %79 = trunc i64 %76 to i32
  %80 = udiv i32 %79, %63
  br label %85

81:                                               ; preds = %69
  %82 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %63, i64 %76) #16, !srcloc !13
  %83 = extractvalue { i64, i64 } %82, 1
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i32 [ %80, %78 ], [ %84, %81 ]
  %87 = sub i32 8388608, %86
  %88 = select i1 %72, i32 %87, i32 %86
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %2, align 1
  %90 = lshr i32 %88, 8
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %91, ptr %92, align 1
  %93 = lshr i32 %88, 16
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 127
  %96 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = sub i32 8388608, %88
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 %98, ptr %99, align 1
  %100 = lshr i32 %97, 8
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 %101, ptr %102, align 1
  %103 = lshr i32 %97, 16
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 127
  %106 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 %105, ptr %106, align 1
  %107 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 @regmap_bulk_write(ptr noundef %108, i32 noundef 53568, ptr noundef nonnull %2, i32 noundef 3) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %240

111:                                              ; preds = %85
  %112 = load ptr, ptr %107, align 4
  %113 = call i32 @regmap_bulk_write(ptr noundef %112, i32 noundef 39911, ptr noundef nonnull %2, i32 noundef 6) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %240

115:                                              ; preds = %111, %44
  %116 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 54064, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %240

120:                                              ; preds = %115
  %121 = load ptr, ptr %116, align 4
  %122 = call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 54535, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %240

124:                                              ; preds = %120
  %125 = load ptr, ptr %116, align 4
  %126 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 39934, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %240

128:                                              ; preds = %124
  %129 = load ptr, ptr %116, align 4
  %130 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 39874, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %240

132:                                              ; preds = %128
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false)
  %133 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %134 = load i32, ptr %133, align 4
  switch i32 %134, label %137 [
    i32 2, label %135
    i32 0, label %138
    i32 1, label %136
  ]

135:                                              ; preds = %132
  br label %138

136:                                              ; preds = %132
  store i8 1, ptr %2, align 1
  br label %138

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %136, %135, %132
  %139 = phi i8 [ 0, %137 ], [ 1, %136 ], [ 0, %132 ], [ 0, %135 ]
  %140 = phi i1 [ true, %137 ], [ false, %136 ], [ false, %132 ], [ true, %135 ]
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %142 = load i32, ptr %141, align 4
  switch i32 %142, label %150 [
    i32 4, label %143
    i32 0, label %151
    i32 1, label %144
    i32 2, label %146
    i32 3, label %148
  ]

143:                                              ; preds = %138
  br label %151

144:                                              ; preds = %138
  %145 = or i8 %139, 4
  store i8 %145, ptr %2, align 1
  br label %151

146:                                              ; preds = %138
  %147 = or i8 %139, 8
  store i8 %147, ptr %2, align 1
  br label %151

148:                                              ; preds = %138
  %149 = or i8 %139, 12
  store i8 %149, ptr %2, align 1
  br label %151

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %148, %146, %144, %143, %138
  %152 = phi i8 [ %139, %150 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ], [ %139, %138 ], [ %139, %143 ]
  %153 = phi i1 [ true, %150 ], [ %140, %148 ], [ %140, %146 ], [ %140, %144 ], [ %140, %138 ], [ true, %143 ]
  %154 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %155 = load i32, ptr %154, align 4
  switch i32 %155, label %163 [
    i32 4, label %156
    i32 0, label %164
    i32 1, label %157
    i32 2, label %159
    i32 3, label %161
  ]

156:                                              ; preds = %151
  br label %164

157:                                              ; preds = %151
  %158 = or i8 %152, 16
  store i8 %158, ptr %2, align 1
  br label %164

159:                                              ; preds = %151
  %160 = or i8 %152, 32
  store i8 %160, ptr %2, align 1
  br label %164

161:                                              ; preds = %151
  %162 = or i8 %152, 48
  store i8 %162, ptr %2, align 1
  br label %164

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %161, %159, %157, %156, %151
  %165 = phi i1 [ true, %163 ], [ %153, %161 ], [ %153, %159 ], [ %153, %157 ], [ %153, %151 ], [ true, %156 ]
  %166 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %167 = load i32, ptr %166, align 4
  switch i32 %167, label %171 [
    i32 6, label %168
    i32 0, label %172
    i32 1, label %169
    i32 3, label %170
  ]

168:                                              ; preds = %164
  br label %172

169:                                              ; preds = %164
  br label %172

170:                                              ; preds = %164
  br label %172

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %170, %169, %168, %164
  %173 = phi i8 [ 0, %171 ], [ -128, %170 ], [ 64, %169 ], [ 0, %164 ], [ 0, %168 ]
  %174 = phi i1 [ true, %171 ], [ %165, %170 ], [ %165, %169 ], [ %165, %164 ], [ true, %168 ]
  %175 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  %176 = or i8 %173, 16
  store i8 %176, ptr %175, align 1
  %177 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %178 = load i32, ptr %177, align 4
  switch i32 %178, label %188 [
    i32 9, label %179
    i32 1, label %189
    i32 2, label %180
    i32 3, label %182
    i32 5, label %184
    i32 7, label %186
  ]

179:                                              ; preds = %172
  br label %189

180:                                              ; preds = %172
  %181 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 1, ptr %181, align 1
  br label %189

182:                                              ; preds = %172
  %183 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 2, ptr %183, align 1
  br label %189

184:                                              ; preds = %172
  %185 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 3, ptr %185, align 1
  br label %189

186:                                              ; preds = %172
  %187 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 4, ptr %187, align 1
  br label %189

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188, %186, %184, %182, %180, %179, %172
  %190 = phi i8 [ 0, %188 ], [ 4, %186 ], [ 3, %184 ], [ 2, %182 ], [ 1, %180 ], [ 0, %172 ], [ 0, %179 ]
  %191 = phi i1 [ true, %188 ], [ %174, %186 ], [ %174, %184 ], [ %174, %182 ], [ %174, %180 ], [ %174, %172 ], [ true, %179 ]
  %192 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %193 = load i32, ptr %192, align 4
  switch i32 %193, label %207 [
    i32 9, label %194
    i32 1, label %208
    i32 2, label %195
    i32 3, label %198
    i32 5, label %201
    i32 7, label %204
    i32 0, label %208
  ]

194:                                              ; preds = %189
  br label %208

195:                                              ; preds = %189
  %196 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %197 = or i8 %190, 8
  store i8 %197, ptr %196, align 1
  br label %208

198:                                              ; preds = %189
  %199 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %200 = or i8 %190, 16
  store i8 %200, ptr %199, align 1
  br label %208

201:                                              ; preds = %189
  %202 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %203 = or i8 %190, 24
  store i8 %203, ptr %202, align 1
  br label %208

204:                                              ; preds = %189
  %205 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %206 = or i8 %190, 32
  store i8 %206, ptr %205, align 1
  br label %208

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %204, %201, %198, %195, %194, %189, %189
  %209 = phi i1 [ true, %207 ], [ %191, %204 ], [ %191, %201 ], [ %191, %198 ], [ %191, %195 ], [ %191, %189 ], [ %191, %189 ], [ true, %194 ]
  %210 = load i32, ptr %13, align 4
  switch i32 %210, label %240 [
    i32 6000000, label %215
    i32 7000000, label %212
    i32 8000000, label %211
  ]

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %211, %208
  %213 = phi i8 [ 24, %211 ], [ 20, %208 ]
  %214 = or i8 %173, %213
  store i8 %214, ptr %175, align 1
  br label %215

215:                                              ; preds = %212, %208
  %216 = load ptr, ptr %116, align 4
  %217 = call i32 @regmap_bulk_write(ptr noundef %216, i32 noundef 54208, ptr noundef nonnull %2, i32 noundef 3) #13
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %215
  %220 = load ptr, ptr %116, align 4
  br i1 %209, label %221, label %224

221:                                              ; preds = %219
  %222 = call i32 @regmap_write(ptr noundef %220, i32 noundef 44797, i32 noundef 0) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %240

224:                                              ; preds = %219
  %225 = call i32 @regmap_write(ptr noundef %220, i32 noundef 44797, i32 noundef 1) #13
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = load ptr, ptr %116, align 4
  %229 = call i32 @regmap_write(ptr noundef %228, i32 noundef 44798, i32 noundef 0) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %227, %221
  %232 = load ptr, ptr %116, align 4
  %233 = call i32 @regmap_write(ptr noundef %232, i32 noundef 65535, i32 noundef 0) #13
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i32, ptr %13, align 4
  store i32 %236, ptr %15, align 4
  %237 = load volatile i32, ptr @jiffies, align 64
  %238 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 19
  store i32 %237, ptr %238, align 4
  %239 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 28
  store i8 0, ptr %239, align 4
  br label %240

240:                                              ; preds = %235, %231, %227, %224, %221, %215, %208, %128, %124, %120, %115, %111, %85, %52, %33, %24, %23, %22, %21, %18, %9
  %241 = phi i32 [ 0, %235 ], [ %10, %9 ], [ %38, %33 ], [ %53, %52 ], [ %109, %85 ], [ %113, %111 ], [ %118, %115 ], [ %122, %120 ], [ %126, %124 ], [ %130, %128 ], [ %217, %215 ], [ %222, %221 ], [ %233, %231 ], [ %225, %224 ], [ %229, %227 ], [ -22, %208 ], [ -22, %21 ], [ -22, %22 ], [ -22, %23 ], [ -22, %18 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #13
  ret i32 %241
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @af9013_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 800, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.af9013_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 54208, ptr noundef nonnull %3, i32 noundef 3) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = lshr i8 %12, 6
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds [3 x i32], ptr @switch.table.af9013_get_frontend, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i8, ptr %3, align 1
  %22 = and i8 %21, 3
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = zext i8 %22 to i32
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = lshr i8 %21, 2
  %29 = and i8 %28, 3
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  %32 = lshr i8 %21, 4
  %33 = and i8 %32, 7
  %34 = icmp ult i8 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = zext i8 %33 to i32
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 7
  %42 = icmp ult i8 %41, 5
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = zext i8 %41 to i32
  %45 = getelementptr inbounds [5 x i32], ptr @switch.table.af9013_get_frontend.12, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = lshr i8 %40, 3
  %50 = and i8 %49, 7
  %51 = icmp ult i8 %50, 5
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = zext i8 %50 to i32
  %54 = getelementptr inbounds [5 x i32], ptr @switch.table.af9013_get_frontend.12, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = lshr i8 %12, 2
  %59 = and i8 %58, 3
  %60 = icmp eq i8 %59, 3
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = zext i8 %59 to i32
  %63 = mul nuw nsw i32 %62, 1000000
  %64 = add nuw nsw i32 %63, 6000000
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %61, %57, %2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @af9013_read_status(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8], align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %8, i8 0, i32 7, i1 false), !annotation !8
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, -200
  %15 = sub i32 %14, %13
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 400
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 %20, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  br label %51

27:                                               ; preds = %17, %2
  %28 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 54535, ptr noundef nonnull %3) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %350

32:                                               ; preds = %27
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 31, ptr %4, align 4
  br label %47

37:                                               ; preds = %32
  %38 = load ptr, ptr %28, align 4
  %39 = call i32 @regmap_read(ptr noundef %38, i32 noundef 54064, ptr noundef nonnull %3) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %350

41:                                               ; preds = %37
  %42 = load i32, ptr %3, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 7, ptr %4, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, ptr %4, align 4
  br label %47

47:                                               ; preds = %46, %45, %36
  %48 = phi i32 [ 7, %45 ], [ 0, %46 ], [ 31, %36 ]
  %49 = load volatile i32, ptr @jiffies, align 64
  store i32 %49, ptr %12, align 4
  %50 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 13
  store i32 %48, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %24
  %52 = phi i32 [ %48, %47 ], [ %26, %24 ]
  store i32 %52, ptr %1, align 4
  %53 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 14
  %54 = load i8, ptr %53, align 4
  switch i8 %54, label %149 [
    i8 0, label %55
    i8 1, label %94
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @regmap_read(ptr noundef %57, i32 noundef 39918, ptr noundef nonnull %3) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %350

60:                                               ; preds = %55
  %61 = load i32, ptr %3, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %56, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 39869, ptr noundef nonnull %4) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %350

68:                                               ; preds = %64
  %69 = load ptr, ptr %56, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 39888, ptr noundef nonnull %5) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %350

72:                                               ; preds = %68
  %73 = load ptr, ptr %56, align 4
  %74 = call i32 @regmap_read(ptr noundef %73, i32 noundef 39906, ptr noundef nonnull %6) #13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %350

76:                                               ; preds = %72
  %77 = load ptr, ptr %56, align 4
  %78 = call i32 @regmap_read(ptr noundef %77, i32 noundef 39908, ptr noundef nonnull %7) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %350

80:                                               ; preds = %76
  %81 = load i32, ptr %4, align 4
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 15
  store i8 %82, ptr %83, align 1
  %84 = load i32, ptr %5, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 16
  store i8 %85, ptr %86, align 2
  %87 = load i32, ptr %6, align 4
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 17
  store i8 %88, ptr %89, align 1
  %90 = load i32, ptr %7, align 4
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 18
  store i8 %91, ptr %92, align 4
  store i8 1, ptr %53, align 4
  br label %94

93:                                               ; preds = %60
  store i8 2, ptr %53, align 4
  br label %151

94:                                               ; preds = %80, %51
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 21
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %95, -200
  %99 = sub i32 %98, %97
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %151, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 @regmap_bulk_read(ptr noundef %103, i32 noundef 53372, ptr noundef nonnull %8, i32 noundef 2) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %350

106:                                              ; preds = %101
  %107 = load i8, ptr %8, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %111, %108
  %113 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 16
  %114 = load i8, ptr %113, align 2
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 18
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %118, %115
  %120 = sub nsw i32 %112, %119
  %121 = mul nsw i32 %120, 30000
  %122 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 15
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 17
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = sub nsw i32 %124, %119
  %129 = add nsw i32 %128, %127
  %130 = sdiv i32 %121, %129
  %131 = add nsw i32 %130, -80000
  %132 = load volatile i32, ptr @jiffies, align 64
  store i32 %132, ptr %96, align 4
  %133 = call i32 @llvm.smax.i32(i32 %130, i32 -10000)
  %134 = add nsw i32 %133, 10000
  %135 = call i32 @llvm.umin.i32(i32 %134, i32 60000)
  store i32 %135, ptr %4, align 4
  %136 = mul nuw i32 %135, 65535
  %137 = zext i32 %136 to i64
  %138 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8372362243587641827, i64 %137, i32 0) #16, !srcloc !14
  %139 = extractvalue { i64, i32 } %138, 0
  %140 = extractvalue { i64, i32 } %138, 1
  %141 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8372362243587641827, i64 %137, i64 %139, i32 %140) #16, !srcloc !11
  %142 = extractvalue { i64, i32 } %141, 0
  %143 = lshr i64 %142, 15
  %144 = trunc i64 %143 to i16
  %145 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 25
  store i16 %144, ptr %145, align 2
  %146 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %146, align 1
  %147 = sext i32 %131 to i64
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %147, ptr %148, align 1
  br label %151

149:                                              ; preds = %51
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %150, align 1
  br label %151

151:                                              ; preds = %149, %106, %94, %93
  %152 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 13
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %250, label %156

156:                                              ; preds = %151
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 22
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %157, -200
  %161 = sub i32 %160, %159
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %252, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = call i32 @regmap_read(ptr noundef %165, i32 noundef 53985, ptr noundef nonnull %3) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %350

168:                                              ; preds = %163
  %169 = load i32, ptr %3, align 4
  %170 = and i32 %169, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %252, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %164, align 4
  %174 = call i32 @regmap_bulk_read(ptr noundef %173, i32 noundef 53987, ptr noundef nonnull %8, i32 noundef 3) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %350

176:                                              ; preds = %172
  %177 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 2
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 16
  %181 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 8
  %185 = or i32 %184, %180
  %186 = load i8, ptr %8, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %185, %187
  store i32 %188, ptr %4, align 4
  %189 = load ptr, ptr %164, align 4
  %190 = call i32 @regmap_read(ptr noundef %189, i32 noundef 54209, ptr noundef nonnull %3) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %350

192:                                              ; preds = %176
  %193 = load i32, ptr %3, align 4
  %194 = lshr i32 %193, 6
  %195 = and i32 %194, 3
  switch i32 %195, label %240 [
    i32 0, label %196
    i32 1, label %210
    i32 2, label %225
  ]

196:                                              ; preds = %192
  %197 = load i32, ptr %4, align 4
  %198 = call i32 @llvm.umax.i32(i32 %197, i32 653799)
  %199 = call i32 @llvm.umin.i32(i32 %198, i32 1689999)
  store i32 %199, ptr %4, align 4
  %200 = call i32 @intlog10(i32 noundef %199) #13
  %201 = load i32, ptr %4, align 4
  %202 = sub i32 1690000, %201
  %203 = call i32 @intlog10(i32 noundef %202) #13
  %204 = add i32 %200, 3355443
  %205 = sub i32 %204, %203
  %206 = zext i32 %205 to i64
  %207 = mul nuw nsw i64 %206, 13000
  %208 = lshr i64 %207, 24
  %209 = trunc i64 %208 to i32
  store i32 %209, ptr %4, align 4
  br label %241

210:                                              ; preds = %192
  %211 = load i32, ptr %4, align 4
  %212 = call i32 @llvm.umax.i32(i32 %211, i32 371105)
  %213 = call i32 @llvm.umin.i32(i32 %212, i32 827999)
  store i32 %213, ptr %4, align 4
  %214 = add nsw i32 %213, -370000
  %215 = call i32 @intlog10(i32 noundef %214) #13
  %216 = load i32, ptr %4, align 4
  %217 = sub i32 828000, %216
  %218 = call i32 @intlog10(i32 noundef %217) #13
  %219 = add i32 %215, 43900382
  %220 = sub i32 %219, %218
  %221 = zext i32 %220 to i64
  %222 = mul nuw nsw i64 %221, 6000
  %223 = lshr i64 %222, 24
  %224 = trunc i64 %223 to i32
  store i32 %224, ptr %4, align 4
  br label %241

225:                                              ; preds = %192
  %226 = load i32, ptr %4, align 4
  %227 = call i32 @llvm.umax.i32(i32 %226, i32 193246)
  %228 = call i32 @llvm.umin.i32(i32 %227, i32 424999)
  store i32 %228, ptr %4, align 4
  %229 = add nsw i32 %228, -193000
  %230 = call i32 @intlog10(i32 noundef %229) #13
  %231 = load i32, ptr %4, align 4
  %232 = sub i32 425000, %231
  %233 = call i32 @intlog10(i32 noundef %232) #13
  %234 = add i32 %230, 49912218
  %235 = sub i32 %234, %233
  %236 = zext i32 %235 to i64
  %237 = mul nuw nsw i64 %236, 8000
  %238 = lshr i64 %237, 24
  %239 = trunc i64 %238 to i32
  store i32 %239, ptr %4, align 4
  br label %241

240:                                              ; preds = %192
  store i32 0, ptr %4, align 4
  br label %241

241:                                              ; preds = %240, %225, %210, %196
  %242 = phi i32 [ 0, %240 ], [ %239, %225 ], [ %224, %210 ], [ %209, %196 ]
  %243 = load volatile i32, ptr @jiffies, align 64
  store i32 %243, ptr %158, align 4
  %244 = udiv i32 %242, 100
  %245 = trunc i32 %244 to i16
  %246 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 24
  store i16 %245, ptr %246, align 4
  %247 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %247, align 1
  %248 = zext i32 %242 to i64
  %249 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %248, ptr %249, align 1
  br label %252

250:                                              ; preds = %151
  %251 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %251, align 1
  br label %252

252:                                              ; preds = %250, %241, %168, %156
  %253 = load i32, ptr %152, align 4
  %254 = and i32 %253, 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %345, label %256

256:                                              ; preds = %252
  %257 = load volatile i32, ptr @jiffies, align 64
  %258 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 23
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %257, -200
  %261 = sub i32 %260, %259
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %350, label %263

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = call i32 @regmap_read(ptr noundef %265, i32 noundef 54161, ptr noundef nonnull %3) #13
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %350

268:                                              ; preds = %263
  %269 = load i32, ptr %3, align 4
  %270 = and i32 %269, 16
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %350, label %272

272:                                              ; preds = %268
  %273 = load ptr, ptr %264, align 4
  %274 = call i32 @regmap_bulk_read(ptr noundef %273, i32 noundef 54149, ptr noundef nonnull %8, i32 noundef 7) #13
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %350

276:                                              ; preds = %272
  %277 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 4
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 3
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 8
  %285 = or i32 %284, %280
  %286 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 2
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = or i32 %285, %288
  store i32 %289, ptr %4, align 4
  %290 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 1
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = shl nuw nsw i32 %292, 8
  %294 = load i8, ptr %8, align 1
  %295 = zext i8 %294 to i32
  %296 = or i32 %293, %295
  %297 = mul nuw nsw i32 %296, 1632
  store i32 %297, ptr %5, align 4
  %298 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 6
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 8
  %302 = getelementptr inbounds [7 x i8], ptr %8, i32 0, i32 5
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i32
  %305 = or i32 %301, %304
  store i32 %305, ptr %6, align 4
  store i32 %296, ptr %7, align 4
  %306 = icmp eq i32 %296, 10000
  br i1 %306, label %311, label %307

307:                                              ; preds = %276
  store i8 16, ptr %8, align 1
  store i8 39, ptr %290, align 1
  %308 = load ptr, ptr %264, align 4
  %309 = call i32 @regmap_bulk_write(ptr noundef %308, i32 noundef 54149, ptr noundef nonnull %8, i32 noundef 2) #13
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %350

311:                                              ; preds = %307, %276
  %312 = load ptr, ptr %264, align 4
  %313 = call i32 @regmap_update_bits_base(ptr noundef %312, i32 noundef 54161, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %350

315:                                              ; preds = %311
  %316 = load volatile i32, ptr @jiffies, align 64
  store i32 %316, ptr %258, align 4
  %317 = load i32, ptr %4, align 4
  %318 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 26
  store i32 %317, ptr %318, align 4
  %319 = load i32, ptr %6, align 4
  %320 = getelementptr inbounds %struct.af9013_state, ptr %10, i32 0, i32 27
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, %319
  store i32 %322, ptr %320, align 4
  %323 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %323, align 1
  %324 = zext i32 %317 to i64
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %326 = load i64, ptr %325, align 1
  %327 = add i64 %326, %324
  store i64 %327, ptr %325, align 1
  %328 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %328, align 1
  %329 = load i32, ptr %5, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %332 = load i64, ptr %331, align 1
  %333 = add i64 %332, %330
  store i64 %333, ptr %331, align 1
  %334 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %334, align 1
  %335 = zext i32 %319 to i64
  %336 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %337 = load i64, ptr %336, align 1
  %338 = add i64 %337, %335
  store i64 %338, ptr %336, align 1
  %339 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %339, align 1
  %340 = load i32, ptr %7, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %343 = load i64, ptr %342, align 1
  %344 = add i64 %343, %341
  store i64 %344, ptr %342, align 1
  br label %350

345:                                              ; preds = %252
  %346 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %346, align 1
  %347 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %347, align 1
  %348 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %348, align 1
  %349 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %349, align 1
  br label %350

350:                                              ; preds = %345, %315, %311, %307, %272, %268, %263, %256, %176, %172, %163, %101, %76, %72, %68, %64, %55, %37, %27
  %351 = phi i32 [ 0, %268 ], [ 0, %256 ], [ 0, %345 ], [ 0, %315 ], [ %266, %263 ], [ %274, %272 ], [ %309, %307 ], [ %313, %311 ], [ %166, %163 ], [ %174, %172 ], [ %190, %176 ], [ %104, %101 ], [ %58, %55 ], [ %66, %64 ], [ %70, %68 ], [ %74, %72 ], [ %78, %76 ], [ %30, %27 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %351
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 25
  %6 = load i16, ptr %5, align 2
  store i16 %6, ptr %1, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 24
  %6 = load i16, ptr %5, align 4
  store i16 %6, ptr %1, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af9013_state, ptr %4, i32 0, i32 27
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!10 = !{i64 1172055, i64 1172082}
!11 = !{i64 1172750, i64 1172777, i64 1172810, i64 1172831, i64 1172858, i64 1172884}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148657886, i64 2148658166, i64 2148658500, i64 2148658834}
!14 = !{i64 1172342, i64 1172369, i64 1172391, i64 1172419}
