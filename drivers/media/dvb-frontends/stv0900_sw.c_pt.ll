; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0900_sw.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0900_sw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stv0900_internal = type { i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.stv0900_signal_info], [2 x i32], ptr, i8, i8, i8, ptr, i32, i32 }
%struct.stv0900_signal_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.stv0900_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32 }

@stvdebug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [19 x i8] c"\017%s: standard %d\0A\00", align 1
@__func__.stv0900_get_standard = private unnamed_addr constant [21 x i8] c"stv0900_get_standard\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\017%s\0A\00", align 1
@__func__.stv0900_algo = private unnamed_addr constant [13 x i8] c"stv0900_algo\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\017%s: NO AGC1, POWERI, POWERQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\017%s: Mclk %d, SR %d, Dmd %d\0A\00", align 1
@__func__.stv0900_set_symbol_rate = private unnamed_addr constant [24 x i8] c"stv0900_set_symbol_rate\00", align 1
@__func__.stv0900_set_search_standard = private unnamed_addr constant [28 x i8] c"stv0900_set_search_standard\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\017Search Standard = DVBS1\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\017Search Standard = DSS\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\017Search Standard = DVBS2\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\017Search Standard = AUTO\0A\00", align 1
@__func__.stv0900_set_viterbi_acq = private unnamed_addr constant [24 x i8] c"stv0900_set_viterbi_acq\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\017%s: ViterbiStandard = \00", align 1
@__func__.stv0900_set_viterbi_standard = private unnamed_addr constant [29 x i8] c"stv0900_set_viterbi_standard\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\017Auto\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\017DVBS1\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\017DSS\0A\00", align 1
@__func__.stv0900_set_viterbi_tracq = private unnamed_addr constant [26 x i8] c"stv0900_set_viterbi_tracq\00", align 1
@__func__.stv0900_blind_search_algo = private unnamed_addr constant [26 x i8] c"stv0900_blind_search_algo\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\017%s agc2_int=%d agc2_th=%d \0A\00", align 1
@__func__.stv0900_blind_check_agc2_min_level = private unnamed_addr constant [35 x i8] c"stv0900_blind_check_agc2_min_level\00", align 1
@.str.13 = private unnamed_addr constant [101 x i8] c"\017lock: I2C_DEMOD_MODE_FIELD =0. Search started. tuner freq=%d agc2=0x%x srate_coarse=%d tmg_cpt=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\017lock: srate=%d r0=0x%x r1=0x%x r2=0x%x r3=0x%x \0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\017%s: modcode=0x%x \0A\00", align 1
@__func__.stv0900_get_signal_params = private unnamed_addr constant [26 x i8] c"stv0900_get_signal_params\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\017%s: range %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\017%s: Invalid parameter\0A\00", align 1
@__func__.stv0900_get_tuner_freq = private unnamed_addr constant [23 x i8] c"stv0900_get_tuner_freq\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\017%s: Frequency=%d\0A\00", align 1
@__func__.stv0900_track_optimization = private unnamed_addr constant [27 x i8] c"stv0900_track_optimization\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"\017%s: found DVB-S or DSS\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\017%s: found DVB-S2\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\017%s: found unknown standard\0A\00", align 1
@__func__.stv0900_wait_for_lock = private unnamed_addr constant [22 x i8] c"stv0900_wait_for_lock\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"\017%s: Timer = %d, time_out = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\017%s: DEMOD LOCK OK\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\017%s: DEMOD LOCK FAIL\0A\00", align 1
@__func__.stv0900_get_fec_lock = private unnamed_addr constant [21 x i8] c"stv0900_get_fec_lock\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\017%s: DEMOD FEC LOCK OK\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"\017%s: DEMOD FEC LOCK FAIL\0A\00", align 1
@switch.table.stv0900_get_signal_params = private unnamed_addr constant [14 x i32] [i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 8, i32 8, i32 2, i32 8, i32 8, i32 4, i32 5, i32 6], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @shiftx(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %2, i32 0
  %6 = sub i32 %0, %5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stv0900_check_signal_presence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i16 512, i16 0
  %5 = sub nuw nsw i16 -2996, %4
  %6 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %5) #6
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = sub nuw nsw i16 -2995, %4
  %10 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %9) #6
  %11 = zext i8 %10 to i32
  %12 = or i32 %8, %11
  %13 = tail call i32 @ge2comp(i32 noundef %12, i32 noundef 16) #6
  %14 = sub nuw nsw i16 -3018, %4
  %15 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %14) #6
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = sub nuw nsw i16 -3017, %4
  %19 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %18) #6
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = getelementptr %struct.stv0900_internal, ptr %0, i32 0, i32 7, i32 %1
  %23 = load i32, ptr %22, align 4
  %24 = sdiv i32 %23, 1000
  %25 = sdiv i32 %23, 10000
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = shl i32 %27, 16
  %29 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sdiv i32 %30, 1000
  %32 = sdiv i32 %28, %31
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 16384)
  %34 = icmp ugt i32 %21, 8192
  %35 = shl i32 %33, 1
  %36 = icmp sgt i32 %13, %35
  %37 = select i1 %34, i1 true, i1 %36
  %38 = mul i32 %33, -2
  %39 = icmp slt i32 %13, %38
  %40 = select i1 %37, i1 true, i1 %39
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_read_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ge2comp(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_standard(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 1
  %7 = select i1 %6, i32 33554432, i32 0
  %8 = sub nuw nsw i32 -199557024, %7
  %9 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %8) #6
  switch i8 %9, label %15 [
    i8 2, label %16
    i8 3, label %10
  ]

10:                                               ; preds = %2
  %11 = sub nuw nsw i32 -181206912, %7
  %12 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %5, i32 noundef %11) #6
  %13 = icmp eq i8 %12, 1
  %14 = select i1 %13, i32 2, i32 0
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = phi i32 [ 4, %15 ], [ 1, %2 ], [ %14, %10 ]
  %18 = load i32, ptr @stvdebug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_get_standard, i32 noundef %17) #7
  br label %22

22:                                               ; preds = %20, %16
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_bits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stv0900_algo(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0900_state, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @stvdebug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_algo) #7
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 9, i32 %6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %6, 1
  %15 = select i1 %14, i32 33554432, i32 0
  %16 = sub nuw nsw i32 -177078271, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 1) #6
  %17 = select i1 %14, i16 512, i16 0
  %18 = sub nuw nsw i16 -3050, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %18, i8 noundef zeroext 92) #6
  %19 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %20 = load i8, ptr %19, align 2
  %21 = icmp ugt i8 %20, 31
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 6, i32 %6
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 5000000
  %26 = sub nuw nsw i16 -3039, %17
  br i1 %25, label %27, label %28

27:                                               ; preds = %22
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %26, i8 noundef zeroext -98) #6
  br label %31

28:                                               ; preds = %22
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %26, i8 noundef zeroext -126) #6
  br label %31

29:                                               ; preds = %11
  %30 = sub nuw nsw i16 -3039, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %30, i8 noundef zeroext -120) #6
  br label %31

31:                                               ; preds = %29, %28, %27
  %32 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 6, i32 %6
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = icmp slt i32 %33, 1500001
  %38 = icmp ult i32 %33, 5000001
  %39 = select i1 %38, i32 1000, i32 700
  %40 = select i1 %38, i32 300, i32 100
  %41 = select i1 %37, i32 1500, i32 %39
  %42 = select i1 %37, i32 400, i32 %40
  %43 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 5, i32 %6
  store i32 72000000, ptr %43, align 4
  %44 = sub nuw nsw i16 -2982, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %44, i8 noundef zeroext -64) #6
  %45 = sub nuw nsw i16 -3040, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %45, i8 noundef zeroext 112) #6
  %46 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr @stvdebug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %91, label %89

50:                                               ; preds = %31
  %51 = icmp slt i32 %33, 1000001
  br i1 %51, label %62, label %52

52:                                               ; preds = %50
  %53 = icmp ult i32 %33, 2000001
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %33, 5000001
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  %57 = icmp ult i32 %33, 10000001
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = icmp ult i32 %33, 20000001
  %60 = select i1 %59, i32 400, i32 300
  %61 = select i1 %59, i32 130, i32 100
  br label %62

62:                                               ; preds = %58, %56, %54, %52, %50
  %63 = phi i32 [ 3000, %50 ], [ 2500, %52 ], [ 1000, %54 ], [ 700, %56 ], [ %60, %58 ]
  %64 = phi i32 [ 1700, %50 ], [ 1100, %52 ], [ 550, %54 ], [ 250, %56 ], [ %61, %58 ]
  %65 = icmp eq i32 %34, 2
  %66 = zext i1 %65 to i32
  %67 = lshr exact i32 %63, %66
  %68 = sub nuw nsw i16 -3049, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %68, i8 noundef zeroext 32) #6
  %69 = sub nuw nsw i16 -2992, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %69, i8 noundef zeroext -46) #6
  %70 = load i32, ptr %32, align 4
  %71 = icmp slt i32 %70, 2000000
  %72 = sub nuw nsw i16 -3040, %17
  %73 = select i1 %71, i8 99, i8 112
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %72, i8 noundef zeroext %73) #6
  %74 = sub nuw nsw i16 -3027, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %74, i8 noundef zeroext 56) #6
  %75 = load i32, ptr %32, align 4
  %76 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  %79 = select i1 %78, i32 25, i32 35
  %80 = icmp eq i32 %77, 2
  %81 = select i1 %80, i32 20, i32 %79
  %82 = mul i32 %81, %75
  %83 = udiv i32 %82, 100
  %84 = add i32 %83, %75
  %85 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 5, i32 %6
  store i32 %84, ptr %85, align 4
  %86 = load i8, ptr %19, align 2
  %87 = icmp ugt i8 %86, 31
  %88 = sub nuw nsw i16 -2984, %17
  br i1 %87, label %100, label %110

89:                                               ; preds = %36
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_symbol_rate, i32 noundef %47, i32 noundef 1000000, i32 noundef %6) #7
  br label %91

91:                                               ; preds = %89, %36
  %92 = lshr i32 %47, 7
  %93 = udiv i32 512000000, %92
  %94 = select i1 %14, i16 -3490, i16 -2978
  %95 = lshr i32 %93, 8
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 127
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %94, i8 noundef zeroext %97) #6
  %98 = or i16 %94, 1
  %99 = trunc i32 %93 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %98, i8 noundef zeroext %99) #6
  br label %185

100:                                              ; preds = %62
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %88, i8 noundef zeroext 90) #6
  %101 = load i32, ptr %12, align 4
  switch i32 %101, label %117 [
    i32 1, label %102
    i32 2, label %107
  ]

102:                                              ; preds = %100
  %103 = load i32, ptr %85, align 4
  %104 = mul i32 %103, 15
  %105 = add i32 %104, 150000000
  %106 = sdiv i32 %105, 10
  br label %115

107:                                              ; preds = %100
  %108 = load i32, ptr %85, align 4
  %109 = add i32 %108, 10000000
  br label %115

110:                                              ; preds = %62
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %88, i8 noundef zeroext -63) #6
  %111 = load i32, ptr %85, align 4
  %112 = mul i32 %111, 15
  %113 = add i32 %112, 150000000
  %114 = sdiv i32 %113, 10
  br label %115

115:                                              ; preds = %110, %107, %102
  %116 = phi i32 [ %106, %102 ], [ %109, %107 ], [ %114, %110 ]
  store i32 %116, ptr %85, align 4
  br label %117

117:                                              ; preds = %115, %100
  %118 = sub nuw nsw i16 -2982, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %118, i8 noundef zeroext -63) #6
  %119 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %32, align 4
  %122 = load i32, ptr @stvdebug, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_symbol_rate, i32 noundef %120, i32 noundef %121, i32 noundef %6) #7
  br label %126

126:                                              ; preds = %124, %117
  %127 = icmp ugt i32 %121, 60000000
  %128 = icmp ugt i32 %121, 6000000
  %129 = select i1 %128, i32 6, i32 9
  %130 = select i1 %128, i32 10, i32 7
  %131 = select i1 %127, i32 4, i32 %129
  %132 = select i1 %127, i32 12, i32 %130
  %133 = shl i32 %121, %131
  %134 = lshr i32 %120, %132
  %135 = udiv i32 %133, %134
  %136 = select i1 %14, i16 -3490, i16 -2978
  %137 = lshr i32 %135, 8
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 127
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %136, i8 noundef zeroext %139) #6
  %140 = or i16 %136, 1
  %141 = trunc i32 %135 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %140, i8 noundef zeroext %141) #6
  %142 = load i32, ptr %119, align 4
  %143 = load i32, ptr %32, align 4
  %144 = udiv i32 %143, 100
  %145 = mul i32 %144, 105
  %146 = icmp ugt i32 %145, 60000000
  %147 = icmp ugt i32 %145, 6000000
  %148 = select i1 %147, i32 6720, i32 53760
  %149 = select i1 %147, i32 10, i32 7
  %150 = select i1 %146, i32 1680, i32 %148
  %151 = select i1 %146, i32 12, i32 %149
  %152 = mul i32 %150, %144
  %153 = lshr i32 %142, %151
  %154 = udiv i32 %152, %153
  %155 = icmp ult i32 %154, 32767
  %156 = select i1 %14, i16 -3488, i16 -2976
  br i1 %155, label %157, label %162

157:                                              ; preds = %126
  %158 = lshr i32 %154, 8
  %159 = trunc i32 %158 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %156, i8 noundef zeroext %159) #6
  %160 = or i16 %156, 1
  %161 = trunc i32 %154 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %160, i8 noundef zeroext %161) #6
  br label %164

162:                                              ; preds = %126
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %156, i8 noundef zeroext 127) #6
  %163 = or i16 %156, 1
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %163, i8 noundef zeroext -1) #6
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i32, ptr %119, align 4
  %166 = load i32, ptr %32, align 4
  %167 = udiv i32 %166, 100
  %168 = mul nuw i32 %167, 95
  %169 = icmp ugt i32 %168, 60000000
  %170 = icmp ugt i32 %168, 6000000
  %171 = select i1 %170, i32 6080, i32 48640
  %172 = select i1 %170, i32 10, i32 7
  %173 = select i1 %169, i32 1520, i32 %171
  %174 = select i1 %169, i32 12, i32 %172
  %175 = mul i32 %173, %167
  %176 = lshr i32 %165, %174
  %177 = udiv i32 %175, %176
  %178 = select i1 %14, i16 -3486, i16 -2974
  %179 = lshr i32 %177, 8
  %180 = trunc i32 %179 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %178, i8 noundef zeroext %180) #6
  %181 = or i16 %178, 1
  %182 = trunc i32 %177 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %181, i8 noundef zeroext %182) #6
  %183 = load i32, ptr %32, align 4
  %184 = icmp sgt i32 %183, 9999999
  br label %185

185:                                              ; preds = %164, %91
  %186 = phi i32 [ %42, %91 ], [ %64, %164 ]
  %187 = phi i32 [ %41, %91 ], [ %67, %164 ]
  %188 = phi i1 [ true, %91 ], [ %184, %164 ]
  %189 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 8, i32 %6
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 3
  %192 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 4, i32 %6
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 5, i32 %6
  %195 = load i32, ptr %194, align 4
  br i1 %191, label %196, label %197

196:                                              ; preds = %185
  tail call void @stv0900_set_tuner_auto(ptr noundef %4, i32 noundef %193, i32 noundef %195, i32 noundef %6) #6
  br label %198

197:                                              ; preds = %185
  tail call void @stv0900_set_tuner(ptr noundef %0, i32 noundef %193, i32 noundef %195) #6
  br label %198

198:                                              ; preds = %197, %196
  %199 = sub nuw nsw i32 -200408833, %15
  %200 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %199) #6
  %201 = zext i8 %200 to i32
  %202 = shl nuw nsw i32 %201, 8
  %203 = sub nuw nsw i32 -200343297, %15
  %204 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %203) #6
  %205 = zext i8 %204 to i32
  %206 = or i32 %202, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %252

208:                                              ; preds = %198
  %209 = sub nuw nsw i32 -200670977, %15
  %210 = sub nuw nsw i32 -200605441, %15
  %211 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %209) #6
  %212 = zext i8 %211 to i32
  %213 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %210) #6
  %214 = zext i8 %213 to i32
  %215 = add nuw nsw i32 %214, %212
  %216 = lshr i32 %215, 1
  %217 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %209) #6
  %218 = zext i8 %217 to i32
  %219 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %210) #6
  %220 = zext i8 %219 to i32
  %221 = add nuw nsw i32 %220, %218
  %222 = lshr i32 %221, 1
  %223 = add nuw nsw i32 %222, %216
  %224 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %209) #6
  %225 = zext i8 %224 to i32
  %226 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %210) #6
  %227 = zext i8 %226 to i32
  %228 = add nuw nsw i32 %227, %225
  %229 = lshr i32 %228, 1
  %230 = add nuw nsw i32 %229, %223
  %231 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %209) #6
  %232 = zext i8 %231 to i32
  %233 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %210) #6
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %234, %232
  %236 = lshr i32 %235, 1
  %237 = add nuw nsw i32 %236, %230
  %238 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %209) #6
  %239 = zext i8 %238 to i32
  %240 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %210) #6
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %241, %239
  %243 = lshr i32 %242, 1
  %244 = add nuw nsw i32 %243, %237
  %245 = icmp ult i32 %244, 150
  br i1 %245, label %246, label %252

246:                                              ; preds = %208
  %247 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6
  store i32 0, ptr %247, align 4
  %248 = load i32, ptr @stvdebug, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %1388, label %250

250:                                              ; preds = %246
  %251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stv0900_algo) #7
  br label %1388

252:                                              ; preds = %208, %198
  %253 = sub nuw nsw i32 -200277968, %15
  %254 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 11, i32 %6
  %255 = load i32, ptr %254, align 4
  %256 = trunc i32 %255 to i8
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %253, i8 noundef zeroext %256) #6
  %257 = load i8, ptr %19, align 2
  %258 = icmp ult i8 %257, 33
  %259 = select i1 %258, i32 -200278012, i32 -200277888
  %260 = sub nuw nsw i32 %259, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %260, i8 noundef zeroext 1) #6
  %261 = load i32, ptr @stvdebug, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %252
  %264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_set_search_standard) #7
  br label %265

265:                                              ; preds = %263, %252
  %266 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 10, i32 %6
  %267 = load i32, ptr %266, align 4
  switch i32 %267, label %277 [
    i32 1, label %268
    i32 3, label %271
    i32 2, label %274
  ]

268:                                              ; preds = %265
  %269 = load i32, ptr @stvdebug, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %286, label %280

271:                                              ; preds = %265
  %272 = load i32, ptr @stvdebug, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %286, label %280

274:                                              ; preds = %265
  %275 = load i32, ptr @stvdebug, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %280

277:                                              ; preds = %265
  %278 = load i32, ptr @stvdebug, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %277, %274, %271, %268
  %281 = phi ptr [ @.str.4, %268 ], [ @.str.5, %271 ], [ @.str.6, %274 ], [ @.str.7, %277 ]
  %282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %281) #7
  %283 = load i32, ptr %266, align 4
  br label %284

284:                                              ; preds = %280, %277
  %285 = phi i32 [ %283, %280 ], [ %267, %277 ]
  switch i32 %285, label %327 [
    i32 1, label %286
    i32 3, label %286
    i32 2, label %306
  ]

286:                                              ; preds = %284, %284, %271, %268
  %287 = sub nuw nsw i32 -200015808, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %287, i8 noundef zeroext 1) #6
  %288 = sub nuw nsw i32 -200015744, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %288, i8 noundef zeroext 0) #6
  %289 = select i1 %14, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %289, i8 noundef zeroext 0) #6
  %290 = load i32, ptr %32, align 4
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %4, i32 noundef %6, i32 noundef %290) #6
  %291 = select i1 %14, i16 -3440, i16 -2928
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %291, i8 noundef zeroext 34) #6
  %292 = load i32, ptr @stvdebug, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %286
  %295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_set_viterbi_acq) #7
  br label %296

296:                                              ; preds = %294, %286
  %297 = select i1 %14, i16 -3276, i16 -2764
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %297, i8 noundef zeroext -106) #6
  %298 = or i16 %297, 1
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %298, i8 noundef zeroext 100) #6
  %299 = or i16 %297, 2
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %299, i8 noundef zeroext 54) #6
  %300 = or i16 %297, 3
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %300, i8 noundef zeroext 35) #6
  %301 = add nuw nsw i16 %297, 4
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %301, i8 noundef zeroext 30) #6
  %302 = add nuw nsw i16 %297, 5
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %302, i8 noundef zeroext 25) #6
  %303 = load i32, ptr %266, align 4
  %304 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 14, i32 %6
  %305 = load i32, ptr %304, align 4
  tail call fastcc void @stv0900_set_viterbi_standard(ptr noundef %4, i32 noundef %303, i32 noundef %305, i32 noundef %6) #6
  br label %352

306:                                              ; preds = %284, %274
  %307 = sub nuw nsw i32 -200015808, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %307, i8 noundef zeroext 0) #6
  %308 = sub nuw nsw i32 -200015744, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %308, i8 noundef zeroext 1) #6
  %309 = select i1 %14, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %309, i8 noundef zeroext 1) #6
  %310 = select i1 %14, i16 512, i16 0
  %311 = sub nuw nsw i16 -3015, %310
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %311, i8 noundef zeroext 26) #6
  %312 = sub nuw nsw i16 -3014, %310
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %312, i8 noundef zeroext 9) #6
  %313 = load i8, ptr %19, align 2
  %314 = icmp ult i8 %313, 33
  %315 = sub nuw nsw i16 -2928, %310
  %316 = select i1 %314, i8 38, i8 102
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %315, i8 noundef zeroext %316) #6
  %317 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 3
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %306
  %321 = load i8, ptr %19, align 2
  %322 = icmp ult i8 %321, 18
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  tail call void @stv0900_stop_all_s2_modcod(ptr noundef %4, i32 noundef %6) #6
  br label %326

324:                                              ; preds = %320
  tail call void @stv0900_activate_s2_modcod(ptr noundef %4, i32 noundef %6) #6
  br label %326

325:                                              ; preds = %306
  tail call void @stv0900_activate_s2_modcod_single(ptr noundef %4, i32 noundef %6) #6
  br label %326

326:                                              ; preds = %325, %324, %323
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %4, i32 noundef %6) #6
  br label %352

327:                                              ; preds = %284
  %328 = sub nuw nsw i32 -200015808, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %328, i8 noundef zeroext 1) #6
  %329 = sub nuw nsw i32 -200015744, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %329, i8 noundef zeroext 1) #6
  %330 = select i1 %14, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %330, i8 noundef zeroext 0) #6
  %331 = select i1 %14, i16 512, i16 0
  %332 = sub nuw nsw i16 -3015, %331
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %332, i8 noundef zeroext 26) #6
  %333 = sub nuw nsw i16 -3014, %331
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %333, i8 noundef zeroext 9) #6
  %334 = load i32, ptr %32, align 4
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %4, i32 noundef %6, i32 noundef %334) #6
  %335 = load i8, ptr %19, align 2
  %336 = icmp ult i8 %335, 33
  %337 = sub nuw nsw i16 -2928, %331
  %338 = select i1 %336, i8 38, i8 102
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %337, i8 noundef zeroext %338) #6
  %339 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 3
  %340 = load i32, ptr %339, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %327
  %343 = load i8, ptr %19, align 2
  %344 = icmp ult i8 %343, 18
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  tail call void @stv0900_stop_all_s2_modcod(ptr noundef %4, i32 noundef %6) #6
  br label %348

346:                                              ; preds = %342
  tail call void @stv0900_activate_s2_modcod(ptr noundef %4, i32 noundef %6) #6
  br label %348

347:                                              ; preds = %327
  tail call void @stv0900_activate_s2_modcod_single(ptr noundef %4, i32 noundef %6) #6
  br label %348

348:                                              ; preds = %347, %346, %345
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %4, i32 noundef %6) #6
  %349 = load i32, ptr %266, align 4
  %350 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 14, i32 %6
  %351 = load i32, ptr %350, align 4
  tail call fastcc void @stv0900_set_viterbi_standard(ptr noundef %4, i32 noundef %349, i32 noundef %351, i32 noundef %6) #6
  br label %352

352:                                              ; preds = %348, %326, %296
  %353 = load i32, ptr %12, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  tail call void @stv0900_start_search(ptr noundef %4, i32 noundef %6) #6
  br label %356

356:                                              ; preds = %355, %352
  %357 = load i8, ptr %19, align 2
  %358 = icmp eq i8 %357, 18
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  br label %360

360:                                              ; preds = %359, %356
  switch i32 %13, label %1388 [
    i32 0, label %361
    i32 1, label %801
    i32 2, label %921
  ]

361:                                              ; preds = %360
  %362 = load ptr, ptr %2, align 4
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.stv0900_state, ptr %362, i32 0, i32 4
  %365 = load i32, ptr %364, align 4
  %366 = load i32, ptr @stvdebug, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.stv0900_internal, ptr %363, i32 0, i32 20
  %370 = load i8, ptr %369, align 2
  %371 = icmp ult i8 %370, 32
  %372 = select i1 %371, i8 -23, i8 110
  %373 = select i1 %371, i32 143, i32 10
  %374 = icmp ult i8 %370, 33
  %375 = select i1 %374, i32 700, i32 1400
  br label %389

376:                                              ; preds = %361
  %377 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_blind_search_algo) #7
  %378 = load i32, ptr @stvdebug, align 4
  %379 = icmp eq i32 %378, 0
  %380 = getelementptr inbounds %struct.stv0900_internal, ptr %363, i32 0, i32 20
  %381 = load i8, ptr %380, align 2
  %382 = icmp ult i8 %381, 32
  %383 = select i1 %382, i8 -23, i8 110
  %384 = select i1 %382, i32 143, i32 10
  %385 = icmp ult i8 %381, 33
  %386 = select i1 %385, i32 700, i32 1400
  br i1 %379, label %389, label %387

387:                                              ; preds = %376
  %388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_blind_check_agc2_min_level) #7
  br label %389

389:                                              ; preds = %387, %376, %368
  %390 = phi i32 [ %375, %368 ], [ %386, %387 ], [ %386, %376 ]
  %391 = phi i32 [ %373, %368 ], [ %384, %387 ], [ %384, %376 ]
  %392 = phi i8 [ %372, %368 ], [ %383, %387 ], [ %383, %376 ]
  %393 = phi ptr [ %369, %368 ], [ %380, %387 ], [ %380, %376 ]
  %394 = icmp eq i32 %365, 1
  %395 = select i1 %394, i16 512, i16 0
  %396 = sub nuw nsw i16 -3027, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %396, i8 noundef zeroext 56) #6
  %397 = select i1 %394, i32 33554432, i32 0
  %398 = sub nuw nsw i32 -200015856, %397
  tail call void @stv0900_write_bits(ptr noundef %363, i32 noundef %398, i8 noundef zeroext 0) #6
  %399 = sub nuw nsw i32 -200015864, %397
  tail call void @stv0900_write_bits(ptr noundef %363, i32 noundef %399, i8 noundef zeroext 0) #6
  %400 = sub nuw nsw i32 -195035008, %397
  tail call void @stv0900_write_bits(ptr noundef %363, i32 noundef %400, i8 noundef zeroext 1) #6
  %401 = sub nuw nsw i32 -194903936, %397
  tail call void @stv0900_write_bits(ptr noundef %363, i32 noundef %401, i8 noundef zeroext 1) #6
  %402 = sub nuw nsw i16 -3049, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %402, i8 noundef zeroext 0) #6
  %403 = getelementptr inbounds %struct.stv0900_internal, ptr %363, i32 0, i32 1
  %404 = load i32, ptr %403, align 4
  %405 = load i32, ptr @stvdebug, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %389
  %408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_symbol_rate, i32 noundef %404, i32 noundef 1000000, i32 noundef %365) #7
  br label %409

409:                                              ; preds = %407, %389
  %410 = lshr i32 %404, 7
  %411 = udiv i32 512000000, %410
  %412 = select i1 %394, i16 -3490, i16 -2978
  %413 = lshr i32 %411, 8
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 127
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %412, i8 noundef zeroext %415) #6
  %416 = or i16 %412, 1
  %417 = trunc i32 %411 to i8
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %416, i8 noundef zeroext %417) #6
  %418 = getelementptr %struct.stv0900_internal, ptr %363, i32 0, i32 7, i32 %365
  %419 = load i32, ptr %418, align 4
  %420 = sdiv i32 %419, 1000000
  %421 = trunc i32 %420 to i16
  %422 = add nsw i16 %421, -1
  %423 = sdiv i16 %422, 2
  %424 = sext i16 %423 to i32
  %425 = shl nsw i32 %424, 1
  %426 = or i32 %425, 1
  %427 = icmp slt i32 %426, 0
  %428 = select i1 %427, i32 1, i32 %426
  %429 = load i32, ptr %403, align 4
  %430 = ashr i32 %429, 8
  %431 = sdiv i32 256000000, %430
  %432 = sub nuw nsw i16 -3050, %395
  %433 = sub nuw nsw i16 -3000, %395
  %434 = sub nuw nsw i16 -2999, %395
  %435 = sub nuw nsw i16 -3018, %395
  %436 = sub nuw nsw i16 -3017, %395
  br label %437

437:                                              ; preds = %437, %409
  %438 = phi i32 [ 65535, %409 ], [ %513, %437 ]
  %439 = phi i32 [ 1, %409 ], [ %511, %437 ]
  %440 = phi i32 [ 0, %409 ], [ %514, %437 ]
  %441 = phi i32 [ 0, %409 ], [ %446, %437 ]
  %442 = icmp sgt i32 %439, 0
  %443 = mul i32 %440, %431
  %444 = sub i32 0, %443
  %445 = select i1 %442, i32 %443, i32 %444
  %446 = add i32 %445, %441
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %432, i8 noundef zeroext 92) #6
  %447 = lshr i32 %446, 8
  %448 = trunc i32 %447 to i8
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %433, i8 noundef zeroext %448) #6
  %449 = trunc i32 %446 to i8
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %434, i8 noundef zeroext %449) #6
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %432, i8 noundef zeroext 88) #6
  tail call void @msleep(i32 noundef 10) #6
  %450 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %451 = zext i8 %450 to i32
  %452 = shl nuw nsw i32 %451, 8
  %453 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %454 = zext i8 %453 to i32
  %455 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %456 = zext i8 %455 to i32
  %457 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %458 = zext i8 %457 to i32
  %459 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %460 = zext i8 %459 to i32
  %461 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %462 = zext i8 %461 to i32
  %463 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %464 = zext i8 %463 to i32
  %465 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %466 = zext i8 %465 to i32
  %467 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %468 = zext i8 %467 to i32
  %469 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %470 = zext i8 %469 to i32
  %471 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %472 = zext i8 %471 to i32
  %473 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %474 = zext i8 %473 to i32
  %475 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %476 = zext i8 %475 to i32
  %477 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %478 = zext i8 %477 to i32
  %479 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %480 = zext i8 %479 to i32
  %481 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %482 = zext i8 %481 to i32
  %483 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %484 = zext i8 %483 to i32
  %485 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %486 = zext i8 %485 to i32
  %487 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %488 = zext i8 %487 to i32
  %489 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %490 = zext i8 %489 to i32
  %491 = add nuw nsw i32 %460, %456
  %492 = add nuw nsw i32 %491, %464
  %493 = add nuw nsw i32 %492, %468
  %494 = add nuw nsw i32 %493, %472
  %495 = add nuw nsw i32 %494, %476
  %496 = add nuw nsw i32 %495, %480
  %497 = add nuw nsw i32 %496, %484
  %498 = add nuw nsw i32 %497, %488
  %499 = shl nuw nsw i32 %498, 8
  %500 = or i32 %452, %454
  %501 = add nuw nsw i32 %500, %458
  %502 = add nuw nsw i32 %501, %462
  %503 = add nuw nsw i32 %502, %466
  %504 = add nuw nsw i32 %503, %470
  %505 = add i32 %504, %474
  %506 = add i32 %505, %478
  %507 = add i32 %506, %482
  %508 = add i32 %507, %486
  %509 = add i32 %508, %490
  %510 = add i32 %509, %499
  %511 = sub i32 0, %439
  %512 = udiv i32 %510, 10
  %513 = tail call i32 @llvm.umin.i32(i32 %512, i32 %438) #6
  %514 = add nuw nsw i32 %440, 1
  %515 = icmp eq i32 %514, %428
  br i1 %515, label %516, label %437

516:                                              ; preds = %437
  %517 = load i32, ptr @stvdebug, align 4
  %518 = icmp eq i32 %517, 0
  %519 = and i32 %513, 65535
  br i1 %518, label %522, label %520

520:                                              ; preds = %516
  %521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stv0900_blind_search_algo, i32 noundef %519, i32 noundef %390) #7
  br label %522

522:                                              ; preds = %520, %516
  %523 = icmp ult i32 %390, %519
  br i1 %523, label %923, label %524

524:                                              ; preds = %522
  %525 = load i8, ptr %393, align 2
  %526 = icmp eq i8 %525, 16
  br i1 %526, label %527, label %530

527:                                              ; preds = %524
  %528 = select i1 %394, i16 -3550, i16 -3038
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %528, i8 noundef zeroext -86) #6
  %529 = load i8, ptr %393, align 2
  br label %530

530:                                              ; preds = %527, %524
  %531 = phi i8 [ %529, %527 ], [ %525, %524 ]
  %532 = icmp ult i8 %531, 32
  %533 = select i1 %394, i16 -3522, i16 -3010
  %534 = select i1 %532, i8 85, i8 32
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %533, i8 noundef zeroext %534) #6
  %535 = load i8, ptr %393, align 2
  %536 = icmp ult i8 %535, 33
  %537 = select i1 %536, i8 -60, i8 6
  %538 = select i1 %394, i16 -3528, i16 -3016
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %538, i8 noundef zeroext %537) #6
  %539 = sub nuw nsw i16 -2990, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %539, i8 noundef zeroext 68) #6
  %540 = load i8, ptr %393, align 2
  %541 = icmp ugt i8 %540, 31
  br i1 %541, label %542, label %547

542:                                              ; preds = %530
  %543 = sub nuw nsw i16 -2961, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %543, i8 noundef zeroext 65) #6
  %544 = sub nuw nsw i16 -2856, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %544, i8 noundef zeroext 65) #6
  %545 = sub nuw nsw i16 -2766, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %545, i8 noundef zeroext -126) #6
  %546 = sub nuw nsw i16 -2755, %395
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %546, i8 noundef zeroext 0) #6
  br label %547

547:                                              ; preds = %542, %530
  %548 = sub nuw nsw i16 -2984, %395
  %549 = sub nuw nsw i16 -3053, %395
  br label %550

550:                                              ; preds = %791, %547
  %551 = phi i8 [ %392, %547 ], [ %794, %791 ]
  tail call void @stv0900_write_reg(ptr noundef %363, i16 noundef zeroext %548, i8 noundef zeroext %551) #6
  %552 = load ptr, ptr %2, align 4
  %553 = load ptr, ptr %552, align 4
  %554 = getelementptr inbounds %struct.stv0900_state, ptr %552, i32 0, i32 4
  %555 = load i32, ptr %554, align 4
  %556 = getelementptr inbounds %struct.stv0900_internal, ptr %553, i32 0, i32 20
  %557 = load i8, ptr %556, align 2
  %558 = icmp ugt i8 %557, 47
  %559 = select i1 %558, i32 11776, i32 7936
  %560 = icmp eq i32 %555, 1
  %561 = select i1 %560, i32 33554432, i32 0
  %562 = sub nuw nsw i32 -199884769, %561
  tail call void @stv0900_write_bits(ptr noundef %553, i32 noundef %562, i8 noundef zeroext 31) #6
  %563 = select i1 %560, i16 512, i16 0
  %564 = sub nuw nsw i16 -2992, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %564, i8 noundef zeroext 18) #6
  %565 = sub nuw nsw i16 -2989, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %565, i8 noundef zeroext -16) #6
  %566 = sub nuw nsw i16 -2988, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %566, i8 noundef zeroext -32) #6
  %567 = sub nuw nsw i32 -200015856, %561
  tail call void @stv0900_write_bits(ptr noundef %553, i32 noundef %567, i8 noundef zeroext 1) #6
  %568 = sub nuw nsw i32 -200015864, %561
  tail call void @stv0900_write_bits(ptr noundef %553, i32 noundef %568, i8 noundef zeroext 1) #6
  %569 = sub nuw nsw i16 -2976, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %569, i8 noundef zeroext -125) #6
  %570 = sub nuw nsw i16 -2975, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %570, i8 noundef zeroext -64) #6
  %571 = sub nuw nsw i16 -2974, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %571, i8 noundef zeroext -126) #6
  %572 = sub nuw nsw i16 -2973, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %572, i8 noundef zeroext -96) #6
  %573 = sub nuw nsw i16 -3049, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %573, i8 noundef zeroext 0) #6
  %574 = sub nuw nsw i16 -3027, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %574, i8 noundef zeroext 80) #6
  %575 = load i8, ptr %556, align 2
  %576 = icmp ugt i8 %575, 47
  br i1 %576, label %577, label %579

577:                                              ; preds = %550
  %578 = sub nuw nsw i16 -3011, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %578, i8 noundef zeroext -103) #6
  br label %584

579:                                              ; preds = %550
  %580 = icmp ugt i8 %575, 31
  %581 = sub nuw nsw i16 -3011, %563
  br i1 %580, label %582, label %583

582:                                              ; preds = %579
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %581, i8 noundef zeroext 106) #6
  br label %584

583:                                              ; preds = %579
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %581, i8 noundef zeroext -19) #6
  br label %584

584:                                              ; preds = %583, %582, %577
  %585 = phi i8 [ -107, %582 ], [ 115, %583 ], [ -104, %577 ]
  %586 = sub nuw nsw i16 -2983, %563
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %586, i8 noundef zeroext %585) #6
  %587 = getelementptr %struct.stv0900_internal, ptr %553, i32 0, i32 6, i32 %555
  %588 = load i32, ptr %587, align 4
  %589 = icmp slt i32 %588, 2000001
  br i1 %589, label %595, label %590

590:                                              ; preds = %584
  %591 = icmp ult i32 %588, 5000001
  br i1 %591, label %595, label %592

592:                                              ; preds = %590
  %593 = icmp ult i32 %588, 12000001
  %594 = select i1 %593, i32 3000, i32 5000
  br label %595

595:                                              ; preds = %592, %590, %584
  %596 = phi i32 [ 1000, %584 ], [ 2000, %590 ], [ %594, %592 ]
  %597 = getelementptr %struct.stv0900_internal, ptr %553, i32 0, i32 7, i32 %555
  %598 = load i32, ptr %597, align 4
  %599 = sdiv i32 %598, 1000
  %600 = udiv i32 %599, %596
  %601 = add nsw i32 %600, -1
  %602 = sdiv i32 %601, 2
  %603 = shl nuw nsw i32 %602, 1
  %604 = or i32 %603, 1
  %605 = icmp sgt i32 %604, 10
  %606 = sdiv i32 %598, 10000
  %607 = select i1 %605, i32 11, i32 %604
  %608 = select i1 %605, i32 %606, i32 %596
  %609 = icmp sgt i32 %607, 0
  br i1 %609, label %611, label %610

610:                                              ; preds = %677, %663, %595
  br label %770

611:                                              ; preds = %595
  %612 = getelementptr %struct.stv0900_internal, ptr %553, i32 0, i32 4, i32 %555
  %613 = load i32, ptr %612, align 4
  %614 = sub nuw nsw i16 -3050, %563
  %615 = sub nuw nsw i32 -200146848, %561
  %616 = sub nuw nsw i16 -3018, %563
  %617 = sub nuw nsw i16 -3017, %563
  %618 = getelementptr inbounds %struct.stv0900_internal, ptr %553, i32 0, i32 1
  %619 = getelementptr %struct.stv0900_internal, ptr %553, i32 0, i32 8, i32 %555
  %620 = getelementptr %struct.stv0900_internal, ptr %553, i32 0, i32 5, i32 %555
  %621 = add nsw i32 %607, -1
  br label %622

622:                                              ; preds = %676, %611
  %623 = phi i32 [ 0, %611 ], [ %647, %676 ]
  %624 = phi i32 [ %613, %611 ], [ %670, %676 ]
  %625 = phi i32 [ 0, %611 ], [ %650, %676 ]
  %626 = phi i32 [ 1, %611 ], [ %627, %676 ]
  %627 = phi i32 [ -1, %611 ], [ %626, %676 ]
  %628 = phi i32 [ 0, %611 ], [ %636, %676 ]
  tail call void @stv0900_write_reg(ptr noundef %553, i16 noundef zeroext %614, i8 noundef zeroext 95) #6
  tail call void @stv0900_write_bits(ptr noundef %553, i32 noundef %562, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 50) #6
  br label %629

629:                                              ; preds = %629, %622
  %630 = phi i32 [ %623, %622 ], [ %643, %629 ]
  %631 = phi i32 [ %628, %622 ], [ %636, %629 ]
  %632 = phi i32 [ 0, %622 ], [ %644, %629 ]
  %633 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %553, i32 noundef %615) #6
  %634 = icmp ugt i8 %633, 1
  %635 = zext i1 %634 to i32
  %636 = add i32 %631, %635
  %637 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %553, i16 noundef zeroext %616) #6
  %638 = zext i8 %637 to i32
  %639 = shl nuw nsw i32 %638, 8
  %640 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %553, i16 noundef zeroext %617) #6
  %641 = zext i8 %640 to i32
  %642 = add i32 %630, %641
  %643 = add i32 %642, %639
  %644 = add nuw nsw i32 %632, 1
  %645 = icmp eq i32 %644, 10
  br i1 %645, label %646, label %629

646:                                              ; preds = %629
  %647 = udiv i32 %643, 10
  %648 = load i32, ptr %618, align 4
  %649 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %553, i32 noundef %648, i32 noundef %555) #6
  %650 = add nuw nsw i32 %625, 1
  %651 = load i32, ptr @stvdebug, align 4
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %655, label %653

653:                                              ; preds = %646
  %654 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %624, i32 noundef %647, i32 noundef %649, i32 noundef %636) #7
  br label %655

655:                                              ; preds = %653, %646
  %656 = icmp sgt i32 %636, 4
  br i1 %656, label %657, label %663

657:                                              ; preds = %655
  %658 = icmp ult i32 %647, %559
  %659 = icmp ult i32 %649, 55000000
  %660 = select i1 %658, i1 %659, i1 false
  %661 = icmp ugt i32 %649, 850000
  %662 = select i1 %660, i1 %661, i1 false
  br i1 %662, label %677, label %663

663:                                              ; preds = %657, %655
  %664 = icmp eq i32 %625, %621
  br i1 %664, label %610, label %665

665:                                              ; preds = %663
  %666 = icmp sgt i32 %627, 0
  %667 = mul i32 %650, %608
  %668 = sub i32 0, %667
  %669 = select i1 %666, i32 %667, i32 %668
  %670 = add i32 %669, %624
  %671 = load i32, ptr %619, align 4
  %672 = icmp eq i32 %671, 3
  %673 = load i32, ptr %620, align 4
  br i1 %672, label %674, label %675

674:                                              ; preds = %665
  tail call void @stv0900_set_tuner_auto(ptr noundef %553, i32 noundef %670, i32 noundef %673, i32 noundef %555) #6
  br label %676

675:                                              ; preds = %665
  tail call void @stv0900_set_tuner(ptr noundef %0, i32 noundef %670, i32 noundef %673) #6
  br label %676

676:                                              ; preds = %675, %674
  br label %622

677:                                              ; preds = %657
  %678 = load i32, ptr %618, align 4
  %679 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %553, i32 noundef %678, i32 noundef %555) #6
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %610, label %681

681:                                              ; preds = %677
  %682 = load ptr, ptr %2, align 4
  %683 = load ptr, ptr %682, align 4
  %684 = getelementptr inbounds %struct.stv0900_state, ptr %682, i32 0, i32 4
  %685 = load i32, ptr %684, align 4
  %686 = getelementptr inbounds %struct.stv0900_internal, ptr %683, i32 0, i32 1
  %687 = load i32, ptr %686, align 4
  %688 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %683, i32 noundef %687, i32 noundef %685) #6
  %689 = icmp ugt i32 %688, 3000000
  %690 = udiv i32 %688, 10
  %691 = mul i32 %690, 13
  br i1 %689, label %692, label %698

692:                                              ; preds = %681
  %693 = udiv i32 %691, 1000
  %694 = shl i32 %693, 16
  %695 = load i32, ptr %686, align 4
  %696 = sdiv i32 %695, 1000
  %697 = udiv i32 %694, %696
  br label %704

698:                                              ; preds = %681
  %699 = udiv i32 %691, 100
  %700 = shl nuw i32 %699, 16
  %701 = load i32, ptr %686, align 4
  %702 = sdiv i32 %701, 100
  %703 = udiv i32 %700, %702
  br label %704

704:                                              ; preds = %698, %692
  %705 = phi i32 [ 140, %698 ], [ 1300, %692 ]
  %706 = phi i32 [ %702, %698 ], [ %696, %692 ]
  %707 = phi i32 [ 100, %698 ], [ 1000, %692 ]
  %708 = phi i32 [ %703, %698 ], [ %697, %692 ]
  %709 = udiv i32 %688, %705
  %710 = shl i32 %709, 16
  %711 = udiv i32 %710, %706
  %712 = udiv i32 %688, %707
  %713 = shl i32 %712, 16
  %714 = udiv i32 %713, %706
  %715 = icmp eq i32 %685, 1
  %716 = select i1 %715, i16 512, i16 0
  %717 = sub nuw nsw i16 -2996, %716
  %718 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %683, i16 noundef zeroext %717) #6
  %719 = sub nuw nsw i16 -2995, %716
  %720 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %683, i16 noundef zeroext %719) #6
  %721 = getelementptr %struct.stv0900_internal, ptr %683, i32 0, i32 6, i32 %685
  %722 = load i32, ptr %721, align 4
  %723 = icmp ult i32 %691, %722
  br i1 %723, label %791, label %724

724:                                              ; preds = %704
  %725 = sub nuw nsw i16 -3050, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %725, i8 noundef zeroext 31) #6
  %726 = sub nuw nsw i16 -2982, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %726, i8 noundef zeroext -63) #6
  %727 = sub nuw nsw i16 -2989, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %727, i8 noundef zeroext 32) #6
  %728 = sub nuw nsw i16 -2988, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %728, i8 noundef zeroext 0) #6
  %729 = sub nuw nsw i16 -2992, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %729, i8 noundef zeroext -46) #6
  %730 = select i1 %715, i32 -233570296, i32 -200015864
  tail call void @stv0900_write_bits(ptr noundef %683, i32 noundef %730, i8 noundef zeroext 0) #6
  %731 = sub nuw nsw i16 -3027, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %731, i8 noundef zeroext 56) #6
  %732 = getelementptr inbounds %struct.stv0900_internal, ptr %683, i32 0, i32 20
  %733 = load i8, ptr %732, align 2
  %734 = icmp ugt i8 %733, 47
  br i1 %734, label %735, label %737

735:                                              ; preds = %724
  %736 = sub nuw nsw i16 -3011, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %736, i8 noundef zeroext 121) #6
  br label %742

737:                                              ; preds = %724
  %738 = icmp ugt i8 %733, 31
  %739 = sub nuw nsw i16 -3011, %716
  br i1 %738, label %740, label %741

740:                                              ; preds = %737
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %739, i8 noundef zeroext 73) #6
  br label %742

741:                                              ; preds = %737
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %739, i8 noundef zeroext -19) #6
  br label %742

742:                                              ; preds = %741, %740, %735
  %743 = sub nuw nsw i16 -2976, %716
  %744 = lshr i32 %708, 8
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 127
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %743, i8 noundef zeroext %746) #6
  %747 = sub nuw nsw i16 -2975, %716
  %748 = trunc i32 %708 to i8
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %747, i8 noundef zeroext %748) #6
  %749 = sub nuw nsw i16 -2974, %716
  %750 = lshr i32 %711, 8
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 127
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %749, i8 noundef zeroext %752) #6
  %753 = sub nuw nsw i16 -2973, %716
  %754 = trunc i32 %711 to i8
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %753, i8 noundef zeroext %754) #6
  %755 = sub nuw nsw i16 -2978, %716
  %756 = lshr i32 %714, 8
  %757 = trunc i32 %756 to i8
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %755, i8 noundef zeroext %757) #6
  %758 = sub nuw nsw i16 -2977, %716
  %759 = trunc i32 %714 to i8
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %758, i8 noundef zeroext %759) #6
  %760 = sub nuw nsw i16 -3049, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %760, i8 noundef zeroext 32) #6
  %761 = sub nuw nsw i16 -3000, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %761, i8 noundef zeroext %718) #6
  %762 = sub nuw nsw i16 -2999, %716
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %762, i8 noundef zeroext %720) #6
  tail call void @stv0900_write_reg(ptr noundef %683, i16 noundef zeroext %725, i8 noundef zeroext 21) #6
  %763 = icmp eq i32 %688, 0
  br i1 %763, label %791, label %764

764:                                              ; preds = %742
  %765 = icmp slt i32 %688, 1500001
  %766 = icmp ult i32 %688, 5000001
  %767 = select i1 %766, i32 1000, i32 700
  %768 = select i1 %765, i32 1500, i32 %767
  %769 = tail call i32 @stv0900_get_demod_lock(ptr noundef %363, i32 noundef %365, i32 noundef %768) #6
  br label %791

770:                                              ; preds = %770, %610
  %771 = phi i32 [ %778, %770 ], [ 0, %610 ]
  %772 = phi i32 [ %784, %770 ], [ 0, %610 ]
  %773 = phi i32 [ %783, %770 ], [ 0, %610 ]
  %774 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %435) #6
  %775 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %436) #6
  %776 = icmp eq i8 %774, -1
  %777 = zext i1 %776 to i32
  %778 = add i32 %771, %777
  %779 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %363, i16 noundef zeroext %549) #6
  %780 = and i8 %779, -127
  %781 = icmp eq i8 %780, -127
  %782 = zext i1 %781 to i32
  %783 = add i32 %773, %782
  %784 = add nuw nsw i32 %772, 1
  %785 = icmp eq i32 %784, 10
  br i1 %785, label %786, label %770

786:                                              ; preds = %770
  %787 = icmp sgt i32 %783, 7
  %788 = icmp sgt i32 %778, 7
  %789 = select i1 %787, i1 true, i1 %788
  %790 = zext i1 %789 to i32
  br label %791

791:                                              ; preds = %786, %764, %742, %704
  %792 = phi i32 [ %769, %764 ], [ 0, %786 ], [ 0, %742 ], [ 0, %704 ]
  %793 = phi i32 [ 0, %764 ], [ %790, %786 ], [ 0, %742 ], [ 0, %704 ]
  %794 = add i8 %551, -30
  %795 = zext i8 %794 to i32
  %796 = icmp ule i32 %391, %795
  %797 = icmp eq i32 %792, 0
  %798 = select i1 %796, i1 %797, i1 false
  %799 = icmp eq i32 %793, 0
  %800 = and i1 %798, %799
  br i1 %800, label %550, label %923

801:                                              ; preds = %360
  %802 = load ptr, ptr %2, align 4
  %803 = load ptr, ptr %802, align 4
  %804 = getelementptr inbounds %struct.stv0900_state, ptr %802, i32 0, i32 4
  %805 = load i32, ptr %804, align 4
  %806 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 6, i32 %805
  %807 = load i32, ptr %806, align 4
  %808 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 7, i32 %805
  %809 = load i32, ptr %808, align 4
  %810 = icmp sgt i32 %807, 9999999
  %811 = trunc i32 %187 to i16
  %812 = udiv i16 %811, 3
  %813 = zext i16 %812 to i32
  %814 = lshr i32 %187, 1
  %815 = and i32 %814, 32767
  %816 = select i1 %810, i32 %813, i32 %815
  %817 = tail call i32 @stv0900_get_demod_lock(ptr noundef %803, i32 noundef %805, i32 noundef %816) #6
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %1157

819:                                              ; preds = %801
  br i1 %810, label %820, label %827

820:                                              ; preds = %819
  %821 = tail call fastcc i32 @stv0900_check_timing_lock(ptr noundef %803, i32 noundef %805) #6
  %822 = icmp eq i32 %821, 1
  br i1 %822, label %823, label %923

823:                                              ; preds = %820
  %824 = icmp eq i32 %805, 1
  %825 = select i1 %824, i16 -3562, i16 -3050
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %825, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %825, i8 noundef zeroext 21) #6
  %826 = tail call i32 @stv0900_get_demod_lock(ptr noundef %803, i32 noundef %805, i32 noundef %187) #6
  br label %923

827:                                              ; preds = %819
  %828 = getelementptr inbounds %struct.stv0900_internal, ptr %803, i32 0, i32 20
  %829 = load i8, ptr %828, align 2
  %830 = icmp ult i8 %829, 33
  br i1 %830, label %831, label %842

831:                                              ; preds = %827
  %832 = icmp slt i32 %807, 1000001
  br i1 %832, label %847, label %833

833:                                              ; preds = %831
  %834 = icmp ult i32 %807, 4000001
  br i1 %834, label %838, label %835

835:                                              ; preds = %833
  %836 = icmp ult i32 %807, 7000001
  %837 = select i1 %836, i32 2000, i32 3000
  br label %840

838:                                              ; preds = %833
  %839 = icmp ugt i32 %807, 1999999
  br i1 %839, label %840, label %847

840:                                              ; preds = %838, %835
  %841 = phi i32 [ %837, %835 ], [ 1000, %838 ]
  br label %847

842:                                              ; preds = %827
  %843 = sdiv i32 %807, 4000
  %844 = mul nsw i32 %187, 3
  %845 = lshr i32 %844, 2
  %846 = and i32 %845, 16383
  br label %847

847:                                              ; preds = %842, %840, %838, %831
  %848 = phi i32 [ %841, %840 ], [ %843, %842 ], [ 1000, %838 ], [ 500, %831 ]
  %849 = phi i32 [ %813, %840 ], [ %846, %842 ], [ %815, %838 ], [ %815, %831 ]
  %850 = sdiv i32 %809, 1000
  %851 = sdiv i32 %850, %848
  %852 = and i32 %851, 1
  %853 = add nsw i32 %852, %851
  %854 = icmp slt i32 %853, 1
  %855 = tail call i32 @llvm.smin.i32(i32 %853, i32 12) #6
  %856 = select i1 %854, i32 2, i32 %855
  br i1 %830, label %857, label %872

857:                                              ; preds = %847
  %858 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 4, i32 %805
  %859 = load i32, ptr %858, align 4
  %860 = load i32, ptr %806, align 4
  %861 = getelementptr inbounds %struct.stv0900_internal, ptr %803, i32 0, i32 2
  %862 = load i32, ptr %861, align 4
  %863 = icmp eq i32 %862, 1
  %864 = select i1 %863, i32 25, i32 35
  %865 = icmp eq i32 %862, 2
  %866 = select i1 %865, i32 20, i32 %864
  %867 = mul i32 %866, %860
  %868 = udiv i32 %867, 100
  %869 = shl i32 %860, 1
  %870 = add i32 %868, %869
  %871 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 5, i32 %805
  store i32 %870, ptr %871, align 4
  br label %872

872:                                              ; preds = %857, %847
  %873 = phi i32 [ %859, %857 ], [ 0, %847 ]
  %874 = icmp sgt i32 %856, 0
  br i1 %874, label %875, label %923

875:                                              ; preds = %872
  %876 = icmp eq i32 %805, 1
  %877 = select i1 %876, i16 -3562, i16 -3050
  %878 = getelementptr inbounds %struct.stv0900_internal, ptr %803, i32 0, i32 1
  %879 = select i1 %876, i32 33554432, i32 0
  %880 = sub nuw nsw i32 -196607489, %879
  %881 = sub nuw nsw i32 -196542209, %879
  %882 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 8, i32 %805
  %883 = getelementptr %struct.stv0900_internal, ptr %803, i32 0, i32 5, i32 %805
  %884 = select i1 %876, i16 512, i16 0
  %885 = sub nuw nsw i16 -3050, %884
  %886 = sub nuw nsw i16 -3000, %884
  %887 = sub nuw nsw i16 -2999, %884
  br label %888

888:                                              ; preds = %914, %875
  %889 = phi i32 [ %873, %875 ], [ %896, %914 ]
  %890 = phi i32 [ 1, %875 ], [ %916, %914 ]
  %891 = phi i32 [ 1, %875 ], [ %917, %914 ]
  %892 = icmp sgt i32 %890, 0
  %893 = mul i32 %891, %848
  %894 = sub i32 0, %893
  %895 = select i1 %892, i32 %893, i32 %894
  %896 = add i32 %895, %889
  %897 = load i8, ptr %828, align 2
  %898 = icmp ult i8 %897, 33
  br i1 %898, label %899, label %906

899:                                              ; preds = %888
  %900 = load i32, ptr %882, align 4
  %901 = icmp eq i32 %900, 3
  %902 = load i32, ptr %883, align 4
  br i1 %901, label %903, label %904

903:                                              ; preds = %899
  tail call void @stv0900_set_tuner_auto(ptr noundef %803, i32 noundef %896, i32 noundef %902, i32 noundef %805) #6
  br label %905

904:                                              ; preds = %899
  tail call void @stv0900_set_tuner(ptr noundef %0, i32 noundef %896, i32 noundef %902) #6
  br label %905

905:                                              ; preds = %904, %903
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %885, i8 noundef zeroext 28) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %886, i8 noundef zeroext 0) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %887, i8 noundef zeroext 0) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %885, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %885, i8 noundef zeroext 21) #6
  br label %914

906:                                              ; preds = %888
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %877, i8 noundef zeroext 28) #6
  %907 = shl i32 %896, 16
  %908 = load i32, ptr %878, align 4
  %909 = sdiv i32 %908, 1000
  %910 = sdiv i32 %907, %909
  %911 = lshr i32 %910, 8
  %912 = trunc i32 %911 to i8
  tail call void @stv0900_write_bits(ptr noundef %803, i32 noundef %880, i8 noundef zeroext %912) #6
  %913 = trunc i32 %910 to i8
  tail call void @stv0900_write_bits(ptr noundef %803, i32 noundef %881, i8 noundef zeroext %913) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %877, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %803, i16 noundef zeroext %877, i8 noundef zeroext 5) #6
  br label %914

914:                                              ; preds = %906, %905
  %915 = tail call i32 @stv0900_get_demod_lock(ptr noundef %803, i32 noundef %805, i32 noundef %849) #6
  %916 = sub i32 0, %890
  %917 = add i32 %891, 1
  %918 = icmp sle i32 %917, %856
  %919 = icmp eq i32 %915, 0
  %920 = select i1 %918, i1 %919, i1 false
  br i1 %920, label %888, label %923

921:                                              ; preds = %360
  %922 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %187) #6
  br label %1157

923:                                              ; preds = %914, %872, %823, %820, %791, %522
  %924 = phi i32 [ 0, %522 ], [ %826, %823 ], [ 0, %820 ], [ 0, %872 ], [ %792, %791 ], [ %915, %914 ]
  %925 = icmp eq i32 %924, 0
  %926 = icmp eq i32 %13, 1
  %927 = select i1 %925, i1 %926, i1 false
  %928 = and i1 %188, %927
  br i1 %928, label %929, label %1157

929:                                              ; preds = %923
  %930 = tail call fastcc i32 @stv0900_check_timing_lock(ptr noundef %4, i32 noundef %6)
  %931 = icmp eq i32 %930, 1
  br i1 %931, label %932, label %1388

932:                                              ; preds = %929
  %933 = load i32, ptr %32, align 4
  %934 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 7, i32 %6
  %935 = load i32, ptr %934, align 4
  %936 = load i32, ptr %266, align 4
  %937 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 1
  %938 = load i32, ptr %937, align 4
  %939 = ashr i32 %938, 10
  %940 = sdiv i32 %933, %939
  switch i32 %936, label %945 [
    i32 1, label %941
    i32 3, label %941
    i32 2, label %943
  ]

941:                                              ; preds = %932, %932
  %942 = mul i32 %940, 192
  br label %947

943:                                              ; preds = %932
  %944 = shl i32 %940, 8
  br label %947

945:                                              ; preds = %932
  %946 = mul i32 %940, 192
  br label %947

947:                                              ; preds = %945, %943, %941
  %948 = phi i32 [ %946, %945 ], [ %944, %943 ], [ %942, %941 ]
  %949 = phi i32 [ 687500, %945 ], [ 687500, %943 ], [ 550000, %941 ]
  %950 = icmp sgt i32 %933, 0
  br i1 %950, label %951, label %954

951:                                              ; preds = %947
  %952 = udiv i32 %933, 1000
  %953 = udiv i32 %949, %952
  br label %954

954:                                              ; preds = %951, %947
  %955 = phi i32 [ %953, %951 ], [ %949, %947 ]
  %956 = sdiv i32 %948, 100
  %957 = sdiv i32 %935, 1000
  %958 = sdiv i32 %935, 10000
  %959 = add nsw i32 %957, %958
  %960 = sdiv i32 %959, 2
  %961 = shl i32 %960, 16
  %962 = sdiv i32 %938, 1000
  %963 = sdiv i32 %961, %962
  %964 = tail call i32 @llvm.smin.i32(i32 %963, i32 16384) #6
  %965 = icmp sgt i32 %956, %964
  %966 = icmp slt i32 %948, -99
  %967 = or i1 %966, %965
  %968 = sdiv i32 %964, 2
  %969 = select i1 %967, i32 %968, i32 %956
  %970 = sdiv i32 %964, %969
  %971 = add i32 %970, 1
  %972 = icmp ugt i32 %971, 100
  %973 = sdiv i32 %964, 100
  %974 = select i1 %972, i32 %973, i32 %969
  %975 = tail call i32 @llvm.umin.i32(i32 %971, i32 100) #6
  %976 = tail call i32 @llvm.smin.i32(i32 %955, i32 100) #6
  switch i32 %936, label %989 [
    i32 1, label %977
    i32 3, label %977
    i32 2, label %983
  ]

977:                                              ; preds = %954, %954
  %978 = load i8, ptr %19, align 2
  %979 = icmp ugt i8 %978, 31
  %980 = select i1 %14, i16 -3523, i16 -3011
  %981 = select i1 %979, i8 59, i8 -17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %980, i8 noundef zeroext %981) #6
  %982 = select i1 %14, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %982, i8 noundef zeroext 73) #6
  br label %998

983:                                              ; preds = %954
  %984 = load i8, ptr %19, align 2
  %985 = icmp ugt i8 %984, 31
  %986 = select i1 %14, i16 -3551, i16 -3039
  %987 = select i1 %985, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %986, i8 noundef zeroext %987) #6
  %988 = select i1 %14, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %988, i8 noundef zeroext -119) #6
  br label %998

989:                                              ; preds = %954
  %990 = load i8, ptr %19, align 2
  %991 = icmp ugt i8 %990, 31
  %992 = select i1 %14, i16 512, i16 0
  %993 = sub nuw nsw i16 -3011, %992
  %994 = select i1 %991, i8 59, i8 -17
  %995 = select i1 %991, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %993, i8 noundef zeroext %994) #6
  %996 = sub nuw nsw i16 -3039, %992
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %996, i8 noundef zeroext %995) #6
  %997 = select i1 %14, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %997, i8 noundef zeroext -55) #6
  br label %998

998:                                              ; preds = %989, %983, %977
  %999 = phi i16 [ %997, %989 ], [ %988, %983 ], [ %982, %977 ]
  %1000 = phi i1 [ false, %989 ], [ true, %983 ], [ false, %977 ]
  %1001 = select i1 %14, i16 512, i16 0
  %1002 = sub nuw nsw i16 -3050, %1001
  %1003 = sub nuw nsw i16 -3000, %1001
  %1004 = sub nuw nsw i16 -2999, %1001
  %1005 = sub nuw nsw i32 -179306495, %15
  %1006 = shl nsw i32 %974, 1
  %1007 = mul i32 %974, -2
  %1008 = sub nuw nsw i16 -2996, %1001
  %1009 = sub nuw nsw i16 -2995, %1001
  %1010 = sub nuw nsw i16 -3018, %1001
  %1011 = sub nuw nsw i16 -3017, %1001
  %1012 = sub nuw nsw i16 -3011, %1001
  %1013 = sub nuw nsw i16 -3039, %1001
  %1014 = sub nuw nsw i32 -199557024, %15
  %1015 = sub nuw nsw i32 -199491569, %15
  %1016 = select i1 %14, i16 -3551, i16 -3039
  br label %1017

1017:                                             ; preds = %1151, %998
  %1018 = phi i1 [ true, %1151 ], [ false, %998 ]
  %1019 = phi i1 [ false, %1151 ], [ true, %998 ]
  %1020 = load i32, ptr %934, align 4
  %1021 = sdiv i32 %1020, 1000
  %1022 = sdiv i32 %1020, 10000
  %1023 = add nsw i32 %1021, %1022
  %1024 = sdiv i32 %1023, 2
  %1025 = shl i32 %1024, 16
  %1026 = load i32, ptr %937, align 4
  %1027 = sdiv i32 %1026, 1000
  %1028 = sdiv i32 %1025, %1027
  %1029 = tail call i32 @llvm.smin.i32(i32 %1028, i32 16384) #6
  %1030 = sub i32 %974, %1029
  %1031 = select i1 %1000, i32 0, i32 %1030
  %1032 = sub nsw i32 0, %1029
  br label %1033

1033:                                             ; preds = %1089, %1017
  %1034 = phi i32 [ 0, %1017 ], [ %1090, %1089 ]
  %1035 = phi i32 [ %1031, %1017 ], [ %1052, %1089 ]
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1002, i8 noundef zeroext 28) #6
  %1036 = sdiv i32 %1035, 256
  %1037 = trunc i32 %1036 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1003, i8 noundef zeroext %1037) #6
  %1038 = trunc i32 %1035 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1004, i8 noundef zeroext %1038) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1002, i8 noundef zeroext 24) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1005, i8 noundef zeroext 1) #6
  %1039 = load i8, ptr %19, align 2
  %1040 = icmp eq i8 %1039, 18
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1033
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  br label %1042

1042:                                             ; preds = %1041, %1033
  br i1 %1000, label %1043, label %1049

1043:                                             ; preds = %1042
  %1044 = icmp sgt i32 %1035, -1
  br i1 %1044, label %1045, label %1047

1045:                                             ; preds = %1043
  %1046 = sub i32 %1007, %1035
  br label %1051

1047:                                             ; preds = %1043
  %1048 = sub i32 0, %1035
  br label %1051

1049:                                             ; preds = %1042
  %1050 = add i32 %1035, %1006
  br label %1051

1051:                                             ; preds = %1049, %1047, %1045
  %1052 = phi i32 [ %1046, %1045 ], [ %1048, %1047 ], [ %1050, %1049 ]
  %1053 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %976) #6
  %1054 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1008) #6
  %1055 = zext i8 %1054 to i32
  %1056 = shl nuw nsw i32 %1055, 8
  %1057 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1009) #6
  %1058 = zext i8 %1057 to i32
  %1059 = or i32 %1056, %1058
  %1060 = tail call i32 @ge2comp(i32 noundef %1059, i32 noundef 16) #6
  %1061 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1010) #6
  %1062 = zext i8 %1061 to i32
  %1063 = shl nuw nsw i32 %1062, 8
  %1064 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1011) #6
  %1065 = zext i8 %1064 to i32
  %1066 = or i32 %1063, %1065
  %1067 = load i32, ptr %934, align 4
  %1068 = sdiv i32 %1067, 1000
  %1069 = sdiv i32 %1067, 10000
  %1070 = add nsw i32 %1068, %1069
  %1071 = sdiv i32 %1070, 2
  %1072 = shl i32 %1071, 16
  %1073 = load i32, ptr %937, align 4
  %1074 = sdiv i32 %1073, 1000
  %1075 = sdiv i32 %1072, %1074
  %1076 = tail call i32 @llvm.smin.i32(i32 %1075, i32 16384) #6
  %1077 = icmp ult i32 %1066, 8193
  %1078 = shl i32 %1076, 1
  %1079 = icmp sle i32 %1060, %1078
  %1080 = mul i32 %1076, -2
  %1081 = icmp sge i32 %1060, %1080
  %1082 = icmp eq i32 %1053, 0
  %1083 = select i1 %1082, i1 %1077, i1 false
  %1084 = select i1 %1083, i1 %1079, i1 false
  %1085 = select i1 %1084, i1 %1081, i1 false
  %1086 = sub i32 %1052, %974
  %1087 = icmp slt i32 %1086, %1029
  %1088 = select i1 %1085, i1 %1087, i1 false
  br i1 %1088, label %1089, label %1095

1089:                                             ; preds = %1051
  %1090 = add nuw nsw i32 %1034, 1
  %1091 = add i32 %1052, %974
  %1092 = icmp sgt i32 %1091, %1032
  %1093 = icmp ult i32 %1090, %975
  %1094 = select i1 %1092, i1 %1093, i1 false
  br i1 %1094, label %1033, label %1095

1095:                                             ; preds = %1089, %1051
  %1096 = phi i32 [ %1053, %1051 ], [ 0, %1089 ]
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1005, i8 noundef zeroext 0) #6
  %1097 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1008) #6
  %1098 = zext i8 %1097 to i32
  %1099 = shl nuw nsw i32 %1098, 8
  %1100 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1009) #6
  %1101 = zext i8 %1100 to i32
  %1102 = or i32 %1099, %1101
  %1103 = tail call i32 @ge2comp(i32 noundef %1102, i32 noundef 16) #6
  %1104 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1010) #6
  %1105 = zext i8 %1104 to i32
  %1106 = shl nuw nsw i32 %1105, 8
  %1107 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1011) #6
  %1108 = zext i8 %1107 to i32
  %1109 = or i32 %1106, %1108
  %1110 = load i32, ptr %934, align 4
  %1111 = sdiv i32 %1110, 1000
  %1112 = sdiv i32 %1110, 10000
  %1113 = add nsw i32 %1111, %1112
  %1114 = sdiv i32 %1113, 2
  %1115 = shl i32 %1114, 16
  %1116 = load i32, ptr %937, align 4
  %1117 = sdiv i32 %1116, 1000
  %1118 = sdiv i32 %1115, %1117
  %1119 = tail call i32 @llvm.smin.i32(i32 %1118, i32 16384) #6
  %1120 = icmp ugt i32 %1109, 8192
  %1121 = shl i32 %1119, 1
  %1122 = icmp sgt i32 %1103, %1121
  %1123 = select i1 %1120, i1 true, i1 %1122
  %1124 = mul i32 %1119, -2
  %1125 = icmp slt i32 %1103, %1124
  %1126 = select i1 %1123, i1 true, i1 %1125
  %1127 = icmp eq i32 %1096, 1
  %1128 = select i1 %1127, i1 true, i1 %1126
  %1129 = or i1 %1018, %1128
  br i1 %1129, label %1130, label %1151

1130:                                             ; preds = %1095
  %1131 = load i8, ptr %19, align 2
  %1132 = icmp ugt i8 %1131, 31
  %1133 = select i1 %1132, i8 73, i8 -19
  %1134 = select i1 %1132, i8 -98, i8 -120
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1012, i8 noundef zeroext %1133) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1013, i8 noundef zeroext %1134) #6
  %1135 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %1014) #6
  %1136 = icmp eq i8 %1135, 2
  %1137 = select i1 %1136, i1 %1127, i1 false
  br i1 %1137, label %1138, label %1151

1138:                                             ; preds = %1130
  tail call void @msleep(i32 noundef %976) #6
  %1139 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %1015) #6
  %1140 = icmp ult i8 %1139, 13
  br i1 %1140, label %1141, label %1160

1141:                                             ; preds = %1138
  tail call void @msleep(i32 noundef %976) #6
  %1142 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %1015) #6
  %1143 = icmp ugt i8 %1142, 12
  %1144 = xor i1 %1019, true
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1143 to i32
  br i1 %1145, label %1151, label %1147

1147:                                             ; preds = %1141
  %1148 = load i8, ptr %19, align 2
  %1149 = icmp ugt i8 %1148, 31
  %1150 = select i1 %1149, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1016, i8 noundef zeroext %1150) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %999, i8 noundef zeroext -119) #6
  br label %1151

1151:                                             ; preds = %1147, %1141, %1130, %1095
  %1152 = phi i32 [ 0, %1147 ], [ %1146, %1141 ], [ %1096, %1130 ], [ %1096, %1095 ]
  %1153 = icmp eq i32 %1152, 0
  %1154 = and i1 %1019, %1153
  %1155 = xor i1 %1126, true
  %1156 = select i1 %1154, i1 %1155, i1 false
  br i1 %1156, label %1017, label %1157

1157:                                             ; preds = %1151, %923, %921, %801
  %1158 = phi i32 [ %924, %923 ], [ %817, %801 ], [ %922, %921 ], [ %1152, %1151 ]
  %1159 = icmp eq i32 %1158, 1
  br i1 %1159, label %1160, label %1388

1160:                                             ; preds = %1157, %1138
  %1161 = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %0)
  %1162 = icmp eq i32 %1161, 12
  br i1 %1162, label %1163, label %1275

1163:                                             ; preds = %1160
  tail call fastcc void @stv0900_track_optimization(ptr noundef %0)
  %1164 = load i8, ptr %19, align 2
  %1165 = icmp ult i8 %1164, 18
  br i1 %1165, label %1166, label %1202

1166:                                             ; preds = %1163
  %1167 = load ptr, ptr %2, align 4
  %1168 = load ptr, ptr %1167, align 4
  %1169 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %1168, i32 noundef -199557024) #6
  switch i8 %1169, label %1174 [
    i8 2, label %1175
    i8 3, label %1170
  ]

1170:                                             ; preds = %1166
  %1171 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %1168, i32 noundef -181206912) #6
  %1172 = icmp eq i8 %1171, 1
  %1173 = select i1 %1172, i32 2, i32 0
  br label %1175

1174:                                             ; preds = %1166
  br label %1175

1175:                                             ; preds = %1174, %1170, %1166
  %1176 = phi i32 [ 4, %1174 ], [ 1, %1166 ], [ %1173, %1170 ]
  %1177 = load i32, ptr @stvdebug, align 4
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1181, label %1179

1179:                                             ; preds = %1175
  %1180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_get_standard, i32 noundef %1176) #7
  br label %1181

1181:                                             ; preds = %1179, %1175
  %1182 = icmp eq i32 %1176, 0
  br i1 %1182, label %1183, label %1201

1183:                                             ; preds = %1181
  %1184 = load ptr, ptr %2, align 4
  %1185 = load ptr, ptr %1184, align 4
  %1186 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %1185, i32 noundef -233111456) #6
  switch i8 %1186, label %1191 [
    i8 2, label %1192
    i8 3, label %1187
  ]

1187:                                             ; preds = %1183
  %1188 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %1185, i32 noundef -214761344) #6
  %1189 = icmp eq i8 %1188, 1
  %1190 = select i1 %1189, i32 2, i32 0
  br label %1192

1191:                                             ; preds = %1183
  br label %1192

1192:                                             ; preds = %1191, %1187, %1183
  %1193 = phi i32 [ 4, %1191 ], [ 1, %1183 ], [ %1190, %1187 ]
  %1194 = load i32, ptr @stvdebug, align 4
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1198, label %1196

1196:                                             ; preds = %1192
  %1197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_get_standard, i32 noundef %1193) #7
  br label %1198

1198:                                             ; preds = %1196, %1192
  %1199 = icmp eq i32 %1193, 0
  br i1 %1199, label %1200, label %1201

1200:                                             ; preds = %1198
  tail call void @msleep(i32 noundef 20) #6
  br label %1205

1201:                                             ; preds = %1198, %1181
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 1) #6
  br label %1205

1202:                                             ; preds = %1163
  %1203 = icmp ugt i8 %1164, 31
  br i1 %1203, label %1204, label %1206

1204:                                             ; preds = %1202
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 1) #6
  br label %1205

1205:                                             ; preds = %1204, %1201, %1200
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %16, i8 noundef zeroext 0) #6
  br label %1206

1206:                                             ; preds = %1205, %1202
  %1207 = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %4, i32 noundef %6, i32 noundef %186, i32 noundef %186)
  %1208 = icmp eq i32 %1207, 1
  br i1 %1208, label %1209, label %1236

1209:                                             ; preds = %1206
  %1210 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6
  store i32 1, ptr %1210, align 4
  %1211 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6, i32 3
  %1212 = load i32, ptr %1211, align 4
  %1213 = icmp eq i32 %1212, 1
  br i1 %1213, label %1214, label %1231

1214:                                             ; preds = %1209
  %1215 = load i8, ptr %19, align 2
  %1216 = icmp eq i8 %1215, 16
  br i1 %1216, label %1217, label %1223

1217:                                             ; preds = %1214
  %1218 = sub nuw nsw i32 -200278012, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1218, i8 noundef zeroext 1) #6
  %1219 = select i1 %14, i16 -3232, i16 -2720
  %1220 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1219) #6
  %1221 = and i8 %1220, 3
  %1222 = sub nuw nsw i32 -200278013, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1222, i8 noundef zeroext %1221) #6
  br label %1229

1223:                                             ; preds = %1214
  %1224 = icmp ult i8 %1215, 33
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1223
  %1226 = select i1 %14, i32 -233832444, i32 -200278012
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1226, i8 noundef zeroext 0) #6
  br label %1229

1227:                                             ; preds = %1223
  %1228 = select i1 %14, i32 -233832320, i32 -200277888
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1228, i8 noundef zeroext 0) #6
  br label %1229

1229:                                             ; preds = %1227, %1225, %1217
  %1230 = sub nuw nsw i32 -179240896, %15
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1230, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %1230, i8 noundef zeroext 0) #6
  br label %1231

1231:                                             ; preds = %1229, %1209
  %1232 = phi i8 [ 103, %1229 ], [ 117, %1209 ]
  %1233 = sub nuw nsw i16 -2664, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1233, i8 noundef zeroext %1232) #6
  %1234 = sub nuw nsw i16 -2648, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1234, i8 noundef zeroext 0) #6
  %1235 = sub nuw nsw i16 -2660, %17
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %1235, i8 noundef zeroext -63) #6
  br label %1388

1236:                                             ; preds = %1206
  %1237 = select i1 %14, i16 512, i16 0
  %1238 = sub nuw nsw i16 -2996, %1237
  %1239 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1238) #6
  %1240 = zext i8 %1239 to i32
  %1241 = shl nuw nsw i32 %1240, 8
  %1242 = sub nuw nsw i16 -2995, %1237
  %1243 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1242) #6
  %1244 = zext i8 %1243 to i32
  %1245 = or i32 %1241, %1244
  %1246 = tail call i32 @ge2comp(i32 noundef %1245, i32 noundef 16) #6
  %1247 = sub nuw nsw i16 -3018, %1237
  %1248 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1247) #6
  %1249 = zext i8 %1248 to i32
  %1250 = shl nuw nsw i32 %1249, 8
  %1251 = sub nuw nsw i16 -3017, %1237
  %1252 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %1251) #6
  %1253 = zext i8 %1252 to i32
  %1254 = or i32 %1250, %1253
  %1255 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 7, i32 %6
  %1256 = load i32, ptr %1255, align 4
  %1257 = sdiv i32 %1256, 1000
  %1258 = sdiv i32 %1256, 10000
  %1259 = add nsw i32 %1257, %1258
  %1260 = sdiv i32 %1259, 2
  %1261 = shl i32 %1260, 16
  %1262 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 1
  %1263 = load i32, ptr %1262, align 4
  %1264 = sdiv i32 %1263, 1000
  %1265 = sdiv i32 %1261, %1264
  %1266 = tail call i32 @llvm.smin.i32(i32 %1265, i32 16384) #6
  %1267 = icmp ugt i32 %1254, 8192
  %1268 = shl i32 %1266, 1
  %1269 = icmp sgt i32 %1246, %1268
  %1270 = select i1 %1267, i1 true, i1 %1269
  %1271 = mul i32 %1266, -2
  %1272 = icmp slt i32 %1246, %1271
  %1273 = select i1 %1270, i1 true, i1 %1272
  %1274 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6
  store i32 0, ptr %1274, align 4
  br label %1275

1275:                                             ; preds = %1236, %1160
  %1276 = phi i32 [ 9, %1236 ], [ %1161, %1160 ]
  %1277 = phi i1 [ %1273, %1236 ], [ false, %1160 ]
  %1278 = icmp ne i32 %1276, 9
  %1279 = select i1 %1278, i1 true, i1 %1277
  br i1 %1279, label %1388, label %1280

1280:                                             ; preds = %1275
  %1281 = load i8, ptr %19, align 2
  %1282 = icmp ugt i8 %1281, 17
  br i1 %1282, label %1283, label %1285

1283:                                             ; preds = %1280
  %1284 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6
  store i32 0, ptr %1284, align 4
  br label %1388

1285:                                             ; preds = %1280
  %1286 = sub nuw nsw i32 -199557024, %15
  %1287 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %1286) #6
  %1288 = icmp eq i8 %1287, 3
  br i1 %1288, label %1289, label %1388

1289:                                             ; preds = %1285
  %1290 = load i32, ptr %254, align 4
  %1291 = icmp ult i32 %1290, 2
  br i1 %1291, label %1292, label %1388

1292:                                             ; preds = %1289
  %1293 = load ptr, ptr %2, align 4
  %1294 = load ptr, ptr %1293, align 4
  %1295 = getelementptr inbounds %struct.stv0900_state, ptr %1293, i32 0, i32 4
  %1296 = load i32, ptr %1295, align 4
  %1297 = getelementptr %struct.stv0900_internal, ptr %1294, i32 0, i32 15, i32 %1296
  store i32 0, ptr %1297, align 4
  %1298 = icmp eq i32 %1296, 1
  %1299 = select i1 %1298, i32 33554432, i32 0
  %1300 = sub nuw nsw i32 -199557024, %1299
  %1301 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %1294, i32 noundef %1300) #6
  %1302 = icmp eq i8 %1301, 3
  br i1 %1302, label %1303, label %1387

1303:                                             ; preds = %1292
  %1304 = getelementptr inbounds %struct.stv0900_internal, ptr %1294, i32 0, i32 1
  %1305 = load i32, ptr %1304, align 4
  %1306 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %1294, i32 noundef %1305, i32 noundef %1296) #6, !range !8
  %1307 = select i1 %1298, i16 -3480, i16 -2968
  %1308 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %1294, i16 noundef zeroext %1307) #6
  %1309 = zext i8 %1308 to i32
  %1310 = shl nuw nsw i32 %1309, 16
  %1311 = or i16 %1307, 1
  %1312 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %1294, i16 noundef zeroext %1311) #6
  %1313 = zext i8 %1312 to i32
  %1314 = shl nuw nsw i32 %1313, 8
  %1315 = or i32 %1314, %1310
  %1316 = or i16 %1307, 2
  %1317 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %1294, i16 noundef zeroext %1316) #6
  %1318 = zext i8 %1317 to i32
  %1319 = or i32 %1315, %1318
  %1320 = tail call i32 @ge2comp(i32 noundef %1319, i32 noundef 24) #6
  %1321 = icmp eq i32 %1320, 0
  %1322 = select i1 %1321, i32 1, i32 %1320
  %1323 = mul i32 %1306, 10
  %1324 = sdiv i32 16777216, %1322
  %1325 = sdiv i32 %1323, %1324
  %1326 = sdiv i32 %1325, 320
  %1327 = add i32 %1326, %1306
  %1328 = getelementptr %struct.stv0900_internal, ptr %1294, i32 0, i32 9, i32 %1296
  %1329 = load i32, ptr %1328, align 4
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1331, label %1353

1331:                                             ; preds = %1303
  %1332 = load i32, ptr %1304, align 4
  %1333 = load i32, ptr @stvdebug, align 4
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1337, label %1335

1335:                                             ; preds = %1331
  %1336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_symbol_rate, i32 noundef %1332, i32 noundef %1327, i32 noundef %1296) #7
  br label %1337

1337:                                             ; preds = %1335, %1331
  %1338 = icmp ugt i32 %1327, 60000000
  %1339 = icmp ugt i32 %1327, 6000000
  %1340 = select i1 %1339, i32 6, i32 9
  %1341 = select i1 %1339, i32 10, i32 7
  %1342 = select i1 %1338, i32 4, i32 %1340
  %1343 = select i1 %1338, i32 12, i32 %1341
  %1344 = shl i32 %1327, %1342
  %1345 = lshr i32 %1332, %1343
  %1346 = udiv i32 %1344, %1345
  %1347 = select i1 %1298, i16 -3490, i16 -2978
  %1348 = lshr i32 %1346, 8
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 127
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1347, i8 noundef zeroext %1350) #6
  %1351 = or i16 %1347, 1
  %1352 = trunc i32 %1346 to i8
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1351, i8 noundef zeroext %1352) #6
  br label %1353

1353:                                             ; preds = %1337, %1303
  %1354 = icmp slt i32 %1327, 1000001
  br i1 %1354, label %1365, label %1355

1355:                                             ; preds = %1353
  %1356 = icmp ult i32 %1327, 2000001
  br i1 %1356, label %1365, label %1357

1357:                                             ; preds = %1355
  %1358 = icmp ult i32 %1327, 5000001
  br i1 %1358, label %1365, label %1359

1359:                                             ; preds = %1357
  %1360 = icmp ult i32 %1327, 10000001
  br i1 %1360, label %1365, label %1361

1361:                                             ; preds = %1359
  %1362 = icmp ult i32 %1327, 20000001
  %1363 = select i1 %1362, i32 130, i32 100
  %1364 = select i1 %1362, i32 200, i32 150
  br label %1365

1365:                                             ; preds = %1361, %1359, %1357, %1355, %1353
  %1366 = phi i32 [ 1500, %1353 ], [ 1250, %1355 ], [ 500, %1357 ], [ 350, %1359 ], [ %1364, %1361 ]
  %1367 = phi i32 [ 1700, %1353 ], [ 1100, %1355 ], [ 550, %1357 ], [ 250, %1359 ], [ %1363, %1361 ]
  %1368 = select i1 %1298, i16 512, i16 0
  %1369 = sub nuw nsw i16 -2996, %1368
  %1370 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %1294, i16 noundef zeroext %1369) #6
  %1371 = sub nuw nsw i16 -2995, %1368
  %1372 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %1294, i16 noundef zeroext %1371) #6
  %1373 = sub nuw nsw i32 -200015864, %1299
  tail call void @stv0900_write_bits(ptr noundef %1294, i32 noundef %1373, i8 noundef zeroext 0) #6
  %1374 = sub nuw nsw i32 -200277968, %1299
  tail call void @stv0900_write_bits(ptr noundef %1294, i32 noundef %1374, i8 noundef zeroext 3) #6
  %1375 = sub nuw nsw i16 -3050, %1368
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1375, i8 noundef zeroext 28) #6
  %1376 = sub nuw nsw i16 -3000, %1368
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1376, i8 noundef zeroext %1370) #6
  %1377 = sub nuw nsw i16 -2999, %1368
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1377, i8 noundef zeroext %1372) #6
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1375, i8 noundef zeroext 24) #6
  %1378 = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %1294, i32 noundef %1296, i32 noundef %1366, i32 noundef %1367) #6
  %1379 = icmp eq i32 %1378, 1
  br i1 %1379, label %1380, label %1382

1380:                                             ; preds = %1365
  store i32 1, ptr %1297, align 4
  %1381 = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %0) #6
  tail call fastcc void @stv0900_track_optimization(ptr noundef %0) #6
  br label %1388

1382:                                             ; preds = %1365
  tail call void @stv0900_write_bits(ptr noundef %1294, i32 noundef %1374, i8 noundef zeroext 2) #6
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1375, i8 noundef zeroext 28) #6
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1376, i8 noundef zeroext %1370) #6
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1377, i8 noundef zeroext %1372) #6
  tail call void @stv0900_write_reg(ptr noundef %1294, i16 noundef zeroext %1375, i8 noundef zeroext 24) #6
  %1383 = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %1294, i32 noundef %1296, i32 noundef %1366, i32 noundef %1367) #6
  %1384 = icmp eq i32 %1383, 1
  br i1 %1384, label %1385, label %1388

1385:                                             ; preds = %1382
  store i32 1, ptr %1297, align 4
  %1386 = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %0) #6
  tail call fastcc void @stv0900_track_optimization(ptr noundef %0) #6
  br label %1388

1387:                                             ; preds = %1292
  store i32 0, ptr %1297, align 4
  br label %1388

1388:                                             ; preds = %1387, %1385, %1382, %1380, %1289, %1285, %1283, %1275, %1231, %1157, %929, %360, %250, %246
  %1389 = phi i32 [ 9, %1283 ], [ %1276, %1275 ], [ 9, %1289 ], [ 9, %1285 ], [ %1381, %1380 ], [ %1386, %1385 ], [ 9, %1382 ], [ 9, %1387 ], [ 0, %250 ], [ 0, %246 ], [ 12, %1231 ], [ 7, %1157 ], [ 7, %929 ], [ 7, %360 ]
  ret i32 %1389
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_write_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_tuner_auto(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_tuner(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_start_search(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_demod_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_check_timing_lock(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i16 512, i16 0
  %5 = sub nuw nsw i16 -3011, %4
  %6 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %5) #6
  %7 = sub nuw nsw i16 -2989, %4
  %8 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %7) #6
  %9 = sub nuw nsw i16 -2988, %4
  %10 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %0, i16 noundef zeroext %9) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %7, i8 noundef zeroext 32) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext 0) #6
  %11 = select i1 %3, i32 33554432, i32 0
  %12 = sub nuw nsw i32 -200015864, %11
  tail call void @stv0900_write_bits(ptr noundef %0, i32 noundef %12, i8 noundef zeroext 0) #6
  %13 = sub nuw nsw i16 -2991, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %13, i8 noundef zeroext -128) #6
  %14 = sub nuw nsw i16 -2990, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %14, i8 noundef zeroext 64) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %5, i8 noundef zeroext 0) #6
  %15 = sub nuw nsw i16 -3000, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %15, i8 noundef zeroext 0) #6
  %16 = sub nuw nsw i16 -2999, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %16, i8 noundef zeroext 0) #6
  %17 = sub nuw nsw i16 -3027, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %17, i8 noundef zeroext 101) #6
  %18 = sub nuw nsw i16 -3050, %4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %18, i8 noundef zeroext 24) #6
  tail call void @msleep(i32 noundef 7) #6
  %19 = sub nuw nsw i32 -200146848, %11
  %20 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %21 = icmp ugt i8 %20, 1
  %22 = zext i1 %21 to i32
  tail call void @msleep(i32 noundef 1) #6
  %23 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %24 = icmp ugt i8 %23, 1
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %22, %25
  tail call void @msleep(i32 noundef 1) #6
  %27 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %28 = icmp ugt i8 %27, 1
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %26, %29
  tail call void @msleep(i32 noundef 1) #6
  %31 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %32 = icmp ugt i8 %31, 1
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %30, %33
  tail call void @msleep(i32 noundef 1) #6
  %35 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %36 = icmp ugt i8 %35, 1
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %34, %37
  tail call void @msleep(i32 noundef 1) #6
  %39 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %40 = icmp ugt i8 %39, 1
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %38, %41
  tail call void @msleep(i32 noundef 1) #6
  %43 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %44 = icmp ugt i8 %43, 1
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %42, %45
  tail call void @msleep(i32 noundef 1) #6
  %47 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %48 = icmp ugt i8 %47, 1
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %46, %49
  tail call void @msleep(i32 noundef 1) #6
  %51 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %52 = icmp ugt i8 %51, 1
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %50, %53
  tail call void @msleep(i32 noundef 1) #6
  %55 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %19) #6
  %56 = icmp ugt i8 %55, 1
  %57 = zext i1 %56 to i32
  %58 = add nuw nsw i32 %54, %57
  tail call void @msleep(i32 noundef 1) #6
  %59 = icmp ugt i32 %58, 2
  %60 = zext i1 %59 to i32
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %17, i8 noundef zeroext 56) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %13, i8 noundef zeroext -120) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %14, i8 noundef zeroext 104) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %5, i8 noundef zeroext %6) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %7, i8 noundef zeroext %8) #6
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext %10) #6
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_signal_params(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv0900_state, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  tail call void @msleep(i32 noundef 5) #6
  %9 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 9, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = icmp eq i32 %8, 1
  %14 = select i1 %13, i16 512, i16 0
  %15 = sub nuw nsw i16 -2968, %14
  %16 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  %17 = sub nuw nsw i16 -2983, %14
  tail call void @stv0900_write_reg(ptr noundef %6, i16 noundef zeroext %17, i8 noundef zeroext 92) #6
  switch i8 %16, label %18 [
    i8 -1, label %40
    i8 0, label %40
  ]

18:                                               ; preds = %12
  %19 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %19, label %20 [
    i8 -1, label %40
    i8 0, label %40
  ]

20:                                               ; preds = %18
  %21 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %21, label %22 [
    i8 -1, label %40
    i8 0, label %40
  ]

22:                                               ; preds = %20
  %23 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %23, label %24 [
    i8 -1, label %40
    i8 0, label %40
  ]

24:                                               ; preds = %22
  %25 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %25, label %26 [
    i8 -1, label %40
    i8 0, label %40
  ]

26:                                               ; preds = %24
  %27 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %27, label %28 [
    i8 -1, label %40
    i8 0, label %40
  ]

28:                                               ; preds = %26
  %29 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %29, label %30 [
    i8 -1, label %40
    i8 0, label %40
  ]

30:                                               ; preds = %28
  %31 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %31, label %32 [
    i8 -1, label %40
    i8 0, label %40
  ]

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %33, label %34 [
    i8 -1, label %40
    i8 0, label %40
  ]

34:                                               ; preds = %32
  %35 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %35, label %36 [
    i8 -1, label %40
    i8 0, label %40
  ]

36:                                               ; preds = %34
  %37 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  switch i8 %37, label %38 [
    i8 -1, label %40
    i8 0, label %40
  ]

38:                                               ; preds = %36
  %39 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %15) #6
  tail call void @msleep(i32 noundef 5) #6
  br label %40

40:                                               ; preds = %38, %36, %36, %34, %34, %32, %32, %30, %30, %28, %28, %26, %26, %24, %24, %22, %22, %20, %20, %18, %18, %12, %12, %1
  %41 = load ptr, ptr %4, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq i32 %8, 1
  %44 = select i1 %43, i32 33554432, i32 0
  %45 = sub nuw nsw i32 -199557024, %44
  %46 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %42, i32 noundef %45) #6
  switch i8 %46, label %52 [
    i8 2, label %53
    i8 3, label %47
  ]

47:                                               ; preds = %40
  %48 = sub nuw nsw i32 -181206912, %44
  %49 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %42, i32 noundef %48) #6
  %50 = icmp eq i8 %49, 1
  %51 = select i1 %50, i32 2, i32 0
  br label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %47, %40
  %54 = phi i32 [ 4, %52 ], [ 1, %40 ], [ %51, %47 ]
  %55 = load i32, ptr @stvdebug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0900_get_standard, i32 noundef %54) #7
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 3
  store i32 %54, ptr %60, align 4
  %61 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 8, i32 %8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = tail call i32 @stv0900_get_freq_auto(ptr noundef %6, i32 noundef %8) #6
  br label %84

66:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = call i32 %68(ptr noundef %0, ptr noundef nonnull %3) #6
  %72 = icmp slt i32 %71, 0
  %73 = load i32, ptr @stvdebug, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %72, label %75, label %78

75:                                               ; preds = %70
  br i1 %74, label %82, label %76

76:                                               ; preds = %75
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.stv0900_get_tuner_freq) #7
  br label %82

78:                                               ; preds = %70
  br i1 %74, label %82, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %3, align 4
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.stv0900_get_tuner_freq, i32 noundef %80) #7
  br label %82

82:                                               ; preds = %79, %78, %76, %75, %66
  %83 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %84

84:                                               ; preds = %82, %64
  %85 = phi i32 [ %83, %82 ], [ %65, %64 ]
  %86 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 1
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.stv0900_internal, ptr %6, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = sub nuw nsw i32 -196345345, %44
  %90 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %89) #6
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = sub nuw nsw i32 -196280065, %44
  %94 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %93) #6
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %96, %92
  %98 = sub nuw nsw i32 -196214529, %44
  %99 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %98) #6
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = call i32 @ge2comp(i32 noundef %101, i32 noundef 24) #6
  %103 = lshr i32 %88, 12
  %104 = ashr i32 %102, 12
  %105 = and i32 %88, 4095
  %106 = srem i32 %102, 4096
  %107 = mul i32 %104, %103
  %108 = mul i32 %106, %103
  %109 = ashr i32 %108, 12
  %110 = add i32 %109, %107
  %111 = mul nsw i32 %104, %105
  %112 = ashr i32 %111, 12
  %113 = add i32 %110, %112
  %114 = sdiv i32 %113, 1000
  %115 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %114, %116
  store i32 %117, ptr %115, align 4
  %118 = load i32, ptr %87, align 4
  %119 = call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %6, i32 noundef %118, i32 noundef %8), !range !8
  %120 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 2
  store i32 %119, ptr %120, align 4
  %121 = select i1 %43, i16 -3480, i16 -2968
  %122 = call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %121) #6
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = or i16 %121, 1
  %126 = call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %125) #6
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %128, %124
  %130 = or i16 %121, 2
  %131 = call zeroext i8 @stv0900_read_reg(ptr noundef %6, i16 noundef zeroext %130) #6
  %132 = zext i8 %131 to i32
  %133 = or i32 %129, %132
  %134 = call i32 @ge2comp(i32 noundef %133, i32 noundef 24) #6
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 1, i32 %134
  %137 = mul i32 %119, 10
  %138 = sdiv i32 16777216, %136
  %139 = sdiv i32 %137, %138
  %140 = sdiv i32 %139, 320
  %141 = load i32, ptr %120, align 4
  %142 = add i32 %141, %140
  store i32 %142, ptr %120, align 4
  %143 = select i1 %43, i32 -214302689, i32 -180748257
  %144 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %143) #6
  %145 = add i8 %144, -13
  %146 = icmp ult i8 %145, 14
  br i1 %146, label %147, label %151

147:                                              ; preds = %84
  %148 = sext i8 %145 to i32
  %149 = getelementptr inbounds [14 x i32], ptr @switch.table.stv0900_get_signal_params, i32 0, i32 %148
  %150 = load i32, ptr %149, align 4
  br label %151

151:                                              ; preds = %147, %84
  %152 = phi i32 [ %150, %147 ], [ 8, %84 ]
  %153 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 4
  store i32 %152, ptr %153, align 4
  %154 = sub nuw nsw i32 -200212356, %44
  %155 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %154) #6
  %156 = zext i8 %155 to i32
  %157 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 5
  store i32 %156, ptr %157, align 4
  %158 = sub nuw nsw i32 -200212477, %44
  %159 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %158) #6
  %160 = and i8 %159, 1
  %161 = zext i8 %160 to i32
  %162 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 7
  store i32 %161, ptr %162, align 4
  %163 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %158) #6
  %164 = lshr i8 %163, 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 8
  store i32 %165, ptr %166, align 4
  %167 = sub nuw nsw i32 -194182976, %44
  %168 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %167) #6
  %169 = zext i8 %168 to i32
  %170 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 10
  store i32 %169, ptr %170, align 4
  %171 = load i32, ptr @stvdebug, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %151
  %174 = load i32, ptr %157, align 4
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.stv0900_get_signal_params, i32 noundef %174) #7
  br label %176

176:                                              ; preds = %173, %151
  %177 = load i32, ptr %60, align 4
  switch i32 %177, label %206 [
    i32 1, label %178
    i32 0, label %200
    i32 2, label %200
  ]

178:                                              ; preds = %176
  %179 = sub nuw nsw i32 -198967168, %44
  %180 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %179) #6
  %181 = zext i8 %180 to i32
  %182 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 9
  store i32 %181, ptr %182, align 4
  %183 = load i32, ptr %157, align 4
  %184 = icmp ult i32 %183, 12
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 6
  store i32 0, ptr %186, align 4
  br label %206

187:                                              ; preds = %178
  %188 = icmp ult i32 %183, 18
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 6
  store i32 1, ptr %190, align 4
  br label %206

191:                                              ; preds = %187
  %192 = icmp ult i32 %183, 24
  br i1 %192, label %193, label %195

193:                                              ; preds = %191
  %194 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 6
  store i32 2, ptr %194, align 4
  br label %206

195:                                              ; preds = %191
  %196 = icmp ult i32 %183, 29
  %197 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 6
  br i1 %196, label %198, label %199

198:                                              ; preds = %195
  store i32 3, ptr %197, align 4
  br label %206

199:                                              ; preds = %195
  store i32 4, ptr %197, align 4
  br label %206

200:                                              ; preds = %176, %176
  %201 = sub nuw nsw i32 -181207039, %44
  %202 = call zeroext i8 @stv0900_get_bits(ptr noundef %6, i32 noundef %201) #6
  %203 = zext i8 %202 to i32
  %204 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 9
  store i32 %203, ptr %204, align 4
  %205 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 15, i32 %8, i32 6
  store i32 0, ptr %205, align 4
  br label %206

206:                                              ; preds = %200, %199, %198, %193, %189, %185, %176
  %207 = load i32, ptr %9, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 6, i32 %8
  %211 = load i32, ptr %210, align 4
  %212 = icmp slt i32 %211, 10000000
  br i1 %212, label %213, label %261

213:                                              ; preds = %209, %206
  %214 = load i32, ptr %115, align 4
  %215 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 4, i32 %8
  %216 = load i32, ptr %215, align 4
  %217 = sub i32 %214, %216
  %218 = load i32, ptr %61, align 4
  %219 = icmp eq i32 %218, 3
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = call i32 @stv0900_get_freq_auto(ptr noundef %6, i32 noundef %8) #6
  br label %240

222:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  %223 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = call i32 %224(ptr noundef %0, ptr noundef nonnull %2) #6
  %228 = icmp slt i32 %227, 0
  %229 = load i32, ptr @stvdebug, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %228, label %231, label %234

231:                                              ; preds = %226
  br i1 %230, label %238, label %232

232:                                              ; preds = %231
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.stv0900_get_tuner_freq) #7
  br label %238

234:                                              ; preds = %226
  br i1 %230, label %238, label %235

235:                                              ; preds = %234
  %236 = load i32, ptr %2, align 4
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.stv0900_get_tuner_freq, i32 noundef %236) #7
  br label %238

238:                                              ; preds = %235, %234, %232, %231, %222
  %239 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %240

240:                                              ; preds = %238, %220
  %241 = phi i32 [ %239, %238 ], [ %221, %220 ]
  store i32 %241, ptr %215, align 4
  %242 = call i32 @llvm.abs.i32(i32 %217, i1 false)
  %243 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 7, i32 %8
  %244 = load i32, ptr %243, align 4
  %245 = sdiv i32 %244, 2000
  %246 = add nsw i32 %245, 500
  %247 = icmp sgt i32 %242, %246
  br i1 %247, label %248, label %269

248:                                              ; preds = %240
  %249 = load i32, ptr %120, align 4
  %250 = load i32, ptr %170, align 4
  %251 = icmp eq i32 %250, 1
  %252 = select i1 %251, i32 25, i32 35
  %253 = icmp eq i32 %250, 2
  %254 = select i1 %253, i32 20, i32 %252
  %255 = mul i32 %254, %249
  %256 = udiv i32 %255, 100
  %257 = add i32 %256, %249
  %258 = udiv i32 %257, 2000
  %259 = icmp ugt i32 %242, %258
  %260 = select i1 %259, i32 11, i32 12
  br label %269

261:                                              ; preds = %209
  %262 = call i32 @llvm.abs.i32(i32 %114, i1 true)
  %263 = getelementptr %struct.stv0900_internal, ptr %6, i32 0, i32 7, i32 %8
  %264 = load i32, ptr %263, align 4
  %265 = sdiv i32 %264, 2000
  %266 = add nsw i32 %265, 500
  %267 = icmp sgt i32 %262, %266
  %268 = select i1 %267, i32 11, i32 12
  br label %269

269:                                              ; preds = %261, %248, %240
  %270 = phi i32 [ 12, %240 ], [ %260, %248 ], [ %268, %261 ]
  %271 = load i32, ptr @stvdebug, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stv0900_get_signal_params, i32 noundef %270) #7
  br label %275

275:                                              ; preds = %273, %269
  ret i32 %270
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0900_track_optimization(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv0900_state, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @stvdebug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_track_optimization) #7
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %4, i32 noundef %13, i32 noundef %6), !range !8
  %15 = icmp eq i32 %6, 1
  %16 = select i1 %15, i16 -3480, i16 -2968
  %17 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %16) #6
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i16 %16, 1
  %21 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %20) #6
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %23, %19
  %25 = or i16 %16, 2
  %26 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %25) #6
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = tail call i32 @ge2comp(i32 noundef %28, i32 noundef 24) #6
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 1, i32 %29
  %32 = mul i32 %14, 10
  %33 = sdiv i32 16777216, %31
  %34 = sdiv i32 %32, %33
  %35 = sdiv i32 %34, 320
  %36 = add i32 %35, %14
  %37 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6, i32 3
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %136 [
    i32 0, label %39
    i32 2, label %39
    i32 1, label %72
  ]

39:                                               ; preds = %11, %11
  %40 = load i32, ptr @stvdebug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.stv0900_track_optimization) #7
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 10, i32 %6
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %15, i32 33554432, i32 0
  br i1 %47, label %49, label %52

49:                                               ; preds = %44
  %50 = sub nuw nsw i32 -200015808, %48
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %50, i8 noundef zeroext 1) #6
  %51 = sub nuw nsw i32 -200015744, %48
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %51, i8 noundef zeroext 0) #6
  br label %52

52:                                               ; preds = %49, %44
  %53 = sub nuw nsw i32 -200278013, %48
  %54 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = trunc i32 %55 to i8
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %53, i8 noundef zeroext %56) #6
  %57 = sub nuw nsw i32 -200278012, %48
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %57, i8 noundef zeroext 1) #6
  %58 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %59 = load i8, ptr %58, align 2
  %60 = icmp ult i8 %59, 48
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = select i1 %15, i16 -3176, i16 -2664
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %62, i8 noundef zeroext 117) #6
  br label %145

63:                                               ; preds = %52
  %64 = select i1 %15, i32 -214302689, i32 -180748257
  %65 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %64) #6
  %66 = icmp eq i8 %65, 13
  %67 = select i1 %15, i16 512, i16 0
  %68 = sub nuw nsw i16 -2880, %67
  %69 = select i1 %66, i8 -104, i8 24
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %68, i8 noundef zeroext %69) #6
  %70 = sub nuw nsw i16 -2879, %67
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %70, i8 noundef zeroext 24) #6
  %71 = select i1 %15, i16 -3176, i16 -2664
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %71, i8 noundef zeroext 117) #6
  br label %145

72:                                               ; preds = %11
  %73 = load i32, ptr @stvdebug, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.stv0900_track_optimization) #7
  br label %77

77:                                               ; preds = %75, %72
  %78 = select i1 %15, i32 33554432, i32 0
  %79 = sub nuw nsw i32 -200015808, %78
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %79, i8 noundef zeroext 0) #6
  %80 = sub nuw nsw i32 -200015744, %78
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %80, i8 noundef zeroext 1) #6
  %81 = select i1 %15, i16 512, i16 0
  %82 = sub nuw nsw i16 -3015, %81
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %82, i8 noundef zeroext 0) #6
  %83 = sub nuw nsw i16 -3014, %81
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %83, i8 noundef zeroext 0) #6
  %84 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %77
  %88 = sub nuw nsw i32 -200212356, %78
  %89 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %88) #6
  %90 = zext i8 %89 to i32
  %91 = sub nuw nsw i32 -200212477, %78
  %92 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %4, i32 noundef %91) #6
  %93 = and i8 %92, 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %96 = load i8, ptr %95, align 2
  %97 = tail call zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef %36, i32 noundef %90, i32 noundef %94, i8 noundef zeroext %96) #6
  %98 = icmp ult i8 %89, 12
  br i1 %98, label %121, label %99

99:                                               ; preds = %87
  %100 = icmp ult i8 %89, 18
  br i1 %100, label %117, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = icmp ult i8 %89, 24
  br i1 %106, label %117, label %107

107:                                              ; preds = %105
  %108 = icmp ult i8 %89, 29
  br i1 %108, label %117, label %125

109:                                              ; preds = %77
  %110 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 15, i32 %6, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %113 = load i8, ptr %112, align 2
  %114 = tail call zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef %36, i32 noundef %111, i8 noundef zeroext %113) #6
  switch i32 %111, label %125 [
    i32 0, label %121
    i32 1, label %117
    i32 2, label %115
    i32 3, label %116
  ]

115:                                              ; preds = %109
  br label %117

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %115, %109, %107, %105, %99
  %118 = phi i16 [ -2918, %116 ], [ -2919, %115 ], [ -2920, %99 ], [ -2919, %105 ], [ -2918, %107 ], [ -2920, %109 ]
  %119 = phi i8 [ %114, %116 ], [ %114, %115 ], [ %97, %99 ], [ %97, %105 ], [ %97, %107 ], [ %114, %109 ]
  %120 = sub nuw nsw i16 -2921, %81
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %120, i8 noundef zeroext 42) #6
  br label %121

121:                                              ; preds = %117, %109, %87
  %122 = phi i16 [ -2921, %87 ], [ -2921, %109 ], [ %118, %117 ]
  %123 = phi i8 [ %97, %87 ], [ %114, %109 ], [ %119, %117 ]
  %124 = sub nuw nsw i16 %122, %81
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %124, i8 noundef zeroext %123) #6
  br label %125

125:                                              ; preds = %121, %109, %107, %101
  %126 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %127 = load i8, ptr %126, align 2
  %128 = icmp ult i8 %127, 18
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @stv0900_activate_s2_modcod(ptr noundef %4, i32 noundef %6) #6
  br label %134

134:                                              ; preds = %133, %129, %125
  %135 = sub nuw nsw i16 -2664, %81
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %135, i8 noundef zeroext 103) #6
  br label %145

136:                                              ; preds = %11
  %137 = load i32, ptr @stvdebug, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.stv0900_track_optimization) #7
  br label %141

141:                                              ; preds = %139, %136
  %142 = select i1 %15, i32 33554432, i32 0
  %143 = sub nuw nsw i32 -200015808, %142
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %143, i8 noundef zeroext 1) #6
  %144 = sub nuw nsw i32 -200015744, %142
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %144, i8 noundef zeroext 1) #6
  br label %145

145:                                              ; preds = %141, %134, %63, %61
  %146 = select i1 %15, i16 512, i16 0
  %147 = sub nuw nsw i16 -2996, %146
  %148 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %147) #6
  %149 = sub nuw nsw i16 -2995, %146
  %150 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %4, i16 noundef zeroext %149) #6
  %151 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 9, i32 %6
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %184

154:                                              ; preds = %145
  %155 = sub nuw nsw i16 -2983, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %155, i8 noundef zeroext 0) #6
  %156 = select i1 %15, i32 33554432, i32 0
  %157 = sub nuw nsw i32 -200015856, %156
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %157, i8 noundef zeroext 0) #6
  %158 = sub nuw nsw i32 -200015864, %156
  tail call void @stv0900_write_bits(ptr noundef %4, i32 noundef %158, i8 noundef zeroext 0) #6
  %159 = sub nuw nsw i16 -2982, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %159, i8 noundef zeroext -63) #6
  %160 = load i32, ptr %12, align 4
  %161 = load i32, ptr @stvdebug, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %154
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stv0900_set_symbol_rate, i32 noundef %160, i32 noundef %36, i32 noundef %6) #7
  br label %165

165:                                              ; preds = %163, %154
  %166 = icmp ugt i32 %36, 60000000
  %167 = icmp ugt i32 %36, 6000000
  %168 = select i1 %167, i32 6, i32 9
  %169 = select i1 %167, i32 10, i32 7
  %170 = select i1 %166, i32 4, i32 %168
  %171 = select i1 %166, i32 12, i32 %169
  %172 = shl i32 %36, %170
  %173 = lshr i32 %160, %171
  %174 = udiv i32 %172, %173
  %175 = select i1 %15, i16 -3490, i16 -2978
  %176 = lshr i32 %174, 8
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 127
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %175, i8 noundef zeroext %178) #6
  %179 = or i16 %175, 1
  %180 = trunc i32 %174 to i8
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %179, i8 noundef zeroext %180) #6
  %181 = load i32, ptr %37, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %184, label %183

183:                                              ; preds = %165
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %4, i32 noundef %6, i32 noundef %36)
  br label %184

184:                                              ; preds = %183, %165, %145
  %185 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 20
  %186 = load i8, ptr %185, align 2
  %187 = icmp ugt i8 %186, 31
  br i1 %187, label %188, label %196

188:                                              ; preds = %184
  %189 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 10, i32 %6
  %190 = load i32, ptr %189, align 4
  switch i32 %190, label %202 [
    i32 1, label %191
    i32 3, label %191
    i32 0, label %191
  ]

191:                                              ; preds = %188, %188, %188
  %192 = sub nuw nsw i16 -2755, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %192, i8 noundef zeroext 10) #6
  %193 = sub nuw nsw i16 -2766, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %193, i8 noundef zeroext 0) #6
  %194 = load i8, ptr %185, align 2
  %195 = icmp ult i8 %194, 32
  br i1 %195, label %196, label %202

196:                                              ; preds = %191, %184
  %197 = sub nuw nsw i16 -3010, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %197, i8 noundef zeroext 8) #6
  %198 = load i8, ptr %185, align 2
  %199 = icmp eq i8 %198, 16
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = sub nuw nsw i16 -3038, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %201, i8 noundef zeroext 10) #6
  br label %202

202:                                              ; preds = %200, %196, %191, %188
  %203 = sub nuw nsw i16 -3027, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %203, i8 noundef zeroext 56) #6
  %204 = load i8, ptr %185, align 2
  %205 = icmp ugt i8 %204, 31
  %206 = select i1 %205, i1 true, i1 %153
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 6, i32 %6
  %209 = load i32, ptr %208, align 4
  %210 = icmp slt i32 %209, 10000000
  br i1 %210, label %211, label %275

211:                                              ; preds = %207, %202
  %212 = sub nuw nsw i16 -3000, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %212, i8 noundef zeroext %148) #6
  %213 = sub nuw nsw i16 -2999, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %213, i8 noundef zeroext %150) #6
  %214 = getelementptr inbounds %struct.stv0900_internal, ptr %4, i32 0, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 1
  %217 = select i1 %216, i32 25, i32 35
  %218 = icmp eq i32 %215, 2
  %219 = select i1 %218, i32 20, i32 %217
  %220 = mul i32 %219, %36
  %221 = udiv i32 %220, 100
  %222 = add i32 %36, 10000000
  %223 = add i32 %222, %221
  %224 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 5, i32 %6
  store i32 %223, ptr %224, align 4
  %225 = load i8, ptr %185, align 2
  %226 = icmp ugt i8 %225, 31
  %227 = select i1 %226, i1 true, i1 %153
  br i1 %227, label %228, label %239

228:                                              ; preds = %211
  %229 = load i32, ptr %151, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 8, i32 %6
  %233 = load i32, ptr %232, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 4, i32 %6
  %237 = load i32, ptr %236, align 4
  tail call void @stv0900_set_tuner_auto(ptr noundef %4, i32 noundef %237, i32 noundef %223, i32 noundef %6) #6
  br label %239

238:                                              ; preds = %231
  tail call void @stv0900_set_bandwidth(ptr noundef %0, i32 noundef %223) #6
  br label %239

239:                                              ; preds = %238, %235, %211
  %240 = load i32, ptr %151, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %239, %228
  %243 = getelementptr %struct.stv0900_internal, ptr %4, i32 0, i32 6, i32 %6
  %244 = load i32, ptr %243, align 4
  %245 = icmp slt i32 %244, 10000000
  %246 = select i1 %245, i32 50, i32 5
  br label %247

247:                                              ; preds = %242, %239
  %248 = phi i32 [ 50, %239 ], [ %246, %242 ]
  tail call void @msleep(i32 noundef %248) #6
  %249 = icmp slt i32 %36, 1000001
  br i1 %249, label %259, label %250

250:                                              ; preds = %247
  %251 = icmp ult i32 %36, 2000001
  br i1 %251, label %259, label %252

252:                                              ; preds = %250
  %253 = icmp ult i32 %36, 5000001
  br i1 %253, label %259, label %254

254:                                              ; preds = %252
  %255 = icmp ult i32 %36, 10000001
  br i1 %255, label %259, label %256

256:                                              ; preds = %254
  %257 = icmp ult i32 %36, 20000001
  %258 = select i1 %257, i32 100, i32 75
  br label %259

259:                                              ; preds = %256, %254, %252, %250, %247
  %260 = phi i32 [ 750, %247 ], [ 625, %250 ], [ 250, %252 ], [ 175, %254 ], [ %258, %256 ]
  %261 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %260) #6
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %259
  %264 = sub nuw nsw i16 -3050, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %212, i8 noundef zeroext %148) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %213, i8 noundef zeroext %150) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 24) #6
  %265 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %260) #6
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %212, i8 noundef zeroext %148) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %213, i8 noundef zeroext %150) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 24) #6
  %268 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %260) #6
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %212, i8 noundef zeroext %148) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %213, i8 noundef zeroext %150) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 24) #6
  %271 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %260) #6
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %212, i8 noundef zeroext %148) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %213, i8 noundef zeroext %150) #6
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %264, i8 noundef zeroext 24) #6
  %274 = tail call i32 @stv0900_get_demod_lock(ptr noundef %4, i32 noundef %6, i32 noundef %260) #6
  br label %275

275:                                              ; preds = %273, %270, %267, %263, %259, %207
  %276 = load i8, ptr %185, align 2
  %277 = icmp ugt i8 %276, 31
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = sub nuw nsw i16 -3011, %146
  tail call void @stv0900_write_reg(ptr noundef %4, i16 noundef zeroext %279, i8 noundef zeroext 73) #6
  br label %280

280:                                              ; preds = %278, %275
  %281 = load i32, ptr %37, align 4
  switch i32 %281, label %283 [
    i32 0, label %282
    i32 2, label %282
  ]

282:                                              ; preds = %280, %280
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %4, i32 noundef %6)
  br label %283

283:                                              ; preds = %282, %280
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_wait_for_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_wait_for_lock) #7
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call i32 @stv0900_get_demod_lock(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @stvdebug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_get_fec_lock) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp eq i32 %1, 1
  %19 = select i1 %18, i32 33554432, i32 0
  %20 = sub nuw nsw i32 -199557024, %19
  %21 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %20) #6
  %22 = icmp sgt i32 %3, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %34, %17
  %24 = phi i32 [ %36, %34 ], [ 0, %17 ]
  switch i8 %21, label %32 [
    i8 3, label %25
    i8 2, label %26
  ]

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ -180486136, %25 ], [ -177668094, %23 ]
  %28 = sub nuw nsw i32 %27, %19
  %29 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %28) #6
  %30 = zext i8 %29 to i32
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %23
  tail call void @msleep(i32 noundef 10) #6
  %33 = add i32 %24, 10
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ 0, %32 ], [ %30, %26 ]
  %36 = phi i32 [ %33, %32 ], [ %24, %26 ]
  %37 = icmp slt i32 %36, %3
  %38 = icmp eq i32 %35, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %23, label %40

40:                                               ; preds = %34
  br i1 %38, label %44, label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @stvdebug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %49

44:                                               ; preds = %40, %17
  %45 = load i32, ptr @stvdebug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.stv0900_get_fec_lock) #7
  br label %69

49:                                               ; preds = %41
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.stv0900_get_fec_lock) #7
  %51 = load i32, ptr @stvdebug, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.stv0900_wait_for_lock, i32 noundef 0, i32 noundef %3) #7
  br label %55

55:                                               ; preds = %53, %49, %41
  %56 = sub nuw nsw i32 -176095104, %19
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %60, %57 ]
  %59 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %56) #6
  tail call void @msleep(i32 noundef 1) #6
  %60 = add nuw nsw i32 %58, 1
  %61 = icmp slt i32 %60, %3
  %62 = icmp eq i8 %59, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %57, label %64

64:                                               ; preds = %57
  %65 = icmp eq i8 %59, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr @stvdebug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %72

69:                                               ; preds = %64, %47, %9
  %70 = load i32, ptr @stvdebug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %66
  %73 = phi ptr [ @.str.23, %66 ], [ @.str.24, %69 ]
  %74 = phi i32 [ 1, %66 ], [ 0, %69 ]
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %73, ptr noundef nonnull @__func__.stv0900_wait_for_lock) #7
  br label %76

76:                                               ; preds = %72, %69, %66, %44
  %77 = phi i32 [ 1, %66 ], [ 0, %69 ], [ 0, %44 ], [ %74, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.stv0900_internal, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 2
  %6 = icmp ugt i8 %5, 47
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = icmp ugt i32 %2, 14999999
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, 1
  %11 = select i1 %10, i16 512, i16 0
  %12 = sub nuw nsw i16 -3015, %11
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %12, i8 noundef zeroext 43) #6
  br label %24

13:                                               ; preds = %7
  %14 = icmp ugt i32 %2, 6999999
  %15 = icmp eq i32 %1, 1
  %16 = select i1 %15, i16 512, i16 0
  %17 = sub nuw nsw i16 -3015, %16
  br i1 %14, label %18, label %19

18:                                               ; preds = %13
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %17, i8 noundef zeroext 12) #6
  br label %24

19:                                               ; preds = %13
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %17, i8 noundef zeroext 44) #6
  br label %24

20:                                               ; preds = %3
  %21 = icmp eq i32 %1, 1
  %22 = select i1 %21, i16 512, i16 0
  %23 = sub nuw nsw i16 -3015, %22
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %23, i8 noundef zeroext 26) #6
  br label %24

24:                                               ; preds = %20, %19, %18, %9
  %25 = phi i16 [ %11, %9 ], [ %16, %19 ], [ %16, %18 ], [ %22, %20 ]
  %26 = phi i8 [ 26, %9 ], [ 28, %19 ], [ 27, %18 ], [ 9, %20 ]
  %27 = sub nuw nsw i16 -3014, %25
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %27, i8 noundef zeroext %26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_viterbi_standard(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = load i32, ptr @stvdebug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stv0900_set_viterbi_standard) #7
  br label %9

9:                                                ; preds = %7, %4
  switch i32 %1, label %49 [
    i32 0, label %10
    i32 1, label %19
    i32 3, label %33
  ]

10:                                               ; preds = %9
  %11 = load i32, ptr @stvdebug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp eq i32 %3, 1
  %17 = select i1 %16, i16 512, i16 0
  %18 = sub nuw nsw i16 -2765, %17
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %18, i8 noundef zeroext 16) #6
  br label %45

19:                                               ; preds = %9
  %20 = load i32, ptr @stvdebug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %24

24:                                               ; preds = %22, %19
  %25 = icmp eq i32 %3, 1
  %26 = select i1 %25, i16 512, i16 0
  %27 = sub nuw nsw i16 -2765, %26
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %27, i8 noundef zeroext 0) #6
  switch i32 %2, label %45 [
    i32 6, label %32
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
    i32 4, label %31
  ]

28:                                               ; preds = %24
  br label %45

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  br label %45

31:                                               ; preds = %24
  br label %45

32:                                               ; preds = %24
  br label %45

33:                                               ; preds = %9
  %34 = load i32, ptr @stvdebug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %38

38:                                               ; preds = %36, %33
  %39 = icmp eq i32 %3, 1
  %40 = select i1 %39, i16 512, i16 0
  %41 = sub nuw nsw i16 -2765, %40
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %41, i8 noundef zeroext -128) #6
  switch i32 %2, label %45 [
    i32 5, label %44
    i32 0, label %42
    i32 1, label %43
  ]

42:                                               ; preds = %38
  br label %45

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %43, %42, %38, %32, %31, %30, %29, %28, %24, %15
  %46 = phi i16 [ %40, %42 ], [ %40, %43 ], [ %40, %44 ], [ %26, %28 ], [ %26, %29 ], [ %26, %30 ], [ %26, %31 ], [ %26, %32 ], [ %17, %15 ], [ %26, %24 ], [ %40, %38 ]
  %47 = phi i8 [ 1, %42 ], [ 2, %43 ], [ 16, %44 ], [ 1, %28 ], [ 2, %29 ], [ 4, %30 ], [ 8, %31 ], [ 32, %32 ], [ 63, %15 ], [ 47, %24 ], [ 19, %38 ]
  %48 = sub nuw nsw i16 -2756, %46
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %48, i8 noundef zeroext %47) #6
  br label %49

49:                                               ; preds = %45, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_stop_all_s2_modcod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_activate_s2_modcod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_activate_s2_modcod_single(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_viterbi_tracq(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr @stvdebug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0900_set_viterbi_tracq) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp eq i32 %1, 1
  %9 = select i1 %8, i16 -3276, i16 -2764
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %9, i8 noundef zeroext -48) #6
  %10 = or i16 %9, 1
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %10, i8 noundef zeroext 125) #6
  %11 = or i16 %9, 2
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %11, i8 noundef zeroext 83) #6
  %12 = or i16 %9, 3
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %12, i8 noundef zeroext 47) #6
  %13 = add nuw nsw i16 %9, 4
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %13, i8 noundef zeroext 36) #6
  %14 = add nuw nsw i16 %9, 5
  tail call void @stv0900_write_reg(ptr noundef %0, i16 noundef zeroext %14, i8 noundef zeroext 31) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_symbol_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, i32 33554432, i32 0
  %6 = sub nuw nsw i32 -194772737, %5
  %7 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %6) #6
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = sub nuw nsw i32 -194707201, %5
  %11 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %10) #6
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = sub nuw nsw i32 -194641665, %5
  %16 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %15) #6
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = sub nuw nsw i32 -194576129, %5
  %21 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %20) #6
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = load i32, ptr @stvdebug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %20) #6
  %28 = zext i8 %27 to i32
  %29 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %15) #6
  %30 = zext i8 %29 to i32
  %31 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %10) #6
  %32 = zext i8 %31 to i32
  %33 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %0, i32 noundef %6) #6
  %34 = zext i8 %33 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %23, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #7
  br label %36

36:                                               ; preds = %26, %3
  %37 = lshr i32 %1, 16
  %38 = ashr exact i32 %14, 16
  %39 = and i32 %1, 65535
  %40 = srem i32 %23, 65536
  %41 = mul nsw i32 %38, %37
  %42 = mul i32 %40, %37
  %43 = ashr i32 %42, 16
  %44 = mul nsw i32 %38, %39
  %45 = ashr i32 %44, 16
  %46 = add nsw i32 %45, %41
  %47 = add i32 %46, %43
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_freq_auto(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_bandwidth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i32 2147450880, i32 2147450879}
