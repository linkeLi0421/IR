; ModuleID = '/llk/IR/drivers/media/tuners/tda18271-common.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@__func__.tda18271_read_regs = private unnamed_addr constant [19 x i8] c"tda18271_read_regs\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: i2c_transfer returned: %d\0A\00", align 1
@tda18271_debug = external dso_local local_unnamed_addr global i32, align 4
@__func__.tda18271_read_extended = private unnamed_addr constant [23 x i8] c"tda18271_read_extended\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@__func__.tda18271_init_regs = private unnamed_addr constant [19 x i8] c"tda18271_init_regs\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"initializing registers for device @ %d-%04x\0A\00", align 1
@__func__.tda18271_set_standby_mode = private unnamed_addr constant [26 x i8] c"tda18271_set_standby_mode\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"sm = %d, sm_lt = %d, sm_xt = %d\0A\00", align 1
@__func__.tda18271_calc_main_pll = private unnamed_addr constant [23 x i8] c"tda18271_calc_main_pll\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error %d on line %d\0A\00", align 1
@__func__.tda18271_calc_cal_pll = private unnamed_addr constant [22 x i8] c"tda18271_calc_cal_pll\00", align 1
@__func__.tda18271_calc_bp_filter = private unnamed_addr constant [24 x i8] c"tda18271_calc_bp_filter\00", align 1
@__func__.tda18271_calc_km = private unnamed_addr constant [17 x i8] c"tda18271_calc_km\00", align 1
@__func__.tda18271_calc_rf_band = private unnamed_addr constant [22 x i8] c"tda18271_calc_rf_band\00", align 1
@__func__.tda18271_calc_gain_taper = private unnamed_addr constant [25 x i8] c"tda18271_calc_gain_taper\00", align 1
@__func__.tda18271_calc_ir_measure = private unnamed_addr constant [25 x i8] c"tda18271_calc_ir_measure\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s%s: [%d-%04x|%c] %pV\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s%s: %pV\00", align 1
@__func__.tda18271_dump_regs = private unnamed_addr constant [19 x i8] c"tda18271_dump_regs\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"=== TDA18271 REG DUMP ===\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"ID_BYTE            = 0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"THERMO_BYTE        = 0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"POWER_LEVEL_BYTE   = 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_1   = 0x%02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_2   = 0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_3   = 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_4   = 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_5   = 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"CAL_POST_DIV_BYTE  = 0x%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_1     = 0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_2     = 0x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_3     = 0x%02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MAIN_POST_DIV_BYTE = 0x%02x\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_1    = 0x%02x\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_2    = 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_3    = 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_1    = 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_2    = 0x%02x\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_3    = 0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_4    = 0x%02x\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_5    = 0x%02x\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_6    = 0x%02x\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_7    = 0x%02x\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_8    = 0x%02x\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_9  W = 0x%02x\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_10   = 0x%02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_11   = 0x%02x\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_12   = 0x%02x\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_13   = 0x%02x\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_14   = 0x%02x\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_15   = 0x%02x\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_16 W = 0x%02x\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_17 W = 0x%02x\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_18   = 0x%02x\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_19 W = 0x%02x\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_20 W = 0x%02x\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_21   = 0x%02x\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_22   = 0x%02x\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_23   = 0x%02x\0A\00", align 1
@__func__.__tda18271_write_regs = private unnamed_addr constant [22 x i8] c"__tda18271_write_regs\00", align 1
@.str.48 = private unnamed_addr constant [56 x i8] c"ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_read_regs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.tda18271_priv, ptr %5, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 16, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tda18271_priv, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.tda18271_priv, ptr %5, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %26

25:                                               ; preds = %1
  switch i32 %18, label %37 [
    i32 1, label %26
    i32 2, label %30
  ]

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %34

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ %28, %26 ], [ %32, %30 ]
  %36 = call i32 %35(ptr noundef %0, i32 noundef 1) #7
  br label %37

37:                                               ; preds = %34, %30, %26, %25
  %38 = getelementptr inbounds %struct.tda18271_priv, ptr %5, i32 0, i32 2, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 2) #7
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.tda18271_priv, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.tda18271_priv, ptr %41, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %55, label %51

50:                                               ; preds = %37
  switch i32 %43, label %62 [
    i32 1, label %51
    i32 2, label %55
  ]

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %59

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %51
  %60 = phi ptr [ %53, %51 ], [ %57, %55 ]
  %61 = call i32 %60(ptr noundef %0, i32 noundef 0) #7
  br label %62

62:                                               ; preds = %59, %55, %51, %50
  %63 = icmp eq i32 %40, 2
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_read_regs, ptr noundef nonnull @.str.1, i32 noundef %40)
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, ptr @tda18271_debug, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call fastcc void @tda18271_dump_regs(ptr noundef %0)
  br label %70

70:                                               ; preds = %69, %65
  %71 = select i1 %63, i32 0, i32 %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_tda_printk(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca %struct.va_format, align 8
  %6 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %6)
  store ptr %3, ptr %5, align 8
  %7 = getelementptr inbounds %struct.va_format, ptr %5, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tda18271_priv, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tda18271_priv, ptr %0, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = load i8, ptr %10, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.tda18271_priv, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 77, i32 83
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1, ptr noundef %2, i32 noundef %14, i32 noundef %16, i32 noundef %20, ptr noundef nonnull %5) #8
  br label %24

22:                                               ; preds = %4
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #8
  br label %24

24:                                               ; preds = %22, %9
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda18271_dump_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @tda18271_debug, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %120, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.8)
  %8 = load i32, ptr @tda18271_debug, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %120, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.9, i32 noundef %13)
  %14 = load i32, ptr @tda18271_debug, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %120, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %3, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.10, i32 noundef %20)
  %21 = load i32, ptr @tda18271_debug, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %120, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %3, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.11, i32 noundef %27)
  %28 = load i32, ptr @tda18271_debug, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %120, label %31

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %3, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.12, i32 noundef %34)
  %35 = load i32, ptr @tda18271_debug, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %120, label %38

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %3, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.13, i32 noundef %41)
  %42 = load i32, ptr @tda18271_debug, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %120, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %3, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.14, i32 noundef %48)
  %49 = load i32, ptr @tda18271_debug, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %120, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %3, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.15, i32 noundef %55)
  %56 = load i32, ptr @tda18271_debug, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %120, label %59

59:                                               ; preds = %52
  %60 = getelementptr i8, ptr %3, i32 7
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.16, i32 noundef %62)
  %63 = load i32, ptr @tda18271_debug, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %120, label %66

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %3, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.17, i32 noundef %69)
  %70 = load i32, ptr @tda18271_debug, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %120, label %73

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %3, i32 9
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.18, i32 noundef %76)
  %77 = load i32, ptr @tda18271_debug, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %73
  %81 = getelementptr i8, ptr %3, i32 10
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.19, i32 noundef %83)
  %84 = load i32, ptr @tda18271_debug, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %80
  %88 = getelementptr i8, ptr %3, i32 11
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.20, i32 noundef %90)
  %91 = load i32, ptr @tda18271_debug, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %120, label %94

94:                                               ; preds = %87
  %95 = getelementptr i8, ptr %3, i32 12
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.21, i32 noundef %97)
  %98 = load i32, ptr @tda18271_debug, align 4
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %94
  %102 = getelementptr i8, ptr %3, i32 13
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.22, i32 noundef %104)
  %105 = load i32, ptr @tda18271_debug, align 4
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = getelementptr i8, ptr %3, i32 14
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.23, i32 noundef %111)
  %112 = load i32, ptr @tda18271_debug, align 4
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %3, i32 15
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.24, i32 noundef %118)
  %119 = load i32, ptr @tda18271_debug, align 4
  br label %120

120:                                              ; preds = %115, %108, %101, %94, %87, %80, %73, %66, %59, %52, %45, %38, %31, %24, %17, %11, %7, %1
  %121 = phi i32 [ %119, %115 ], [ %112, %108 ], [ %105, %101 ], [ %98, %94 ], [ %91, %87 ], [ %84, %80 ], [ %77, %73 ], [ %70, %66 ], [ %63, %59 ], [ %56, %52 ], [ %49, %45 ], [ %42, %38 ], [ %35, %31 ], [ %28, %24 ], [ %21, %17 ], [ %14, %11 ], [ %8, %7 ], [ %4, %1 ]
  %122 = and i32 %121, 12
  %123 = icmp eq i32 %122, 12
  br i1 %123, label %124, label %282

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %3, i32 16
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.25, i32 noundef %127)
  %128 = load i32, ptr @tda18271_debug, align 4
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %282, label %131

131:                                              ; preds = %124
  %132 = getelementptr i8, ptr %3, i32 17
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.26, i32 noundef %134)
  %135 = load i32, ptr @tda18271_debug, align 4
  %136 = and i32 %135, 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %282, label %138

138:                                              ; preds = %131
  %139 = getelementptr i8, ptr %3, i32 18
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.27, i32 noundef %141)
  %142 = load i32, ptr @tda18271_debug, align 4
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %282, label %145

145:                                              ; preds = %138
  %146 = getelementptr i8, ptr %3, i32 19
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.28, i32 noundef %148)
  %149 = load i32, ptr @tda18271_debug, align 4
  %150 = and i32 %149, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %282, label %152

152:                                              ; preds = %145
  %153 = getelementptr i8, ptr %3, i32 20
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.29, i32 noundef %155)
  %156 = load i32, ptr @tda18271_debug, align 4
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %282, label %159

159:                                              ; preds = %152
  %160 = getelementptr i8, ptr %3, i32 21
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.30, i32 noundef %162)
  %163 = load i32, ptr @tda18271_debug, align 4
  %164 = and i32 %163, 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %282, label %166

166:                                              ; preds = %159
  %167 = getelementptr i8, ptr %3, i32 22
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.31, i32 noundef %169)
  %170 = load i32, ptr @tda18271_debug, align 4
  %171 = and i32 %170, 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %282, label %173

173:                                              ; preds = %166
  %174 = getelementptr i8, ptr %3, i32 23
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.32, i32 noundef %176)
  %177 = load i32, ptr @tda18271_debug, align 4
  %178 = and i32 %177, 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %282, label %180

180:                                              ; preds = %173
  %181 = getelementptr i8, ptr %3, i32 24
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.33, i32 noundef %183)
  %184 = load i32, ptr @tda18271_debug, align 4
  %185 = and i32 %184, 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %282, label %187

187:                                              ; preds = %180
  %188 = getelementptr i8, ptr %3, i32 25
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.34, i32 noundef %190)
  %191 = load i32, ptr @tda18271_debug, align 4
  %192 = and i32 %191, 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %282, label %194

194:                                              ; preds = %187
  %195 = getelementptr i8, ptr %3, i32 26
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.35, i32 noundef %197)
  %198 = load i32, ptr @tda18271_debug, align 4
  %199 = and i32 %198, 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %282, label %201

201:                                              ; preds = %194
  %202 = getelementptr i8, ptr %3, i32 27
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.36, i32 noundef %204)
  %205 = load i32, ptr @tda18271_debug, align 4
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %282, label %208

208:                                              ; preds = %201
  %209 = getelementptr i8, ptr %3, i32 28
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.37, i32 noundef %211)
  %212 = load i32, ptr @tda18271_debug, align 4
  %213 = and i32 %212, 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %282, label %215

215:                                              ; preds = %208
  %216 = getelementptr i8, ptr %3, i32 29
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.38, i32 noundef %218)
  %219 = load i32, ptr @tda18271_debug, align 4
  %220 = and i32 %219, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %282, label %222

222:                                              ; preds = %215
  %223 = getelementptr i8, ptr %3, i32 30
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.39, i32 noundef %225)
  %226 = load i32, ptr @tda18271_debug, align 4
  %227 = and i32 %226, 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %282, label %229

229:                                              ; preds = %222
  %230 = getelementptr i8, ptr %3, i32 31
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.40, i32 noundef %232)
  %233 = load i32, ptr @tda18271_debug, align 4
  %234 = and i32 %233, 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %282, label %236

236:                                              ; preds = %229
  %237 = getelementptr i8, ptr %3, i32 32
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.41, i32 noundef %239)
  %240 = load i32, ptr @tda18271_debug, align 4
  %241 = and i32 %240, 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %282, label %243

243:                                              ; preds = %236
  %244 = getelementptr i8, ptr %3, i32 33
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.42, i32 noundef %246)
  %247 = load i32, ptr @tda18271_debug, align 4
  %248 = and i32 %247, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %282, label %250

250:                                              ; preds = %243
  %251 = getelementptr i8, ptr %3, i32 34
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.43, i32 noundef %253)
  %254 = load i32, ptr @tda18271_debug, align 4
  %255 = and i32 %254, 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %282, label %257

257:                                              ; preds = %250
  %258 = getelementptr i8, ptr %3, i32 35
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.44, i32 noundef %260)
  %261 = load i32, ptr @tda18271_debug, align 4
  %262 = and i32 %261, 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %282, label %264

264:                                              ; preds = %257
  %265 = getelementptr i8, ptr %3, i32 36
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.45, i32 noundef %267)
  %268 = load i32, ptr @tda18271_debug, align 4
  %269 = and i32 %268, 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %282, label %271

271:                                              ; preds = %264
  %272 = getelementptr i8, ptr %3, i32 37
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.46, i32 noundef %274)
  %275 = load i32, ptr @tda18271_debug, align 4
  %276 = and i32 %275, 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %271
  %279 = getelementptr i8, ptr %3, i32 38
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_dump_regs, ptr noundef nonnull @.str.47, i32 noundef %281)
  br label %282

282:                                              ; preds = %278, %271, %264, %257, %250, %243, %236, %229, %222, %215, %208, %201, %194, %187, %180, %173, %166, %159, %152, %145, %138, %131, %124, %120
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_read_extended(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [39 x i8], align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %2, i8 0, i32 39, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.tda18271_priv, ptr %6, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 39, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tda18271_priv, ptr %6, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.tda18271_priv, ptr %6, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %31, label %27

26:                                               ; preds = %1
  switch i32 %19, label %38 [
    i32 1, label %27
    i32 2, label %31
  ]

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %35

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %29, %27 ], [ %33, %31 ]
  %37 = call i32 %36(ptr noundef %0, i32 noundef 1) #7
  br label %38

38:                                               ; preds = %35, %31, %27, %26
  %39 = getelementptr inbounds %struct.tda18271_priv, ptr %6, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %4, i32 noundef 2) #7
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.tda18271_priv, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.tda18271_priv, ptr %42, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %56, label %52

51:                                               ; preds = %38
  switch i32 %44, label %63 [
    i32 1, label %52
    i32 2, label %56
  ]

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %60

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %54, %52 ], [ %58, %56 ]
  %62 = call i32 %61(ptr noundef %0, i32 noundef 0) #7
  br label %63

63:                                               ; preds = %60, %56, %52, %51
  %64 = icmp eq i32 %41, 2
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_read_extended, ptr noundef nonnull @.str.1, i32 noundef %41)
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %73, %66
  %68 = phi i32 [ %74, %73 ], [ 0, %66 ]
  switch i32 %68, label %69 [
    i32 35, label %73
    i32 34, label %73
    i32 32, label %73
    i32 31, label %73
    i32 24, label %73
  ]

69:                                               ; preds = %67
  %70 = getelementptr [39 x i8], ptr %2, i32 0, i32 %68
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr i8, ptr %6, i32 %68
  store i8 %71, ptr %72, align 1
  br label %73

73:                                               ; preds = %69, %67, %67, %67, %67, %67
  %74 = add nuw nsw i32 %68, 1
  %75 = icmp eq i32 %74, 39
  br i1 %75, label %76, label %67

76:                                               ; preds = %73
  %77 = load i32, ptr @tda18271_debug, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call fastcc void @tda18271_dump_regs(ptr noundef %0)
  br label %81

81:                                               ; preds = %80, %76
  %82 = select i1 %64, i32 0, i32 %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %2) #7
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_write_regs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [40 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %6, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %15, align 4
  %16 = icmp eq i32 %2, 0
  %17 = add i32 %2, %1
  %18 = icmp ugt i32 %17, 40
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %4
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %24 [
    i32 3, label %25
    i32 8, label %25
    i32 16, label %25
  ]

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %21, %21, %21
  %26 = phi i32 [ 39, %24 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ]
  br i1 %3, label %27, label %54

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %41, label %37

36:                                               ; preds = %27
  switch i32 %29, label %48 [
    i32 1, label %37
    i32 2, label %41
  ]

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %45

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %39, %37 ], [ %43, %41 ]
  %47 = call i32 %46(ptr noundef %0, i32 noundef 1) #7
  br label %48

48:                                               ; preds = %45, %41, %37, %36
  %49 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %50, i32 noundef 2) #7
  br label %54

54:                                               ; preds = %48, %25
  %55 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 2, i32 1
  br label %56

56:                                               ; preds = %79, %54
  %57 = phi i32 [ %26, %54 ], [ %60, %79 ]
  %58 = phi i32 [ %1, %54 ], [ %80, %79 ]
  %59 = phi i32 [ %2, %54 ], [ %81, %79 ]
  %60 = call i32 @llvm.smin.i32(i32 %57, i32 %59)
  %61 = trunc i32 %58 to i8
  store i8 %61, ptr %5, align 1
  %62 = icmp slt i32 %60, 1
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = add i32 %58, -1
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ 1, %63 ], [ %71, %65 ]
  %67 = add i32 %64, %66
  %68 = getelementptr i8, ptr %8, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr [40 x i8], ptr %5, i32 0, i32 %66
  store i8 %69, ptr %70, align 1
  %71 = add i32 %66, 1
  %72 = icmp sgt i32 %71, %60
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %56
  %74 = trunc i32 %60 to i16
  %75 = add i16 %74, 1
  store i16 %75, ptr %14, align 4
  %76 = load ptr, ptr %55, align 4
  %77 = call i32 @__i2c_transfer(ptr noundef %76, ptr noundef nonnull %6, i32 noundef 1) #7
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = add i32 %60, %58
  %81 = sub i32 %59, %60
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %56

83:                                               ; preds = %79, %73
  %84 = phi i32 [ %80, %79 ], [ %58, %73 ]
  br i1 %3, label %85, label %113

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.tda18271_priv, ptr %8, i32 0, i32 2, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.i2c_lock_operations, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  call void %91(ptr noundef %87, i32 noundef 2) #7
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.tda18271_priv, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.tda18271_priv, ptr %92, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %106, label %102

101:                                              ; preds = %85
  switch i32 %94, label %113 [
    i32 1, label %102
    i32 2, label %106
  ]

102:                                              ; preds = %101, %97
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %110

106:                                              ; preds = %101, %97
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106, %102
  %111 = phi ptr [ %104, %102 ], [ %108, %106 ]
  %112 = call i32 %111(ptr noundef %0, i32 noundef 0) #7
  br label %113

113:                                              ; preds = %110, %106, %102, %101, %83
  %114 = icmp eq i32 %77, 1
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__tda18271_write_regs, ptr noundef nonnull @.str.48, i32 noundef %84, i32 noundef %60, i32 noundef %77)
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %77, %115 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 1
  %7 = select i1 %6, i32 22, i32 19
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -33
  %11 = trunc i32 %2 to i8
  %12 = shl i8 %11, 5
  %13 = and i8 %12, 32
  %14 = or i8 %10, %13
  store i8 %14, ptr %8, align 1
  %15 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef %7, i32 noundef 1, i1 noundef zeroext true) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_init_regs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @tda18271_debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = load i8, ptr %8, align 4
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_init_regs, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %14)
  %15 = load ptr, ptr %2, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi ptr [ %15, %7 ], [ %3, %1 ]
  %18 = getelementptr inbounds %struct.tda18271_priv, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tda18271_priv, ptr %17, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %31, label %27

26:                                               ; preds = %16
  switch i32 %19, label %38 [
    i32 1, label %27
    i32 2, label %31
  ]

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %35

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %29, %27 ], [ %33, %31 ]
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 1) #7
  br label %38

38:                                               ; preds = %35, %31, %27, %26
  %39 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %40, i32 noundef 2) #7
  %44 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %49 [
    i32 0, label %47
    i32 1, label %46
  ]

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %38
  %48 = phi i8 [ -124, %46 ], [ -125, %38 ]
  store i8 %48, ptr %3, align 1
  br label %49

49:                                               ; preds = %47, %38
  %50 = getelementptr i8, ptr %3, i32 1
  store i8 8, ptr %50, align 1
  %51 = getelementptr i8, ptr %3, i32 2
  store i8 -128, ptr %51, align 1
  %52 = getelementptr i8, ptr %3, i32 3
  store i8 -58, ptr %52, align 1
  %53 = getelementptr i8, ptr %3, i32 4
  store i8 -33, ptr %53, align 1
  %54 = getelementptr i8, ptr %3, i32 5
  store i8 22, ptr %54, align 1
  %55 = getelementptr i8, ptr %3, i32 6
  store i8 96, ptr %55, align 1
  %56 = getelementptr i8, ptr %3, i32 7
  store i8 -128, ptr %56, align 1
  %57 = getelementptr i8, ptr %3, i32 8
  store i8 -128, ptr %57, align 1
  %58 = getelementptr i8, ptr %3, i32 9
  %59 = getelementptr i8, ptr %3, i32 10
  %60 = getelementptr i8, ptr %3, i32 11
  %61 = getelementptr i8, ptr %3, i32 12
  %62 = getelementptr i8, ptr %3, i32 13
  %63 = getelementptr i8, ptr %3, i32 14
  %64 = getelementptr i8, ptr %3, i32 15
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %58, i8 0, i64 7, i1 false)
  switch i32 %45, label %109 [
    i32 0, label %65
    i32 1, label %87
  ]

65:                                               ; preds = %49
  %66 = getelementptr i8, ptr %3, i32 16
  store i8 -1, ptr %66, align 1
  %67 = getelementptr i8, ptr %3, i32 17
  store i8 1, ptr %67, align 1
  %68 = getelementptr i8, ptr %3, i32 18
  store i8 -124, ptr %68, align 1
  %69 = getelementptr i8, ptr %3, i32 19
  store i8 65, ptr %69, align 1
  %70 = getelementptr i8, ptr %3, i32 20
  store i8 1, ptr %70, align 1
  %71 = getelementptr i8, ptr %3, i32 21
  store i8 -124, ptr %71, align 1
  %72 = getelementptr i8, ptr %3, i32 22
  store i8 64, ptr %72, align 1
  %73 = getelementptr i8, ptr %3, i32 23
  store i8 7, ptr %73, align 1
  %74 = getelementptr i8, ptr %3, i32 24
  store i8 0, ptr %74, align 1
  %75 = getelementptr i8, ptr %3, i32 25
  store i8 0, ptr %75, align 1
  %76 = getelementptr i8, ptr %3, i32 26
  store i8 -106, ptr %76, align 1
  %77 = getelementptr i8, ptr %3, i32 27
  store i8 15, ptr %77, align 1
  %78 = getelementptr i8, ptr %3, i32 28
  store i8 -63, ptr %78, align 1
  %79 = getelementptr i8, ptr %3, i32 29
  store i8 0, ptr %79, align 1
  %80 = getelementptr i8, ptr %3, i32 30
  store i8 -113, ptr %80, align 1
  %81 = getelementptr i8, ptr %3, i32 31
  store i8 0, ptr %81, align 1
  %82 = getelementptr i8, ptr %3, i32 32
  store i8 0, ptr %82, align 1
  %83 = getelementptr i8, ptr %3, i32 33
  store i8 0, ptr %83, align 1
  %84 = getelementptr i8, ptr %3, i32 34
  store i8 0, ptr %84, align 1
  %85 = getelementptr i8, ptr %3, i32 35
  store i8 32, ptr %85, align 1
  %86 = getelementptr i8, ptr %3, i32 36
  store i8 51, ptr %86, align 1
  br label %127

87:                                               ; preds = %49
  %88 = getelementptr i8, ptr %3, i32 16
  store i8 -4, ptr %88, align 1
  %89 = getelementptr i8, ptr %3, i32 17
  store i8 1, ptr %89, align 1
  %90 = getelementptr i8, ptr %3, i32 18
  store i8 -124, ptr %90, align 1
  %91 = getelementptr i8, ptr %3, i32 19
  store i8 65, ptr %91, align 1
  %92 = getelementptr i8, ptr %3, i32 20
  store i8 1, ptr %92, align 1
  %93 = getelementptr i8, ptr %3, i32 21
  store i8 -124, ptr %93, align 1
  %94 = getelementptr i8, ptr %3, i32 22
  store i8 64, ptr %94, align 1
  %95 = getelementptr i8, ptr %3, i32 23
  store i8 7, ptr %95, align 1
  %96 = getelementptr i8, ptr %3, i32 24
  store i8 0, ptr %96, align 1
  %97 = getelementptr i8, ptr %3, i32 25
  store i8 0, ptr %97, align 1
  %98 = getelementptr i8, ptr %3, i32 26
  store i8 -106, ptr %98, align 1
  %99 = getelementptr i8, ptr %3, i32 27
  store i8 51, ptr %99, align 1
  %100 = getelementptr i8, ptr %3, i32 28
  store i8 -63, ptr %100, align 1
  %101 = getelementptr i8, ptr %3, i32 29
  store i8 0, ptr %101, align 1
  %102 = getelementptr i8, ptr %3, i32 30
  store i8 -113, ptr %102, align 1
  %103 = getelementptr i8, ptr %3, i32 31
  store i8 0, ptr %103, align 1
  %104 = getelementptr i8, ptr %3, i32 32
  store i8 0, ptr %104, align 1
  %105 = getelementptr i8, ptr %3, i32 33
  store i8 -116, ptr %105, align 1
  %106 = getelementptr i8, ptr %3, i32 34
  store i8 0, ptr %106, align 1
  %107 = getelementptr i8, ptr %3, i32 35
  store i8 32, ptr %107, align 1
  %108 = getelementptr i8, ptr %3, i32 36
  store i8 -77, ptr %108, align 1
  br label %127

109:                                              ; preds = %49
  %110 = getelementptr i8, ptr %3, i32 17
  store i8 1, ptr %110, align 1
  %111 = getelementptr i8, ptr %3, i32 18
  store i8 -124, ptr %111, align 1
  %112 = getelementptr i8, ptr %3, i32 19
  store i8 65, ptr %112, align 1
  %113 = getelementptr i8, ptr %3, i32 20
  store i8 1, ptr %113, align 1
  %114 = getelementptr i8, ptr %3, i32 21
  store i8 -124, ptr %114, align 1
  %115 = getelementptr i8, ptr %3, i32 22
  store i8 64, ptr %115, align 1
  %116 = getelementptr i8, ptr %3, i32 23
  store i8 7, ptr %116, align 1
  %117 = getelementptr i8, ptr %3, i32 24
  store i8 0, ptr %117, align 1
  %118 = getelementptr i8, ptr %3, i32 25
  store i8 0, ptr %118, align 1
  %119 = getelementptr i8, ptr %3, i32 26
  store i8 -106, ptr %119, align 1
  %120 = getelementptr i8, ptr %3, i32 28
  store i8 -63, ptr %120, align 1
  %121 = getelementptr i8, ptr %3, i32 29
  store i8 0, ptr %121, align 1
  %122 = getelementptr i8, ptr %3, i32 30
  store i8 -113, ptr %122, align 1
  %123 = getelementptr i8, ptr %3, i32 31
  store i8 0, ptr %123, align 1
  %124 = getelementptr i8, ptr %3, i32 32
  store i8 0, ptr %124, align 1
  %125 = getelementptr i8, ptr %3, i32 34
  store i8 0, ptr %125, align 1
  %126 = getelementptr i8, ptr %3, i32 35
  store i8 32, ptr %126, align 1
  br label %127

127:                                              ; preds = %109, %87, %65
  %128 = phi ptr [ %124, %109 ], [ %104, %87 ], [ %82, %65 ]
  %129 = phi ptr [ %126, %109 ], [ %107, %87 ], [ %85, %65 ]
  %130 = getelementptr i8, ptr %3, i32 37
  store i8 72, ptr %130, align 1
  %131 = getelementptr i8, ptr %3, i32 38
  store i8 -80, ptr %131, align 1
  %132 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 0, i32 noundef 39, i1 noundef zeroext false)
  store i8 0, ptr %128, align 1
  %133 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  store i8 3, ptr %128, align 1
  %134 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  store i8 67, ptr %128, align 1
  %135 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  store i8 76, ptr %128, align 1
  %136 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 32, i32 noundef 1, i1 noundef zeroext false)
  %137 = load i32, ptr %44, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  store i8 -96, ptr %129, align 1
  %140 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  store i8 -89, ptr %129, align 1
  %141 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  store i8 -25, ptr %129, align 1
  %142 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  store i8 -20, ptr %129, align 1
  %143 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1, i1 noundef zeroext false)
  br label %144

144:                                              ; preds = %139, %127
  store i8 31, ptr %54, align 1
  store i8 102, ptr %55, align 1
  store i8 -127, ptr %56, align 1
  store i8 -52, ptr %57, align 1
  store i8 108, ptr %58, align 1
  store i8 0, ptr %59, align 1
  store i8 0, ptr %60, align 1
  store i8 -51, ptr %61, align 1
  store i8 119, ptr %62, align 1
  store i8 8, ptr %63, align 1
  store i8 0, ptr %64, align 1
  %145 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  %146 = load i32, ptr %44, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load ptr, ptr %2, align 4
  %150 = getelementptr i8, ptr %149, i32 19
  %151 = load i8, ptr %150, align 1
  %152 = or i8 %151, 32
  store i8 %152, ptr %150, align 1
  %153 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 19, i32 noundef 1, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 1) #7
  %154 = load ptr, ptr %2, align 4
  %155 = getelementptr i8, ptr %154, i32 19
  %156 = load i8, ptr %155, align 1
  %157 = and i8 %156, -33
  store i8 %157, ptr %155, align 1
  %158 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 19, i32 noundef 1, i1 noundef zeroext false) #7
  br label %159

159:                                              ; preds = %148, %144
  tail call void @msleep(i32 noundef 5) #7
  %160 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  store i8 -123, ptr %56, align 1
  store i8 -53, ptr %57, align 1
  store i8 102, ptr %58, align 1
  store i8 112, ptr %59, align 1
  %161 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  %162 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #7
  store i8 -126, ptr %56, align 1
  store i8 -88, ptr %57, align 1
  store i8 0, ptr %59, align 1
  store i8 -87, ptr %61, align 1
  store i8 115, ptr %62, align 1
  store i8 26, ptr %63, align 1
  %163 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  %164 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  store i8 -122, ptr %56, align 1
  store i8 -88, ptr %57, align 1
  store i8 102, ptr %58, align 1
  store i8 -96, ptr %59, align 1
  %165 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  %166 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #7
  store i8 -125, ptr %56, align 1
  store i8 -104, ptr %57, align 1
  store i8 101, ptr %58, align 1
  store i8 0, ptr %59, align 1
  store i8 -103, ptr %61, align 1
  store i8 113, ptr %62, align 1
  store i8 -51, ptr %63, align 1
  %167 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 11, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  %168 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  store i8 -121, ptr %56, align 1
  store i8 101, ptr %58, align 1
  store i8 80, ptr %59, align 1
  %169 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 7, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 5) #7
  %170 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1, i1 noundef zeroext false)
  tail call void @msleep(i32 noundef 30) #7
  store i8 100, ptr %55, align 1
  %171 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 1, i1 noundef zeroext false)
  %172 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1, i1 noundef zeroext false)
  %173 = load ptr, ptr %39, align 4
  %174 = getelementptr inbounds %struct.i2c_adapter, ptr %173, i32 0, i32 4
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.i2c_lock_operations, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %173, i32 noundef 2) #7
  %178 = load ptr, ptr %2, align 4
  %179 = getelementptr inbounds %struct.tda18271_priv, ptr %178, i32 0, i32 5
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, -1
  %182 = icmp ult i32 %181, 2
  br i1 %182, label %187, label %183

183:                                              ; preds = %159
  %184 = getelementptr inbounds %struct.tda18271_priv, ptr %178, i32 0, i32 3
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %192, label %188

187:                                              ; preds = %159
  switch i32 %180, label %199 [
    i32 1, label %188
    i32 2, label %192
  ]

188:                                              ; preds = %187, %183
  %189 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %199, label %196

192:                                              ; preds = %187, %183
  %193 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %192, %188
  %197 = phi ptr [ %190, %188 ], [ %194, %192 ]
  %198 = tail call i32 %197(ptr noundef %0, i32 noundef 0) #7
  br label %199

199:                                              ; preds = %196, %192, %188, %187
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_set_standby_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @tda18271_debug, align 4
  %8 = and i32 %7, 9
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda18271_set_standby_mode, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr i8, ptr %6, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 31
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i8 0, i8 -128
  %17 = icmp eq i32 %2, 0
  %18 = select i1 %17, i8 0, i8 64
  %19 = or i8 %18, %16
  %20 = icmp eq i32 %3, 0
  %21 = select i1 %20, i8 0, i8 32
  %22 = or i8 %19, %21
  %23 = or i8 %22, %14
  store i8 %23, ptr %12, align 1
  %24 = tail call fastcc i32 @__tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 1, i1 noundef zeroext true) #7
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call i32 @tda18271_lookup_pll_map(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_main_pll, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef 559)
  br label %31

11:                                               ; preds = %2
  %12 = load i8, ptr %5, align 1
  %13 = and i8 %12, 127
  %14 = getelementptr i8, ptr %7, i32 12
  store i8 %13, ptr %14, align 1
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr %3, align 4
  %18 = udiv i32 %17, 1000
  %19 = shl nuw nsw i32 %16, 7
  %20 = mul i32 %19, %18
  %21 = udiv i32 %20, 125
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 127
  %25 = getelementptr i8, ptr %7, i32 13
  store i8 %24, ptr %25, align 1
  %26 = lshr i32 %21, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr i8, ptr %7, i32 14
  store i8 %27, ptr %28, align 1
  %29 = trunc i32 %21 to i8
  %30 = getelementptr i8, ptr %7, i32 15
  store i8 %29, ptr %30, align 1
  br label %31

31:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_pll_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_cal_pll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call i32 @tda18271_lookup_pll_map(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_cal_pll, ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef 582)
  br label %30

11:                                               ; preds = %2
  %12 = load i8, ptr %5, align 1
  %13 = getelementptr i8, ptr %7, i32 8
  store i8 %12, ptr %13, align 1
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i32, ptr %3, align 4
  %17 = udiv i32 %16, 1000
  %18 = shl nuw nsw i32 %15, 7
  %19 = mul i32 %18, %17
  %20 = udiv i32 %19, 125
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 127
  %24 = getelementptr i8, ptr %7, i32 9
  store i8 %23, ptr %24, align 1
  %25 = lshr i32 %20, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr i8, ptr %7, i32 10
  store i8 %26, ptr %27, align 1
  %28 = trunc i32 %20 to i8
  %29 = getelementptr i8, ptr %7, i32 11
  store i8 %28, ptr %29, align 1
  br label %30

30:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_bp_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 5, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_bp_filter, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef 606)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -8
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 7
  %15 = or i8 %14, %12
  store i8 %15, ptr %10, align 1
  br label %16

16:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_km(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 3, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_km, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef 623)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 28
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -125
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 124
  %15 = or i8 %14, %12
  store i8 %15, ptr %10, align 1
  br label %16

16:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_rf_band(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 6, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_rf_band, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef 640)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 31
  %13 = load i8, ptr %3, align 1
  %14 = shl i8 %13, 5
  %15 = or i8 %14, %12
  store i8 %15, ptr %10, align 1
  br label %16

16:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_gain_taper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 7, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_gain_taper, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef 657)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -32
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 31
  %15 = or i8 %14, %12
  store i8 %15, ptr %10, align 1
  br label %16

16:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_ir_measure(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 8, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda18271_calc_ir_measure, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef 674)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 7
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -8
  %13 = load i8, ptr %3, align 1
  %14 = and i8 %13, 7
  %15 = or i8 %14, %12
  store i8 %15, ptr %10, align 1
  br label %16

16:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda18271_calc_rf_cal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %3) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = getelementptr i8, ptr %5, i32 29
  store i8 %9, ptr %10, align 1
  br label %11

11:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{i64 2154270046, i64 2154270549, i64 2154270083, i64 2154270139, i64 2154270173, i64 2154270197, i64 2154270238, i64 2154270259, i64 2154270287, i64 2154270321}
