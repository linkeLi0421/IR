; ModuleID = '/llk/IR/drivers/media/tuners/tda18271-maps.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-maps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tda18271_thermo_map = type { i8, i8, i8 }
%struct.tda18271_cid_target_map = type { i32, i8, i16 }
%struct.tda18271_map_layout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tda18271_pll_map = type { i32, i8, i8 }
%struct.tda18271_map = type { i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda18271_priv = type { [39 x i8], %struct.list_head, %struct.tuner_i2c_props, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, %struct.tda18271_std_map, [8 x %struct.tda18271_rf_tracking_filter_cal], %struct.mutex, i16, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@tda18271_thermometer = internal unnamed_addr constant [17 x %struct.tda18271_thermo_map] [%struct.tda18271_thermo_map { i8 0, i8 60, i8 92 }, %struct.tda18271_thermo_map { i8 1, i8 62, i8 94 }, %struct.tda18271_thermo_map { i8 2, i8 66, i8 98 }, %struct.tda18271_thermo_map { i8 3, i8 64, i8 96 }, %struct.tda18271_thermo_map { i8 4, i8 74, i8 106 }, %struct.tda18271_thermo_map { i8 5, i8 72, i8 104 }, %struct.tda18271_thermo_map { i8 6, i8 68, i8 100 }, %struct.tda18271_thermo_map { i8 7, i8 70, i8 102 }, %struct.tda18271_thermo_map { i8 8, i8 90, i8 122 }, %struct.tda18271_thermo_map { i8 9, i8 88, i8 120 }, %struct.tda18271_thermo_map { i8 10, i8 84, i8 116 }, %struct.tda18271_thermo_map { i8 11, i8 86, i8 118 }, %struct.tda18271_thermo_map { i8 12, i8 76, i8 108 }, %struct.tda18271_thermo_map { i8 13, i8 78, i8 110 }, %struct.tda18271_thermo_map { i8 14, i8 82, i8 114 }, %struct.tda18271_thermo_map { i8 15, i8 80, i8 112 }, %struct.tda18271_thermo_map zeroinitializer], align 1
@tda18271_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@__func__.tda18271_lookup_thermometer = private unnamed_addr constant [28 x i8] c"tda18271_lookup_thermometer\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(%d) tm = %d\0A\00", align 1
@tda18271_cid_target = internal unnamed_addr constant [13 x %struct.tda18271_cid_target_map] [%struct.tda18271_cid_target_map { i32 46000, i8 4, i16 1800 }, %struct.tda18271_cid_target_map { i32 52200, i8 10, i16 1500 }, %struct.tda18271_cid_target_map { i32 70100, i8 1, i16 4000 }, %struct.tda18271_cid_target_map { i32 136800, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 156700, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 186250, i8 10, i16 4000 }, %struct.tda18271_cid_target_map { i32 230000, i8 10, i16 4000 }, %struct.tda18271_cid_target_map { i32 345000, i8 24, i16 4000 }, %struct.tda18271_cid_target_map { i32 426000, i8 14, i16 4000 }, %struct.tda18271_cid_target_map { i32 489500, i8 30, i16 4000 }, %struct.tda18271_cid_target_map { i32 697500, i8 50, i16 4000 }, %struct.tda18271_cid_target_map { i32 842000, i8 58, i16 4000 }, %struct.tda18271_cid_target_map zeroinitializer], align 4
@__func__.tda18271_lookup_cid_target = private unnamed_addr constant [27 x i8] c"tda18271_lookup_cid_target\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(%d) cid_target = %02x, count_limit = %d\0A\00", align 1
@__func__.tda18271_lookup_rf_band = private unnamed_addr constant [24 x i8] c"tda18271_lookup_rf_band\00", align 1
@.str.3 = private unnamed_addr constant [149 x i8] c"(%d) rfmax = %d < freq = %d, rf1_def = %d, rf2_def = %d, rf3_def = %d, rf1 = %d, rf2 = %d, rf3 = %d, rf_a1 = %d, rf_a2 = %d, rf_b1 = %d, rf_b2 = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(%d) rf_band = %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"main_pll\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"cal_pll\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@__func__.tda18271_lookup_pll_map = private unnamed_addr constant [24 x i8] c"tda18271_lookup_pll_map\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s map is not set!\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s: frequency (%d) out of range\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"(%d) %s: post div = 0x%02x, div = 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"bp_filter\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"km\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"rf_band\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gain_taper\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rf_cal\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ir_measure\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rf_cal_dc_over_dt\00", align 1
@__func__.tda18271_lookup_map = private unnamed_addr constant [20 x i8] c"tda18271_lookup_map\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"(%d) %s: 0x%02x\0A\00", align 1
@tda18271c1_map_layout = internal global %struct.tda18271_map_layout { ptr @tda18271c1_main_pll, ptr @tda18271c1_cal_pll, ptr @tda18271c1_rf_cal, ptr @tda18271c1_km, ptr null, ptr @tda18271_bp_filter, ptr @tda18271_rf_band, ptr @tda18271_gain_taper, ptr @tda18271_ir_measure }, align 4
@tda18271c2_map_layout = internal global %struct.tda18271_map_layout { ptr @tda18271c2_main_pll, ptr @tda18271c2_cal_pll, ptr @tda18271c2_rf_cal, ptr @tda18271c2_km, ptr @tda18271_rf_cal_dc_over_dt, ptr @tda18271_bp_filter, ptr @tda18271_rf_band, ptr @tda18271_gain_taper, ptr @tda18271_ir_measure }, align 4
@tda18271_rf_band_template = internal unnamed_addr constant [8 x %struct.tda18271_rf_tracking_filter_cal] [%struct.tda18271_rf_tracking_filter_cal { i32 47900, i8 0, i32 46000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 61100, i8 1, i32 52200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 152600, i8 2, i32 70100, i32 136800, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 164700, i8 3, i32 156700, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 203500, i8 4, i32 186250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 457800, i8 5, i32 230000, i32 345000, i32 426000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal { i32 865000, i8 6, i32 489500, i32 697500, i32 842000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.tda18271_rf_tracking_filter_cal zeroinitializer], align 4
@tda18271c1_main_pll = internal global [41 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 32000, i8 95, i8 -16 }, %struct.tda18271_pll_map { i32 35000, i8 94, i8 -32 }, %struct.tda18271_pll_map { i32 37000, i8 93, i8 -48 }, %struct.tda18271_pll_map { i32 41000, i8 92, i8 -64 }, %struct.tda18271_pll_map { i32 44000, i8 91, i8 -80 }, %struct.tda18271_pll_map { i32 49000, i8 90, i8 -96 }, %struct.tda18271_pll_map { i32 54000, i8 89, i8 -112 }, %struct.tda18271_pll_map { i32 61000, i8 88, i8 -128 }, %struct.tda18271_pll_map { i32 65000, i8 79, i8 120 }, %struct.tda18271_pll_map { i32 70000, i8 78, i8 112 }, %struct.tda18271_pll_map { i32 75000, i8 77, i8 104 }, %struct.tda18271_pll_map { i32 82000, i8 76, i8 96 }, %struct.tda18271_pll_map { i32 89000, i8 75, i8 88 }, %struct.tda18271_pll_map { i32 98000, i8 74, i8 80 }, %struct.tda18271_pll_map { i32 109000, i8 73, i8 72 }, %struct.tda18271_pll_map { i32 123000, i8 72, i8 64 }, %struct.tda18271_pll_map { i32 131000, i8 63, i8 60 }, %struct.tda18271_pll_map { i32 141000, i8 62, i8 56 }, %struct.tda18271_pll_map { i32 151000, i8 61, i8 52 }, %struct.tda18271_pll_map { i32 164000, i8 60, i8 48 }, %struct.tda18271_pll_map { i32 179000, i8 59, i8 44 }, %struct.tda18271_pll_map { i32 197000, i8 58, i8 40 }, %struct.tda18271_pll_map { i32 219000, i8 57, i8 36 }, %struct.tda18271_pll_map { i32 246000, i8 56, i8 32 }, %struct.tda18271_pll_map { i32 263000, i8 47, i8 30 }, %struct.tda18271_pll_map { i32 282000, i8 46, i8 28 }, %struct.tda18271_pll_map { i32 303000, i8 45, i8 26 }, %struct.tda18271_pll_map { i32 329000, i8 44, i8 24 }, %struct.tda18271_pll_map { i32 359000, i8 43, i8 22 }, %struct.tda18271_pll_map { i32 395000, i8 42, i8 20 }, %struct.tda18271_pll_map { i32 438000, i8 41, i8 18 }, %struct.tda18271_pll_map { i32 493000, i8 40, i8 16 }, %struct.tda18271_pll_map { i32 526000, i8 31, i8 15 }, %struct.tda18271_pll_map { i32 564000, i8 30, i8 14 }, %struct.tda18271_pll_map { i32 607000, i8 29, i8 13 }, %struct.tda18271_pll_map { i32 658000, i8 28, i8 12 }, %struct.tda18271_pll_map { i32 718000, i8 27, i8 11 }, %struct.tda18271_pll_map { i32 790000, i8 26, i8 10 }, %struct.tda18271_pll_map { i32 877000, i8 25, i8 9 }, %struct.tda18271_pll_map { i32 987000, i8 24, i8 8 }, %struct.tda18271_pll_map zeroinitializer], align 4
@tda18271c1_cal_pll = internal global [36 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33000, i8 -35, i8 -48 }, %struct.tda18271_pll_map { i32 36000, i8 -36, i8 -64 }, %struct.tda18271_pll_map { i32 40000, i8 -37, i8 -80 }, %struct.tda18271_pll_map { i32 44000, i8 -38, i8 -96 }, %struct.tda18271_pll_map { i32 49000, i8 -39, i8 -112 }, %struct.tda18271_pll_map { i32 55000, i8 -40, i8 -128 }, %struct.tda18271_pll_map { i32 63000, i8 -45, i8 112 }, %struct.tda18271_pll_map { i32 67000, i8 -51, i8 104 }, %struct.tda18271_pll_map { i32 73000, i8 -52, i8 96 }, %struct.tda18271_pll_map { i32 80000, i8 -53, i8 88 }, %struct.tda18271_pll_map { i32 88000, i8 -54, i8 80 }, %struct.tda18271_pll_map { i32 98000, i8 -55, i8 72 }, %struct.tda18271_pll_map { i32 110000, i8 -56, i8 64 }, %struct.tda18271_pll_map { i32 126000, i8 -61, i8 56 }, %struct.tda18271_pll_map { i32 135000, i8 -67, i8 52 }, %struct.tda18271_pll_map { i32 147000, i8 -68, i8 48 }, %struct.tda18271_pll_map { i32 160000, i8 -69, i8 44 }, %struct.tda18271_pll_map { i32 176000, i8 -70, i8 40 }, %struct.tda18271_pll_map { i32 196000, i8 -71, i8 36 }, %struct.tda18271_pll_map { i32 220000, i8 -72, i8 32 }, %struct.tda18271_pll_map { i32 252000, i8 -77, i8 28 }, %struct.tda18271_pll_map { i32 271000, i8 -83, i8 26 }, %struct.tda18271_pll_map { i32 294000, i8 -84, i8 24 }, %struct.tda18271_pll_map { i32 321000, i8 -85, i8 22 }, %struct.tda18271_pll_map { i32 353000, i8 -86, i8 20 }, %struct.tda18271_pll_map { i32 392000, i8 -87, i8 18 }, %struct.tda18271_pll_map { i32 441000, i8 -88, i8 16 }, %struct.tda18271_pll_map { i32 505000, i8 -93, i8 14 }, %struct.tda18271_pll_map { i32 543000, i8 -99, i8 13 }, %struct.tda18271_pll_map { i32 589000, i8 -100, i8 12 }, %struct.tda18271_pll_map { i32 642000, i8 -101, i8 11 }, %struct.tda18271_pll_map { i32 707000, i8 -102, i8 10 }, %struct.tda18271_pll_map { i32 785000, i8 -103, i8 9 }, %struct.tda18271_pll_map { i32 883000, i8 -104, i8 8 }, %struct.tda18271_pll_map { i32 1010000, i8 -109, i8 7 }, %struct.tda18271_pll_map zeroinitializer], align 4
@tda18271c1_rf_cal = internal global [18 x %struct.tda18271_map] [%struct.tda18271_map { i32 41000, i8 30 }, %struct.tda18271_map { i32 43000, i8 48 }, %struct.tda18271_map { i32 45000, i8 67 }, %struct.tda18271_map { i32 46000, i8 77 }, %struct.tda18271_map { i32 47000, i8 84 }, %struct.tda18271_map { i32 47900, i8 100 }, %struct.tda18271_map { i32 49100, i8 32 }, %struct.tda18271_map { i32 50000, i8 34 }, %struct.tda18271_map { i32 51000, i8 42 }, %struct.tda18271_map { i32 53000, i8 50 }, %struct.tda18271_map { i32 55000, i8 53 }, %struct.tda18271_map { i32 56000, i8 60 }, %struct.tda18271_map { i32 57000, i8 63 }, %struct.tda18271_map { i32 58000, i8 72 }, %struct.tda18271_map { i32 59000, i8 77 }, %struct.tda18271_map { i32 60000, i8 88 }, %struct.tda18271_map { i32 61100, i8 95 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271c1_km = internal global [5 x %struct.tda18271_map] [%struct.tda18271_map { i32 61100, i8 116 }, %struct.tda18271_map { i32 350000, i8 64 }, %struct.tda18271_map { i32 720000, i8 48 }, %struct.tda18271_map { i32 865000, i8 64 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271_bp_filter = internal global [8 x %struct.tda18271_map] [%struct.tda18271_map { i32 62000, i8 0 }, %struct.tda18271_map { i32 84000, i8 1 }, %struct.tda18271_map { i32 100000, i8 2 }, %struct.tda18271_map { i32 140000, i8 3 }, %struct.tda18271_map { i32 170000, i8 4 }, %struct.tda18271_map { i32 180000, i8 5 }, %struct.tda18271_map { i32 865000, i8 6 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271_rf_band = internal global [8 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 0 }, %struct.tda18271_map { i32 61100, i8 1 }, %struct.tda18271_map { i32 152600, i8 2 }, %struct.tda18271_map { i32 164700, i8 3 }, %struct.tda18271_map { i32 203500, i8 4 }, %struct.tda18271_map { i32 457800, i8 5 }, %struct.tda18271_map { i32 865000, i8 6 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271_gain_taper = internal global [86 x %struct.tda18271_map] [%struct.tda18271_map { i32 45400, i8 31 }, %struct.tda18271_map { i32 45800, i8 30 }, %struct.tda18271_map { i32 46200, i8 29 }, %struct.tda18271_map { i32 46700, i8 28 }, %struct.tda18271_map { i32 47100, i8 27 }, %struct.tda18271_map { i32 47500, i8 26 }, %struct.tda18271_map { i32 47900, i8 25 }, %struct.tda18271_map { i32 49600, i8 23 }, %struct.tda18271_map { i32 51200, i8 22 }, %struct.tda18271_map { i32 52900, i8 21 }, %struct.tda18271_map { i32 54500, i8 20 }, %struct.tda18271_map { i32 56200, i8 19 }, %struct.tda18271_map { i32 57800, i8 18 }, %struct.tda18271_map { i32 59500, i8 17 }, %struct.tda18271_map { i32 61100, i8 16 }, %struct.tda18271_map { i32 67600, i8 13 }, %struct.tda18271_map { i32 74200, i8 12 }, %struct.tda18271_map { i32 80700, i8 11 }, %struct.tda18271_map { i32 87200, i8 10 }, %struct.tda18271_map { i32 93800, i8 9 }, %struct.tda18271_map { i32 100300, i8 8 }, %struct.tda18271_map { i32 106900, i8 7 }, %struct.tda18271_map { i32 113400, i8 6 }, %struct.tda18271_map { i32 119900, i8 5 }, %struct.tda18271_map { i32 126500, i8 4 }, %struct.tda18271_map { i32 133000, i8 3 }, %struct.tda18271_map { i32 139500, i8 2 }, %struct.tda18271_map { i32 146100, i8 1 }, %struct.tda18271_map { i32 152600, i8 0 }, %struct.tda18271_map { i32 154300, i8 31 }, %struct.tda18271_map { i32 156100, i8 30 }, %struct.tda18271_map { i32 157800, i8 29 }, %struct.tda18271_map { i32 159500, i8 28 }, %struct.tda18271_map { i32 161200, i8 27 }, %struct.tda18271_map { i32 163000, i8 26 }, %struct.tda18271_map { i32 164700, i8 25 }, %struct.tda18271_map { i32 170200, i8 23 }, %struct.tda18271_map { i32 175800, i8 22 }, %struct.tda18271_map { i32 181300, i8 21 }, %struct.tda18271_map { i32 186900, i8 20 }, %struct.tda18271_map { i32 192400, i8 19 }, %struct.tda18271_map { i32 198000, i8 18 }, %struct.tda18271_map { i32 203500, i8 17 }, %struct.tda18271_map { i32 216200, i8 20 }, %struct.tda18271_map { i32 228900, i8 19 }, %struct.tda18271_map { i32 241600, i8 18 }, %struct.tda18271_map { i32 254400, i8 17 }, %struct.tda18271_map { i32 267100, i8 16 }, %struct.tda18271_map { i32 279800, i8 15 }, %struct.tda18271_map { i32 292500, i8 14 }, %struct.tda18271_map { i32 305200, i8 13 }, %struct.tda18271_map { i32 317900, i8 12 }, %struct.tda18271_map { i32 330700, i8 11 }, %struct.tda18271_map { i32 343400, i8 10 }, %struct.tda18271_map { i32 356100, i8 9 }, %struct.tda18271_map { i32 368800, i8 8 }, %struct.tda18271_map { i32 381500, i8 7 }, %struct.tda18271_map { i32 394200, i8 6 }, %struct.tda18271_map { i32 406900, i8 5 }, %struct.tda18271_map { i32 419700, i8 4 }, %struct.tda18271_map { i32 432400, i8 3 }, %struct.tda18271_map { i32 445100, i8 2 }, %struct.tda18271_map { i32 457800, i8 1 }, %struct.tda18271_map { i32 476300, i8 25 }, %struct.tda18271_map { i32 494800, i8 24 }, %struct.tda18271_map { i32 513300, i8 23 }, %struct.tda18271_map { i32 531800, i8 22 }, %struct.tda18271_map { i32 550300, i8 21 }, %struct.tda18271_map { i32 568900, i8 20 }, %struct.tda18271_map { i32 587400, i8 19 }, %struct.tda18271_map { i32 605900, i8 18 }, %struct.tda18271_map { i32 624400, i8 17 }, %struct.tda18271_map { i32 642900, i8 16 }, %struct.tda18271_map { i32 661400, i8 15 }, %struct.tda18271_map { i32 679900, i8 14 }, %struct.tda18271_map { i32 698400, i8 13 }, %struct.tda18271_map { i32 716900, i8 12 }, %struct.tda18271_map { i32 735400, i8 11 }, %struct.tda18271_map { i32 753900, i8 10 }, %struct.tda18271_map { i32 772500, i8 9 }, %struct.tda18271_map { i32 791000, i8 8 }, %struct.tda18271_map { i32 809500, i8 7 }, %struct.tda18271_map { i32 828000, i8 6 }, %struct.tda18271_map { i32 846500, i8 5 }, %struct.tda18271_map { i32 865000, i8 4 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271_ir_measure = internal global [5 x %struct.tda18271_map] [%struct.tda18271_map { i32 30000, i8 4 }, %struct.tda18271_map { i32 200000, i8 5 }, %struct.tda18271_map { i32 600000, i8 6 }, %struct.tda18271_map { i32 865000, i8 7 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271c1_std_map = internal unnamed_addr constant { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } } { { i16, i8, i8 } { i16 1250, i8 35, i8 88 }, { i16, i8, i8 } { i16 6750, i8 25, i8 88 }, { i16, i8, i8 } { i16 7750, i8 29, i8 88 }, { i16, i8, i8 } { i16 7750, i8 29, i8 88 }, { i16, i8, i8 } { i16 7750, i8 29, i8 88 }, { i16, i8, i8 } { i16 7750, i8 29, i8 88 }, { i16, i8, i8 } { i16 1250, i8 29, i8 88 }, { i16, i8, i8 } { i16 5750, i8 21, i8 88 }, { i16, i8, i8 } { i16 3250, i8 83, i8 110 }, { i16, i8, i8 } { i16 3300, i8 83, i8 110 }, { i16, i8, i8 } { i16 3800, i8 87, i8 110 }, { i16, i8, i8 } { i16 4300, i8 91, i8 110 }, { i16, i8, i8 } { i16 4000, i8 87, i8 110 }, { i16, i8, i8 } { i16 4500, i8 91, i8 110 }, { i16, i8, i8 } { i16 5000, i8 95, i8 110 } }, align 4
@tda18271c2_main_pll = internal global [41 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33125, i8 87, i8 -16 }, %struct.tda18271_pll_map { i32 35500, i8 86, i8 -32 }, %struct.tda18271_pll_map { i32 38188, i8 85, i8 -48 }, %struct.tda18271_pll_map { i32 41375, i8 84, i8 -64 }, %struct.tda18271_pll_map { i32 45125, i8 83, i8 -80 }, %struct.tda18271_pll_map { i32 49688, i8 82, i8 -96 }, %struct.tda18271_pll_map { i32 55188, i8 81, i8 -112 }, %struct.tda18271_pll_map { i32 62125, i8 80, i8 -128 }, %struct.tda18271_pll_map { i32 66250, i8 71, i8 120 }, %struct.tda18271_pll_map { i32 71000, i8 70, i8 112 }, %struct.tda18271_pll_map { i32 76375, i8 69, i8 104 }, %struct.tda18271_pll_map { i32 82750, i8 68, i8 96 }, %struct.tda18271_pll_map { i32 90250, i8 67, i8 88 }, %struct.tda18271_pll_map { i32 99375, i8 66, i8 80 }, %struct.tda18271_pll_map { i32 110375, i8 65, i8 72 }, %struct.tda18271_pll_map { i32 124250, i8 64, i8 64 }, %struct.tda18271_pll_map { i32 132500, i8 55, i8 60 }, %struct.tda18271_pll_map { i32 142000, i8 54, i8 56 }, %struct.tda18271_pll_map { i32 152750, i8 53, i8 52 }, %struct.tda18271_pll_map { i32 165500, i8 52, i8 48 }, %struct.tda18271_pll_map { i32 180500, i8 51, i8 44 }, %struct.tda18271_pll_map { i32 198750, i8 50, i8 40 }, %struct.tda18271_pll_map { i32 220750, i8 49, i8 36 }, %struct.tda18271_pll_map { i32 248500, i8 48, i8 32 }, %struct.tda18271_pll_map { i32 265000, i8 39, i8 30 }, %struct.tda18271_pll_map { i32 284000, i8 38, i8 28 }, %struct.tda18271_pll_map { i32 305500, i8 37, i8 26 }, %struct.tda18271_pll_map { i32 331000, i8 36, i8 24 }, %struct.tda18271_pll_map { i32 361000, i8 35, i8 22 }, %struct.tda18271_pll_map { i32 397500, i8 34, i8 20 }, %struct.tda18271_pll_map { i32 441500, i8 33, i8 18 }, %struct.tda18271_pll_map { i32 497000, i8 32, i8 16 }, %struct.tda18271_pll_map { i32 530000, i8 23, i8 15 }, %struct.tda18271_pll_map { i32 568000, i8 22, i8 14 }, %struct.tda18271_pll_map { i32 611000, i8 21, i8 13 }, %struct.tda18271_pll_map { i32 662000, i8 20, i8 12 }, %struct.tda18271_pll_map { i32 722000, i8 19, i8 11 }, %struct.tda18271_pll_map { i32 795000, i8 18, i8 10 }, %struct.tda18271_pll_map { i32 883000, i8 17, i8 9 }, %struct.tda18271_pll_map { i32 994000, i8 16, i8 8 }, %struct.tda18271_pll_map zeroinitializer], align 4
@tda18271c2_cal_pll = internal global [35 x %struct.tda18271_pll_map] [%struct.tda18271_pll_map { i32 33813, i8 -35, i8 -48 }, %struct.tda18271_pll_map { i32 36625, i8 -36, i8 -64 }, %struct.tda18271_pll_map { i32 39938, i8 -37, i8 -80 }, %struct.tda18271_pll_map { i32 43938, i8 -38, i8 -96 }, %struct.tda18271_pll_map { i32 48813, i8 -39, i8 -112 }, %struct.tda18271_pll_map { i32 54938, i8 -40, i8 -128 }, %struct.tda18271_pll_map { i32 62813, i8 -45, i8 112 }, %struct.tda18271_pll_map { i32 67625, i8 -51, i8 104 }, %struct.tda18271_pll_map { i32 73250, i8 -52, i8 96 }, %struct.tda18271_pll_map { i32 79875, i8 -53, i8 88 }, %struct.tda18271_pll_map { i32 87875, i8 -54, i8 80 }, %struct.tda18271_pll_map { i32 97625, i8 -55, i8 72 }, %struct.tda18271_pll_map { i32 109875, i8 -56, i8 64 }, %struct.tda18271_pll_map { i32 125625, i8 -61, i8 56 }, %struct.tda18271_pll_map { i32 135250, i8 -67, i8 52 }, %struct.tda18271_pll_map { i32 146500, i8 -68, i8 48 }, %struct.tda18271_pll_map { i32 159750, i8 -69, i8 44 }, %struct.tda18271_pll_map { i32 175750, i8 -70, i8 40 }, %struct.tda18271_pll_map { i32 195250, i8 -71, i8 36 }, %struct.tda18271_pll_map { i32 219750, i8 -72, i8 32 }, %struct.tda18271_pll_map { i32 251250, i8 -77, i8 28 }, %struct.tda18271_pll_map { i32 270500, i8 -83, i8 26 }, %struct.tda18271_pll_map { i32 293000, i8 -84, i8 24 }, %struct.tda18271_pll_map { i32 319500, i8 -85, i8 22 }, %struct.tda18271_pll_map { i32 351500, i8 -86, i8 20 }, %struct.tda18271_pll_map { i32 390500, i8 -87, i8 18 }, %struct.tda18271_pll_map { i32 439500, i8 -88, i8 16 }, %struct.tda18271_pll_map { i32 502500, i8 -93, i8 14 }, %struct.tda18271_pll_map { i32 541000, i8 -99, i8 13 }, %struct.tda18271_pll_map { i32 586000, i8 -100, i8 12 }, %struct.tda18271_pll_map { i32 639000, i8 -101, i8 11 }, %struct.tda18271_pll_map { i32 703000, i8 -102, i8 10 }, %struct.tda18271_pll_map { i32 781000, i8 -103, i8 9 }, %struct.tda18271_pll_map { i32 879000, i8 -104, i8 8 }, %struct.tda18271_pll_map zeroinitializer], align 4
@tda18271c2_rf_cal = internal global [438 x %struct.tda18271_map] [%struct.tda18271_map { i32 41000, i8 15 }, %struct.tda18271_map { i32 43000, i8 28 }, %struct.tda18271_map { i32 45000, i8 47 }, %struct.tda18271_map { i32 46000, i8 57 }, %struct.tda18271_map { i32 47000, i8 64 }, %struct.tda18271_map { i32 47900, i8 80 }, %struct.tda18271_map { i32 49100, i8 22 }, %struct.tda18271_map { i32 50000, i8 24 }, %struct.tda18271_map { i32 51000, i8 32 }, %struct.tda18271_map { i32 53000, i8 40 }, %struct.tda18271_map { i32 55000, i8 43 }, %struct.tda18271_map { i32 56000, i8 50 }, %struct.tda18271_map { i32 57000, i8 53 }, %struct.tda18271_map { i32 58000, i8 62 }, %struct.tda18271_map { i32 59000, i8 67 }, %struct.tda18271_map { i32 60000, i8 78 }, %struct.tda18271_map { i32 61100, i8 85 }, %struct.tda18271_map { i32 63000, i8 15 }, %struct.tda18271_map { i32 64000, i8 17 }, %struct.tda18271_map { i32 65000, i8 18 }, %struct.tda18271_map { i32 66000, i8 21 }, %struct.tda18271_map { i32 67000, i8 22 }, %struct.tda18271_map { i32 68000, i8 23 }, %struct.tda18271_map { i32 70000, i8 25 }, %struct.tda18271_map { i32 71000, i8 28 }, %struct.tda18271_map { i32 72000, i8 29 }, %struct.tda18271_map { i32 73000, i8 31 }, %struct.tda18271_map { i32 74000, i8 32 }, %struct.tda18271_map { i32 75000, i8 33 }, %struct.tda18271_map { i32 76000, i8 36 }, %struct.tda18271_map { i32 77000, i8 37 }, %struct.tda18271_map { i32 78000, i8 39 }, %struct.tda18271_map { i32 80000, i8 40 }, %struct.tda18271_map { i32 81000, i8 41 }, %struct.tda18271_map { i32 82000, i8 45 }, %struct.tda18271_map { i32 83000, i8 46 }, %struct.tda18271_map { i32 84000, i8 47 }, %struct.tda18271_map { i32 85000, i8 49 }, %struct.tda18271_map { i32 86000, i8 51 }, %struct.tda18271_map { i32 87000, i8 52 }, %struct.tda18271_map { i32 88000, i8 53 }, %struct.tda18271_map { i32 89000, i8 55 }, %struct.tda18271_map { i32 90000, i8 56 }, %struct.tda18271_map { i32 91000, i8 57 }, %struct.tda18271_map { i32 93000, i8 60 }, %struct.tda18271_map { i32 94000, i8 62 }, %struct.tda18271_map { i32 95000, i8 63 }, %struct.tda18271_map { i32 96000, i8 64 }, %struct.tda18271_map { i32 97000, i8 66 }, %struct.tda18271_map { i32 99000, i8 69 }, %struct.tda18271_map { i32 100000, i8 70 }, %struct.tda18271_map { i32 102000, i8 72 }, %struct.tda18271_map { i32 103000, i8 74 }, %struct.tda18271_map { i32 105000, i8 77 }, %struct.tda18271_map { i32 106000, i8 78 }, %struct.tda18271_map { i32 107000, i8 80 }, %struct.tda18271_map { i32 108000, i8 81 }, %struct.tda18271_map { i32 110000, i8 84 }, %struct.tda18271_map { i32 111000, i8 86 }, %struct.tda18271_map { i32 112000, i8 87 }, %struct.tda18271_map { i32 113000, i8 88 }, %struct.tda18271_map { i32 114000, i8 89 }, %struct.tda18271_map { i32 115000, i8 92 }, %struct.tda18271_map { i32 116000, i8 93 }, %struct.tda18271_map { i32 117000, i8 95 }, %struct.tda18271_map { i32 119000, i8 96 }, %struct.tda18271_map { i32 120000, i8 100 }, %struct.tda18271_map { i32 121000, i8 101 }, %struct.tda18271_map { i32 122000, i8 102 }, %struct.tda18271_map { i32 123000, i8 104 }, %struct.tda18271_map { i32 124000, i8 105 }, %struct.tda18271_map { i32 125000, i8 108 }, %struct.tda18271_map { i32 126000, i8 109 }, %struct.tda18271_map { i32 127000, i8 110 }, %struct.tda18271_map { i32 128000, i8 112 }, %struct.tda18271_map { i32 129000, i8 113 }, %struct.tda18271_map { i32 130000, i8 117 }, %struct.tda18271_map { i32 131000, i8 119 }, %struct.tda18271_map { i32 132000, i8 120 }, %struct.tda18271_map { i32 133000, i8 123 }, %struct.tda18271_map { i32 134000, i8 126 }, %struct.tda18271_map { i32 135000, i8 -127 }, %struct.tda18271_map { i32 136000, i8 -126 }, %struct.tda18271_map { i32 137000, i8 -121 }, %struct.tda18271_map { i32 138000, i8 -120 }, %struct.tda18271_map { i32 139000, i8 -115 }, %struct.tda18271_map { i32 140000, i8 -114 }, %struct.tda18271_map { i32 141000, i8 -111 }, %struct.tda18271_map { i32 142000, i8 -107 }, %struct.tda18271_map { i32 143000, i8 -102 }, %struct.tda18271_map { i32 144000, i8 -99 }, %struct.tda18271_map { i32 145000, i8 -95 }, %struct.tda18271_map { i32 146000, i8 -94 }, %struct.tda18271_map { i32 147000, i8 -92 }, %struct.tda18271_map { i32 148000, i8 -87 }, %struct.tda18271_map { i32 149000, i8 -82 }, %struct.tda18271_map { i32 150000, i8 -80 }, %struct.tda18271_map { i32 151000, i8 -79 }, %struct.tda18271_map { i32 152000, i8 -73 }, %struct.tda18271_map { i32 152600, i8 -67 }, %struct.tda18271_map { i32 154000, i8 32 }, %struct.tda18271_map { i32 155000, i8 34 }, %struct.tda18271_map { i32 156000, i8 36 }, %struct.tda18271_map { i32 157000, i8 37 }, %struct.tda18271_map { i32 158000, i8 39 }, %struct.tda18271_map { i32 159000, i8 41 }, %struct.tda18271_map { i32 160000, i8 44 }, %struct.tda18271_map { i32 161000, i8 45 }, %struct.tda18271_map { i32 163000, i8 46 }, %struct.tda18271_map { i32 164000, i8 47 }, %struct.tda18271_map { i32 164700, i8 48 }, %struct.tda18271_map { i32 166000, i8 17 }, %struct.tda18271_map { i32 167000, i8 18 }, %struct.tda18271_map { i32 168000, i8 19 }, %struct.tda18271_map { i32 169000, i8 20 }, %struct.tda18271_map { i32 170000, i8 21 }, %struct.tda18271_map { i32 172000, i8 22 }, %struct.tda18271_map { i32 173000, i8 23 }, %struct.tda18271_map { i32 174000, i8 24 }, %struct.tda18271_map { i32 175000, i8 26 }, %struct.tda18271_map { i32 176000, i8 27 }, %struct.tda18271_map { i32 178000, i8 29 }, %struct.tda18271_map { i32 179000, i8 30 }, %struct.tda18271_map { i32 180000, i8 31 }, %struct.tda18271_map { i32 181000, i8 32 }, %struct.tda18271_map { i32 182000, i8 33 }, %struct.tda18271_map { i32 183000, i8 34 }, %struct.tda18271_map { i32 184000, i8 36 }, %struct.tda18271_map { i32 185000, i8 37 }, %struct.tda18271_map { i32 186000, i8 38 }, %struct.tda18271_map { i32 187000, i8 39 }, %struct.tda18271_map { i32 188000, i8 41 }, %struct.tda18271_map { i32 189000, i8 42 }, %struct.tda18271_map { i32 190000, i8 44 }, %struct.tda18271_map { i32 191000, i8 45 }, %struct.tda18271_map { i32 192000, i8 46 }, %struct.tda18271_map { i32 193000, i8 47 }, %struct.tda18271_map { i32 194000, i8 48 }, %struct.tda18271_map { i32 195000, i8 51 }, %struct.tda18271_map { i32 196000, i8 53 }, %struct.tda18271_map { i32 198000, i8 54 }, %struct.tda18271_map { i32 200000, i8 56 }, %struct.tda18271_map { i32 201000, i8 60 }, %struct.tda18271_map { i32 202000, i8 61 }, %struct.tda18271_map { i32 203500, i8 62 }, %struct.tda18271_map { i32 206000, i8 14 }, %struct.tda18271_map { i32 208000, i8 15 }, %struct.tda18271_map { i32 212000, i8 16 }, %struct.tda18271_map { i32 216000, i8 17 }, %struct.tda18271_map { i32 217000, i8 18 }, %struct.tda18271_map { i32 218000, i8 19 }, %struct.tda18271_map { i32 220000, i8 20 }, %struct.tda18271_map { i32 222000, i8 21 }, %struct.tda18271_map { i32 225000, i8 22 }, %struct.tda18271_map { i32 228000, i8 23 }, %struct.tda18271_map { i32 231000, i8 24 }, %struct.tda18271_map { i32 234000, i8 25 }, %struct.tda18271_map { i32 235000, i8 26 }, %struct.tda18271_map { i32 236000, i8 27 }, %struct.tda18271_map { i32 237000, i8 28 }, %struct.tda18271_map { i32 240000, i8 29 }, %struct.tda18271_map { i32 242000, i8 30 }, %struct.tda18271_map { i32 244000, i8 31 }, %struct.tda18271_map { i32 247000, i8 32 }, %struct.tda18271_map { i32 249000, i8 33 }, %struct.tda18271_map { i32 252000, i8 34 }, %struct.tda18271_map { i32 253000, i8 35 }, %struct.tda18271_map { i32 254000, i8 36 }, %struct.tda18271_map { i32 256000, i8 37 }, %struct.tda18271_map { i32 259000, i8 38 }, %struct.tda18271_map { i32 262000, i8 39 }, %struct.tda18271_map { i32 264000, i8 40 }, %struct.tda18271_map { i32 267000, i8 41 }, %struct.tda18271_map { i32 269000, i8 42 }, %struct.tda18271_map { i32 271000, i8 43 }, %struct.tda18271_map { i32 273000, i8 44 }, %struct.tda18271_map { i32 275000, i8 45 }, %struct.tda18271_map { i32 277000, i8 46 }, %struct.tda18271_map { i32 279000, i8 47 }, %struct.tda18271_map { i32 282000, i8 48 }, %struct.tda18271_map { i32 284000, i8 49 }, %struct.tda18271_map { i32 286000, i8 50 }, %struct.tda18271_map { i32 287000, i8 51 }, %struct.tda18271_map { i32 290000, i8 52 }, %struct.tda18271_map { i32 293000, i8 53 }, %struct.tda18271_map { i32 295000, i8 54 }, %struct.tda18271_map { i32 297000, i8 55 }, %struct.tda18271_map { i32 300000, i8 56 }, %struct.tda18271_map { i32 303000, i8 57 }, %struct.tda18271_map { i32 305000, i8 58 }, %struct.tda18271_map { i32 306000, i8 59 }, %struct.tda18271_map { i32 307000, i8 60 }, %struct.tda18271_map { i32 310000, i8 61 }, %struct.tda18271_map { i32 312000, i8 62 }, %struct.tda18271_map { i32 315000, i8 63 }, %struct.tda18271_map { i32 318000, i8 64 }, %struct.tda18271_map { i32 320000, i8 65 }, %struct.tda18271_map { i32 323000, i8 66 }, %struct.tda18271_map { i32 324000, i8 67 }, %struct.tda18271_map { i32 325000, i8 68 }, %struct.tda18271_map { i32 327000, i8 69 }, %struct.tda18271_map { i32 331000, i8 70 }, %struct.tda18271_map { i32 334000, i8 71 }, %struct.tda18271_map { i32 337000, i8 72 }, %struct.tda18271_map { i32 339000, i8 73 }, %struct.tda18271_map { i32 340000, i8 74 }, %struct.tda18271_map { i32 341000, i8 75 }, %struct.tda18271_map { i32 343000, i8 76 }, %struct.tda18271_map { i32 345000, i8 77 }, %struct.tda18271_map { i32 349000, i8 78 }, %struct.tda18271_map { i32 352000, i8 79 }, %struct.tda18271_map { i32 353000, i8 80 }, %struct.tda18271_map { i32 355000, i8 81 }, %struct.tda18271_map { i32 357000, i8 82 }, %struct.tda18271_map { i32 359000, i8 83 }, %struct.tda18271_map { i32 361000, i8 84 }, %struct.tda18271_map { i32 362000, i8 85 }, %struct.tda18271_map { i32 364000, i8 86 }, %struct.tda18271_map { i32 368000, i8 87 }, %struct.tda18271_map { i32 370000, i8 88 }, %struct.tda18271_map { i32 372000, i8 89 }, %struct.tda18271_map { i32 375000, i8 90 }, %struct.tda18271_map { i32 376000, i8 91 }, %struct.tda18271_map { i32 377000, i8 92 }, %struct.tda18271_map { i32 379000, i8 93 }, %struct.tda18271_map { i32 382000, i8 94 }, %struct.tda18271_map { i32 384000, i8 95 }, %struct.tda18271_map { i32 385000, i8 96 }, %struct.tda18271_map { i32 386000, i8 97 }, %struct.tda18271_map { i32 388000, i8 98 }, %struct.tda18271_map { i32 390000, i8 99 }, %struct.tda18271_map { i32 393000, i8 100 }, %struct.tda18271_map { i32 394000, i8 101 }, %struct.tda18271_map { i32 396000, i8 102 }, %struct.tda18271_map { i32 397000, i8 103 }, %struct.tda18271_map { i32 398000, i8 104 }, %struct.tda18271_map { i32 400000, i8 105 }, %struct.tda18271_map { i32 402000, i8 106 }, %struct.tda18271_map { i32 403000, i8 107 }, %struct.tda18271_map { i32 407000, i8 108 }, %struct.tda18271_map { i32 408000, i8 109 }, %struct.tda18271_map { i32 409000, i8 110 }, %struct.tda18271_map { i32 410000, i8 111 }, %struct.tda18271_map { i32 411000, i8 112 }, %struct.tda18271_map { i32 412000, i8 113 }, %struct.tda18271_map { i32 413000, i8 114 }, %struct.tda18271_map { i32 414000, i8 115 }, %struct.tda18271_map { i32 417000, i8 116 }, %struct.tda18271_map { i32 418000, i8 117 }, %struct.tda18271_map { i32 420000, i8 118 }, %struct.tda18271_map { i32 422000, i8 119 }, %struct.tda18271_map { i32 423000, i8 120 }, %struct.tda18271_map { i32 424000, i8 121 }, %struct.tda18271_map { i32 427000, i8 122 }, %struct.tda18271_map { i32 428000, i8 123 }, %struct.tda18271_map { i32 429000, i8 125 }, %struct.tda18271_map { i32 432000, i8 127 }, %struct.tda18271_map { i32 434000, i8 -128 }, %struct.tda18271_map { i32 435000, i8 -127 }, %struct.tda18271_map { i32 436000, i8 -125 }, %struct.tda18271_map { i32 437000, i8 -124 }, %struct.tda18271_map { i32 438000, i8 -123 }, %struct.tda18271_map { i32 439000, i8 -122 }, %struct.tda18271_map { i32 440000, i8 -121 }, %struct.tda18271_map { i32 441000, i8 -120 }, %struct.tda18271_map { i32 442000, i8 -119 }, %struct.tda18271_map { i32 445000, i8 -118 }, %struct.tda18271_map { i32 446000, i8 -117 }, %struct.tda18271_map { i32 447000, i8 -116 }, %struct.tda18271_map { i32 448000, i8 -114 }, %struct.tda18271_map { i32 449000, i8 -113 }, %struct.tda18271_map { i32 450000, i8 -112 }, %struct.tda18271_map { i32 452000, i8 -111 }, %struct.tda18271_map { i32 453000, i8 -109 }, %struct.tda18271_map { i32 454000, i8 -108 }, %struct.tda18271_map { i32 456000, i8 -106 }, %struct.tda18271_map { i32 457800, i8 -104 }, %struct.tda18271_map { i32 461000, i8 17 }, %struct.tda18271_map { i32 468000, i8 18 }, %struct.tda18271_map { i32 472000, i8 19 }, %struct.tda18271_map { i32 473000, i8 20 }, %struct.tda18271_map { i32 474000, i8 21 }, %struct.tda18271_map { i32 481000, i8 22 }, %struct.tda18271_map { i32 486000, i8 23 }, %struct.tda18271_map { i32 491000, i8 24 }, %struct.tda18271_map { i32 498000, i8 25 }, %struct.tda18271_map { i32 499000, i8 26 }, %struct.tda18271_map { i32 501000, i8 27 }, %struct.tda18271_map { i32 506000, i8 28 }, %struct.tda18271_map { i32 511000, i8 29 }, %struct.tda18271_map { i32 516000, i8 30 }, %struct.tda18271_map { i32 520000, i8 31 }, %struct.tda18271_map { i32 521000, i8 32 }, %struct.tda18271_map { i32 525000, i8 33 }, %struct.tda18271_map { i32 529000, i8 34 }, %struct.tda18271_map { i32 533000, i8 35 }, %struct.tda18271_map { i32 539000, i8 36 }, %struct.tda18271_map { i32 541000, i8 37 }, %struct.tda18271_map { i32 547000, i8 38 }, %struct.tda18271_map { i32 549000, i8 39 }, %struct.tda18271_map { i32 551000, i8 40 }, %struct.tda18271_map { i32 556000, i8 41 }, %struct.tda18271_map { i32 561000, i8 42 }, %struct.tda18271_map { i32 563000, i8 43 }, %struct.tda18271_map { i32 565000, i8 44 }, %struct.tda18271_map { i32 569000, i8 45 }, %struct.tda18271_map { i32 571000, i8 46 }, %struct.tda18271_map { i32 577000, i8 47 }, %struct.tda18271_map { i32 580000, i8 48 }, %struct.tda18271_map { i32 582000, i8 49 }, %struct.tda18271_map { i32 584000, i8 50 }, %struct.tda18271_map { i32 588000, i8 51 }, %struct.tda18271_map { i32 591000, i8 52 }, %struct.tda18271_map { i32 596000, i8 53 }, %struct.tda18271_map { i32 598000, i8 54 }, %struct.tda18271_map { i32 603000, i8 55 }, %struct.tda18271_map { i32 604000, i8 56 }, %struct.tda18271_map { i32 606000, i8 57 }, %struct.tda18271_map { i32 612000, i8 58 }, %struct.tda18271_map { i32 615000, i8 59 }, %struct.tda18271_map { i32 617000, i8 60 }, %struct.tda18271_map { i32 621000, i8 61 }, %struct.tda18271_map { i32 622000, i8 62 }, %struct.tda18271_map { i32 625000, i8 63 }, %struct.tda18271_map { i32 632000, i8 64 }, %struct.tda18271_map { i32 633000, i8 65 }, %struct.tda18271_map { i32 634000, i8 66 }, %struct.tda18271_map { i32 642000, i8 67 }, %struct.tda18271_map { i32 643000, i8 68 }, %struct.tda18271_map { i32 647000, i8 69 }, %struct.tda18271_map { i32 650000, i8 70 }, %struct.tda18271_map { i32 652000, i8 71 }, %struct.tda18271_map { i32 657000, i8 72 }, %struct.tda18271_map { i32 661000, i8 73 }, %struct.tda18271_map { i32 662000, i8 74 }, %struct.tda18271_map { i32 665000, i8 75 }, %struct.tda18271_map { i32 667000, i8 76 }, %struct.tda18271_map { i32 670000, i8 77 }, %struct.tda18271_map { i32 673000, i8 78 }, %struct.tda18271_map { i32 676000, i8 79 }, %struct.tda18271_map { i32 677000, i8 80 }, %struct.tda18271_map { i32 681000, i8 81 }, %struct.tda18271_map { i32 683000, i8 82 }, %struct.tda18271_map { i32 686000, i8 83 }, %struct.tda18271_map { i32 688000, i8 84 }, %struct.tda18271_map { i32 689000, i8 85 }, %struct.tda18271_map { i32 691000, i8 86 }, %struct.tda18271_map { i32 695000, i8 87 }, %struct.tda18271_map { i32 698000, i8 88 }, %struct.tda18271_map { i32 703000, i8 89 }, %struct.tda18271_map { i32 704000, i8 90 }, %struct.tda18271_map { i32 705000, i8 91 }, %struct.tda18271_map { i32 707000, i8 92 }, %struct.tda18271_map { i32 710000, i8 93 }, %struct.tda18271_map { i32 712000, i8 94 }, %struct.tda18271_map { i32 717000, i8 95 }, %struct.tda18271_map { i32 718000, i8 96 }, %struct.tda18271_map { i32 721000, i8 97 }, %struct.tda18271_map { i32 722000, i8 98 }, %struct.tda18271_map { i32 723000, i8 99 }, %struct.tda18271_map { i32 725000, i8 100 }, %struct.tda18271_map { i32 727000, i8 101 }, %struct.tda18271_map { i32 730000, i8 102 }, %struct.tda18271_map { i32 732000, i8 103 }, %struct.tda18271_map { i32 735000, i8 104 }, %struct.tda18271_map { i32 740000, i8 105 }, %struct.tda18271_map { i32 741000, i8 106 }, %struct.tda18271_map { i32 742000, i8 107 }, %struct.tda18271_map { i32 743000, i8 108 }, %struct.tda18271_map { i32 745000, i8 109 }, %struct.tda18271_map { i32 747000, i8 110 }, %struct.tda18271_map { i32 748000, i8 111 }, %struct.tda18271_map { i32 750000, i8 112 }, %struct.tda18271_map { i32 752000, i8 113 }, %struct.tda18271_map { i32 754000, i8 114 }, %struct.tda18271_map { i32 757000, i8 115 }, %struct.tda18271_map { i32 758000, i8 116 }, %struct.tda18271_map { i32 760000, i8 117 }, %struct.tda18271_map { i32 763000, i8 118 }, %struct.tda18271_map { i32 764000, i8 119 }, %struct.tda18271_map { i32 766000, i8 120 }, %struct.tda18271_map { i32 767000, i8 121 }, %struct.tda18271_map { i32 768000, i8 122 }, %struct.tda18271_map { i32 773000, i8 123 }, %struct.tda18271_map { i32 774000, i8 124 }, %struct.tda18271_map { i32 776000, i8 125 }, %struct.tda18271_map { i32 777000, i8 126 }, %struct.tda18271_map { i32 778000, i8 127 }, %struct.tda18271_map { i32 779000, i8 -128 }, %struct.tda18271_map { i32 781000, i8 -127 }, %struct.tda18271_map { i32 783000, i8 -126 }, %struct.tda18271_map { i32 784000, i8 -125 }, %struct.tda18271_map { i32 785000, i8 -124 }, %struct.tda18271_map { i32 786000, i8 -123 }, %struct.tda18271_map { i32 793000, i8 -122 }, %struct.tda18271_map { i32 794000, i8 -121 }, %struct.tda18271_map { i32 795000, i8 -120 }, %struct.tda18271_map { i32 797000, i8 -119 }, %struct.tda18271_map { i32 799000, i8 -118 }, %struct.tda18271_map { i32 801000, i8 -117 }, %struct.tda18271_map { i32 802000, i8 -116 }, %struct.tda18271_map { i32 803000, i8 -115 }, %struct.tda18271_map { i32 804000, i8 -114 }, %struct.tda18271_map { i32 810000, i8 -112 }, %struct.tda18271_map { i32 811000, i8 -111 }, %struct.tda18271_map { i32 812000, i8 -110 }, %struct.tda18271_map { i32 814000, i8 -109 }, %struct.tda18271_map { i32 816000, i8 -108 }, %struct.tda18271_map { i32 817000, i8 -106 }, %struct.tda18271_map { i32 818000, i8 -105 }, %struct.tda18271_map { i32 820000, i8 -104 }, %struct.tda18271_map { i32 821000, i8 -103 }, %struct.tda18271_map { i32 822000, i8 -102 }, %struct.tda18271_map { i32 828000, i8 -101 }, %struct.tda18271_map { i32 829000, i8 -99 }, %struct.tda18271_map { i32 830000, i8 -97 }, %struct.tda18271_map { i32 831000, i8 -96 }, %struct.tda18271_map { i32 833000, i8 -95 }, %struct.tda18271_map { i32 835000, i8 -94 }, %struct.tda18271_map { i32 836000, i8 -93 }, %struct.tda18271_map { i32 837000, i8 -92 }, %struct.tda18271_map { i32 838000, i8 -90 }, %struct.tda18271_map { i32 840000, i8 -88 }, %struct.tda18271_map { i32 842000, i8 -87 }, %struct.tda18271_map { i32 845000, i8 -86 }, %struct.tda18271_map { i32 846000, i8 -85 }, %struct.tda18271_map { i32 847000, i8 -83 }, %struct.tda18271_map { i32 848000, i8 -82 }, %struct.tda18271_map { i32 852000, i8 -81 }, %struct.tda18271_map { i32 853000, i8 -80 }, %struct.tda18271_map { i32 858000, i8 -79 }, %struct.tda18271_map { i32 860000, i8 -78 }, %struct.tda18271_map { i32 861000, i8 -77 }, %struct.tda18271_map { i32 862000, i8 -76 }, %struct.tda18271_map { i32 863000, i8 -74 }, %struct.tda18271_map { i32 864000, i8 -72 }, %struct.tda18271_map { i32 865000, i8 -71 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271c2_km = internal global [6 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 56 }, %struct.tda18271_map { i32 61100, i8 68 }, %struct.tda18271_map { i32 350000, i8 48 }, %struct.tda18271_map { i32 720000, i8 36 }, %struct.tda18271_map { i32 865000, i8 60 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271_rf_cal_dc_over_dt = internal global [102 x %struct.tda18271_map] [%struct.tda18271_map { i32 47900, i8 0 }, %struct.tda18271_map { i32 55000, i8 0 }, %struct.tda18271_map { i32 61100, i8 10 }, %struct.tda18271_map { i32 64000, i8 10 }, %struct.tda18271_map { i32 82000, i8 20 }, %struct.tda18271_map { i32 84000, i8 25 }, %struct.tda18271_map { i32 119000, i8 28 }, %struct.tda18271_map { i32 124000, i8 32 }, %struct.tda18271_map { i32 129000, i8 42 }, %struct.tda18271_map { i32 134000, i8 50 }, %struct.tda18271_map { i32 139000, i8 57 }, %struct.tda18271_map { i32 144000, i8 62 }, %struct.tda18271_map { i32 149000, i8 63 }, %struct.tda18271_map { i32 152600, i8 64 }, %struct.tda18271_map { i32 154000, i8 64 }, %struct.tda18271_map { i32 164700, i8 65 }, %struct.tda18271_map { i32 203500, i8 50 }, %struct.tda18271_map { i32 353000, i8 25 }, %struct.tda18271_map { i32 356000, i8 26 }, %struct.tda18271_map { i32 359000, i8 27 }, %struct.tda18271_map { i32 363000, i8 28 }, %struct.tda18271_map { i32 366000, i8 29 }, %struct.tda18271_map { i32 369000, i8 30 }, %struct.tda18271_map { i32 373000, i8 31 }, %struct.tda18271_map { i32 376000, i8 32 }, %struct.tda18271_map { i32 379000, i8 33 }, %struct.tda18271_map { i32 383000, i8 34 }, %struct.tda18271_map { i32 386000, i8 35 }, %struct.tda18271_map { i32 389000, i8 36 }, %struct.tda18271_map { i32 393000, i8 37 }, %struct.tda18271_map { i32 396000, i8 38 }, %struct.tda18271_map { i32 399000, i8 39 }, %struct.tda18271_map { i32 402000, i8 40 }, %struct.tda18271_map { i32 404000, i8 41 }, %struct.tda18271_map { i32 407000, i8 42 }, %struct.tda18271_map { i32 409000, i8 43 }, %struct.tda18271_map { i32 412000, i8 44 }, %struct.tda18271_map { i32 414000, i8 45 }, %struct.tda18271_map { i32 417000, i8 46 }, %struct.tda18271_map { i32 419000, i8 47 }, %struct.tda18271_map { i32 422000, i8 48 }, %struct.tda18271_map { i32 424000, i8 49 }, %struct.tda18271_map { i32 427000, i8 50 }, %struct.tda18271_map { i32 429000, i8 51 }, %struct.tda18271_map { i32 432000, i8 52 }, %struct.tda18271_map { i32 434000, i8 53 }, %struct.tda18271_map { i32 437000, i8 54 }, %struct.tda18271_map { i32 439000, i8 55 }, %struct.tda18271_map { i32 442000, i8 56 }, %struct.tda18271_map { i32 444000, i8 57 }, %struct.tda18271_map { i32 447000, i8 58 }, %struct.tda18271_map { i32 449000, i8 59 }, %struct.tda18271_map { i32 457800, i8 60 }, %struct.tda18271_map { i32 465000, i8 15 }, %struct.tda18271_map { i32 477000, i8 18 }, %struct.tda18271_map { i32 483000, i8 20 }, %struct.tda18271_map { i32 502000, i8 25 }, %struct.tda18271_map { i32 508000, i8 27 }, %struct.tda18271_map { i32 519000, i8 28 }, %struct.tda18271_map { i32 522000, i8 29 }, %struct.tda18271_map { i32 524000, i8 30 }, %struct.tda18271_map { i32 534000, i8 31 }, %struct.tda18271_map { i32 549000, i8 32 }, %struct.tda18271_map { i32 554000, i8 34 }, %struct.tda18271_map { i32 584000, i8 36 }, %struct.tda18271_map { i32 589000, i8 38 }, %struct.tda18271_map { i32 658000, i8 39 }, %struct.tda18271_map { i32 664000, i8 44 }, %struct.tda18271_map { i32 669000, i8 45 }, %struct.tda18271_map { i32 699000, i8 46 }, %struct.tda18271_map { i32 704000, i8 48 }, %struct.tda18271_map { i32 709000, i8 49 }, %struct.tda18271_map { i32 714000, i8 50 }, %struct.tda18271_map { i32 724000, i8 51 }, %struct.tda18271_map { i32 729000, i8 54 }, %struct.tda18271_map { i32 739000, i8 56 }, %struct.tda18271_map { i32 744000, i8 57 }, %struct.tda18271_map { i32 749000, i8 59 }, %struct.tda18271_map { i32 754000, i8 60 }, %struct.tda18271_map { i32 759000, i8 61 }, %struct.tda18271_map { i32 764000, i8 62 }, %struct.tda18271_map { i32 769000, i8 63 }, %struct.tda18271_map { i32 774000, i8 64 }, %struct.tda18271_map { i32 779000, i8 65 }, %struct.tda18271_map { i32 784000, i8 67 }, %struct.tda18271_map { i32 789000, i8 70 }, %struct.tda18271_map { i32 794000, i8 72 }, %struct.tda18271_map { i32 799000, i8 75 }, %struct.tda18271_map { i32 804000, i8 79 }, %struct.tda18271_map { i32 809000, i8 84 }, %struct.tda18271_map { i32 814000, i8 89 }, %struct.tda18271_map { i32 819000, i8 93 }, %struct.tda18271_map { i32 824000, i8 97 }, %struct.tda18271_map { i32 829000, i8 104 }, %struct.tda18271_map { i32 834000, i8 110 }, %struct.tda18271_map { i32 839000, i8 117 }, %struct.tda18271_map { i32 844000, i8 126 }, %struct.tda18271_map { i32 849000, i8 -126 }, %struct.tda18271_map { i32 854000, i8 -124 }, %struct.tda18271_map { i32 859000, i8 -113 }, %struct.tda18271_map { i32 865000, i8 -102 }, %struct.tda18271_map zeroinitializer], align 4
@tda18271c2_std_map = internal unnamed_addr constant { { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 } } { { i16, i8, i8 } { i16 1250, i8 35, i8 88 }, { i16, i8, i8 } { i16 6000, i8 21, i8 88 }, { i16, i8, i8 } { i16 6900, i8 25, i8 88 }, { i16, i8, i8 } { i16 7100, i8 25, i8 88 }, { i16, i8, i8 } { i16 7250, i8 25, i8 88 }, { i16, i8, i8 } { i16 6900, i8 25, i8 88 }, { i16, i8, i8 } { i16 1250, i8 25, i8 88 }, { i16, i8, i8 } { i16 5400, i8 17, i8 88 }, { i16, i8, i8 } { i16 3250, i8 83, i8 110 }, { i16, i8, i8 } { i16 3300, i8 83, i8 110 }, { i16, i8, i8 } { i16 3500, i8 83, i8 110 }, { i16, i8, i8 } { i16 4000, i8 87, i8 110 }, { i16, i8, i8 } { i16 4000, i8 87, i8 110 }, { i16, i8, i8 } { i16 4500, i8 91, i8 110 }, { i16, i8, i8 } { i16 5000, i8 95, i8 110 } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_thermometer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 15
  %7 = trunc i8 %5 to i4
  switch i4 %7, label %8 [
    i4 0, label %36
    i4 1, label %35
  ]

8:                                                ; preds = %1
  %9 = icmp ugt i8 %6, 2
  br i1 %9, label %10, label %36

10:                                               ; preds = %8
  %11 = icmp eq i8 %6, 3
  br i1 %11, label %36, label %12

12:                                               ; preds = %10
  %13 = icmp ugt i8 %6, 4
  br i1 %13, label %14, label %36

14:                                               ; preds = %12
  %15 = icmp eq i8 %6, 5
  br i1 %15, label %36, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i8 %6, 6
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = icmp eq i8 %6, 7
  br i1 %19, label %36, label %20

20:                                               ; preds = %18
  %21 = icmp ugt i8 %6, 8
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = icmp eq i8 %6, 9
  br i1 %23, label %36, label %24

24:                                               ; preds = %22
  %25 = icmp ugt i8 %6, 10
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = icmp eq i8 %6, 11
  br i1 %27, label %36, label %28

28:                                               ; preds = %26
  %29 = icmp ugt i8 %6, 12
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = icmp eq i8 %6, 15
  %32 = select i1 %31, i32 15, i32 14
  %33 = icmp eq i8 %6, 13
  %34 = select i1 %33, i32 13, i32 %32
  br label %36

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %1
  %37 = phi i32 [ 0, %1 ], [ 2, %8 ], [ 3, %10 ], [ 4, %12 ], [ 5, %14 ], [ 6, %16 ], [ 7, %18 ], [ 8, %20 ], [ 9, %22 ], [ 10, %24 ], [ 11, %26 ], [ 12, %28 ], [ 1, %35 ], [ %34, %30 ]
  %38 = and i8 %5, 32
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr [17 x %struct.tda18271_thermo_map], ptr @tda18271_thermometer, i32 0, i32 %37, i32 2
  %41 = getelementptr [17 x %struct.tda18271_thermo_map], ptr @tda18271_thermometer, i32 0, i32 %37, i32 1
  %42 = select i1 %39, ptr %41, ptr %40
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, ptr @tda18271_debug, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_thermometer, ptr noundef nonnull @.str.1, i32 noundef %37, i32 noundef %44) #4
  br label %49

49:                                               ; preds = %48, %36
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_tda_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_cid_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = icmp ugt i32 %7, 46000000
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = icmp ugt i32 %7, 52200000
  br i1 %10, label %11, label %30

11:                                               ; preds = %9
  %12 = icmp ugt i32 %7, 70100000
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = icmp ugt i32 %7, 136800000
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = icmp ugt i32 %7, 156700000
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = icmp ugt i32 %7, 186250000
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = icmp ugt i32 %7, 230000000
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = icmp ugt i32 %7, 345000000
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = icmp ugt i32 %7, 426000000
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = icmp ugt i32 %7, 489500000
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = icmp ugt i32 %7, 697500000
  %29 = select i1 %28, i32 11, i32 10
  br label %30

30:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %4
  %31 = phi i32 [ 0, %4 ], [ 1, %9 ], [ 2, %11 ], [ 3, %13 ], [ 4, %15 ], [ 5, %17 ], [ 6, %19 ], [ 7, %21 ], [ 8, %23 ], [ 9, %25 ], [ %29, %27 ]
  %32 = getelementptr [13 x %struct.tda18271_cid_target_map], ptr @tda18271_cid_target, i32 0, i32 %31, i32 1
  %33 = load i8, ptr %32, align 4
  store i8 %33, ptr %2, align 1
  %34 = getelementptr [13 x %struct.tda18271_cid_target_map], ptr @tda18271_cid_target, i32 0, i32 %31, i32 2
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %3, align 2
  %36 = load i32, ptr @tda18271_debug, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = zext i8 %33 to i32
  %41 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_cid_target, ptr noundef nonnull @.str.2, i32 noundef %31, i32 noundef %40, i32 noundef %41) #4
  br label %42

42:                                               ; preds = %39, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_rf_band(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tda18271_priv, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 1000
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %3
  %12 = load i32, ptr @tda18271_debug, align 4
  br label %13

13:                                               ; preds = %49, %11
  %14 = phi i32 [ %52, %49 ], [ %7, %11 ]
  %15 = phi i32 [ %47, %49 ], [ %12, %11 ]
  %16 = phi i32 [ %54, %49 ], [ %9, %11 ]
  %17 = phi i32 [ %53, %49 ], [ %8, %11 ]
  %18 = phi ptr [ %51, %49 ], [ %6, %11 ]
  %19 = phi i32 [ %50, %49 ], [ 0, %11 ]
  %20 = and i32 %15, 10
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  %23 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %19, i32 11
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_rf_band, ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %17, i32 noundef %16, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #4
  %43 = load i32, ptr @tda18271_debug, align 4
  %44 = load i32, ptr %18, align 4
  br label %45

45:                                               ; preds = %22, %13
  %46 = phi i32 [ %44, %22 ], [ %14, %13 ]
  %47 = phi i32 [ %43, %22 ], [ %15, %13 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = add i32 %19, 1
  %51 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, 1000
  %54 = load i32, ptr %1, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %13, label %56

56:                                               ; preds = %49, %3
  %57 = phi i32 [ 0, %3 ], [ %50, %49 ]
  %58 = icmp eq ptr %2, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %57, i32 1
  %61 = load i8, ptr %60, align 4
  store i8 %61, ptr %2, align 1
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, ptr @tda18271_debug, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %6, i32 %57, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_rf_band, ptr noundef nonnull @.str.4, i32 noundef %57, i32 noundef %69) #4
  br label %70

70:                                               ; preds = %66, %62, %45
  %71 = phi i32 [ %57, %66 ], [ %57, %62 ], [ -22, %45 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_pll_map(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tda18271_priv, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-maps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

12:                                               ; preds = %5
  switch i32 %1, label %23 [
    i32 0, label %15
    i32 1, label %13
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.tda18271_map_layout, ptr %9, i32 0, i32 1
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi ptr [ %14, %13 ], [ %9, %12 ]
  %17 = phi ptr [ @.str.6, %13 ], [ @.str.5, %12 ]
  %18 = load ptr, ptr %16, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %18, align 4
  br label %25

23:                                               ; preds = %15, %12
  %24 = phi ptr [ %17, %15 ], [ @.str.7, %12 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.9, ptr noundef nonnull %24) #4
  br label %53

25:                                               ; preds = %30, %20
  %26 = phi i32 [ %33, %30 ], [ %22, %20 ]
  %27 = phi i32 [ %31, %30 ], [ 0, %20 ]
  %28 = mul i32 %26, 1000
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = add i32 %27, 1
  %32 = getelementptr %struct.tda18271_pll_map, ptr %18, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %30
  %36 = load i32, ptr @tda18271_debug, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.10, ptr noundef nonnull %17, i32 noundef %21) #4
  br label %40

40:                                               ; preds = %39, %35, %25
  %41 = phi i32 [ -34, %39 ], [ -34, %35 ], [ 0, %25 ]
  %42 = getelementptr %struct.tda18271_pll_map, ptr %18, i32 %27, i32 1
  %43 = load i8, ptr %42, align 4
  store i8 %43, ptr %3, align 1
  %44 = getelementptr %struct.tda18271_pll_map, ptr %18, i32 %27, i32 2
  %45 = load i8, ptr %44, align 1
  store i8 %45, ptr %4, align 1
  %46 = load i32, ptr @tda18271_debug, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i8, ptr %3, align 1
  %51 = zext i8 %50 to i32
  %52 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_pll_map, ptr noundef nonnull @.str.11, i32 noundef %27, ptr noundef nonnull %17, i32 noundef %51, i32 noundef %52) #4
  br label %53

53:                                               ; preds = %49, %40, %23
  %54 = phi i32 [ %41, %49 ], [ %41, %40 ], [ -22, %23 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_lookup_map(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tda18271_priv, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-maps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

11:                                               ; preds = %4
  switch i32 %1, label %34 [
    i32 5, label %12
    i32 3, label %14
    i32 6, label %16
    i32 7, label %18
    i32 2, label %20
    i32 8, label %22
    i32 4, label %24
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 5
  br label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 3
  br label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 6
  br label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 7
  br label %26

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 2
  br label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 8
  br label %26

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.tda18271_map_layout, ptr %8, i32 0, i32 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %12
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ]
  %28 = phi ptr [ @.str.18, %24 ], [ @.str.17, %22 ], [ @.str.16, %20 ], [ @.str.15, %18 ], [ @.str.14, %16 ], [ @.str.13, %14 ], [ @.str.12, %12 ]
  %29 = load ptr, ptr %27, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %29, align 4
  br label %36

34:                                               ; preds = %26, %11
  %35 = phi ptr [ %28, %26 ], [ @.str.7, %11 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.9, ptr noundef nonnull %35) #4
  br label %60

36:                                               ; preds = %41, %31
  %37 = phi i32 [ %44, %41 ], [ %33, %31 ]
  %38 = phi i32 [ %42, %41 ], [ 0, %31 ]
  %39 = mul i32 %37, 1000
  %40 = icmp ult i32 %39, %32
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = add i32 %38, 1
  %43 = getelementptr %struct.tda18271_map, ptr %29, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %36

46:                                               ; preds = %41
  %47 = load i32, ptr @tda18271_debug, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.10, ptr noundef nonnull %28, i32 noundef %32) #4
  br label %51

51:                                               ; preds = %50, %46, %36
  %52 = phi i32 [ -34, %50 ], [ -34, %46 ], [ 0, %36 ]
  %53 = getelementptr %struct.tda18271_map, ptr %29, i32 %38, i32 1
  %54 = load i8, ptr %53, align 4
  store i8 %54, ptr %3, align 1
  %55 = load i32, ptr @tda18271_debug, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_lookup_map, ptr noundef nonnull @.str.19, i32 noundef %38, ptr noundef nonnull %28, i32 noundef %59) #4
  br label %60

60:                                               ; preds = %58, %51, %34
  %61 = phi i32 [ %52, %58 ], [ %52, %51 ], [ -22, %34 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tda18271_assign_map_layout(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %9
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 12
  store ptr @tda18271c1_map_layout, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %8, ptr noundef nonnull align 4 dereferenceable(60) @tda18271c1_std_map, i32 60, i1 false)
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 12
  store ptr @tda18271c2_map_layout, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %11, ptr noundef nonnull align 4 dereferenceable(60) @tda18271c2_std_map, i32 60, i1 false)
  br label %12

12:                                               ; preds = %9, %6, %1
  %13 = phi i32 [ 0, %9 ], [ 0, %6 ], [ -22, %1 ]
  %14 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(384) %14, ptr noundef nonnull align 4 dereferenceable(384) @tda18271_rf_band_template, i32 384, i1 false)
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154282458, i64 2154282960, i64 2154282495, i64 2154282551, i64 2154282585, i64 2154282609, i64 2154282650, i64 2154282671, i64 2154282699, i64 2154282733}
!10 = !{i64 2154284580, i64 2154285082, i64 2154284617, i64 2154284673, i64 2154284707, i64 2154284731, i64 2154284772, i64 2154284793, i64 2154284821, i64 2154284855}
