; ModuleID = '/llk/IR/drivers/media/dvb-frontends/rtl2832.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2832.c"
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
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.rtl2832_reg_value = type { i32, i32 }
%struct.rtl2832_reg_entry = type { i16, i8, i8 }
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
%struct.rtl2832_dev = type { ptr, ptr, %struct.regmap_config, ptr, ptr, %struct.dvb_frontend, i32, i64, i64, i64, i8, %struct.delayed_work, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.rtl2832_platform_data = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@rtl2832_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rtl2832\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author249 = internal constant [45 x i8] c"author=Thomas Mair <mair.thomas86@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"description=Realtek RTL2832 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@rtl2832_driver = internal global %struct.i2c_driver { i32 0, ptr @rtl2832_probe, ptr @rtl2832_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtl2832_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtl2832\00", align 1
@rtl2832_probe.regmap_range_cfg = internal constant [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 1280, i32 0, i32 255, i32 0, i32 0, i32 256 }], align 4
@rtl2832_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Realtek RTL2832 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @rtl2832_init, ptr @rtl2832_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_set_frontend, ptr @rtl2832_get_tune_settings, ptr @rtl2832_get_frontend, ptr @rtl2832_read_status, ptr @rtl2832_read_ber, ptr null, ptr @rtl2832_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Realtek RTL2832 successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.rtl2832_init.rtl2832_initial_regs = private unnamed_addr constant [42 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 24, i32 1 }, %struct.rtl2832_reg_value { i32 25, i32 1 }, %struct.rtl2832_reg_value { i32 3, i32 10240 }, %struct.rtl2832_reg_value { i32 27, i32 16 }, %struct.rtl2832_reg_value { i32 28, i32 32 }, %struct.rtl2832_reg_value { i32 29, i32 32 }, %struct.rtl2832_reg_value { i32 30, i32 64 }, %struct.rtl2832_reg_value { i32 31, i32 34 }, %struct.rtl2832_reg_value { i32 32, i32 50 }, %struct.rtl2832_reg_value { i32 33, i32 55 }, %struct.rtl2832_reg_value { i32 34, i32 57 }, %struct.rtl2832_reg_value { i32 4, i32 0 }, %struct.rtl2832_reg_value { i32 35, i32 0 }, %struct.rtl2832_reg_value { i32 36, i32 42 }, %struct.rtl2832_reg_value { i32 5, i32 6 }, %struct.rtl2832_reg_value { i32 37, i32 0 }, %struct.rtl2832_reg_value { i32 128, i32 8 }, %struct.rtl2832_reg_value { i32 129, i32 8 }, %struct.rtl2832_reg_value { i32 38, i32 4 }, %struct.rtl2832_reg_value { i32 39, i32 176 }, %struct.rtl2832_reg_value { i32 40, i32 120 }, %struct.rtl2832_reg_value { i32 41, i32 40 }, %struct.rtl2832_reg_value { i32 42, i32 89 }, %struct.rtl2832_reg_value { i32 43, i32 131 }, %struct.rtl2832_reg_value { i32 44, i32 212 }, %struct.rtl2832_reg_value { i32 45, i32 101 }, %struct.rtl2832_reg_value { i32 46, i32 67 }, %struct.rtl2832_reg_value { i32 47, i32 1 }, %struct.rtl2832_reg_value { i32 48, i32 4 }, %struct.rtl2832_reg_value { i32 49, i32 7 }, %struct.rtl2832_reg_value { i32 53, i32 10 }, %struct.rtl2832_reg_value { i32 181, i32 1 }, %struct.rtl2832_reg_value { i32 126, i32 0 }, %struct.rtl2832_reg_value { i32 128, i32 9 }, %struct.rtl2832_reg_value { i32 129, i32 9 }, %struct.rtl2832_reg_value { i32 130, i32 0 }, %struct.rtl2832_reg_value { i32 131, i32 0 }, %struct.rtl2832_reg_value { i32 54, i32 4 }, %struct.rtl2832_reg_value { i32 55, i32 7 }, %struct.rtl2832_reg_value { i32 56, i32 6 }, %struct.rtl2832_reg_value { i32 58, i32 5 }, %struct.rtl2832_reg_value { i32 59, i32 1 }], align 4
@rtl2832_tuner_init_fc2580 = internal unnamed_addr constant [21 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 156 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }], align 4
@rtl2832_tuner_init_fc0012 = internal unnamed_addr constant [31 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 90 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59839 }, %struct.rtl2832_reg_value { i32 111, i32 0 }, %struct.rtl2832_reg_value { i32 112, i32 0 }, %struct.rtl2832_reg_value { i32 113, i32 0 }, %struct.rtl2832_reg_value { i32 114, i32 17 }, %struct.rtl2832_reg_value { i32 115, i32 239 }, %struct.rtl2832_reg_value { i32 116, i32 12 }, %struct.rtl2832_reg_value { i32 117, i32 0 }, %struct.rtl2832_reg_value { i32 118, i32 1 }, %struct.rtl2832_reg_value { i32 88, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], align 4
@rtl2832_tuner_init_tua9001 = internal unnamed_addr constant [25 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 156 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 50, i32 1 }, %struct.rtl2832_reg_value { i32 51, i32 0 }, %struct.rtl2832_reg_value { i32 52, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], align 4
@rtl2832_tuner_init_e4000 = internal unnamed_addr constant [35 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 90 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 24 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59860 }, %struct.rtl2832_reg_value { i32 111, i32 0 }, %struct.rtl2832_reg_value { i32 112, i32 0 }, %struct.rtl2832_reg_value { i32 113, i32 0 }, %struct.rtl2832_reg_value { i32 114, i32 20 }, %struct.rtl2832_reg_value { i32 115, i32 236 }, %struct.rtl2832_reg_value { i32 116, i32 12 }, %struct.rtl2832_reg_value { i32 117, i32 0 }, %struct.rtl2832_reg_value { i32 118, i32 1 }, %struct.rtl2832_reg_value { i32 181, i32 1 }, %struct.rtl2832_reg_value { i32 182, i32 1 }, %struct.rtl2832_reg_value { i32 180, i32 1 }, %struct.rtl2832_reg_value { i32 179, i32 1 }, %struct.rtl2832_reg_value { i32 183, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], align 4
@rtl2832_tuner_init_r820t = internal unnamed_addr constant [22 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 64 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 61, i32 1 }], align 4
@rtl2832_tuner_init_si2157 = internal unnamed_addr constant [22 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 64 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], align 4
@registers = internal unnamed_addr constant [184 x %struct.rtl2832_reg_entry] [%struct.rtl2832_reg_entry { i16 257, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 257, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 392, i8 11, i8 2 }, %struct.rtl2832_reg_entry { i16 399, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 422, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 10, i8 2, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 8, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 8, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 433, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 405, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 406, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 407, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 408, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 409, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 410, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 411, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 412, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 353, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 9, i8 6, i8 0 }, %struct.rtl2832_reg_entry { i16 33, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 658, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 659, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 679, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 681, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 682, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 683, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 684, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 688, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 689, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 356, i8 3, i8 1 }, %struct.rtl2832_reg_entry { i16 356, i8 6, i8 4 }, %struct.rtl2832_reg_entry { i16 357, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 6, i8 5, i8 4 }, %struct.rtl2832_reg_entry { i16 9, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 9, i8 3, i8 2 }, %struct.rtl2832_reg_entry { i16 685, i8 9, i8 4 }, %struct.rtl2832_reg_entry { i16 367, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 368, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 370, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 371, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 373, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 374, i8 7, i8 6 }, %struct.rtl2832_reg_entry { i16 281, i8 21, i8 0 }, %struct.rtl2832_reg_entry { i16 277, i8 0, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 415, i8 27, i8 2 }, %struct.rtl2832_reg_entry { i16 413, i8 23, i8 4 }, %struct.rtl2832_reg_entry { i16 849, i8 6, i8 3 }, %struct.rtl2832_reg_entry { i16 828, i8 3, i8 2 }, %struct.rtl2832_reg_entry { i16 828, i8 6, i8 4 }, %struct.rtl2832_reg_entry { i16 829, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 829, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 849, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 849, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 846, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 1036, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 859, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 857, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 773, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 792, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 863, i8 17, i8 0 }, %struct.rtl2832_reg_entry { i16 14, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 14, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 260, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 260, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 260, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 264, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 265, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 266, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 267, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 268, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 268, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 270, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 270, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 274, i8 7, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 258, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 259, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 455, i8 5, i8 1 }, %struct.rtl2832_reg_entry { i16 260, i8 4, i8 1 }, %struct.rtl2832_reg_entry { i16 261, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 456, i8 4, i8 0 }, %struct.rtl2832_reg_entry { i16 262, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 457, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 458, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 459, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 263, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 461, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 462, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 485, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 473, i8 8, i8 0 }, %struct.rtl2832_reg_entry { i16 475, i8 8, i8 0 }, %struct.rtl2832_reg_entry { i16 477, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 478, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 472, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 486, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 471, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 379, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 379, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 379, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 380, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 380, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 380, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 380, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 380, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 380, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 381, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 381, i8 7, i8 4 }, %struct.rtl2832_reg_entry { i16 6, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 7, i8 7, i8 6 }, %struct.rtl2832_reg_entry { i16 183, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 183, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 183, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 183, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 183, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 185, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 185, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 185, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 185, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 185, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 403, i8 11, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 17, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 769, i8 6, i8 0 }, %struct.rtl2832_reg_entry { i16 786, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 13, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 13, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 13, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 16, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 19, i8 0, i8 0 }], align 2
@rtl2832_set_frontend.bw_params = internal global [3 x [32 x i8]] [[32 x i8] c"\F5\FF\158]mR\07\FA/S\F5?\CA\0B\91\EA0c\B2\13\DA\0B\C4\18~\16f\08g\19\E0", [32 x i8] c"\E7\CC\B5\BA\E8/ga\00\AF\86\F2\BFY\04\11\B63\A40\15\10\0AB\18\F8\17\D9\07\22\19\10", [32 x i8] c"\09\F6\D2\A7\9A\C9'w\06\BF\EC\F4O\0B\FC\01c5T\A7\16f\08\B4\19n\19e\05\C8\19\E0"], align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid bandwidth_hz %u\0A\00", align 1
@rtl2832_read_status.constant = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 85387325, i32 85387325, i32 85387325, i32 85387325], [4 x i32] [i32 86676178, i32 86676178, i32 87167949, i32 87795660], [4 x i32] [i32 87659938, i32 87659938, i32 87885178, i32 88241743]], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"_\FF\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\7F\F7\FF\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\00\0F\FF\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"
@switch.table.rtl2832_init = private unnamed_addr constant [12 x ptr] [ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_tua9001, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc0012, ptr @rtl2832_tuner_init_e4000, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc0012, ptr @rtl2832_tuner_init_r820t, ptr @rtl2832_tuner_init_r820t, ptr @rtl2832_tuner_init_si2157], align 4
@switch.table.rtl2832_init.9 = private unnamed_addr constant [12 x i32] [i32 21, i32 21, i32 21, i32 25, i32 21, i32 31, i32 35, i32 21, i32 31, i32 22, i32 22, i32 22], align 4
@switch.table.rtl2832_get_frontend = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.rtl2832_get_frontend.11 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

@__mod_i2c__rtl2832_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @rtl2832_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @rtl2832_driver) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rtl2832_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1312) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = load ptr, ptr %5, align 4
  store ptr %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 10
  store i8 1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 11
  store i32 -32, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 11, i32 0, i32 2
  store ptr @rtl2832_i2c_gate_work, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %21, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %22 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2
  %23 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 1
  store i32 8, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 4
  store i32 8, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 7
  store ptr @rtl2832_volatile_reg, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 19
  store i32 1280, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 40
  store ptr @rtl2832_probe.regmap_range_cfg, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 41
  store i32 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 2, i32 28
  store i32 0, ptr %29, align 8
  %30 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef %22, ptr noundef null, ptr noundef null) #13
  %31 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %12
  %34 = ptrtoint ptr %30 to i32
  br label %61

35:                                               ; preds = %12
  %36 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 1) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  %40 = call ptr @i2c_mux_alloc(ptr noundef %8, ptr noundef %39, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @rtl2832_select, ptr noundef nonnull @rtl2832_deselect) #13
  %41 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 4
  store ptr %40, ptr %41, align 8
  %42 = icmp eq ptr %40, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.i2c_mux_core, ptr %40, i32 0, i32 3
  store ptr %10, ptr %44, align 4
  %45 = load ptr, ptr %41, align 8
  %46 = call i32 @i2c_mux_add_adapter(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 5, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %49, ptr noundef nonnull align 4 dereferenceable(544) @rtl2832_ops, i32 544, i1 false)
  %50 = getelementptr inbounds %struct.rtl2832_dev, ptr %10, i32 0, i32 5, i32 3
  store ptr %10, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 2
  store ptr @rtl2832_get_dvb_frontend, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 3
  store ptr @rtl2832_get_i2c_adapter, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 4
  store ptr @rtl2832_slave_ts_ctrl, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 5
  store ptr @rtl2832_pid_filter, ptr %54, align 4
  %55 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 6
  store ptr @rtl2832_pid_filter_ctrl, ptr %55, align 4
  %56 = load ptr, ptr %31, align 4
  %57 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %6, i32 0, i32 7
  store ptr %56, ptr %57, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1) #15
  br label %63

58:                                               ; preds = %43, %38, %35
  %59 = phi i32 [ %36, %35 ], [ %46, %43 ], [ -12, %38 ]
  %60 = load ptr, ptr %31, align 4
  call void @regmap_exit(ptr noundef %60) #13
  br label %61

61:                                               ; preds = %58, %33
  %62 = phi i32 [ %34, %33 ], [ %59, %58 ]
  call void @kfree(ptr noundef nonnull %10) #13
  br label %63

63:                                               ; preds = %61, %48, %2
  %64 = phi i32 [ 0, %48 ], [ %62, %61 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 11
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @regmap_exit(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rtl2832_i2c_gate_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -1080
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 257, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl2832_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 773, label %4
    i32 828, label %4
    i32 846, label %4
    i32 849, label %4
    i32 1036, label %4
    i32 1037, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 11
  %6 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 257, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 11
  %6 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #13
  %7 = icmp ult i32 %6, 100
  %8 = select i1 %7, i32 1073741822, i32 1
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %5, i32 noundef %8) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rtl2832_get_dvb_frontend(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rtl2832_get_i2c_adapter(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_mux_core, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_slave_ts_ctrl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  br i1 %1, label %6, label %25

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %5, i32 noundef 0, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtl2832_dev, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef 268, ptr noundef nonnull @.str.3, i32 noundef 2) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %5, i32 noundef 37, i32 noundef 1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4
  %19 = tail call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 188, ptr noundef nonnull @.str.4, i32 noundef 1) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load ptr, ptr %10, align 4
  %23 = tail call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 402, ptr noundef nonnull @.str.5, i32 noundef 3) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %46

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.rtl2832_dev, ptr %5, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 402, ptr noundef nonnull @.str.6, i32 noundef 3) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 4
  %32 = tail call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 188, ptr noundef nonnull @.str.7, i32 noundef 1) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %5, i32 noundef 37, i32 noundef 0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load ptr, ptr %26, align 4
  %39 = tail call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef 268, ptr noundef nonnull @.str.8, i32 noundef 2) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %5, i32 noundef 0, i32 noundef 1)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %21
  %45 = getelementptr inbounds %struct.rtl2832_dev, ptr %5, i32 0, i32 13
  store i8 %3, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %41, %37, %34, %30, %25, %21, %17, %14, %9, %6
  %47 = phi i32 [ 0, %44 ], [ %7, %6 ], [ %12, %9 ], [ %15, %14 ], [ %19, %17 ], [ %23, %21 ], [ %28, %25 ], [ %32, %30 ], [ %35, %34 ], [ %39, %37 ], [ %42, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_pid_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = icmp ugt i16 %2, 8191
  %9 = zext i8 %1 to i32
  %10 = icmp ugt i8 %1, 32
  %11 = or i1 %10, %8
  br i1 %11, label %53, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %3, 0
  %14 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 12
  br i1 %13, label %16, label %15

15:                                               ; preds = %12
  tail call void @_set_bit(i32 noundef %9, ptr noundef %14) #13
  br label %17

16:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %14) #13
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 12
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %5, align 4
  %21 = lshr i32 %19, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = lshr i32 %19, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %25, ptr %26, align 2
  %27 = lshr i32 %19, 24
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 13
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = select i1 %32, i32 98, i32 34
  %36 = call i32 @regmap_bulk_write(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %5, i32 noundef 4) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %17
  %39 = lshr i16 %2, 8
  %40 = trunc i16 %39 to i8
  store i8 %40, ptr %5, align 4
  %41 = trunc i16 %2 to i8
  store i8 %41, ptr %23, align 1
  %42 = load i8, ptr %30, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = shl nuw nsw i32 %9, 1
  %47 = select i1 %43, i32 102, i32 38
  %48 = add nuw nsw i32 %46, %47
  %49 = call i32 @regmap_bulk_write(ptr noundef %45, i32 noundef %48, ptr noundef nonnull %5, i32 noundef 2) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %38, %17
  %52 = phi i32 [ %36, %17 ], [ %49, %38 ]
  br label %53

53:                                               ; preds = %51, %38, %4
  %54 = phi i32 [ %52, %51 ], [ 0, %4 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_pid_filter_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 0, i32 128
  %7 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 13
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = select i1 %9, i32 97, i32 33
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %12, i32 noundef 192, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %3, i32 noundef 0, i32 noundef 0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %56

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1
  %8 = icmp eq i32 %7, 42
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %11 = getelementptr [42 x %struct.rtl2832_reg_value], ptr @__const.rtl2832_init.rtl2832_initial_regs, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [42 x %struct.rtl2832_reg_value], ptr @__const.rtl2832_init.rtl2832_initial_regs, i32 0, i32 %10, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %3, i32 noundef %12, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %6, label %56

17:                                               ; preds = %6
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = add i8 %20, -33
  %22 = icmp ult i8 %21, 12
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = zext i8 %21 to i16
  %25 = lshr i16 3945, %24
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = sext i8 %21 to i32
  %30 = getelementptr inbounds [12 x ptr], ptr @switch.table.rtl2832_init, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = sext i8 %21 to i32
  %33 = getelementptr inbounds [12 x i32], ptr @switch.table.rtl2832_init.9, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i32 %39, 1
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %46, label %38

38:                                               ; preds = %35, %28
  %39 = phi i32 [ 0, %28 ], [ %36, %35 ]
  %40 = getelementptr %struct.rtl2832_reg_value, ptr %31, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.rtl2832_reg_value, ptr %31, i32 %39, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %3, i32 noundef %41, i32 noundef %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %35, label %56

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 42
  store i8 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 42, i32 1
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 43
  store i8 1, ptr %49, align 1
  %50 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 43, i32 1
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 46
  store i8 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 46, i32 1
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 47
  store i8 1, ptr %53, align 1
  %54 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 5, i32 8, i32 47, i32 1
  store i8 0, ptr %54, align 1
  %55 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 10
  store i8 0, ptr %55, align 8
  br label %56

56:                                               ; preds = %46, %38, %23, %17, %9, %1
  %57 = phi i32 [ 0, %46 ], [ %4, %1 ], [ -22, %17 ], [ -22, %23 ], [ %44, %38 ], [ %15, %9 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 10
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rtl2832_dev, ptr %3, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %3, i32 noundef 0, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_set_frontend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %17 = call i32 %14(ptr noundef %0, ptr noundef nonnull %2) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load i32, ptr %2, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = icmp eq i32 %20, 0
  %23 = load ptr, ptr %21, align 8
  %24 = load i32, ptr %23, align 4
  %25 = urem i32 %20, %24
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 22
  %28 = icmp ult i32 %25, 1024
  br i1 %28, label %29, label %32, !prof !10

29:                                               ; preds = %19
  %30 = trunc i64 %27 to i32
  %31 = udiv i32 %30, %24
  br label %36

32:                                               ; preds = %19
  %33 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %27) #16, !srcloc !11
  %34 = extractvalue { i64, i64 } %33, 1
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ %35, %32 ]
  %38 = zext i1 %22 to i32
  %39 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %21, i32 noundef 26, i32 noundef %38) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = sub i32 0, %37
  %43 = and i32 %42, 4194303
  %44 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %21, i32 noundef 60, i32 noundef %43) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %36, %16
  %47 = phi i32 [ %44, %41 ], [ %39, %36 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %107

48:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %49

49:                                               ; preds = %48, %12
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %54 [
    i32 6000000, label %56
    i32 7000000, label %52
    i32 8000000, label %53
  ]

52:                                               ; preds = %49
  br label %56

53:                                               ; preds = %49
  br label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2, i32 noundef %51) #15
  br label %107

56:                                               ; preds = %53, %52, %49
  %57 = phi i32 [ 2, %53 ], [ 1, %52 ], [ 0, %49 ]
  %58 = phi i64 [ 64000000, %53 ], [ 56000000, %52 ], [ 48000000, %49 ]
  %59 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 3
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i32 %64, 1
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %70, label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ 0, %56 ], [ %61, %60 ]
  %65 = load ptr, ptr %59, align 4
  %66 = add nuw nsw i32 %64, 284
  %67 = getelementptr [3 x [32 x i8]], ptr @rtl2832_set_frontend.bw_params, i32 0, i32 %57, i32 %64
  %68 = call i32 @regmap_bulk_write(ptr noundef %65, i32 noundef %66, ptr noundef %67, i32 noundef 1) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %60, label %107

70:                                               ; preds = %60
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %71, align 4
  %73 = zext i32 %72 to i64
  %74 = mul nuw nsw i64 %73, 29360128
  %75 = trunc i64 %58 to i32
  %76 = icmp ult i64 %74, 4294967296
  br i1 %76, label %77, label %80, !prof !10

77:                                               ; preds = %70
  %78 = trunc i64 %74 to i32
  %79 = udiv i32 %78, %75
  br label %84

80:                                               ; preds = %70
  %81 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %75, i64 %74) #16, !srcloc !11
  %82 = extractvalue { i64, i64 } %81, 1
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %79, %77 ], [ %83, %80 ]
  %86 = and i32 %85, 67108863
  %87 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %4, i32 noundef 63, i32 noundef %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %90, align 4
  %92 = mul i32 %91, 7
  %93 = shl nuw nsw i64 %58, 20
  %94 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %92, i64 %93) #16, !srcloc !11
  %95 = extractvalue { i64, i64 } %94, 1
  %96 = trunc i64 %95 to i32
  %97 = sub i32 0, %96
  %98 = and i32 %97, 1048575
  %99 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %4, i32 noundef 64, i32 noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %4, i32 noundef 0, i32 noundef 1)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %4, i32 noundef 0, i32 noundef 0)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104, %101, %89, %84, %63, %54, %46
  %108 = phi i32 [ -22, %54 ], [ %87, %84 ], [ %99, %89 ], [ %102, %101 ], [ %105, %104 ], [ %47, %46 ], [ %68, %63 ]
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %108, %107 ], [ 0, %104 ]
  ret i32 %110
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  store i32 1000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  %8 = shl i32 %7, 1
  %9 = or i32 %8, 1
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.rtl2832_dev, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 8, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtl2832_dev, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 828, ptr noundef nonnull %3, i32 noundef 2) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %17 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 849, ptr noundef %16, i32 noundef 1) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %14
  %20 = load i8, ptr %3, align 1
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 3
  %23 = icmp eq i8 %22, 3
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = zext i8 %22 to i32
  %26 = getelementptr inbounds [3 x i32], ptr @switch.table.rtl2832_get_frontend, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i8, ptr %16, align 1
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %33, ptr %34, align 4
  %35 = and i8 %30, 3
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %36, ptr %37, align 4
  %38 = lshr i8 %20, 4
  %39 = and i8 %38, 7
  %40 = icmp ult i8 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = zext i8 %39 to i32
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %29
  %45 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = lshr i8 %46, 3
  %48 = and i8 %47, 7
  %49 = icmp ult i8 %48, 5
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = zext i8 %48 to i32
  %52 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2832_get_frontend.11, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %50, %44
  %56 = and i8 %46, 7
  %57 = icmp ult i8 %56, 5
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = zext i8 %56 to i32
  %60 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2832_get_frontend.11, i32 0, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %58, %55, %14, %9, %2
  %64 = phi i32 [ 0, %2 ], [ 0, %55 ], [ %12, %9 ], [ %17, %14 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #13
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 8, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %126

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 849, ptr noundef nonnull %3, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %126

17:                                               ; preds = %11
  %18 = load i8, ptr %3, align 4
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 15
  %21 = zext i8 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  switch i32 %21, label %22 [
    i32 11, label %24
    i32 10, label %27
  ]

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 4
  br label %30

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 4
  %26 = or i32 %25, 31
  store i32 %26, ptr %1, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, ptr %1, align 4
  %29 = or i32 %28, 7
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %27, %24, %22
  %31 = phi i32 [ %23, %22 ], [ %29, %27 ], [ %26, %24 ]
  %32 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = and i32 %31, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 4
  %37 = call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef 773, ptr noundef nonnull %4, i32 noundef 1) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %126

39:                                               ; preds = %35
  %40 = load i8, ptr %4, align 1
  %41 = xor i8 %40, -1
  store i8 %41, ptr %4, align 1
  %42 = zext i8 %41 to i32
  %43 = mul nuw nsw i32 %42, 257
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %44, align 1
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %45, ptr %46, align 1
  br label %49

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i32, ptr %32, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %12, align 4
  %55 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef 828, ptr noundef nonnull %4, i32 noundef 1) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %126

57:                                               ; preds = %53
  %58 = load i8, ptr %4, align 1
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %59, 2
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %126, label %63

63:                                               ; preds = %57
  %64 = lshr i32 %59, 4
  %65 = and i32 %64, 7
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %126, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %12, align 4
  %69 = call i32 @regmap_bulk_read(ptr noundef %68, i32 noundef 1036, ptr noundef nonnull %5, i32 noundef 2) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %126

71:                                               ; preds = %67
  %72 = load i8, ptr %5, align 2
  %73 = zext i8 %72 to i16
  %74 = shl nuw i16 %73, 8
  %75 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  %78 = or i16 %74, %77
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %71
  %81 = getelementptr [3 x [4 x i32]], ptr @rtl2832_read_status.constant, i32 0, i32 %61, i32 %65
  %82 = load i32, ptr %81, align 4
  %83 = zext i16 %78 to i32
  %84 = call i32 @intlog10(i32 noundef %83) #13
  %85 = sub i32 %82, %84
  %86 = udiv i32 %85, 1677
  br label %87

87:                                               ; preds = %80, %71
  %88 = phi i32 [ %86, %80 ], [ 0, %71 ]
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %89, align 1
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %90, ptr %91, align 1
  br label %94

92:                                               ; preds = %49
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %93, align 1
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, ptr %32, align 4
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %123, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %12, align 4
  %100 = call i32 @regmap_bulk_read(ptr noundef %99, i32 noundef 846, ptr noundef nonnull %5, i32 noundef 2) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load i8, ptr %5, align 2
  %104 = zext i8 %103 to i16
  %105 = shl nuw i16 %104, 8
  %106 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i16
  %109 = or i16 %105, %108
  %110 = zext i16 %109 to i64
  %111 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 8
  %112 = load i64, ptr %111, align 8
  %113 = add i64 %112, %110
  store i64 %113, ptr %111, align 8
  %114 = getelementptr inbounds %struct.rtl2832_dev, ptr %7, i32 0, i32 9
  %115 = load i64, ptr %114, align 8
  %116 = add i64 %115, 1000000
  store i64 %116, ptr %114, align 8
  %117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %117, align 1
  %118 = load i64, ptr %111, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %118, ptr %119, align 1
  %120 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %120, align 1
  %121 = load i64, ptr %114, align 8
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %121, ptr %122, align 1
  br label %126

123:                                              ; preds = %94
  %124 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %124, align 1
  %125 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %125, align 1
  br label %126

126:                                              ; preds = %123, %102, %98, %67, %63, %57, %53, %35, %16, %2
  %127 = phi i32 [ 0, %2 ], [ 0, %123 ], [ 0, %102 ], [ %14, %16 ], [ %37, %35 ], [ %100, %98 ], [ %69, %67 ], [ -22, %63 ], [ -22, %57 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtl2832_dev, ptr %4, i32 0, i32 7
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %6, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl2832_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
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
define internal fastcc i32 @rtl2832_wr_demod_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %1
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %1, i32 1
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %1, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %9 to i32
  %13 = lshr i8 %9, 3
  %14 = add nuw nsw i8 %13, 1
  %15 = zext i8 %11 to i32
  %16 = add nuw nsw i32 %12, 1
  %17 = sub nsw i32 %16, %15
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds %struct.rtl2832_dev, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = zext i16 %7 to i32
  %23 = zext i8 %14 to i32
  %24 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef %22, ptr noundef nonnull %4, i32 noundef %23) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %26, %3
  %27 = phi i32 [ %36, %26 ], [ 0, %3 ]
  %28 = phi i32 [ %37, %26 ], [ 0, %3 ]
  %29 = getelementptr [4 x i8], ptr %4, i32 0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, -1
  %33 = add nsw i32 %32, %23
  %34 = shl i32 %33, 3
  %35 = shl i32 %31, %34
  %36 = or i32 %35, %27
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %26

39:                                               ; preds = %26
  %40 = shl i32 %19, %15
  %41 = xor i32 %40, -1
  %42 = and i32 %36, %41
  %43 = and i32 %19, %2
  %44 = shl i32 %43, %15
  %45 = or i32 %42, %44
  br label %46

46:                                               ; preds = %46, %39
  %47 = phi i32 [ 0, %39 ], [ %54, %46 ]
  %48 = xor i32 %47, -1
  %49 = add nsw i32 %48, %23
  %50 = shl i32 %49, 3
  %51 = lshr i32 %45, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr [4 x i8], ptr %5, i32 0, i32 %47
  store i8 %52, ptr %53, align 1
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, %23
  br i1 %55, label %56, label %46

56:                                               ; preds = %46
  %57 = load ptr, ptr %20, align 4
  %58 = call i32 @regmap_bulk_write(ptr noundef %57, i32 noundef %22, ptr noundef nonnull %5, i32 noundef %23) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56, %3
  %61 = phi i32 [ %24, %3 ], [ %58, %56 ]
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
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
!11 = !{i64 2148536798, i64 2148537078, i64 2148537412, i64 2148537746}
