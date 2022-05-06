; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stb0899_algo.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb0899_algo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stb0899_state = type { ptr, ptr, %struct.dvb_frontend, ptr, %struct.stb0899_internal, i32, %struct.stb0899_params, i32, %struct.mutex }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.65], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.65 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.66 }>
%union.anon.66 = type { i64 }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i8, i32, i8, i8 }
%struct.stb0899_params = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__const.stb0899_dvbs_algo.betaTab = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 37, i32 34, i32 32, i32 31], [4 x i32] [i32 37, i32 35, i32 33, i32 31], [4 x i32] [i32 37, i32 35, i32 33, i32 31], [4 x i32] [i32 37, i32 36, i32 33, i32 32], [4 x i32] [i32 37, i32 36, i32 33, i32 32]], align 4
@.str = private unnamed_addr constant [42 x i8] c"\013%s: Set the timing loop to acquisition\0A\00", align 1
@__func__.stb0899_dvbs_algo = private unnamed_addr constant [18 x i8] c"stb0899_dvbs_algo\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013%s: Derot Percent=%d Srate=%d mclk=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\013%s: RESET stream merger\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\013%s: Tuner set frequency\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"\013%s: current derot freq=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\013%s: TIMING OK ! Derot freq=%d, mclk=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"\013%s: CARRIER OK ! Derot freq=%d, mclk=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"\013%s: DATA OK ! Derot freq=%d, mclk=%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"\013%s: RANGE OK ! derot freq=%d, mclk=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"\013%s: freq=%d, internal resultant freq=%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"\013%s: internal puncture rate=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"\013%s: Locked & Range OK !\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"\013%s: Unsupported Puncture Rate\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"\013%s: ------------> DVB-S2 DEMOD LOCK !\0A\00", align 1
@__func__.stb0899_dvbs2_algo = private unnamed_addr constant [19 x i8] c"stb0899_dvbs2_algo\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"\013%s: ----------------> DVB-S2 FEC Lock !\0A\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"\013%s: -->\0A\00", align 1
@__func__.stb0899_set_srate = private unnamed_addr constant [18 x i8] c"stb0899_set_srate\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"\013%s: ------->TIMING OK ! Derot Freq = %d\0A\00", align 1
@__func__.stb0899_search_tmg = private unnamed_addr constant [19 x i8] c"stb0899_search_tmg\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"\013%s: -->ANALOG Carrier !\0A\00", align 1
@__func__.stb0899_check_tmg = private unnamed_addr constant [18 x i8] c"stb0899_check_tmg\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"\013%s: ------->TIMING OK !\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"\013%s: -->NO TIMING !\0A\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"\013%s: Derot Freq=%d, mclk=%d\0A\00", align 1
@__func__.stb0899_search_carrier = private unnamed_addr constant [23 x i8] c"stb0899_search_carrier\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"\013%s: ----> CARRIER OK !, Derot Freq=%d\0A\00", align 1
@.str.88 = private unnamed_addr constant [54 x i8] c"\013%s: --------------------> STB0899_DSTATUS=[0x%02x]\0A\00", align 1
@__func__.stb0899_check_carrier = private unnamed_addr constant [22 x i8] c"stb0899_check_carrier\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"\013%s: -------------> CARRIEROK !\0A\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"\013%s: -------------> NOCARRIER !\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"\013%s: Derot freq=%d, mclk=%d\0A\00", align 1
@__func__.stb0899_search_data = private unnamed_addr constant [20 x i8] c"stb0899_search_data\00", align 1
@.str.104 = private unnamed_addr constant [38 x i8] c"\013%s: ------> DATAOK ! Derot Freq=%d\0A\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"\013%s: -----------------> DATA OK !\0A\00", align 1
@__func__.stb0899_check_data = private unnamed_addr constant [19 x i8] c"stb0899_check_data\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"\013%s: ----> RANGEOK !\0A\00", align 1
@__func__.stb0899_check_range = private unnamed_addr constant [20 x i8] c"stb0899_check_range\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"\013%s: ----> OUT OF RANGE !\0A\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"\013%s: DMD_STATUS=[0x%02x]\0A\00", align 1
@__func__.stb0899_dvbs2_get_dmd_status = private unnamed_addr constant [29 x i8] c"stb0899_dvbs2_get_dmd_status\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"\013%s: ------------->IF AGC LOCKED !\0A\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"\013%s: ----------->DMD STAT2=[0x%02x]\0A\00", align 1
@.str.132 = private unnamed_addr constant [39 x i8] c"\013%s: ----------------> DVB-S2 LOCK !\0A\00", align 1
@.str.136 = private unnamed_addr constant [36 x i8] c"\013%s: ---------->DVB-S2 FEC LOCK !\0A\00", align 1
@__func__.stb0899_dvbs2_get_fec_status = private unnamed_addr constant [29 x i8] c"stb0899_dvbs2_get_fec_status\00", align 1
@.str.140 = private unnamed_addr constant [41 x i8] c"\013%s: ---------> CFGPDELSTATUS=[0x%02x]\0A\00", align 1
@__func__.stb0899_dvbs2_get_data_lock = private unnamed_addr constant [28 x i8] c"stb0899_dvbs2_get_data_lock\00", align 1
@switch.table.stb0899_dvbs2_algo = private unnamed_addr constant [3 x i32] [i32 25, i32 38, i32 42], align 4
@switch.table.stb0899_dvbs2_algo.144 = private unnamed_addr constant [3 x i32] [i32 1382400, i32 3677184, i32 4816896], align 4
@switch.table.stb0899_dvbs2_algo.145 = private unnamed_addr constant [3 x i32] [i32 12, i32 14, i32 17], align 4
@switch.table.stb0899_dvbs2_algo.146 = private unnamed_addr constant [3 x i32] [i32 92160, i32 157696, i32 243712], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @stb0899_carr_width(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, %3
  %7 = udiv i32 %6, 100
  %8 = add i32 %7, %3
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_dvbs_algo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %8, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4
  %14 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 13
  store i16 1, ptr %14, align 4
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #7
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stb0899_set_srate) #8
  br label %24

24:                                               ; preds = %22, %1
  %25 = zext i32 %17 to i64
  %26 = shl nuw nsw i64 %25, 21
  %27 = zext i32 %15 to i64
  %28 = add nuw nsw i64 %26, %27
  %29 = shl i32 %15, 1
  %30 = icmp ult i64 %28, 4294967296
  br i1 %30, label %31, label %34, !prof !9

31:                                               ; preds = %24
  %32 = trunc i64 %28 to i32
  %33 = udiv i32 %32, %29
  br label %38

34:                                               ; preds = %24
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %28) #9, !srcloc !10
  %36 = extractvalue { i64, i64 } %35, 1
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  %40 = shl i32 %39, 4
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %6, align 1
  %43 = lshr i32 %40, 8
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  store i8 %44, ptr %45, align 1
  %46 = trunc i32 %40 to i8
  %47 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  store i8 %46, ptr %47, align 1
  %48 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 62534, ptr noundef nonnull %6, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #7
  %49 = load i32, ptr %16, align 4
  %50 = icmp ult i32 %49, 5000001
  br i1 %50, label %58, label %51

51:                                               ; preds = %38
  %52 = icmp ult i32 %49, 15000001
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp ult i32 %49, 25000001
  %55 = select i1 %54, i8 -119, i8 -56
  %56 = select i1 %54, i8 39, i8 41
  %57 = select i1 %54, i32 2, i32 3
  br label %58

58:                                               ; preds = %53, %51, %38
  %59 = phi i8 [ -119, %38 ], [ -55, %51 ], [ %55, %53 ]
  %60 = phi i8 [ 28, %38 ], [ 34, %51 ], [ %56, %53 ]
  %61 = phi i32 [ 0, %38 ], [ 1, %51 ], [ %57, %53 ]
  %62 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62492, i8 noundef zeroext %59) #7
  %63 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62493) #7
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, -64
  %66 = or i8 %65, %60
  %67 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %66) #7
  %68 = load ptr, ptr %18, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %73, label %71

71:                                               ; preds = %58
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stb0899_dvbs_algo) #8
  br label %73

73:                                               ; preds = %71, %58
  %74 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62487, i8 noundef zeroext 70) #7
  %75 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext -18) #7
  %76 = load ptr, ptr %18, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 12
  %81 = load i16, ptr %80, align 2
  %82 = sext i16 %81 to i32
  %83 = load i32, ptr %16, align 4
  %84 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %82, i32 noundef %83, i32 noundef %85) #8
  br label %87

87:                                               ; preds = %79, %73
  %88 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 12
  %89 = load i16, ptr %88, align 2
  %90 = sext i16 %89 to i32
  %91 = load i32, ptr %16, align 4
  %92 = udiv i32 %91, 1000
  %93 = mul i32 %92, %90
  %94 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 9
  %95 = load i32, ptr %94, align 4
  %96 = udiv i32 %93, %95
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 14
  store i16 %97, ptr %98, align 2
  %99 = icmp sgt i32 %91, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = udiv i32 100000, %92
  %102 = trunc i32 %101 to i16
  br label %103

103:                                              ; preds = %100, %87
  %104 = phi i16 [ %102, %100 ], [ 0, %87 ]
  %105 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 15
  store i16 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 16
  store i16 500, ptr %106, align 2
  %107 = load ptr, ptr %18, align 4
  %108 = load i32, ptr %107, align 4
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stb0899_dvbs_algo) #8
  br label %112

112:                                              ; preds = %110, %103
  %113 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %114 = trunc i32 %113 to i8
  %115 = or i8 %114, 64
  %116 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %115) #7
  %117 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62851) #7
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, -128
  %120 = or i8 %119, 60
  %121 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext %120) #7
  %122 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62494, i8 noundef zeroext 1) #7
  %123 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62781, i8 noundef zeroext 25) #7
  %124 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %125 = getelementptr inbounds %struct.stb0899_config, ptr %124, i32 0, i32 37
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %149, label %128

128:                                              ; preds = %112
  %129 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 2
  %130 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %129, i32 noundef 1) #7
  %131 = load ptr, ptr %125, align 4
  %132 = call i32 %131(ptr noundef %129, ptr noundef nonnull %5) #7
  %133 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %129, i32 noundef 0) #7
  %134 = load i32, ptr %5, align 4
  %135 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 10
  %138 = load i32, ptr %137, align 4
  %139 = mul i32 %138, %136
  %140 = udiv i32 %139, 100
  %141 = add i32 %140, %136
  %142 = sdiv i32 %141, -2
  %143 = add i32 %142, %134
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = call i32 @llvm.smin.i32(i32 %147, i32 %143) #7
  br label %149

149:                                              ; preds = %145, %128, %112
  %150 = phi i32 [ %148, %145 ], [ 0, %112 ], [ 0, %128 ]
  %151 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 5
  store i32 %150, ptr %151, align 4
  %152 = load i32, ptr %10, align 4
  %153 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 1
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 7
  store i32 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 17
  store i16 1, ptr %155, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %156 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %157 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 11
  %158 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  %159 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 2
  %160 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 18
  %161 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 19
  %162 = getelementptr inbounds %struct.stb0899_config, ptr %13, i32 0, i32 37
  %163 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 28
  %164 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %165 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %166 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %167 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 4
  %168 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 3
  br label %169

169:                                              ; preds = %624, %149
  store i8 0, ptr %156, align 1
  store i8 0, ptr %7, align 2
  %170 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %7, i32 noundef 2) #7
  %171 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62521, i8 noundef zeroext 0) #7
  %172 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %173 = trunc i32 %172 to i8
  %174 = or i8 %173, -128
  %175 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %174) #7
  store i16 0, ptr %157, align 4
  store i32 0, ptr %158, align 4
  %176 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %159, i32 noundef 1) #7
  %177 = load ptr, ptr %18, align 4
  %178 = load i32, ptr %177, align 4
  %179 = icmp ult i32 %178, 4
  br i1 %179, label %182, label %180

180:                                              ; preds = %169
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.stb0899_dvbs_algo) #8
  br label %182

182:                                              ; preds = %180, %169
  %183 = load ptr, ptr %12, align 4
  %184 = getelementptr inbounds %struct.stb0899_config, ptr %183, i32 0, i32 34
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load i32, ptr %153, align 4
  %189 = call i32 %185(ptr noundef %159, i32 noundef %188) #7
  %190 = load ptr, ptr %12, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = phi ptr [ %190, %187 ], [ %183, %182 ]
  %193 = getelementptr inbounds %struct.stb0899_config, ptr %192, i32 0, i32 35
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %191
  %197 = call i32 %194(ptr noundef %159, ptr noundef %153) #7
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i16, ptr %160, align 2
  %200 = sext i16 %199 to i32
  %201 = load i16, ptr %161, align 4
  %202 = sext i16 %201 to i32
  %203 = add nsw i32 %202, %200
  %204 = load i16, ptr %105, align 4
  %205 = sext i16 %204 to i32
  %206 = add nsw i32 %203, %205
  call void @msleep(i32 noundef %206) #7
  %207 = load ptr, ptr %18, align 4
  %208 = load i32, ptr %207, align 4
  %209 = icmp ult i32 %208, 4
  br i1 %209, label %214, label %210

210:                                              ; preds = %198
  %211 = load i16, ptr %157, align 4
  %212 = sext i16 %211 to i32
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %212) #8
  br label %214

214:                                              ; preds = %210, %198
  store i32 1, ptr %158, align 4
  %215 = load ptr, ptr %162, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = call i32 %215(ptr noundef %159, ptr noundef nonnull %9) #7
  br label %219

219:                                              ; preds = %217, %214
  %220 = call i32 @stb0899_i2c_gate_ctrl(ptr noundef %159, i32 noundef 0) #7
  %221 = load i32, ptr %16, align 4
  %222 = load i32, ptr %9, align 4
  %223 = lshr i32 %222, 1
  %224 = icmp ugt i32 %221, %223
  br i1 %224, label %295, label %225

225:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  store i32 2, ptr %158, align 4
  %226 = load i32, ptr %151, align 4
  %227 = load i32, ptr %94, align 4
  %228 = call fastcc i32 @stb0899_check_tmg(ptr noundef %0) #7
  %229 = icmp eq i32 %228, 4
  br i1 %229, label %273, label %230

230:                                              ; preds = %225
  %231 = lshr i32 %221, 1
  %232 = udiv i32 %231, %227
  %233 = sdiv i32 %226, 2
  %234 = sdiv i32 %233, %227
  %235 = shl i32 %232, 16
  %236 = ashr exact i32 %235, 16
  %237 = shl i32 %234, 16
  %238 = ashr exact i32 %237, 16
  br label %239

239:                                              ; preds = %266, %230
  %240 = phi i32 [ 0, %230 ], [ %250, %266 ]
  %241 = phi i16 [ 3, %230 ], [ %256, %266 ]
  %242 = phi i32 [ 0, %230 ], [ %243, %266 ]
  %243 = add i32 %242, 1
  %244 = load i16, ptr %14, align 4
  %245 = zext i16 %244 to i32
  %246 = mul i32 %243, %236
  %247 = mul i32 %246, %245
  %248 = shl i32 %240, 16
  %249 = ashr exact i32 %248, 16
  %250 = add i32 %247, %249
  %251 = shl i32 %250, 16
  %252 = ashr exact i32 %251, 16
  %253 = call i32 @llvm.abs.i32(i32 %252, i1 true) #7
  %254 = icmp sgt i32 %253, %238
  %255 = sext i1 %254 to i16
  %256 = add i16 %241, %255
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %239
  %259 = load i32, ptr %163, align 4
  %260 = mul i32 %259, %250
  %261 = lshr i32 %260, 8
  %262 = trunc i32 %261 to i8
  store i8 %262, ptr %4, align 2
  %263 = trunc i32 %260 to i8
  store i8 %263, ptr %164, align 1
  %264 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %4, i32 noundef 2) #7
  %265 = load i16, ptr %14, align 4
  br label %266

266:                                              ; preds = %258, %239
  %267 = phi i16 [ %265, %258 ], [ %244, %239 ]
  %268 = sub i16 0, %267
  store i16 %268, ptr %14, align 4
  %269 = call fastcc i32 @stb0899_check_tmg(ptr noundef %0) #7
  %270 = icmp ne i32 %269, 4
  %271 = icmp ne i16 %256, 0
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %239, label %273

273:                                              ; preds = %266, %225
  %274 = load i32, ptr %158, align 4
  %275 = icmp eq i32 %274, 4
  br i1 %275, label %276, label %294

276:                                              ; preds = %273
  %277 = call i32 @stb0899_read_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %4, i32 noundef 2) #7
  %278 = load i32, ptr %163, align 4
  %279 = load i8, ptr %4, align 2
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = load i8, ptr %164, align 1
  %283 = zext i8 %282 to i32
  %284 = or i32 %281, %283
  %285 = mul i32 %284, %278
  %286 = trunc i32 %285 to i16
  store i16 %286, ptr %157, align 4
  %287 = load ptr, ptr %18, align 4
  %288 = load i32, ptr %287, align 4
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %294, label %290

290:                                              ; preds = %276
  %291 = shl i32 %285, 16
  %292 = ashr exact i32 %291, 16
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.stb0899_search_tmg, i32 noundef %292) #8
  br label %294

294:                                              ; preds = %290, %276, %273
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  br label %297

295:                                              ; preds = %219
  %296 = call fastcc i32 @stb0899_check_tmg(ptr noundef %0)
  br label %297

297:                                              ; preds = %295, %294
  %298 = load i32, ptr %158, align 4
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %300, label %603

300:                                              ; preds = %297
  %301 = load ptr, ptr %18, align 4
  %302 = load i32, ptr %301, align 4
  %303 = icmp ult i32 %302, 4
  br i1 %303, label %309, label %304

304:                                              ; preds = %300
  %305 = load i16, ptr %157, align 4
  %306 = sext i16 %305 to i32
  %307 = load i32, ptr %94, align 4
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %306, i32 noundef %307) #8
  br label %309

309:                                              ; preds = %304, %300
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i16 0, ptr %3, align 2, !annotation !8
  store i32 7, ptr %158, align 4
  %310 = load i32, ptr %151, align 4
  %311 = sdiv i32 %310, 2
  %312 = load i32, ptr %94, align 4
  %313 = sdiv i32 %311, %312
  %314 = load i16, ptr %157, align 4
  %315 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %316 = trunc i32 %315 to i8
  %317 = or i8 %316, -128
  %318 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %317) #7
  %319 = shl i32 %313, 16
  %320 = ashr exact i32 %319, 16
  br label %321

321:                                              ; preds = %361, %309
  %322 = phi i32 [ 0, %309 ], [ %362, %361 ]
  %323 = phi i16 [ 3, %309 ], [ %363, %361 ]
  %324 = phi i16 [ 0, %309 ], [ %364, %361 ]
  %325 = phi i16 [ %314, %309 ], [ %365, %361 ]
  %326 = load ptr, ptr %18, align 4
  %327 = load i32, ptr %326, align 4
  %328 = icmp ult i32 %327, 4
  br i1 %328, label %333, label %329

329:                                              ; preds = %321
  %330 = sext i16 %325 to i32
  %331 = load i32, ptr %94, align 4
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.stb0899_search_carrier, i32 noundef %330, i32 noundef %331) #8
  br label %333

333:                                              ; preds = %329, %321
  %334 = call fastcc i32 @stb0899_check_carrier(ptr noundef %0) #7
  %335 = icmp eq i32 %334, 7
  br i1 %335, label %336, label %361

336:                                              ; preds = %333
  %337 = add i32 %322, 1
  %338 = load i16, ptr %14, align 4
  %339 = load i16, ptr %98, align 2
  %340 = trunc i32 %337 to i16
  %341 = mul i16 %338, %340
  %342 = mul i16 %341, %339
  %343 = add i16 %342, %325
  %344 = sext i16 %343 to i32
  %345 = call i32 @llvm.abs.i32(i32 %344, i1 true) #7
  %346 = icmp sgt i32 %345, %320
  %347 = sext i1 %346 to i16
  %348 = add i16 %323, %347
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %361, label %350

350:                                              ; preds = %336
  %351 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %352 = trunc i32 %351 to i8
  %353 = or i8 %352, -128
  %354 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %353) #7
  %355 = load i32, ptr %163, align 4
  %356 = mul i32 %355, %344
  %357 = lshr i32 %356, 8
  %358 = trunc i32 %357 to i8
  store i8 %358, ptr %3, align 2
  %359 = trunc i32 %356 to i8
  store i8 %359, ptr %165, align 1
  %360 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %3, i32 noundef 2) #7
  br label %361

361:                                              ; preds = %350, %336, %333
  %362 = phi i32 [ %337, %350 ], [ %337, %336 ], [ %322, %333 ]
  %363 = phi i16 [ %348, %350 ], [ 0, %336 ], [ %323, %333 ]
  %364 = phi i16 [ %325, %350 ], [ %325, %336 ], [ %324, %333 ]
  %365 = phi i16 [ %343, %350 ], [ %343, %336 ], [ %325, %333 ]
  %366 = load i16, ptr %14, align 4
  %367 = sub i16 0, %366
  store i16 %367, ptr %14, align 4
  %368 = load i32, ptr %158, align 4
  %369 = icmp ne i32 %368, 8
  %370 = icmp ne i16 %363, 0
  %371 = select i1 %369, i1 %370, i1 false
  br i1 %371, label %321, label %372

372:                                              ; preds = %361
  %373 = icmp eq i32 %368, 8
  br i1 %373, label %374, label %392

374:                                              ; preds = %372
  %375 = call i32 @stb0899_read_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %3, i32 noundef 2) #7
  %376 = load i32, ptr %163, align 4
  %377 = load i8, ptr %3, align 2
  %378 = zext i8 %377 to i32
  %379 = shl nuw nsw i32 %378, 8
  %380 = load i8, ptr %165, align 1
  %381 = zext i8 %380 to i32
  %382 = or i32 %379, %381
  %383 = mul i32 %382, %376
  %384 = trunc i32 %383 to i16
  store i16 %384, ptr %157, align 4
  %385 = load ptr, ptr %18, align 4
  %386 = load i32, ptr %385, align 4
  %387 = icmp ult i32 %386, 4
  br i1 %387, label %393, label %388

388:                                              ; preds = %374
  %389 = shl i32 %383, 16
  %390 = ashr exact i32 %389, 16
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.stb0899_search_carrier, i32 noundef %390) #8
  br label %393

392:                                              ; preds = %372
  store i16 %364, ptr %157, align 4
  br label %393

393:                                              ; preds = %392, %388, %374
  %394 = load i32, ptr %158, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  %395 = icmp eq i32 %394, 8
  br i1 %395, label %396, label %603

396:                                              ; preds = %393
  %397 = load ptr, ptr %18, align 4
  %398 = load i32, ptr %397, align 4
  %399 = icmp ult i32 %398, 4
  br i1 %399, label %406, label %400

400:                                              ; preds = %396
  %401 = load i16, ptr %157, align 4
  %402 = sext i16 %401 to i32
  %403 = load i32, ptr %94, align 4
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %402, i32 noundef %403) #8
  %405 = load i32, ptr %158, align 4
  br label %406

406:                                              ; preds = %400, %396
  %407 = phi i32 [ 8, %396 ], [ %405, %400 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 0, ptr %2, align 2, !annotation !8
  %408 = load i32, ptr %16, align 4
  %409 = lshr i32 %408, 2
  %410 = load i32, ptr %94, align 4
  %411 = udiv i32 %409, %410
  %412 = load i32, ptr %151, align 4
  %413 = sdiv i32 %412, 2
  %414 = sdiv i32 %413, %410
  %415 = load i16, ptr %157, align 4
  %416 = shl i32 %414, 16
  %417 = ashr exact i32 %416, 16
  br label %418

418:                                              ; preds = %484, %406
  %419 = phi i32 [ %407, %406 ], [ %497, %484 ]
  %420 = phi i32 [ 1, %406 ], [ %496, %484 ]
  %421 = phi i16 [ 3, %406 ], [ %475, %484 ]
  %422 = phi i16 [ %415, %406 ], [ %470, %484 ]
  %423 = icmp eq i32 %419, 8
  br i1 %423, label %424, label %464

424:                                              ; preds = %418
  store i32 9, ptr %158, align 4
  %425 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %426 = trunc i32 %425 to i8
  %427 = or i8 %426, 8
  %428 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %427) #7
  call void @msleep(i32 noundef 1) #7
  %429 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, -9
  %432 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %431) #7
  %433 = load i32, ptr %16, align 4
  %434 = icmp ult i32 %433, 2000001
  br i1 %434, label %440, label %435

435:                                              ; preds = %424
  %436 = icmp ult i32 %433, 5000001
  br i1 %436, label %440, label %437

437:                                              ; preds = %435
  %438 = icmp ult i32 %433, 15000001
  %439 = select i1 %438, i32 1000, i32 500
  br label %440

440:                                              ; preds = %437, %435, %424
  %441 = phi i32 [ 2000, %424 ], [ 1500, %435 ], [ %439, %437 ]
  %442 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62733) #7
  %443 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62732, i8 noundef zeroext 0) #7
  br label %444

444:                                              ; preds = %444, %440
  %445 = phi i32 [ 0, %440 ], [ %451, %444 ]
  %446 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62733) #7
  %447 = and i32 %446, 72
  %448 = icmp ne i32 %447, 0
  %449 = icmp ugt i32 %445, %441
  %450 = select i1 %448, i1 true, i1 %449
  %451 = add nuw nsw i32 %445, 1
  br i1 %450, label %452, label %444

452:                                              ; preds = %444
  %453 = and i32 %446, 8
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %452
  store i32 11, ptr %158, align 4
  %456 = load ptr, ptr %18, align 4
  %457 = load i32, ptr %456, align 4
  %458 = icmp ult i32 %457, 4
  br i1 %458, label %501, label %459

459:                                              ; preds = %455
  %460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.stb0899_check_data) #8
  br label %461

461:                                              ; preds = %459, %452
  %462 = load i32, ptr %158, align 4
  %463 = icmp eq i32 %462, 11
  br i1 %463, label %501, label %464

464:                                              ; preds = %461, %418
  %465 = phi i32 [ %462, %461 ], [ %419, %418 ]
  %466 = load i16, ptr %14, align 4
  %467 = mul i32 %420, %411
  %468 = trunc i32 %467 to i16
  %469 = mul i16 %466, %468
  %470 = add i16 %469, %422
  %471 = sext i16 %470 to i32
  %472 = call i32 @llvm.abs.i32(i32 %471, i1 true) #7
  %473 = icmp sgt i32 %472, %417
  %474 = sext i1 %473 to i16
  %475 = add i16 %421, %474
  %476 = icmp eq i16 %475, 0
  br i1 %476, label %504, label %477

477:                                              ; preds = %464
  %478 = load ptr, ptr %18, align 4
  %479 = load i32, ptr %478, align 4
  %480 = icmp ult i32 %479, 4
  br i1 %480, label %484, label %481

481:                                              ; preds = %477
  %482 = load i32, ptr %94, align 4
  %483 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.stb0899_search_data, i32 noundef %471, i32 noundef %482) #8
  br label %484

484:                                              ; preds = %481, %477
  %485 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %486 = trunc i32 %485 to i8
  %487 = or i8 %486, -128
  %488 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %487) #7
  %489 = load i32, ptr %163, align 4
  %490 = mul i32 %489, %471
  %491 = lshr i32 %490, 8
  %492 = trunc i32 %491 to i8
  store i8 %492, ptr %2, align 2
  %493 = trunc i32 %490 to i8
  store i8 %493, ptr %166, align 1
  %494 = call i32 @stb0899_write_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %2, i32 noundef 2) #7
  %495 = call fastcc i32 @stb0899_check_carrier(ptr noundef %0) #7
  %496 = add i32 %420, 1
  %497 = load i32, ptr %158, align 4
  %498 = load i16, ptr %14, align 4
  %499 = sub i16 0, %498
  store i16 %499, ptr %14, align 4
  %500 = icmp eq i32 %497, 11
  br i1 %500, label %507, label %418

501:                                              ; preds = %461, %455
  %502 = load i16, ptr %14, align 4
  %503 = sub i16 0, %502
  store i16 %503, ptr %14, align 4
  br label %507

504:                                              ; preds = %464
  %505 = sub i16 0, %466
  store i16 %505, ptr %14, align 4
  %506 = icmp eq i32 %465, 11
  br i1 %506, label %507, label %528

507:                                              ; preds = %504, %501, %484
  %508 = call i32 @stb0899_read_regs(ptr noundef %0, i32 noundef 62526, ptr noundef nonnull %2, i32 noundef 2) #7
  %509 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62755) #7
  %510 = and i32 %509, 8
  %511 = icmp eq i32 %510, 0
  %512 = select i1 %511, i32 1, i32 -1
  store i32 %512, ptr %163, align 4
  %513 = load i8, ptr %2, align 2
  %514 = zext i8 %513 to i32
  %515 = shl nuw nsw i32 %514, 8
  %516 = load i8, ptr %166, align 1
  %517 = zext i8 %516 to i32
  %518 = or i32 %515, %517
  %519 = mul nsw i32 %518, %512
  %520 = trunc i32 %519 to i16
  store i16 %520, ptr %157, align 4
  %521 = load ptr, ptr %18, align 4
  %522 = load i32, ptr %521, align 4
  %523 = icmp ult i32 %522, 4
  br i1 %523, label %528, label %524

524:                                              ; preds = %507
  %525 = shl i32 %519, 16
  %526 = ashr exact i32 %525, 16
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.stb0899_search_data, i32 noundef %526) #8
  br label %528

528:                                              ; preds = %524, %507, %504
  %529 = load i32, ptr %158, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  %530 = icmp eq i32 %529, 11
  br i1 %530, label %531, label %603

531:                                              ; preds = %528
  %532 = load ptr, ptr %18, align 4
  %533 = load i32, ptr %532, align 4
  %534 = icmp ult i32 %533, 4
  br i1 %534, label %540, label %535

535:                                              ; preds = %531
  %536 = load i16, ptr %157, align 4
  %537 = sext i16 %536 to i32
  %538 = load i32, ptr %94, align 4
  %539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %537, i32 noundef %538) #8
  br label %540

540:                                              ; preds = %535, %531
  %541 = load i32, ptr %167, align 4
  %542 = sdiv i32 %541, 2000
  %543 = load i32, ptr %153, align 4
  %544 = load i16, ptr %157, align 4
  %545 = sext i16 %544 to i32
  %546 = load i32, ptr %94, align 4
  %547 = mul i32 %546, %545
  %548 = sdiv i32 %547, -1000
  %549 = add i32 %548, %543
  %550 = load i32, ptr %10, align 4
  %551 = sub i32 %550, %542
  %552 = icmp ult i32 %549, %551
  %553 = add i32 %550, %542
  %554 = icmp ugt i32 %549, %553
  %555 = or i1 %552, %554
  br i1 %555, label %560, label %556

556:                                              ; preds = %540
  store i32 13, ptr %158, align 4
  %557 = load ptr, ptr %18, align 4
  %558 = load i32, ptr %557, align 4
  %559 = icmp ult i32 %558, 4
  br i1 %559, label %578, label %564

560:                                              ; preds = %540
  store i32 12, ptr %158, align 4
  %561 = load ptr, ptr %18, align 4
  %562 = load i32, ptr %561, align 4
  %563 = icmp ult i32 %562, 4
  br i1 %563, label %606, label %564

564:                                              ; preds = %560, %556
  %565 = phi ptr [ @.str.112, %556 ], [ @.str.116, %560 ]
  %566 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %565, ptr noundef nonnull @__func__.stb0899_check_range) #8
  %567 = load i32, ptr %158, align 4
  %568 = icmp eq i32 %567, 13
  br i1 %568, label %569, label %606

569:                                              ; preds = %564
  %570 = load ptr, ptr %18, align 4
  %571 = load i32, ptr %570, align 4
  %572 = icmp ult i32 %571, 4
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  %574 = load i16, ptr %157, align 4
  %575 = sext i16 %574 to i32
  %576 = load i32, ptr %94, align 4
  %577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %575, i32 noundef %576) #8
  br label %578

578:                                              ; preds = %573, %569, %556
  %579 = load i32, ptr %10, align 4
  %580 = load i16, ptr %157, align 4
  %581 = sext i16 %580 to i32
  %582 = load i32, ptr %94, align 4
  %583 = mul i32 %582, %581
  %584 = sdiv i32 %583, -1000
  %585 = add i32 %584, %579
  store i32 %585, ptr %153, align 4
  %586 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62860) #7
  %587 = and i32 %586, 31
  store i32 %587, ptr %168, align 4
  %588 = load ptr, ptr %18, align 4
  %589 = load i32, ptr %588, align 4
  %590 = icmp ult i32 %589, 4
  br i1 %590, label %601, label %591

591:                                              ; preds = %578
  %592 = load i32, ptr %10, align 4
  %593 = load i32, ptr %153, align 4
  %594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %592, i32 noundef %593) #8
  %595 = load ptr, ptr %18, align 4
  %596 = load i32, ptr %595, align 4
  %597 = icmp ult i32 %596, 4
  br i1 %597, label %601, label %598

598:                                              ; preds = %591
  %599 = load i32, ptr %168, align 4
  %600 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.stb0899_dvbs_algo, i32 noundef %599) #8
  br label %601

601:                                              ; preds = %598, %591, %578
  %602 = load i32, ptr %158, align 4
  br label %603

603:                                              ; preds = %601, %528, %393, %297
  %604 = phi i32 [ %602, %601 ], [ %394, %393 ], [ %529, %528 ], [ %298, %297 ]
  %605 = icmp eq i32 %604, 13
  br i1 %605, label %634, label %606

606:                                              ; preds = %603, %564, %560
  %607 = load i16, ptr %155, align 4
  %608 = icmp sgt i16 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %606
  %610 = load i32, ptr %154, align 4
  br label %624

611:                                              ; preds = %606
  %612 = load i32, ptr %151, align 4
  %613 = load i32, ptr %167, align 4
  %614 = sdiv i32 %613, 2
  %615 = load i32, ptr %154, align 4
  %616 = sdiv i32 %612, -2
  %617 = sub i32 %616, %615
  %618 = add i32 %617, %614
  %619 = call i32 @llvm.smin.i32(i32 %618, i32 %612) #7
  %620 = call i32 @llvm.smax.i32(i32 %619, i32 0) #7
  store i32 %620, ptr %151, align 4
  %621 = add i32 %620, %612
  %622 = sdiv i32 %621, 2
  %623 = add i32 %622, %615
  store i32 %623, ptr %154, align 4
  br label %624

624:                                              ; preds = %611, %609
  %625 = phi i32 [ %610, %609 ], [ %623, %611 ]
  %626 = load i32, ptr %10, align 4
  %627 = sext i16 %607 to i32
  %628 = mul i32 %625, %627
  %629 = sdiv i32 %628, 1000
  %630 = add i32 %629, %626
  store i32 %630, ptr %153, align 4
  %631 = sub i16 0, %607
  store i16 %631, ptr %155, align 4
  %632 = load i32, ptr %151, align 4
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %169

634:                                              ; preds = %624, %603
  %635 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62487, i8 noundef zeroext 51) #7
  %636 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext -9) #7
  %637 = load i32, ptr %158, align 4
  %638 = icmp eq i32 %637, 13
  br i1 %638, label %639, label %711

639:                                              ; preds = %634
  %640 = load ptr, ptr %18, align 4
  %641 = load i32, ptr %640, align 4
  %642 = icmp ult i32 %641, 4
  br i1 %642, label %645, label %643

643:                                              ; preds = %639
  %644 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.stb0899_dvbs_algo) #8
  br label %645

645:                                              ; preds = %643, %639
  %646 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62494, i8 noundef zeroext 65) #7
  %647 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62781, i8 noundef zeroext 57) #7
  %648 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62493) #7
  %649 = load i32, ptr %168, align 4
  switch i32 %649, label %694 [
    i32 13, label %650
    i32 18, label %658
    i32 21, label %666
    i32 24, label %674
    i32 25, label %682
    i32 26, label %686
  ]

650:                                              ; preds = %645
  %651 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 26) #7
  %652 = and i32 %648, 192
  %653 = getelementptr [4 x i32], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 %61
  %654 = load i32, ptr %653, align 4
  %655 = or i32 %654, %652
  %656 = trunc i32 %655 to i8
  %657 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %656) #7
  br label %700

658:                                              ; preds = %645
  %659 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 44) #7
  %660 = and i32 %648, 192
  %661 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 1, i32 %61
  %662 = load i32, ptr %661, align 4
  %663 = or i32 %662, %660
  %664 = trunc i32 %663 to i8
  %665 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %664) #7
  br label %700

666:                                              ; preds = %645
  %667 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 60) #7
  %668 = and i32 %648, 192
  %669 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 2, i32 %61
  %670 = load i32, ptr %669, align 4
  %671 = or i32 %670, %668
  %672 = trunc i32 %671 to i8
  %673 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %672) #7
  br label %700

674:                                              ; preds = %645
  %675 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 75) #7
  %676 = and i32 %648, 192
  %677 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 3, i32 %61
  %678 = load i32, ptr %677, align 4
  %679 = or i32 %678, %676
  %680 = trunc i32 %679 to i8
  %681 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %680) #7
  br label %700

682:                                              ; preds = %645
  %683 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 88) #7
  %684 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62492, i8 noundef zeroext -120) #7
  %685 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext -102) #7
  br label %700

686:                                              ; preds = %645
  %687 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62851, i8 noundef zeroext 94) #7
  %688 = and i32 %648, 192
  %689 = getelementptr [5 x [4 x i32]], ptr @__const.stb0899_dvbs_algo.betaTab, i32 0, i32 4, i32 %61
  %690 = load i32, ptr %689, align 4
  %691 = or i32 %690, %688
  %692 = trunc i32 %691 to i8
  %693 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62493, i8 noundef zeroext %692) #7
  br label %700

694:                                              ; preds = %645
  %695 = load ptr, ptr %18, align 4
  %696 = load i32, ptr %695, align 4
  %697 = icmp ult i32 %696, 4
  br i1 %697, label %700, label %698

698:                                              ; preds = %694
  %699 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.stb0899_dvbs_algo) #8
  br label %700

700:                                              ; preds = %698, %694, %686, %682, %674, %666, %658, %650
  %701 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, -65
  %704 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %703) #7
  %705 = call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 127
  %708 = call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %707) #7
  %709 = call i32 @stb0899_read_regs(ptr noundef %0, i32 noundef 62688, ptr noundef nonnull %8, i32 noundef 10) #7
  %710 = load i32, ptr %158, align 4
  br label %711

711:                                              ; preds = %700, %634
  %712 = phi i32 [ %710, %700 ], [ %637, %634 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  ret i32 %712
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_reg(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_i2c_gate_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_check_tmg(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 15
  %3 = load i16, ptr %2, align 4
  %4 = sext i16 %3 to i32
  tail call void @msleep(i32 noundef %4) #7
  %5 = tail call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62521, i8 noundef zeroext -14) #7
  %6 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62520) #7
  %7 = and i32 %6, 255
  %8 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62521) #7
  %9 = icmp ugt i32 %7, 41
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = icmp ugt i32 %7, 48
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = shl i32 %8, 24
  %14 = ashr exact i32 %13, 24
  %15 = tail call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp ugt i32 %15, 109
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  store i32 3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %38, label %35

23:                                               ; preds = %12, %10
  %24 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %38, label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  store i32 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %23, %17
  %36 = phi ptr [ @.str.68, %17 ], [ @.str.72, %23 ], [ @.str.76, %29 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %36, ptr noundef nonnull @__func__.stb0899_check_tmg) #8
  br label %38

38:                                               ; preds = %35, %29, %23, %17
  %39 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  %40 = load i32, ptr %39, align 4
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_read_regs(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stb0899_dvbs2_algo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2000001
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = icmp ult i32 %4, 5000001
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %4, 10000001
  br i1 %9, label %18, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %4, 15000001
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %4, 20000001
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %4, 25000001
  %16 = select i1 %15, i32 25, i32 20
  %17 = select i1 %15, i32 250, i32 150
  br label %18

18:                                               ; preds = %14, %12, %10, %8, %6, %1
  %19 = phi i32 [ 350, %1 ], [ 170, %6 ], [ 80, %8 ], [ 50, %10 ], [ 30, %12 ], [ %16, %14 ]
  %20 = phi i32 [ 5000, %1 ], [ 2500, %6 ], [ 1500, %8 ], [ 500, %10 ], [ 300, %12 ], [ %17, %14 ]
  %21 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %22 = trunc i32 %21 to i8
  %23 = or i8 %22, 64
  %24 = tail call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %23) #7
  %25 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 2
  %26 = tail call i32 @stb0899_i2c_gate_ctrl(ptr noundef %25, i32 noundef 1) #7
  %27 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stb0899_config, ptr %28, i32 0, i32 34
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 %30(ptr noundef %25, i32 noundef %34) #7
  %36 = load ptr, ptr %27, align 4
  br label %37

37:                                               ; preds = %32, %18
  %38 = phi ptr [ %36, %32 ], [ %28, %18 ]
  %39 = getelementptr inbounds %struct.stb0899_config, ptr %38, i32 0, i32 35
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 1
  %44 = tail call i32 %40(ptr noundef %25, ptr noundef %43) #7
  br label %45

45:                                               ; preds = %42, %37
  %46 = tail call i32 @stb0899_i2c_gate_ctrl(ptr noundef %25, i32 noundef 0) #7
  %47 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #7
  %48 = and i32 %47, -3968
  %49 = or i32 %48, 1056
  %50 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %49) #7
  %51 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212) #7
  %52 = and i32 %51, -8
  %53 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212, i32 noundef %52) #7
  %54 = load ptr, ptr %27, align 4
  %55 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296) #7
  %56 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3292) #7
  %57 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3252) #7
  %58 = and i32 %55, -67108863
  %59 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 21
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 1
  %62 = and i32 %61, -67108858
  %63 = or i32 %62, %58
  %64 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 22
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 3
  %67 = and i32 %66, -67106824
  %68 = or i32 %63, %67
  %69 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 28
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 11
  %72 = or i32 %68, %71
  %73 = and i32 %56, -16777216
  %74 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 24
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, -16776961
  %77 = or i32 %76, %73
  %78 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 25
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, 8
  %81 = and i32 %80, -16711936
  %82 = or i32 %77, %81
  %83 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 25
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %82, %85
  %87 = and i32 %57, -1073741824
  %88 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 26
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -1073709057
  %91 = or i32 %90, %87
  %92 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 27
  %93 = load i32, ptr %92, align 4
  %94 = shl i32 %93, 15
  %95 = or i32 %91, %94
  %96 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3296, i32 noundef %72) #7
  %97 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3292, i32 noundef %86) #7
  %98 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3252, i32 noundef %95) #7
  %99 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3244) #7
  %100 = and i32 %99, -4194304
  %101 = getelementptr inbounds %struct.stb0899_config, ptr %54, i32 0, i32 29
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %100, %102
  %104 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3244, i32 noundef %103) #7
  %105 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %106 = or i32 %105, 131072
  %107 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %106) #7
  %108 = load i32, ptr %2, align 4
  %109 = shl i32 %108, 1
  %110 = load i32, ptr %3, align 4
  %111 = mul i32 %110, 5
  %112 = udiv i32 %109, %111
  %113 = icmp ugt i32 %111, %109
  %114 = select i1 %113, i32 1, i32 %112
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 false) #7
  br label %116

116:                                              ; preds = %116, %45
  %117 = phi i32 [ 0, %45 ], [ %120, %116 ]
  %118 = shl nuw i32 1, %117
  %119 = icmp sgt i32 %118, %115
  %120 = add i32 %117, 1
  br i1 %119, label %121, label %116

121:                                              ; preds = %116
  %122 = icmp eq i32 %114, 0
  %123 = add i32 %117, -1
  %124 = select i1 %122, i32 0, i32 %123
  %125 = icmp ugt i32 %124, 4
  %126 = shl i32 %124, 3
  %127 = and i32 %126, 24
  %128 = select i1 %125, i32 %127, i32 0
  %129 = shl i32 %110, %124
  %130 = udiv i32 %129, 1000
  %131 = udiv i32 %108, %130
  %132 = icmp ult i32 %131, 2251
  %133 = select i1 %132, i32 32, i32 0
  %134 = and i32 %124, 7
  %135 = or i32 %128, %134
  %136 = or i32 %135, %133
  %137 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3256, i32 noundef %136) #7
  %138 = icmp ult i32 %131, 3451
  %139 = icmp ult i32 %131, 4251
  %140 = select i1 %139, i32 1, i32 2
  %141 = select i1 %138, i32 0, i32 %140
  %142 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3240, i32 noundef %141) #7
  %143 = load ptr, ptr %27, align 4
  %144 = load i32, ptr %2, align 4
  %145 = shl i32 %144, 1
  %146 = load i32, ptr %3, align 4
  %147 = mul i32 %146, 5
  %148 = udiv i32 %145, %147
  %149 = icmp ugt i32 %147, %145
  %150 = select i1 %149, i32 1, i32 %148
  %151 = tail call i32 @llvm.abs.i32(i32 %150, i1 false) #7
  br label %152

152:                                              ; preds = %152, %121
  %153 = phi i32 [ 0, %121 ], [ %156, %152 ]
  %154 = shl nuw i32 1, %153
  %155 = icmp sgt i32 %154, %151
  %156 = add i32 %153, 1
  br i1 %155, label %157, label %152

157:                                              ; preds = %152
  %158 = icmp eq i32 %150, 0
  %159 = add i32 %153, -1
  %160 = select i1 %158, i32 0, i32 %159
  %161 = udiv i32 %144, 1000
  %162 = icmp ult i32 %160, 3
  %163 = getelementptr inbounds %struct.stb0899_config, ptr %143, i32 0, i32 30
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, -1
  %166 = shl nuw i32 1, %165
  br i1 %162, label %167, label %170

167:                                              ; preds = %157
  %168 = shl i32 %166, %160
  %169 = udiv i32 %168, %161
  br label %176

170:                                              ; preds = %157
  %171 = udiv i32 %144, 100000
  %172 = udiv i32 %166, %171
  %173 = shl i32 %172, %160
  %174 = udiv i32 %173, 100
  %175 = shl i32 %166, %160
  br label %176

176:                                              ; preds = %170, %167
  %177 = phi i32 [ %168, %167 ], [ %175, %170 ]
  %178 = phi i32 [ %169, %167 ], [ %174, %170 ]
  %179 = urem i32 %177, %161
  %180 = udiv i32 %146, 1000
  %181 = mul i32 %178, %180
  %182 = mul i32 %179, %180
  %183 = udiv i32 %182, %161
  %184 = add i32 %183, %181
  %185 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3236, i32 noundef %184) #7
  %186 = load i32, ptr %2, align 4
  %187 = shl i32 %186, 1
  %188 = load i32, ptr %3, align 4
  %189 = mul i32 %188, 5
  %190 = udiv i32 %187, %189
  %191 = icmp ugt i32 %189, %187
  %192 = udiv i32 %186, 1000
  %193 = udiv i32 %188, 1000
  %194 = shl nuw i32 %192, 9
  %195 = shl i32 %190, 1
  %196 = select i1 %191, i32 2, i32 %195
  %197 = mul i32 %196, %193
  %198 = udiv i32 %194, %197
  %199 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252) #7
  %200 = and i32 %199, -32753
  %201 = shl i32 %198, 4
  %202 = or i32 %200, %201
  %203 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252, i32 noundef %202) #7
  %204 = load i32, ptr %3, align 4
  %205 = load i32, ptr %2, align 4
  %206 = lshr i32 %205, 12
  %207 = udiv i32 %204, %206
  %208 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3260, i32 noundef %207) #7
  %209 = load ptr, ptr %27, align 4
  %210 = load i32, ptr %2, align 4
  %211 = shl i32 %210, 1
  %212 = load i32, ptr %3, align 4
  %213 = mul i32 %212, 5
  %214 = udiv i32 %211, %213
  %215 = icmp ugt i32 %213, %211
  %216 = select i1 %215, i32 1, i32 %214
  %217 = tail call i32 @llvm.abs.i32(i32 %216, i1 false) #7
  br label %218

218:                                              ; preds = %218, %176
  %219 = phi i32 [ 0, %176 ], [ %222, %218 ]
  %220 = shl nuw i32 1, %219
  %221 = icmp sgt i32 %220, %217
  %222 = add i32 %219, 1
  br i1 %221, label %223, label %218

223:                                              ; preds = %218
  %224 = icmp eq i32 %216, 0
  %225 = add i32 %219, -1
  %226 = select i1 %224, i32 0, i32 %225
  %227 = getelementptr inbounds %struct.stb0899_config, ptr %209, i32 0, i32 30
  %228 = load i32, ptr %227, align 4
  %229 = shl nuw i32 1, %228
  %230 = udiv i32 %210, 1000
  %231 = udiv i32 %229, %230
  %232 = udiv i32 %212, 1000000
  %233 = shl i32 %232, %226
  %234 = mul i32 %231, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %287, label %236

236:                                              ; preds = %223
  %237 = udiv i32 13248000, %234
  %238 = udiv i32 1599234, %237
  %239 = mul nuw nsw i32 %238, 100
  br label %240

240:                                              ; preds = %240, %236
  %241 = phi i32 [ 0, %236 ], [ %244, %240 ]
  %242 = shl nuw i32 1, %241
  %243 = icmp sgt i32 %242, %239
  %244 = add i32 %241, 1
  br i1 %243, label %245, label %240

245:                                              ; preds = %240
  %246 = udiv i32 1279161, %237
  %247 = add i32 %241, -14
  %248 = getelementptr inbounds %struct.stb0899_config, ptr %209, i32 0, i32 31
  %249 = load i32, ptr %248, align 4
  %250 = add nuw nsw i32 %246, 15
  br label %251

251:                                              ; preds = %251, %245
  %252 = phi i32 [ 0, %245 ], [ %255, %251 ]
  %253 = shl nuw i32 1, %252
  %254 = icmp sgt i32 %253, %250
  %255 = add i32 %252, 1
  br i1 %254, label %256, label %251

256:                                              ; preds = %251
  %257 = icmp ult i32 %234, 9
  %258 = select i1 %257, i32 -13, i32 %247
  %259 = add i32 %258, -2
  %260 = lshr i32 %239, %259
  %261 = sub i32 2, %258
  %262 = add i32 %261, %249
  %263 = sdiv i32 %260, 10000
  %264 = sub i32 21, %252
  %265 = add i32 %264, %249
  %266 = shl i32 %246, %264
  %267 = sdiv i32 %266, 1000000
  %268 = icmp sgt i32 %265, 15
  %269 = shl i32 %265, 16
  %270 = add i32 %269, -983040
  %271 = tail call i32 @llvm.smin.i32(i32 %265, i32 15) #7
  %272 = select i1 %268, i32 %270, i32 0
  %273 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3248) #7
  %274 = and i32 %273, -1048576
  %275 = and i32 %271, -1048561
  %276 = shl nsw i32 %267, 4
  %277 = and i32 %276, -1048336
  %278 = shl i32 %262, 8
  %279 = and i32 %278, -1044736
  %280 = shl nsw i32 %263, 12
  %281 = and i32 %280, -987136
  %282 = or i32 %279, %281
  %283 = or i32 %282, %275
  %284 = or i32 %283, %277
  %285 = or i32 %284, %272
  %286 = or i32 %285, %274
  br label %287

287:                                              ; preds = %256, %223
  %288 = phi i32 [ %286, %256 ], [ 805967, %223 ]
  %289 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3248, i32 noundef %288) #7
  %290 = load i32, ptr %3, align 4
  %291 = icmp ugt i32 %290, 14999999
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = icmp ugt i32 %290, 9999999
  br i1 %293, label %297, label %294

294:                                              ; preds = %292
  %295 = icmp ugt i32 %290, 4999999
  %296 = select i1 %295, i32 13107, i32 32768
  br label %297

297:                                              ; preds = %294, %292, %287
  %298 = phi i32 [ 26214, %287 ], [ 18724, %292 ], [ %296, %294 ]
  %299 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 4
  %300 = load i32, ptr %299, align 4
  %301 = sdiv i32 %300, 1000000
  %302 = mul i32 %301, 1310720
  %303 = udiv i32 %290, 1000000
  %304 = mul nuw nsw i32 %298, %303
  %305 = udiv i32 %302, %304
  %306 = add i32 %305, 6
  %307 = sdiv i32 %306, 10
  %308 = add i32 %305, 15
  %309 = icmp ult i32 %308, 19
  %310 = select i1 %309, i32 1, i32 %307
  %311 = and i32 %310, 1
  %312 = icmp eq i32 %311, 0
  %313 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 23
  %314 = load i32, ptr %313, align 4
  br i1 %312, label %315, label %322

315:                                              ; preds = %297
  %316 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 26
  %317 = load i16, ptr %316, align 4
  %318 = sext i16 %317 to i32
  %319 = udiv i32 %290, 20000000
  %320 = mul nsw i32 %319, %318
  %321 = sub i32 %314, %320
  br label %322

322:                                              ; preds = %315, %297
  %323 = phi i32 [ %321, %315 ], [ %314, %297 ]
  %324 = load i32, ptr %2, align 4
  %325 = udiv i32 %324, 1000000
  %326 = load ptr, ptr %27, align 4
  %327 = getelementptr inbounds %struct.stb0899_config, ptr %326, i32 0, i32 32
  %328 = load i32, ptr %327, align 4
  %329 = shl nuw i32 1, %328
  %330 = udiv i32 %329, %325
  %331 = mul i32 %330, %323
  %332 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %333 = and i32 %332, -1073741824
  %334 = or i32 %333, %331
  %335 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %334) #7
  %336 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3236) #7
  %337 = and i32 %336, -67108864
  %338 = shl i32 %310, 17
  %339 = or i32 %338, %298
  %340 = or i32 %339, %337
  %341 = or i32 %340, 33554432
  %342 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3236, i32 noundef %341) #7
  %343 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #7
  %344 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 28
  %345 = load i32, ptr %344, align 4
  switch i32 %345, label %350 [
    i32 1, label %346
    i32 -1, label %348
  ]

346:                                              ; preds = %322
  %347 = and i32 %343, -5
  br label %350

348:                                              ; preds = %322
  %349 = or i32 %343, 4
  br label %350

350:                                              ; preds = %348, %346, %322
  %351 = phi i32 [ %343, %322 ], [ %349, %348 ], [ %347, %346 ]
  %352 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208, i32 noundef %351) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  %353 = tail call fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %0, i32 noundef %20)
  %354 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  store i32 %353, ptr %354, align 4
  switch i32 %353, label %454 [
    i32 14, label %355
    i32 16, label %555
  ]

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %357 = load ptr, ptr %356, align 4
  %358 = load i32, ptr %357, align 4
  %359 = icmp ult i32 %358, 4
  br i1 %359, label %362, label %360

360:                                              ; preds = %355
  %361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.stb0899_dvbs2_algo) #8
  br label %362

362:                                              ; preds = %360, %355
  br label %363

363:                                              ; preds = %372, %362
  %364 = phi i32 [ %373, %372 ], [ 0, %362 ]
  %365 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %366 = load ptr, ptr %356, align 4
  %367 = load i32, ptr %366, align 4
  %368 = icmp ult i32 %367, 4
  br i1 %368, label %372, label %369

369:                                              ; preds = %363
  %370 = and i32 %365, 255
  %371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %370) #8
  br label %372

372:                                              ; preds = %369, %363
  %373 = add nuw nsw i32 %364, 1
  tail call void @msleep(i32 noundef 1) #7
  %374 = and i32 %365, 2
  %375 = icmp eq i32 %374, 0
  %376 = icmp ult i32 %373, %19
  %377 = select i1 %375, i1 %376, i1 false
  br i1 %377, label %363, label %378

378:                                              ; preds = %372
  br i1 %375, label %383, label %379

379:                                              ; preds = %378
  %380 = load ptr, ptr %356, align 4
  %381 = load i32, ptr %380, align 4
  %382 = icmp ult i32 %381, 4
  br i1 %382, label %554, label %552

383:                                              ; preds = %378
  store i32 17, ptr %354, align 4
  %384 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %385 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %386 = and i32 %385, -1073741824
  %387 = or i32 %386, %384
  %388 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %387) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %389

389:                                              ; preds = %398, %383
  %390 = phi i32 [ 0, %383 ], [ %399, %398 ]
  %391 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %392 = load ptr, ptr %356, align 4
  %393 = load i32, ptr %392, align 4
  %394 = icmp ult i32 %393, 4
  br i1 %394, label %398, label %395

395:                                              ; preds = %389
  %396 = and i32 %391, 255
  %397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %396) #8
  br label %398

398:                                              ; preds = %395, %389
  %399 = add nuw nsw i32 %390, 1
  tail call void @msleep(i32 noundef 1) #7
  %400 = and i32 %391, 2
  %401 = icmp eq i32 %400, 0
  %402 = icmp ult i32 %399, %20
  %403 = select i1 %401, i1 %402, i1 false
  br i1 %403, label %389, label %404

404:                                              ; preds = %398
  br i1 %401, label %409, label %405

405:                                              ; preds = %452, %430, %404
  %406 = load ptr, ptr %356, align 4
  %407 = load i32, ptr %406, align 4
  %408 = icmp ult i32 %407, 4
  br i1 %408, label %554, label %552

409:                                              ; preds = %404
  store i32 17, ptr %354, align 4
  %410 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %411 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %412 = and i32 %411, -1073741824
  %413 = or i32 %412, %410
  %414 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %413) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %415

415:                                              ; preds = %424, %409
  %416 = phi i32 [ 0, %409 ], [ %425, %424 ]
  %417 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %418 = load ptr, ptr %356, align 4
  %419 = load i32, ptr %418, align 4
  %420 = icmp ult i32 %419, 4
  br i1 %420, label %424, label %421

421:                                              ; preds = %415
  %422 = and i32 %417, 255
  %423 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %422) #8
  br label %424

424:                                              ; preds = %421, %415
  %425 = add nuw nsw i32 %416, 1
  tail call void @msleep(i32 noundef 1) #7
  %426 = and i32 %417, 2
  %427 = icmp eq i32 %426, 0
  %428 = icmp ult i32 %425, %20
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %415, label %430

430:                                              ; preds = %424
  br i1 %427, label %431, label %405

431:                                              ; preds = %430
  store i32 17, ptr %354, align 4
  %432 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %433 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %434 = and i32 %433, -1073741824
  %435 = or i32 %434, %432
  %436 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %435) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %437

437:                                              ; preds = %446, %431
  %438 = phi i32 [ 0, %431 ], [ %447, %446 ]
  %439 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %440 = load ptr, ptr %356, align 4
  %441 = load i32, ptr %440, align 4
  %442 = icmp ult i32 %441, 4
  br i1 %442, label %446, label %443

443:                                              ; preds = %437
  %444 = and i32 %439, 255
  %445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %444) #8
  br label %446

446:                                              ; preds = %443, %437
  %447 = add nuw nsw i32 %438, 1
  tail call void @msleep(i32 noundef 1) #7
  %448 = and i32 %439, 2
  %449 = icmp eq i32 %448, 0
  %450 = icmp ult i32 %447, %20
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %437, label %452

452:                                              ; preds = %446
  br i1 %449, label %453, label %405

453:                                              ; preds = %452
  store i32 17, ptr %354, align 4
  br label %454

454:                                              ; preds = %453, %350
  %455 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #7
  %456 = xor i32 %455, 4
  %457 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208, i32 noundef %456) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  %458 = tail call fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %0, i32 noundef %20)
  store i32 %458, ptr %354, align 4
  switch i32 %458, label %798 [
    i32 14, label %459
    i32 16, label %555
  ]

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  br label %461

461:                                              ; preds = %470, %459
  %462 = phi i32 [ 0, %459 ], [ %471, %470 ]
  %463 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %464 = load ptr, ptr %460, align 4
  %465 = load i32, ptr %464, align 4
  %466 = icmp ult i32 %465, 4
  br i1 %466, label %470, label %467

467:                                              ; preds = %461
  %468 = and i32 %463, 255
  %469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %468) #8
  br label %470

470:                                              ; preds = %467, %461
  %471 = add nuw nsw i32 %462, 1
  tail call void @msleep(i32 noundef 1) #7
  %472 = and i32 %463, 2
  %473 = icmp eq i32 %472, 0
  %474 = icmp ult i32 %471, %19
  %475 = select i1 %473, i1 %474, i1 false
  br i1 %475, label %461, label %476

476:                                              ; preds = %470
  br i1 %473, label %481, label %477

477:                                              ; preds = %476
  %478 = load ptr, ptr %460, align 4
  %479 = load i32, ptr %478, align 4
  %480 = icmp ult i32 %479, 4
  br i1 %480, label %554, label %552

481:                                              ; preds = %476
  store i32 17, ptr %354, align 4
  %482 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %483 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %484 = and i32 %483, -1073741824
  %485 = or i32 %484, %482
  %486 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %485) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %487

487:                                              ; preds = %496, %481
  %488 = phi i32 [ 0, %481 ], [ %497, %496 ]
  %489 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %490 = load ptr, ptr %460, align 4
  %491 = load i32, ptr %490, align 4
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %496, label %493

493:                                              ; preds = %487
  %494 = and i32 %489, 255
  %495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %494) #8
  br label %496

496:                                              ; preds = %493, %487
  %497 = add nuw nsw i32 %488, 1
  tail call void @msleep(i32 noundef 1) #7
  %498 = and i32 %489, 2
  %499 = icmp eq i32 %498, 0
  %500 = icmp ult i32 %497, %20
  %501 = select i1 %499, i1 %500, i1 false
  br i1 %501, label %487, label %502

502:                                              ; preds = %496
  br i1 %499, label %507, label %503

503:                                              ; preds = %550, %528, %502
  %504 = load ptr, ptr %460, align 4
  %505 = load i32, ptr %504, align 4
  %506 = icmp ult i32 %505, 4
  br i1 %506, label %554, label %552

507:                                              ; preds = %502
  store i32 17, ptr %354, align 4
  %508 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %509 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %510 = and i32 %509, -1073741824
  %511 = or i32 %510, %508
  %512 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %511) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %513

513:                                              ; preds = %522, %507
  %514 = phi i32 [ 0, %507 ], [ %523, %522 ]
  %515 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %516 = load ptr, ptr %460, align 4
  %517 = load i32, ptr %516, align 4
  %518 = icmp ult i32 %517, 4
  br i1 %518, label %522, label %519

519:                                              ; preds = %513
  %520 = and i32 %515, 255
  %521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %520) #8
  br label %522

522:                                              ; preds = %519, %513
  %523 = add nuw nsw i32 %514, 1
  tail call void @msleep(i32 noundef 1) #7
  %524 = and i32 %515, 2
  %525 = icmp eq i32 %524, 0
  %526 = icmp ult i32 %523, %20
  %527 = select i1 %525, i1 %526, i1 false
  br i1 %527, label %513, label %528

528:                                              ; preds = %522
  br i1 %525, label %529, label %503

529:                                              ; preds = %528
  store i32 17, ptr %354, align 4
  %530 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %531 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272) #7
  %532 = and i32 %531, -1073741824
  %533 = or i32 %532, %530
  %534 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3272, i32 noundef %533) #7
  tail call fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0)
  br label %535

535:                                              ; preds = %544, %529
  %536 = phi i32 [ 0, %529 ], [ %545, %544 ]
  %537 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %538 = load ptr, ptr %460, align 4
  %539 = load i32, ptr %538, align 4
  %540 = icmp ult i32 %539, 4
  br i1 %540, label %544, label %541

541:                                              ; preds = %535
  %542 = and i32 %537, 255
  %543 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %542) #8
  br label %544

544:                                              ; preds = %541, %535
  %545 = add nuw nsw i32 %536, 1
  tail call void @msleep(i32 noundef 1) #7
  %546 = and i32 %537, 2
  %547 = icmp eq i32 %546, 0
  %548 = icmp ult i32 %545, %20
  %549 = select i1 %547, i1 %548, i1 false
  br i1 %549, label %535, label %550

550:                                              ; preds = %544
  br i1 %547, label %551, label %503

551:                                              ; preds = %550
  store i32 17, ptr %354, align 4
  br label %798

552:                                              ; preds = %503, %477, %405, %379
  %553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_dvbs2_get_fec_status) #8
  br label %554

554:                                              ; preds = %552, %503, %477, %405, %379
  store i32 16, ptr %354, align 4
  br label %555

555:                                              ; preds = %554, %454, %350
  %556 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %557 = load ptr, ptr %556, align 4
  %558 = load i32, ptr %557, align 4
  %559 = icmp ult i32 %558, 4
  br i1 %559, label %562, label %560

560:                                              ; preds = %555
  %561 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.stb0899_dvbs2_algo) #8
  br label %562

562:                                              ; preds = %560, %555
  %563 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284) #7
  %564 = lshr i32 %563, 2
  %565 = and i32 %564, 31
  %566 = and i32 %563, 1
  %567 = load i32, ptr %2, align 4
  %568 = mul i32 %567, 10
  %569 = load i32, ptr %3, align 4
  %570 = udiv i32 %569, 10
  %571 = udiv i32 %568, %570
  %572 = icmp ult i32 %571, 411
  br i1 %572, label %573, label %716

573:                                              ; preds = %562
  %574 = icmp ult i32 %565, 7
  %575 = icmp ne i32 %566, 0
  %576 = select i1 %574, i1 %575, i1 false
  br i1 %576, label %577, label %716

577:                                              ; preds = %573
  %578 = udiv i32 %567, %569
  %579 = icmp ult i32 %578, 5
  br i1 %579, label %580, label %618

580:                                              ; preds = %577
  %581 = add nsw i32 %565, -4
  %582 = icmp ult i32 %581, 3
  br i1 %582, label %583, label %592

583:                                              ; preds = %580
  %584 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo, i32 0, i32 %581
  %585 = load i32, ptr %584, align 4
  %586 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.144, i32 0, i32 %581
  %587 = load i32, ptr %586, align 4
  %588 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.145, i32 0, i32 %581
  %589 = load i32, ptr %588, align 4
  %590 = getelementptr inbounds [3 x i32], ptr @switch.table.stb0899_dvbs2_algo.146, i32 0, i32 %581
  %591 = load i32, ptr %590, align 4
  br label %592

592:                                              ; preds = %583, %580
  %593 = phi i32 [ %585, %583 ], [ 66, %580 ]
  %594 = phi i32 [ %587, %583 ], [ 15172608, %580 ]
  %595 = phi i32 [ %589, %583 ], [ 24, %580 ]
  %596 = phi i32 [ %591, %583 ], [ 602112, %580 ]
  %597 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %598 = and i32 %597, -131073
  %599 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %598) #7
  %600 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %601 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3308) #7
  %602 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3304) #7
  %603 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3300) #7
  %604 = and i32 %600, -131072
  %605 = or i32 %604, 25
  %606 = and i32 %601, -262144
  %607 = or i32 %594, %593
  %608 = or i32 %607, %606
  %609 = and i32 %602, -262144
  %610 = or i32 %596, %595
  %611 = or i32 %610, %609
  %612 = and i32 %603, -36864
  %613 = or i32 %612, 32776
  %614 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %605) #7
  %615 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3308, i32 noundef %608) #7
  %616 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3304, i32 noundef %611) #7
  %617 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3300, i32 noundef %613) #7
  br label %618

618:                                              ; preds = %592, %577
  br label %619

619:                                              ; preds = %628, %618
  %620 = phi i32 [ %629, %628 ], [ 0, %618 ]
  %621 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %622 = load ptr, ptr %556, align 4
  %623 = load i32, ptr %622, align 4
  %624 = icmp ult i32 %623, 4
  br i1 %624, label %628, label %625

625:                                              ; preds = %619
  %626 = and i32 %621, 255
  %627 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %626) #8
  br label %628

628:                                              ; preds = %625, %619
  %629 = add nuw nsw i32 %620, 1
  tail call void @msleep(i32 noundef 1) #7
  %630 = and i32 %621, 2
  %631 = icmp eq i32 %630, 0
  %632 = icmp ult i32 %629, %19
  %633 = select i1 %631, i1 %632, i1 false
  br i1 %633, label %619, label %634

634:                                              ; preds = %628
  br i1 %631, label %639, label %635

635:                                              ; preds = %634
  %636 = load ptr, ptr %556, align 4
  %637 = load i32, ptr %636, align 4
  %638 = icmp ult i32 %637, 4
  br i1 %638, label %715, label %713

639:                                              ; preds = %634
  store i32 17, ptr %354, align 4
  %640 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %641 = or i32 %640, 2
  %642 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %641) #7
  %643 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %644 = and i32 %643, -3
  %645 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %644) #7
  br label %646

646:                                              ; preds = %655, %639
  %647 = phi i32 [ 0, %639 ], [ %656, %655 ]
  %648 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %649 = load ptr, ptr %556, align 4
  %650 = load i32, ptr %649, align 4
  %651 = icmp ult i32 %650, 4
  br i1 %651, label %655, label %652

652:                                              ; preds = %646
  %653 = and i32 %648, 255
  %654 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %653) #8
  br label %655

655:                                              ; preds = %652, %646
  %656 = add nuw nsw i32 %647, 1
  tail call void @msleep(i32 noundef 1) #7
  %657 = and i32 %648, 2
  %658 = icmp eq i32 %657, 0
  %659 = icmp ult i32 %656, %19
  %660 = select i1 %658, i1 %659, i1 false
  br i1 %660, label %646, label %661

661:                                              ; preds = %655
  br i1 %658, label %666, label %662

662:                                              ; preds = %711, %688, %661
  %663 = load ptr, ptr %556, align 4
  %664 = load i32, ptr %663, align 4
  %665 = icmp ult i32 %664, 4
  br i1 %665, label %715, label %713

666:                                              ; preds = %661
  store i32 17, ptr %354, align 4
  %667 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %668 = or i32 %667, 2
  %669 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %668) #7
  %670 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %671 = and i32 %670, -3
  %672 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %671) #7
  br label %673

673:                                              ; preds = %682, %666
  %674 = phi i32 [ 0, %666 ], [ %683, %682 ]
  %675 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %676 = load ptr, ptr %556, align 4
  %677 = load i32, ptr %676, align 4
  %678 = icmp ult i32 %677, 4
  br i1 %678, label %682, label %679

679:                                              ; preds = %673
  %680 = and i32 %675, 255
  %681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %680) #8
  br label %682

682:                                              ; preds = %679, %673
  %683 = add nuw nsw i32 %674, 1
  tail call void @msleep(i32 noundef 1) #7
  %684 = and i32 %675, 2
  %685 = icmp eq i32 %684, 0
  %686 = icmp ult i32 %683, %19
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %673, label %688

688:                                              ; preds = %682
  br i1 %685, label %689, label %662

689:                                              ; preds = %688
  store i32 17, ptr %354, align 4
  %690 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %691 = or i32 %690, 2
  %692 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %691) #7
  %693 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312) #7
  %694 = and i32 %693, -3
  %695 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3312, i32 noundef %694) #7
  br label %696

696:                                              ; preds = %705, %689
  %697 = phi i32 [ 0, %689 ], [ %706, %705 ]
  %698 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 63001) #7
  %699 = load ptr, ptr %556, align 4
  %700 = load i32, ptr %699, align 4
  %701 = icmp ult i32 %700, 4
  br i1 %701, label %705, label %702

702:                                              ; preds = %696
  %703 = and i32 %698, 255
  %704 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.stb0899_dvbs2_get_data_lock, i32 noundef %703) #8
  br label %705

705:                                              ; preds = %702, %696
  %706 = add nuw nsw i32 %697, 1
  tail call void @msleep(i32 noundef 1) #7
  %707 = and i32 %698, 2
  %708 = icmp eq i32 %707, 0
  %709 = icmp ult i32 %706, %19
  %710 = select i1 %708, i1 %709, i1 false
  br i1 %710, label %696, label %711

711:                                              ; preds = %705
  br i1 %708, label %712, label %662

712:                                              ; preds = %711
  store i32 17, ptr %354, align 4
  br label %716

713:                                              ; preds = %662, %635
  %714 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.stb0899_dvbs2_get_fec_status) #8
  br label %715

715:                                              ; preds = %713, %662, %635
  store i32 16, ptr %354, align 4
  br label %716

716:                                              ; preds = %715, %712, %573, %562
  %717 = load i32, ptr %2, align 4
  %718 = mul i32 %717, 10
  %719 = load i32, ptr %3, align 4
  %720 = udiv i32 %719, 10
  %721 = udiv i32 %718, %720
  %722 = icmp ult i32 %721, 411
  br i1 %722, label %723, label %731

723:                                              ; preds = %716
  %724 = icmp ult i32 %565, 5
  %725 = icmp ne i32 %566, 0
  %726 = select i1 %724, i1 %725, i1 false
  br i1 %726, label %727, label %731

727:                                              ; preds = %723
  %728 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #7
  %729 = or i32 %728, 32
  %730 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %729) #7
  br label %731

731:                                              ; preds = %727, %723, %716
  %732 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #7
  %733 = and i32 %732, -16
  %734 = or i32 %733, 2
  %735 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %734) #7
  %736 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3324) #7
  %737 = shl i32 %736, 2
  %738 = ashr exact i32 %737, 2
  %739 = sdiv i32 %738, 1073741
  %740 = load i32, ptr %2, align 4
  %741 = udiv i32 %740, 1000000
  %742 = mul nsw i32 %739, %741
  %743 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3208) #7
  %744 = and i32 %743, 4
  %745 = icmp eq i32 %744, 0
  %746 = select i1 %745, i32 1, i32 -1
  store i32 %746, ptr %344, align 4
  %747 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 1
  %748 = load i32, ptr %747, align 4
  %749 = add i32 %748, %742
  store i32 %749, ptr %747, align 4
  %750 = load ptr, ptr %27, align 4
  %751 = getelementptr inbounds %struct.stb0899_config, ptr %750, i32 0, i32 30
  %752 = load i32, ptr %751, align 4
  %753 = lshr i32 %752, 1
  %754 = xor i32 %753, -1
  %755 = add i32 %752, %754
  %756 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3236) #7
  %757 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3256) #7
  %758 = and i32 %757, 7
  %759 = load i32, ptr %2, align 4
  %760 = lshr i32 %759, %753
  %761 = lshr i32 %756, %755
  %762 = shl nsw i32 -1, %753
  %763 = xor i32 %762, -1
  %764 = and i32 %759, %763
  %765 = shl nsw i32 -1, %755
  %766 = xor i32 %765, -1
  %767 = and i32 %756, %766
  %768 = mul i32 %760, %761
  %769 = mul i32 %760, %767
  %770 = lshr i32 %769, %755
  %771 = add i32 %770, %768
  %772 = mul i32 %764, %761
  %773 = lshr i32 %772, %753
  %774 = add i32 %771, %773
  %775 = lshr i32 %774, %758
  store i32 %775, ptr %3, align 4
  %776 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3284) #7
  %777 = lshr i32 %776, 2
  %778 = and i32 %777, 31
  %779 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 29
  store i32 %778, ptr %779, align 4
  %780 = trunc i32 %776 to i8
  %781 = and i8 %780, 1
  %782 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 30
  store i8 %781, ptr %782, align 4
  %783 = lshr i32 %776, 1
  %784 = and i32 %783, 1
  %785 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 31
  store i32 %784, ptr %785, align 4
  %786 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296) #7
  %787 = and i32 %786, -3841
  %788 = or i32 %787, 768
  %789 = load i32, ptr %779, align 4
  %790 = icmp ult i32 %789, 5
  %791 = and i32 %788, -3200
  %792 = or i32 %791, 16
  %793 = select i1 %790, i32 %792, i32 %788
  %794 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3296, i32 noundef %793) #7
  %795 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212) #7
  %796 = or i32 %795, 7
  %797 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 32, i16 noundef zeroext -3212, i32 noundef %796) #7
  br label %798

798:                                              ; preds = %731, %551, %454
  %799 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 65297) #7
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, -65
  %802 = tail call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 65297, i8 noundef zeroext %801) #7
  %803 = load i32, ptr %354, align 4
  ret i32 %803
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_stb0899_read_s2reg(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stb0899_write_s2reg(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stb0899_dvbs2_reacquire(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3328, i32 noundef 1) #7
  %3 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252) #7
  %4 = or i32 %3, 3
  %5 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3252, i32 noundef %4) #7
  %6 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3240, i32 noundef 268435456) #7
  %7 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3240, i32 noundef 0) #7
  %8 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3244, i32 noundef 268435456) #7
  %9 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3244, i32 noundef 0) #7
  %10 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3280, i32 noundef 1073741824) #7
  %11 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3280, i32 noundef 0) #7
  %12 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3276, i32 noundef 0) #7
  %13 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3284, i32 noundef 1073741824) #7
  %14 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3284, i32 noundef 0) #7
  %15 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3328, i32 noundef 0) #7
  %16 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3220, i32 noundef 1) #7
  %17 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3216, i32 noundef 0) #7
  %18 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3312, i32 noundef 1) #7
  %19 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3312, i32 noundef 0) #7
  %20 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308) #7
  %21 = and i32 %20, -507952
  %22 = or i32 %21, 344064
  %23 = tail call i32 @stb0899_write_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1088, i16 noundef zeroext -3308, i32 noundef %22) #7
  %24 = tail call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62976, i8 noundef zeroext 74) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_dvbs2_get_dmd_status(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %28, %2
  %5 = phi i32 [ -10, %2 ], [ %31, %28 ]
  %6 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 0, i16 noundef zeroext -3328) #7
  %7 = load ptr, ptr %3, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.stb0899_dvbs2_get_dmd_status, i32 noundef %6) #8
  br label %12

12:                                               ; preds = %10, %4
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.stb0899_dvbs2_get_dmd_status) #8
  br label %21

21:                                               ; preds = %19, %15, %12
  %22 = tail call i32 @_stb0899_read_s2reg(ptr noundef %0, i32 noundef 62460, i32 noundef 1024, i16 noundef zeroext -3264) #7
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.stb0899_dvbs2_get_dmd_status, i32 noundef %22) #8
  br label %28

28:                                               ; preds = %26, %21
  %29 = and i32 %22, 3
  %30 = icmp ne i32 %29, 3
  %31 = add i32 %5, 10
  tail call void @msleep(i32 noundef 10) #7
  %32 = icmp sle i32 %31, %1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %4, label %34

34:                                               ; preds = %28
  br i1 %30, label %41, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.stb0899_dvbs2_get_dmd_status) #8
  br label %41

41:                                               ; preds = %39, %35, %34
  %42 = phi i32 [ 14, %39 ], [ 15, %34 ], [ 14, %35 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stb0899_check_carrier(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 15
  %3 = load i16, ptr %2, align 4
  %4 = sext i16 %3 to i32
  tail call void @msleep(i32 noundef %4) #7
  %5 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62491) #7
  %6 = trunc i32 %5 to i8
  %7 = or i8 %6, -128
  %8 = tail call i32 @stb0899_write_reg(ptr noundef %0, i32 noundef 62491, i8 noundef zeroext %7) #7
  %9 = tail call i32 @stb0899_read_reg(ptr noundef %0, i32 noundef 62522) #7
  %10 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = and i32 %9, 255
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.stb0899_check_carrier, i32 noundef %15) #8
  br label %17

17:                                               ; preds = %14, %1
  %18 = and i32 %9, 128
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  br i1 %19, label %25, label %21

21:                                               ; preds = %17
  store i32 8, ptr %20, align 4
  %22 = load ptr, ptr %10, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %32, label %29

25:                                               ; preds = %17
  store i32 7, ptr %20, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21
  %30 = phi ptr [ @.str.92, %21 ], [ @.str.96, %25 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %30, ptr noundef nonnull @__func__.stb0899_check_carrier) #8
  br label %32

32:                                               ; preds = %29, %25, %21
  %33 = getelementptr inbounds %struct.stb0899_state, ptr %0, i32 0, i32 4, i32 21
  %34 = load i32, ptr %33, align 4
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148377285, i64 2148377565, i64 2148377899, i64 2148378233}
