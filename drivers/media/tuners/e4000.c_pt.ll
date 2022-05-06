; ModuleID = '/llk/IR/drivers/media/tuners/e4000.c_pt.bc'
source_filename = "../drivers/media/tuners/e4000.c"
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.e4000_pll = type { i32, i8, i8 }
%struct.e4000_lna_filter = type { i32, i8 }
%struct.e4000_if_filter = type { i32, i8, i8 }
%struct.e4000_band = type { i32, i8, i8 }
%struct.e4000_if_gain = type { i8, i8 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.e4000_config = type { ptr, i32 }
%struct.e4000_dev = type { ptr, ptr, i32, ptr, %struct.v4l2_subdev, i8, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.78 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.80, %union.anon.81, i32, ptr, i32, %struct.anon.82, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.80 = type { i64 }
%union.anon.81 = type { ptr }
%struct.anon.82 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@e4000_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"e4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description255 = internal constant [47 x i8] c"description=Elonics E4000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@e4000_driver = internal global %struct.i2c_driver { i32 0, ptr @e4000_probe, ptr @e4000_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @e4000_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"e4000\00", align 1
@e4000_probe.regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@e4000_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @e4000_g_volatile_ctrl, ptr null, ptr @e4000_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@bands = internal unnamed_addr constant [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 59000000, i32 1105000000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 5, i32 1, i32 5120, i32 1249000000, i32 -2086967296, i32 0, [9 x i32] zeroinitializer }], align 4
@e4000_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr @e4000_subdev_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@e4000_dvb_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Elonics E4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @e4000_dvb_init, ptr @e4000_dvb_sleep, ptr null, ptr null, ptr @e4000_dvb_set_params, ptr null, ptr null, ptr null, ptr null, ptr @e4000_dvb_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Elonics E4000 successfully identified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@e4000_pll_lut = internal unnamed_addr constant [11 x %struct.e4000_pll] [%struct.e4000_pll { i32 72400000, i8 15, i8 48 }, %struct.e4000_pll { i32 81200000, i8 14, i8 40 }, %struct.e4000_pll { i32 108300000, i8 13, i8 32 }, %struct.e4000_pll { i32 162500000, i8 12, i8 24 }, %struct.e4000_pll { i32 216600000, i8 11, i8 16 }, %struct.e4000_pll { i32 325000000, i8 10, i8 12 }, %struct.e4000_pll { i32 350000000, i8 9, i8 8 }, %struct.e4000_pll { i32 432000000, i8 3, i8 8 }, %struct.e4000_pll { i32 667000000, i8 2, i8 6 }, %struct.e4000_pll { i32 1200000000, i8 1, i8 4 }, %struct.e4000_pll { i32 -1, i8 0, i8 2 }], align 4
@e400_lna_filter_lut = internal unnamed_addr constant [32 x %struct.e4000_lna_filter] [%struct.e4000_lna_filter { i32 370000000, i8 0 }, %struct.e4000_lna_filter { i32 392500000, i8 1 }, %struct.e4000_lna_filter { i32 415000000, i8 2 }, %struct.e4000_lna_filter { i32 437500000, i8 3 }, %struct.e4000_lna_filter { i32 462500000, i8 4 }, %struct.e4000_lna_filter { i32 490000000, i8 5 }, %struct.e4000_lna_filter { i32 522500000, i8 6 }, %struct.e4000_lna_filter { i32 557500000, i8 7 }, %struct.e4000_lna_filter { i32 595000000, i8 8 }, %struct.e4000_lna_filter { i32 642500000, i8 9 }, %struct.e4000_lna_filter { i32 695000000, i8 10 }, %struct.e4000_lna_filter { i32 740000000, i8 11 }, %struct.e4000_lna_filter { i32 800000000, i8 12 }, %struct.e4000_lna_filter { i32 865000000, i8 13 }, %struct.e4000_lna_filter { i32 930000000, i8 14 }, %struct.e4000_lna_filter { i32 1000000000, i8 15 }, %struct.e4000_lna_filter { i32 1310000000, i8 0 }, %struct.e4000_lna_filter { i32 1340000000, i8 1 }, %struct.e4000_lna_filter { i32 1385000000, i8 2 }, %struct.e4000_lna_filter { i32 1427500000, i8 3 }, %struct.e4000_lna_filter { i32 1452500000, i8 4 }, %struct.e4000_lna_filter { i32 1475000000, i8 5 }, %struct.e4000_lna_filter { i32 1510000000, i8 6 }, %struct.e4000_lna_filter { i32 1545000000, i8 7 }, %struct.e4000_lna_filter { i32 1575000000, i8 8 }, %struct.e4000_lna_filter { i32 1615000000, i8 9 }, %struct.e4000_lna_filter { i32 1650000000, i8 10 }, %struct.e4000_lna_filter { i32 1670000000, i8 11 }, %struct.e4000_lna_filter { i32 1690000000, i8 12 }, %struct.e4000_lna_filter { i32 1710000000, i8 13 }, %struct.e4000_lna_filter { i32 1735000000, i8 14 }, %struct.e4000_lna_filter { i32 -1, i8 15 }], align 4
@e4000_if_filter_lut = internal unnamed_addr constant [33 x %struct.e4000_if_filter] [%struct.e4000_if_filter { i32 4300000, i8 -3, i8 31 }, %struct.e4000_if_filter { i32 4400000, i8 -3, i8 30 }, %struct.e4000_if_filter { i32 4480000, i8 -4, i8 29 }, %struct.e4000_if_filter { i32 4560000, i8 -4, i8 28 }, %struct.e4000_if_filter { i32 4600000, i8 -4, i8 27 }, %struct.e4000_if_filter { i32 4800000, i8 -4, i8 26 }, %struct.e4000_if_filter { i32 4900000, i8 -4, i8 25 }, %struct.e4000_if_filter { i32 5000000, i8 -4, i8 24 }, %struct.e4000_if_filter { i32 5100000, i8 -4, i8 23 }, %struct.e4000_if_filter { i32 5200000, i8 -4, i8 22 }, %struct.e4000_if_filter { i32 5400000, i8 -4, i8 21 }, %struct.e4000_if_filter { i32 5500000, i8 -4, i8 20 }, %struct.e4000_if_filter { i32 5600000, i8 -4, i8 19 }, %struct.e4000_if_filter { i32 5800000, i8 -5, i8 18 }, %struct.e4000_if_filter { i32 5900000, i8 -5, i8 17 }, %struct.e4000_if_filter { i32 6000000, i8 -5, i8 16 }, %struct.e4000_if_filter { i32 6200000, i8 -5, i8 15 }, %struct.e4000_if_filter { i32 6400000, i8 -6, i8 14 }, %struct.e4000_if_filter { i32 6600000, i8 -6, i8 13 }, %struct.e4000_if_filter { i32 6800000, i8 -7, i8 12 }, %struct.e4000_if_filter { i32 7200000, i8 -7, i8 11 }, %struct.e4000_if_filter { i32 7400000, i8 -7, i8 10 }, %struct.e4000_if_filter { i32 7600000, i8 -8, i8 9 }, %struct.e4000_if_filter { i32 7800000, i8 -8, i8 8 }, %struct.e4000_if_filter { i32 8200000, i8 -8, i8 7 }, %struct.e4000_if_filter { i32 8600000, i8 -9, i8 6 }, %struct.e4000_if_filter { i32 8800000, i8 -9, i8 5 }, %struct.e4000_if_filter { i32 9200000, i8 -9, i8 4 }, %struct.e4000_if_filter { i32 9600000, i8 -10, i8 3 }, %struct.e4000_if_filter { i32 10000000, i8 -10, i8 2 }, %struct.e4000_if_filter { i32 10600000, i8 -11, i8 1 }, %struct.e4000_if_filter { i32 11000000, i8 -11, i8 0 }, %struct.e4000_if_filter { i32 -1, i8 0, i8 32 }], align 4
@e4000_band_lut = internal unnamed_addr constant [4 x %struct.e4000_band] [%struct.e4000_band { i32 140000000, i8 1, i8 3 }, %struct.e4000_band { i32 350000000, i8 3, i8 3 }, %struct.e4000_band { i32 1000000000, i8 5, i8 3 }, %struct.e4000_band { i32 -1, i8 7, i8 0 }], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"\00~$\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\00\7F\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@e4000_if_gain_lut = internal unnamed_addr constant [55 x %struct.e4000_if_gain] [%struct.e4000_if_gain zeroinitializer, %struct.e4000_if_gain { i8 32, i8 0 }, %struct.e4000_if_gain { i8 64, i8 0 }, %struct.e4000_if_gain { i8 2, i8 0 }, %struct.e4000_if_gain { i8 34, i8 0 }, %struct.e4000_if_gain { i8 66, i8 0 }, %struct.e4000_if_gain { i8 4, i8 0 }, %struct.e4000_if_gain { i8 36, i8 0 }, %struct.e4000_if_gain { i8 68, i8 0 }, %struct.e4000_if_gain { i8 1, i8 0 }, %struct.e4000_if_gain { i8 33, i8 0 }, %struct.e4000_if_gain { i8 65, i8 0 }, %struct.e4000_if_gain { i8 3, i8 0 }, %struct.e4000_if_gain { i8 35, i8 0 }, %struct.e4000_if_gain { i8 67, i8 0 }, %struct.e4000_if_gain { i8 5, i8 0 }, %struct.e4000_if_gain { i8 37, i8 0 }, %struct.e4000_if_gain { i8 69, i8 0 }, %struct.e4000_if_gain { i8 7, i8 0 }, %struct.e4000_if_gain { i8 39, i8 0 }, %struct.e4000_if_gain { i8 71, i8 0 }, %struct.e4000_if_gain { i8 15, i8 0 }, %struct.e4000_if_gain { i8 47, i8 0 }, %struct.e4000_if_gain { i8 79, i8 0 }, %struct.e4000_if_gain { i8 23, i8 0 }, %struct.e4000_if_gain { i8 55, i8 0 }, %struct.e4000_if_gain { i8 87, i8 0 }, %struct.e4000_if_gain { i8 31, i8 0 }, %struct.e4000_if_gain { i8 63, i8 0 }, %struct.e4000_if_gain { i8 95, i8 0 }, %struct.e4000_if_gain { i8 31, i8 1 }, %struct.e4000_if_gain { i8 63, i8 1 }, %struct.e4000_if_gain { i8 95, i8 1 }, %struct.e4000_if_gain { i8 31, i8 2 }, %struct.e4000_if_gain { i8 63, i8 2 }, %struct.e4000_if_gain { i8 95, i8 2 }, %struct.e4000_if_gain { i8 31, i8 3 }, %struct.e4000_if_gain { i8 63, i8 3 }, %struct.e4000_if_gain { i8 95, i8 3 }, %struct.e4000_if_gain { i8 31, i8 4 }, %struct.e4000_if_gain { i8 63, i8 4 }, %struct.e4000_if_gain { i8 95, i8 4 }, %struct.e4000_if_gain { i8 31, i8 12 }, %struct.e4000_if_gain { i8 63, i8 12 }, %struct.e4000_if_gain { i8 95, i8 12 }, %struct.e4000_if_gain { i8 31, i8 20 }, %struct.e4000_if_gain { i8 63, i8 20 }, %struct.e4000_if_gain { i8 95, i8 20 }, %struct.e4000_if_gain { i8 31, i8 28 }, %struct.e4000_if_gain { i8 63, i8 28 }, %struct.e4000_if_gain { i8 95, i8 28 }, %struct.e4000_if_gain { i8 31, i8 36 }, %struct.e4000_if_gain { i8 63, i8 36 }, %struct.e4000_if_gain { i8 95, i8 36 }, %struct.e4000_if_gain { i8 127, i8 36 }], align 1
@e4000_subdev_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { ptr @e4000_standby, ptr null, ptr @e4000_s_frequency, ptr @e4000_g_frequency, ptr @e4000_enum_freq_bands, ptr @e4000_g_tuner, ptr @e4000_s_tuner, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Elonics E4000\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\01\FE\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" \01\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\7F\07\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license257], section "llvm.metadata"

@__mod_i2c__e4000_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @e4000_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @e4000_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @e4000_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 372) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.e4000_config, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  store ptr %0, ptr %9, align 8
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @e4000_probe.regmap_config, ptr noundef null, ptr noundef null) #11
  %18 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = ptrtoint ptr %17 to i32
  br label %69

22:                                               ; preds = %11
  %23 = call i32 @regmap_read(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %3) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 64
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  %30 = call i32 @regmap_write(ptr noundef %29, i32 noundef 0, i32 noundef 0) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 8
  %34 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %33, i32 noundef 9, ptr noundef null, ptr noundef null) #11
  %35 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %36 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 9
  store ptr %35, ptr %36, align 8
  %37 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619148, i64 noundef 4300000, i64 noundef 11000000, i64 noundef 100000, i64 noundef 4300000) #11
  %38 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 10
  store ptr %37, ptr %38, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %36, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %39 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619177, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %40 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 11
  store ptr %39, ptr %40, align 8
  %41 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 10) #11
  %42 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 12
  store ptr %41, ptr %42, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %40, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %43 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619187, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %44 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 13
  store ptr %43, ptr %44, align 8
  %45 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619188, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %46 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 14
  store ptr %45, ptr %46, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %44, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %47 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619197, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %48 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 15
  store ptr %47, ptr %48, align 8
  %49 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 54, i64 noundef 1, i64 noundef 0) #11
  %50 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 16
  store ptr %49, ptr %50, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %48, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %51 = call ptr @v4l2_ctrl_new_std(ptr noundef %33, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619227, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %52 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 17
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 8, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #13
  call void @v4l2_ctrl_handler_free(ptr noundef %33) #11
  br label %69

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 4
  %59 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 4, i32 8
  store ptr %33, ptr %59, align 8
  %60 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 6
  store i32 59000000, ptr %60, align 8
  %61 = load ptr, ptr %38, align 4
  %62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef %58, ptr noundef %0, ptr noundef nonnull @e4000_subdev_ops) #11
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 4
  store ptr %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %66, ptr noundef nonnull align 4 dereferenceable(220) @e4000_dvb_tuner_ops, i32 220, i1 false)
  %67 = getelementptr inbounds %struct.e4000_dev, ptr %9, i32 0, i32 4, i32 11
  store ptr %0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %58, ptr %68, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2) #13
  br label %71

69:                                               ; preds = %56, %28, %25, %22, %20
  %70 = phi i32 [ %21, %20 ], [ %23, %22 ], [ %30, %28 ], [ %54, %56 ], [ -19, %25 ]
  call void @kfree(ptr noundef nonnull %9) #11
  br label %71

71:                                               ; preds = %69, %57, %2
  %72 = phi i32 [ 0, %57 ], [ %70, %69 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr i8, ptr %3, i32 208
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_g_volatile_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 10619227
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %4, i32 -212
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.e4000_dev, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 7, ptr noundef nonnull %2) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.e4000_dev, ptr %16, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  store i32 %23, ptr %26, align 4
  br label %27

27:                                               ; preds = %21, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %28

28:                                               ; preds = %27, %8, %1
  %29 = phi i32 [ 0, %1 ], [ %19, %27 ], [ -22, %8 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -224
  %6 = getelementptr i8, ptr %4, i32 -12
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %134, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %134 [
    i32 10619147, label %12
    i32 10619148, label %12
    i32 10619177, label %19
    i32 10619178, label %19
    i32 10619187, label %56
    i32 10619188, label %56
    i32 10619197, label %86
    i32 10619198, label %86
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr i8, ptr %4, i32 116
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %4, i32 -4
  store i32 %16, ptr %17, align 4
  %18 = tail call fastcc i32 @e4000_set_params(ptr noundef %5)
  br label %134

19:                                               ; preds = %9, %9
  %20 = getelementptr i8, ptr %4, i32 -212
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.e4000_dev, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.e4000_dev, ptr %23, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 23
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 16, i32 22
  %35 = select i1 %33, i32 25, i32 23
  %36 = select i1 %28, i32 %34, i32 %35
  %37 = getelementptr inbounds %struct.e4000_dev, ptr %23, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 26, i32 noundef %36) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %19
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %134

46:                                               ; preds = %41
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr inbounds %struct.e4000_dev, ptr %23, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 20, i32 noundef %51) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %134, label %54

54:                                               ; preds = %46, %19
  %55 = phi i32 [ %39, %19 ], [ %52, %46 ]
  br label %134

56:                                               ; preds = %9, %9
  %57 = getelementptr i8, ptr %4, i32 -212
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.e4000_dev, ptr %60, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 20, i32 21
  %67 = getelementptr inbounds %struct.e4000_dev, ptr %60, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 32, i32 noundef %66) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %56
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %134

76:                                               ; preds = %71
  %77 = load ptr, ptr %67, align 4
  %78 = getelementptr inbounds %struct.e4000_dev, ptr %60, i32 0, i32 14
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.v4l2_ctrl, ptr %79, i32 0, i32 22
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 21, i32 noundef %81) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %134, label %84

84:                                               ; preds = %76, %56
  %85 = phi i32 [ %69, %56 ], [ %82, %76 ]
  br label %134

86:                                               ; preds = %9, %9
  %87 = getelementptr i8, ptr %4, i32 -212
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  %91 = getelementptr inbounds %struct.e4000_dev, ptr %90, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct.e4000_dev, ptr %90, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.v4l2_ctrl, ptr %97, i32 0, i32 23
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 0
  br i1 %95, label %101, label %103

101:                                              ; preds = %86
  %102 = select i1 %100, i32 16, i32 25
  br label %104

103:                                              ; preds = %86
  br i1 %100, label %104, label %106

104:                                              ; preds = %103, %101
  %105 = phi i32 [ 22, %103 ], [ %102, %101 ]
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 23, %103 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.e4000_dev, ptr %90, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef 26, i32 noundef %107) #11
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load ptr, ptr %91, align 4
  %114 = getelementptr inbounds %struct.v4l2_ctrl, ptr %113, i32 0, i32 22
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.e4000_dev, ptr %90, i32 0, i32 16
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.v4l2_ctrl, ptr %119, i32 0, i32 22
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr [55 x %struct.e4000_if_gain], ptr @e4000_if_gain_lut, i32 0, i32 %121
  %123 = load i8, ptr %122, align 1
  store i8 %123, ptr %2, align 2
  %124 = getelementptr [55 x %struct.e4000_if_gain], ptr @e4000_if_gain_lut, i32 0, i32 %121, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %125, ptr %126, align 1
  %127 = load ptr, ptr %108, align 4
  %128 = call i32 @regmap_bulk_write(ptr noundef %127, i32 noundef 22, ptr noundef nonnull %2, i32 noundef 2) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %117, %106
  %131 = phi i32 [ %110, %106 ], [ %128, %117 ]
  br label %132

132:                                              ; preds = %130, %117, %112
  %133 = phi i32 [ %131, %130 ], [ 0, %117 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %134

134:                                              ; preds = %132, %84, %76, %71, %54, %46, %41, %12, %9, %1
  %135 = phi i32 [ 0, %1 ], [ %133, %132 ], [ %18, %12 ], [ -22, %9 ], [ %55, %54 ], [ 0, %46 ], [ 0, %41 ], [ %85, %84 ], [ 0, %76 ], [ 0, %71 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e4000_set_params(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [5 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.e4000_dev, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %212, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e4000_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 26, i32 noundef 0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %210

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.e4000_dev, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 72400000
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = icmp ugt i32 %15, 81200000
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = icmp ugt i32 %15, 108300000
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = icmp ugt i32 %15, 162500000
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = icmp ugt i32 %15, 216600000
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = icmp ugt i32 %15, 325000000
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = icmp ugt i32 %15, 350000000
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = icmp ugt i32 %15, 432000000
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = icmp ugt i32 %15, 667000000
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = icmp ugt i32 %15, 1200000000
  %35 = select i1 %34, i32 10, i32 9
  br label %36

36:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17, %13
  %37 = phi i32 [ 0, %13 ], [ 1, %17 ], [ 2, %19 ], [ 3, %21 ], [ 4, %23 ], [ 5, %25 ], [ 6, %27 ], [ 7, %29 ], [ 8, %31 ], [ %35, %33 ]
  %38 = getelementptr [11 x %struct.e4000_pll], ptr @e4000_pll_lut, i32 0, i32 %37, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i32 %15 to i64
  %41 = zext i8 %39 to i64
  %42 = mul nuw nsw i64 %40, %41
  %43 = getelementptr inbounds %struct.e4000_dev, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i64 %42, 4294967296
  br i1 %45, label %46, label %54, !prof !10

46:                                               ; preds = %36
  %47 = trunc i64 %42 to i32
  %48 = freeze i32 %47
  %49 = freeze i32 %44
  %50 = udiv i32 %48, %49
  %51 = mul i32 %50, %49
  %52 = sub i32 %48, %51
  %53 = trunc i32 %50 to i8
  br label %61

54:                                               ; preds = %36
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %42) #14, !srcloc !11
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  %58 = lshr i64 %56, 32
  %59 = trunc i64 %58 to i32
  %60 = trunc i64 %57 to i8
  br label %61

61:                                               ; preds = %54, %46
  %62 = phi i8 [ %53, %46 ], [ %60, %54 ]
  %63 = phi i32 [ %52, %46 ], [ %59, %54 ]
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 16
  %66 = icmp ult i32 %63, 65536
  br i1 %66, label %67, label %73, !prof !10

67:                                               ; preds = %61
  %68 = trunc i64 %65 to i32
  %69 = udiv i32 %68, %44
  %70 = trunc i32 %69 to i8
  %71 = lshr i32 %69, 8
  %72 = trunc i32 %71 to i8
  br label %79

73:                                               ; preds = %61
  %74 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %65) #14, !srcloc !11
  %75 = extractvalue { i64, i64 } %74, 1
  %76 = trunc i64 %75 to i8
  %77 = lshr i64 %75, 8
  %78 = trunc i64 %77 to i8
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i8 [ %70, %67 ], [ %76, %73 ]
  %81 = phi i8 [ %72, %67 ], [ %78, %73 ]
  store i8 %62, ptr %2, align 1
  %82 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 1
  store i8 %80, ptr %82, align 1
  %83 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 2
  store i8 %81, ptr %83, align 1
  %84 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %84, align 1
  %85 = getelementptr [11 x %struct.e4000_pll], ptr @e4000_pll_lut, i32 0, i32 %37, i32 1
  %86 = load i8, ptr %85, align 4
  %87 = getelementptr inbounds [5 x i8], ptr %2, i32 0, i32 4
  store i8 %86, ptr %87, align 1
  %88 = load ptr, ptr %9, align 4
  %89 = call i32 @regmap_bulk_write(ptr noundef %88, i32 noundef 9, ptr noundef nonnull %2, i32 noundef 5) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %210

91:                                               ; preds = %79
  %92 = load i32, ptr %14, align 4
  br label %93

93:                                               ; preds = %98, %91
  %94 = phi i32 [ 0, %91 ], [ %99, %98 ]
  %95 = getelementptr [32 x %struct.e4000_lna_filter], ptr @e400_lna_filter_lut, i32 0, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = add nuw nsw i32 %94, 1
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %210, label %93

101:                                              ; preds = %93
  %102 = load ptr, ptr %9, align 4
  %103 = getelementptr [32 x %struct.e4000_lna_filter], ptr @e400_lna_filter_lut, i32 0, i32 %94, i32 1
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i32
  %106 = call i32 @regmap_write(ptr noundef %102, i32 noundef 16, i32 noundef %105) #11
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %210

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.e4000_dev, ptr %0, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  br label %111

111:                                              ; preds = %116, %108
  %112 = phi i32 [ 0, %108 ], [ %117, %116 ]
  %113 = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = icmp ugt i32 %110, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = add nuw nsw i32 %112, 1
  %118 = icmp eq i32 %117, 33
  br i1 %118, label %210, label %111

119:                                              ; preds = %111
  %120 = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %112, i32 1
  %121 = load i8, ptr %120, align 4
  store i8 %121, ptr %2, align 1
  %122 = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %112, i32 2
  %123 = load i8, ptr %122, align 1
  store i8 %123, ptr %82, align 1
  %124 = load ptr, ptr %9, align 4
  %125 = call i32 @regmap_bulk_write(ptr noundef %124, i32 noundef 17, ptr noundef nonnull %2, i32 noundef 2) #11
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %210

127:                                              ; preds = %119
  %128 = load i32, ptr %14, align 4
  %129 = icmp ugt i32 %128, 140000000
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = icmp ugt i32 %128, 350000000
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = icmp ugt i32 %128, 1000000000
  %134 = select i1 %133, i32 3, i32 2
  br label %135

135:                                              ; preds = %132, %130, %127
  %136 = phi i32 [ 0, %127 ], [ 1, %130 ], [ %134, %132 ]
  %137 = load ptr, ptr %9, align 4
  %138 = getelementptr [4 x %struct.e4000_band], ptr @e4000_band_lut, i32 0, i32 %136, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i32
  %141 = call i32 @regmap_write(ptr noundef %137, i32 noundef 7, i32 noundef %140) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %210

143:                                              ; preds = %135
  %144 = load ptr, ptr %9, align 4
  %145 = getelementptr [4 x %struct.e4000_band], ptr @e4000_band_lut, i32 0, i32 %136, i32 2
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = call i32 @regmap_write(ptr noundef %144, i32 noundef 120, i32 noundef %147) #11
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %210

150:                                              ; preds = %175, %143
  %151 = phi i32 [ %188, %175 ], [ 0, %143 ]
  switch i32 %151, label %161 [
    i32 0, label %152
    i32 1, label %155
    i32 2, label %158
  ]

152:                                              ; preds = %150
  %153 = load ptr, ptr %9, align 4
  %154 = call i32 @regmap_bulk_write(ptr noundef %153, i32 noundef 21, ptr noundef nonnull @.str.3, i32 noundef 3) #11
  br label %164

155:                                              ; preds = %150
  %156 = load ptr, ptr %9, align 4
  %157 = call i32 @regmap_bulk_write(ptr noundef %156, i32 noundef 21, ptr noundef nonnull @.str.4, i32 noundef 2) #11
  br label %164

158:                                              ; preds = %150
  %159 = load ptr, ptr %9, align 4
  %160 = call i32 @regmap_bulk_write(ptr noundef %159, i32 noundef 21, ptr noundef nonnull @.str.5, i32 noundef 1) #11
  br label %164

161:                                              ; preds = %150
  %162 = load ptr, ptr %9, align 4
  %163 = call i32 @regmap_bulk_write(ptr noundef %162, i32 noundef 22, ptr noundef nonnull @.str.6, i32 noundef 1) #11
  br label %164

164:                                              ; preds = %161, %158, %155, %152
  %165 = phi i32 [ %154, %152 ], [ %157, %155 ], [ %160, %158 ], [ %163, %161 ]
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %210

167:                                              ; preds = %164
  %168 = load ptr, ptr %9, align 4
  %169 = call i32 @regmap_write(ptr noundef %168, i32 noundef 41, i32 noundef 1) #11
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %210

171:                                              ; preds = %167
  %172 = load ptr, ptr %9, align 4
  %173 = call i32 @regmap_bulk_read(ptr noundef %172, i32 noundef 42, ptr noundef nonnull %2, i32 noundef 3) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %171
  %176 = load i8, ptr %83, align 1
  %177 = shl i8 %176, 6
  %178 = load i8, ptr %2, align 1
  %179 = and i8 %178, 63
  %180 = or i8 %179, %177
  %181 = getelementptr [4 x i8], ptr %3, i32 0, i32 %151
  store i8 %180, ptr %181, align 1
  %182 = shl i8 %176, 2
  %183 = and i8 %182, -64
  %184 = load i8, ptr %82, align 1
  %185 = and i8 %184, 63
  %186 = or i8 %185, %183
  %187 = getelementptr [4 x i8], ptr %4, i32 0, i32 %151
  store i8 %186, ptr %187, align 1
  %188 = add nuw nsw i32 %151, 1
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %190, label %150

190:                                              ; preds = %175
  %191 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %192 = load i8, ptr %191, align 2
  %193 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %194 = load i8, ptr %193, align 1
  store i8 %194, ptr %191, align 2
  store i8 %192, ptr %193, align 1
  %195 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %196 = load i8, ptr %195, align 2
  %197 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %198 = load i8, ptr %197, align 1
  store i8 %198, ptr %195, align 2
  store i8 %196, ptr %197, align 1
  %199 = load ptr, ptr %9, align 4
  %200 = call i32 @regmap_bulk_write(ptr noundef %199, i32 noundef 80, ptr noundef nonnull %4, i32 noundef 4) #11
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %190
  %203 = load ptr, ptr %9, align 4
  %204 = call i32 @regmap_bulk_write(ptr noundef %203, i32 noundef 96, ptr noundef nonnull %3, i32 noundef 4) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load ptr, ptr %9, align 4
  %208 = call i32 @regmap_write(ptr noundef %207, i32 noundef 26, i32 noundef 23) #11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %206, %202, %190, %171, %167, %164, %143, %135, %119, %116, %101, %98, %79, %8
  %211 = phi i32 [ %11, %8 ], [ %89, %79 ], [ %106, %101 ], [ %125, %119 ], [ %141, %135 ], [ %148, %143 ], [ %200, %190 ], [ %204, %202 ], [ %208, %206 ], [ %173, %171 ], [ %169, %167 ], [ %165, %164 ], [ -22, %116 ], [ -22, %98 ]
  br label %212

212:                                              ; preds = %210, %206, %1
  %213 = phi i32 [ %211, %210 ], [ 0, %1 ], [ 0, %206 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #11
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_standby(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 196
  store i8 0, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = tail call fastcc i32 @e4000_set_params(ptr noundef %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %5, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_s_frequency(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 59000000)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 -2086967296)
  %8 = getelementptr i8, ptr %0, i32 200
  store i32 %7, ptr %8, align 4
  %9 = tail call fastcc i32 @e4000_set_params(ptr noundef %3)
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @e4000_g_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_frequency, ptr %1, i32 0, i32 2
  store i32 %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @e4000_enum_freq_bands(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %4, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %1, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_g_tuner(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strscpy(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 32) #11
  %5 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 2
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 3
  store i32 5120, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 4
  store i32 59000000, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 5
  store i32 -2086967296, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @e4000_s_tuner(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #8 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_dvb_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 1) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 6, i32 noundef 0) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 122, i32 noundef 150) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4
  %18 = tail call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 126, ptr noundef nonnull @.str.8, i32 noundef 2) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 130, i32 noundef 0) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 36, i32 noundef 5) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  %30 = tail call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 135, ptr noundef nonnull @.str.9, i32 noundef 2) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  %34 = tail call i32 @regmap_bulk_write(ptr noundef %33, i32 noundef 159, ptr noundef nonnull @.str.10, i32 noundef 2) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 4
  %38 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 45, i32 noundef 31) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 4
  %42 = tail call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 112, ptr noundef nonnull @.str.11, i32 noundef 2) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load ptr, ptr %4, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 26, i32 noundef 23) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 4
  %50 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 31, i32 noundef 26) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 5
  store i8 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %1
  %55 = phi i32 [ 0, %52 ], [ %6, %1 ], [ %10, %8 ], [ %14, %12 ], [ %18, %16 ], [ %22, %20 ], [ %26, %24 ], [ %30, %28 ], [ %34, %32 ], [ %38, %36 ], [ %42, %40 ], [ %46, %44 ], [ %50, %48 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_dvb_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 5
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 0) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e4000_dvb_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 6
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.e4000_dev, ptr %3, i32 0, i32 7
  store i32 %8, ptr %9, align 4
  %10 = tail call fastcc i32 @e4000_set_params(ptr noundef %3)
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @e4000_dvb_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148624806, i64 2148625086, i64 2148625420, i64 2148625754}
