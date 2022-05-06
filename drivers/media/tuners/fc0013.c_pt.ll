; ModuleID = '/llk/IR/drivers/media/tuners/fc0013.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0013.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_rc_cal_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_rc_cal_add\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_rc_cal_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_rc_cal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_rc_cal_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_rc_cal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0013_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0013_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0013_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.fc0013_priv = type { ptr, i8, i8, i8, i32, i32 }

@__kstrtab_fc0013_rc_cal_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_rc_cal_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_rc_cal_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_rc_cal_add to i32), ptr @__kstrtab_fc0013_rc_cal_add, ptr @__kstrtabns_fc0013_rc_cal_add }, section "___ksymtab+fc0013_rc_cal_add", align 4
@__kstrtab_fc0013_rc_cal_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_rc_cal_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_rc_cal_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_rc_cal_reset to i32), ptr @__kstrtab_fc0013_rc_cal_reset, ptr @__kstrtabns_fc0013_rc_cal_reset }, section "___ksymtab+fc0013_rc_cal_reset", align 4
@.str = private unnamed_addr constant [51 x i8] c"\016fc0013: Fitipower FC0013 successfully attached.\0A\00", align 1
@fc0013_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37000000, i32 1680000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0013_release, ptr @fc0013_init, ptr @fc0013_sleep, ptr null, ptr null, ptr @fc0013_set_params, ptr null, ptr null, ptr @fc0013_get_frequency, ptr @fc0013_get_bandwidth, ptr @fc0013_get_if_frequency, ptr null, ptr @fc0013_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_fc0013_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0013_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0013_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0013_attach to i32), ptr @__kstrtab_fc0013_attach, ptr @__kstrtabns_fc0013_attach }, section "___ksymtab+fc0013_attach", align 4
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"description=Fitipower FC0013 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"author=Hans-Frieder Vogt <hfvogt@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [12 x i8] c"version=0.2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\013fc0013: I2C write reg failed, reg: %02x, val: %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013fc0013: I2C read reg failed, reg: %02x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.fc0013_init.reg = private unnamed_addr constant [22 x i8] c"\00\09\16\00\00\17\02\0A\FFo\B8\82\FC\01\00\00\00\00\00\00P\01", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\013fc0013: fc0013_writereg failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\013fc0013: %s: modulation type not supported!\0A\00", align 1
@__func__.fc0013_set_params = private unnamed_addr constant [18 x i8] c"fc0013_set_params\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\014fc0013: %s: failed: %d\0A\00", align 1
@fc0013_get_rf_strength.fc0013_lna_gain_table = internal unnamed_addr constant [24 x i32] [i32 -63, i32 -58, i32 -99, i32 -73, i32 -63, i32 -65, i32 -54, i32 -60, i32 71, i32 70, i32 68, i32 67, i32 65, i32 63, i32 61, i32 58, i32 197, i32 191, i32 188, i32 186, i32 184, i32 182, i32 181, i32 179], align 4
@__func__.fc0013_get_rf_strength = private unnamed_addr constant [23 x i8] c"fc0013_get_rf_strength\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_version252, ptr @__ksymtab_fc0013_attach, ptr @__ksymtab_fc0013_rc_cal_add, ptr @__ksymtab_fc0013_rc_cal_reset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fc0013_rc_cal_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1, !annotation !8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 1) #10
  br label %19

19:                                               ; preds = %17, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 16, ptr %9, align 2
  %20 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %21 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.fc0013_priv, ptr %13, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %10, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %10, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  br label %88

32:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 16, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #10, !annotation !8
  %34 = load i8, ptr %22, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %8, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %33, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %11, ptr %41, align 4
  %42 = load ptr, ptr %13, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %8, i32 noundef 2) #10
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load i8, ptr %7, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %47) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br label %88

49:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %50 = load i8, ptr %11, align 1
  %51 = and i8 %50, 15
  store i8 %51, ptr %11, align 1
  %52 = zext i8 %51 to i32
  %53 = add i32 %52, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 13, ptr %5, align 2
  %54 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 17, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %55 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = load i8, ptr %22, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %6, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %59, align 4
  %60 = load ptr, ptr %13, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %6, i32 noundef 1) #10
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %65, label %63

63:                                               ; preds = %49
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 13, i32 noundef 17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %88

65:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %66 = icmp sgt i32 %53, 15
  br i1 %66, label %67, label %81

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 16, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 15, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %69 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %69, align 4, !annotation !8
  %70 = load i8, ptr %22, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #10
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef 15) #11
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ -121, %77 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %88

81:                                               ; preds = %65
  %82 = icmp slt i32 %53, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = call fastcc i32 @fc0013_writereg(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext 0)
  br label %88

85:                                               ; preds = %81
  %86 = trunc i32 %53 to i8
  %87 = call fastcc i32 @fc0013_writereg(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %86)
  br label %88

88:                                               ; preds = %85, %83, %79, %63, %45, %30
  %89 = phi i32 [ -121, %30 ], [ -121, %45 ], [ -121, %63 ], [ %80, %79 ], [ %84, %83 ], [ %87, %85 ]
  %90 = load ptr, ptr %14, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 %90(ptr noundef %0, i32 noundef 0) #10
  br label %94

94:                                               ; preds = %92, %88
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0013_writereg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.fc0013_priv, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #10
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = zext i8 %1 to i32
  %19 = zext i8 %2 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i32 [ -121, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0013_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.fc0013_priv, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %16, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 2) #10
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %22) #11
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i32 [ -121, %20 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fc0013_rc_cal_reset(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 1) #10
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 13, ptr %4, align 2
  %14 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 1, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.fc0013_priv, ptr %7, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 13, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %40

26:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 16, ptr %2, align 2
  %27 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %28 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %28, align 4, !annotation !8
  %29 = load i8, ptr %16, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %3, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %32, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %3, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef 0) #11
  br label %38

38:                                               ; preds = %36, %26
  %39 = phi i32 [ -121, %36 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i32 [ -121, %24 ], [ %39, %38 ]
  %42 = load ptr, ptr %8, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 %42(ptr noundef %0, i32 noundef 0) #10
  br label %46

46:                                               ; preds = %44, %40
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fc0013_attach(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  store ptr %1, ptr %7, align 8
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds %struct.fc0013_priv, ptr %7, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.fc0013_priv, ptr %7, i32 0, i32 1
  store i8 %2, ptr %12, align 4
  %13 = trunc i32 %4 to i8
  %14 = getelementptr inbounds %struct.fc0013_priv, ptr %7, i32 0, i32 3
  store i8 %13, ptr %14, align 2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %17, ptr noundef nonnull align 4 dereferenceable(220) @fc0013_tuner_ops, i32 220, i1 false)
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi ptr [ %0, %9 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fc0013_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0013_init(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [22 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @__const.fc0013_init.reg, i32 22, i1 false)
  %7 = getelementptr inbounds %struct.fc0013_priv, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 7
  store i8 42, ptr %11, align 1
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.fc0013_priv, ptr %6, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 12
  store i8 -2, ptr %17, align 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef 1) #10
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds i8, ptr %2, i32 1
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  %27 = getelementptr inbounds %struct.fc0013_priv, ptr %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %30 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 1, ptr %2, align 2
  store i8 %31, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %26, align 4, !annotation !8
  %32 = load i8, ptr %27, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %3, align 4
  store i16 0, ptr %28, align 2
  store ptr %2, ptr %29, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %55, label %49

37:                                               ; preds = %55
  %38 = trunc i32 %57 to i8
  %39 = getelementptr [22 x i8], ptr %4, i32 0, i32 %57
  %40 = load i8, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 %38, ptr %2, align 2
  store i8 %40, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %26, align 4, !annotation !8
  %41 = load i8, ptr %27, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %3, align 4
  store i16 0, ptr %28, align 2
  store ptr %2, ptr %29, align 4
  %43 = load ptr, ptr %6, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %3, i32 noundef 1) #10
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = icmp ult i32 %56, 21
  %48 = and i32 %57, 255
  br label %49

49:                                               ; preds = %46, %24
  %50 = phi i1 [ %47, %46 ], [ true, %24 ]
  %51 = phi i32 [ %48, %46 ], [ 1, %24 ]
  %52 = phi i8 [ %40, %46 ], [ %31, %24 ]
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %53) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %61

55:                                               ; preds = %37, %24
  %56 = phi i32 [ %57, %37 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %57 = add nuw nsw i32 %56, 1
  %58 = icmp eq i32 %57, 22
  br i1 %58, label %59, label %37

59:                                               ; preds = %55
  %60 = icmp ult i32 %56, 21
  br label %61

61:                                               ; preds = %59, %49
  %62 = phi i1 [ %50, %49 ], [ %60, %59 ]
  %63 = phi i32 [ -121, %49 ], [ 0, %59 ]
  %64 = load ptr, ptr %19, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 %64(ptr noundef %0, i32 noundef 0) #10
  br label %68

68:                                               ; preds = %66, %61
  br i1 %62, label %69, label %71

69:                                               ; preds = %68
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %63) #11
  br label %71

71:                                               ; preds = %69, %68
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4) #10
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_sleep(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0013_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca i8, align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca i8, align 1
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = udiv i32 %31, 1000
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #10
  store i8 0, ptr %27, align 1, !annotation !8
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %1
  %39 = load ptr, ptr %29, align 4
  %40 = icmp ult i32 %31, 300001000
  %41 = zext i1 %40 to i32
  %42 = tail call i32 %36(ptr noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef %41) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %466

44:                                               ; preds = %38, %1
  %45 = getelementptr inbounds %struct.fc0013_priv, ptr %29, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 2
  %48 = select i1 %47, i32 18000, i32 14400
  %49 = icmp eq i8 %46, 0
  %50 = select i1 %49, i32 13500, i32 %48
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = tail call i32 %52(ptr noundef %0, i32 noundef 1) #10
  br label %56

56:                                               ; preds = %54, %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #10
  store i8 0, ptr %26, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #10
  store i8 29, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #10
  %57 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %57, i8 0, i32 16, i1 false) #10, !annotation !8
  %58 = getelementptr inbounds %struct.fc0013_priv, ptr %29, i32 0, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %25, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 1, ptr %57, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %26, ptr %66, align 4
  %67 = load ptr, ptr %29, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %25, i32 noundef 2) #10
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = load i8, ptr %24, align 1
  %72 = zext i8 %71 to i32
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %72) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #10
  br label %466

74:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #10
  %75 = load i8, ptr %26, align 1
  %76 = and i8 %75, -29
  store i8 %76, ptr %26, align 1
  %77 = icmp ult i32 %31, 177501000
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = or i8 %75, 28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 29, ptr %22, align 2
  %80 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %79, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %81 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %81, align 4, !annotation !8
  %82 = load i8, ptr %58, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %23, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %85, align 4
  %86 = load ptr, ptr %29, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %23, i32 noundef 1) #10
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = zext i8 %79 to i32
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %89, %78
  %93 = phi i32 [ -121, %89 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  br label %166

94:                                               ; preds = %74
  %95 = icmp ult i32 %31, 184501000
  br i1 %95, label %96, label %112

96:                                               ; preds = %94
  %97 = or i8 %76, 24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 29, ptr %20, align 2
  %98 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %97, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %99 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %99, align 4, !annotation !8
  %100 = load i8, ptr %58, align 4
  %101 = zext i8 %100 to i16
  store i16 %101, ptr %21, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %102, align 2
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %103, align 4
  %104 = load ptr, ptr %29, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %21, i32 noundef 1) #10
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  %108 = zext i8 %97 to i32
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %108) #11
  br label %110

110:                                              ; preds = %107, %96
  %111 = phi i32 [ -121, %107 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  br label %166

112:                                              ; preds = %94
  %113 = icmp ult i32 %31, 191501000
  br i1 %113, label %114, label %130

114:                                              ; preds = %112
  %115 = or i8 %76, 20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 29, ptr %18, align 2
  %116 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %115, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %117 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %117, align 4, !annotation !8
  %118 = load i8, ptr %58, align 4
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %19, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %120, align 2
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %121, align 4
  %122 = load ptr, ptr %29, align 4
  %123 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %19, i32 noundef 1) #10
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = zext i8 %115 to i32
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %126) #11
  br label %128

128:                                              ; preds = %125, %114
  %129 = phi i32 [ -121, %125 ], [ 0, %114 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  br label %166

130:                                              ; preds = %112
  %131 = icmp ult i32 %31, 198501000
  br i1 %131, label %132, label %148

132:                                              ; preds = %130
  %133 = or i8 %76, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 29, ptr %16, align 2
  %134 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %133, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %135 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %135, align 4, !annotation !8
  %136 = load i8, ptr %58, align 4
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %17, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %138, align 2
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %139, align 4
  %140 = load ptr, ptr %29, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %17, i32 noundef 1) #10
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %146, label %143

143:                                              ; preds = %132
  %144 = zext i8 %133 to i32
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %144) #11
  br label %146

146:                                              ; preds = %143, %132
  %147 = phi i32 [ -121, %143 ], [ 0, %132 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  br label %166

148:                                              ; preds = %130
  %149 = icmp ult i32 %31, 205501000
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = or i8 %76, 12
  %152 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext %151) #10
  br label %166

153:                                              ; preds = %148
  %154 = icmp ult i32 %31, 219501000
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = or i8 %76, 8
  %157 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext %156) #10
  br label %166

158:                                              ; preds = %153
  %159 = icmp ult i32 %31, 300000000
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = or i8 %76, 4
  %162 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext %161) #10
  br label %166

163:                                              ; preds = %158
  %164 = or i8 %75, 28
  %165 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext %164) #10
  br label %166

166:                                              ; preds = %163, %160, %155, %150, %146, %128, %110, %92
  %167 = phi i32 [ %93, %92 ], [ %111, %110 ], [ %129, %128 ], [ %147, %146 ], [ %152, %150 ], [ %157, %155 ], [ %162, %160 ], [ %165, %163 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %466

169:                                              ; preds = %166
  %170 = icmp ult i32 %31, 300000000
  br i1 %170, label %171, label %211

171:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 7, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %172 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %172, i8 0, i32 16, i1 false) #10, !annotation !8
  %173 = load i8, ptr %58, align 4
  %174 = zext i8 %173 to i16
  store i16 %174, ptr %15, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %175, align 2
  store i16 1, ptr %172, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %176, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %174, ptr %177, align 4
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %178, align 2
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %179, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %27, ptr %180, align 4
  %181 = load ptr, ptr %29, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %15, i32 noundef 2) #10
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %188, label %184

184:                                              ; preds = %171
  %185 = load i8, ptr %14, align 1
  %186 = zext i8 %185 to i32
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %186) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  br label %466

188:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  %189 = load i8, ptr %27, align 1
  %190 = or i8 %189, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 7, ptr %12, align 2
  %191 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %190, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %192 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %192, align 4, !annotation !8
  %193 = load i8, ptr %58, align 4
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %13, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %196, align 4
  %197 = load ptr, ptr %29, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %13, i32 noundef 1) #10
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %188
  %201 = zext i8 %190 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef %201) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  br label %466

203:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %204 = call fastcc i32 @fc0013_readreg(ptr noundef %29, i8 noundef zeroext 20, ptr noundef nonnull %27)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %466

206:                                              ; preds = %203
  %207 = load i8, ptr %27, align 1
  %208 = and i8 %207, 31
  %209 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 20, i8 noundef zeroext %208)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %295, label %466

211:                                              ; preds = %169
  %212 = icmp ult i32 %31, 862001000
  br i1 %212, label %213, label %254

213:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 7, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %214 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %214, i8 0, i32 16, i1 false) #10, !annotation !8
  %215 = load i8, ptr %58, align 4
  %216 = zext i8 %215 to i16
  store i16 %216, ptr %11, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %217, align 2
  store i16 1, ptr %214, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %218, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %216, ptr %219, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %220, align 2
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %221, align 4
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %27, ptr %222, align 4
  %223 = load ptr, ptr %29, align 4
  %224 = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %11, i32 noundef 2) #10
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %230, label %226

226:                                              ; preds = %213
  %227 = load i8, ptr %10, align 1
  %228 = zext i8 %227 to i32
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %228) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  br label %466

230:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  %231 = load i8, ptr %27, align 1
  %232 = and i8 %231, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 7, ptr %8, align 2
  %233 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %232, ptr %233, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %234 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %234, align 4, !annotation !8
  %235 = load i8, ptr %58, align 4
  %236 = zext i8 %235 to i16
  store i16 %236, ptr %9, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %237, align 2
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %238, align 4
  %239 = load ptr, ptr %29, align 4
  %240 = call i32 @i2c_transfer(ptr noundef %239, ptr noundef nonnull %9, i32 noundef 1) #10
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %245, label %242

242:                                              ; preds = %230
  %243 = zext i8 %232 to i32
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef %243) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  br label %466

245:                                              ; preds = %230
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  %246 = call fastcc i32 @fc0013_readreg(ptr noundef %29, i8 noundef zeroext 20, ptr noundef nonnull %27)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %466

248:                                              ; preds = %245
  %249 = load i8, ptr %27, align 1
  %250 = and i8 %249, 31
  %251 = or i8 %250, 64
  %252 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 20, i8 noundef zeroext %251)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %309, label %466

254:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 7, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %255 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %255, i8 0, i32 16, i1 false) #10, !annotation !8
  %256 = load i8, ptr %58, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %7, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %258, align 2
  store i16 1, ptr %255, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %259, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %257, ptr %260, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %261, align 2
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %27, ptr %263, align 4
  %264 = load ptr, ptr %29, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %7, i32 noundef 2) #10
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %271, label %267

267:                                              ; preds = %254
  %268 = load i8, ptr %6, align 1
  %269 = zext i8 %268 to i32
  %270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %269) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %466

271:                                              ; preds = %254
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %272 = load i8, ptr %27, align 1
  %273 = and i8 %272, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 7, ptr %4, align 2
  %274 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %273, ptr %274, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %275 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %275, align 4, !annotation !8
  %276 = load i8, ptr %58, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %5, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %279, align 4
  %280 = load ptr, ptr %29, align 4
  %281 = call i32 @i2c_transfer(ptr noundef %280, ptr noundef nonnull %5, i32 noundef 1) #10
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %286, label %283

283:                                              ; preds = %271
  %284 = zext i8 %273 to i32
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef %284) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %466

286:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %287 = call fastcc i32 @fc0013_readreg(ptr noundef %29, i8 noundef zeroext 20, ptr noundef nonnull %27)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %466

289:                                              ; preds = %286
  %290 = load i8, ptr %27, align 1
  %291 = and i8 %290, 31
  %292 = or i8 %291, 32
  %293 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 20, i8 noundef zeroext %292)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %314, label %466

295:                                              ; preds = %206
  %296 = icmp ult i32 %31, 37084000
  br i1 %296, label %317, label %297

297:                                              ; preds = %295
  %298 = icmp ult i32 %31, 55625000
  br i1 %298, label %317, label %299

299:                                              ; preds = %297
  %300 = icmp ult i32 %31, 74167000
  br i1 %300, label %317, label %301

301:                                              ; preds = %299
  %302 = icmp ult i32 %31, 111250000
  br i1 %302, label %317, label %303

303:                                              ; preds = %301
  %304 = icmp ult i32 %31, 148334000
  br i1 %304, label %317, label %305

305:                                              ; preds = %303
  %306 = icmp ult i32 %31, 222500000
  br i1 %306, label %317, label %307

307:                                              ; preds = %305
  %308 = icmp ult i32 %31, 296667000
  br i1 %308, label %317, label %311

309:                                              ; preds = %248
  %310 = icmp ult i32 %31, 445000000
  br i1 %310, label %311, label %312

311:                                              ; preds = %309, %307
  br label %317

312:                                              ; preds = %309
  %313 = icmp ult i32 %31, 593334000
  br i1 %313, label %317, label %316

314:                                              ; preds = %289
  %315 = icmp ult i32 %31, 950000000
  br i1 %315, label %316, label %317

316:                                              ; preds = %314, %312
  br label %317

317:                                              ; preds = %316, %314, %312, %311, %307, %305, %303, %301, %299, %297, %295
  %318 = phi i8 [ 39, %311 ], [ 23, %316 ], [ -121, %295 ], [ 7, %297 ], [ 71, %299 ], [ -121, %301 ], [ 39, %303 ], [ 71, %305 ], [ 23, %307 ], [ 15, %312 ], [ 15, %314 ]
  %319 = phi i8 [ 2, %311 ], [ 2, %316 ], [ 0, %295 ], [ 2, %297 ], [ 0, %299 ], [ 2, %301 ], [ 0, %303 ], [ 2, %305 ], [ 0, %307 ], [ 0, %312 ], [ 2, %314 ]
  %320 = phi i8 [ 0, %311 ], [ 0, %316 ], [ 0, %295 ], [ 4, %297 ], [ 0, %299 ], [ 0, %301 ], [ 0, %303 ], [ 0, %305 ], [ 0, %307 ], [ 0, %312 ], [ 0, %314 ]
  %321 = phi i32 [ 8, %311 ], [ 4, %316 ], [ 96, %295 ], [ 64, %297 ], [ 48, %299 ], [ 32, %301 ], [ 24, %303 ], [ 16, %305 ], [ 12, %307 ], [ 6, %312 ], [ 2, %314 ]
  %322 = mul nuw nsw i32 %321, %32
  %323 = icmp ugt i32 %322, 3059999
  %324 = or i8 %319, 8
  %325 = select i1 %323, i8 %324, i8 %319
  %326 = icmp ugt i32 %31, 44999999
  br i1 %326, label %327, label %347

327:                                              ; preds = %317
  %328 = udiv i32 %322, %50
  %329 = mul nuw nsw i32 %328, %50
  %330 = sub nsw i32 %322, %329
  %331 = lshr exact i32 %50, 1
  %332 = icmp uge i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = add nuw nsw i32 %328, %333
  %335 = lshr i32 %334, 3
  %336 = mul nuw nsw i32 %335, 248
  %337 = add nuw nsw i32 %336, %334
  %338 = and i32 %337, 254
  %339 = icmp eq i32 %338, 0
  %340 = trunc i32 %337 to i8
  br i1 %339, label %341, label %345

341:                                              ; preds = %327
  %342 = add i8 %340, 8
  %343 = trunc i32 %335 to i8
  %344 = add i8 %343, -1
  br label %347

345:                                              ; preds = %327
  %346 = trunc i32 %335 to i8
  br label %347

347:                                              ; preds = %345, %341, %317
  %348 = phi i8 [ %342, %341 ], [ %340, %345 ], [ 6, %317 ]
  %349 = phi i8 [ %344, %341 ], [ %346, %345 ], [ 17, %317 ]
  %350 = urem i32 %322, %50
  %351 = shl nuw nsw i32 %350, 15
  %352 = udiv i32 %351, %50
  %353 = icmp ugt i32 %352, 16383
  %354 = add nuw nsw i32 %352, 32768
  %355 = select i1 %353, i32 %354, i32 %352
  %356 = lshr i32 %355, 8
  %357 = trunc i32 %356 to i8
  %358 = trunc i32 %355 to i8
  %359 = icmp eq i32 %34, 3
  br i1 %359, label %360, label %368

360:                                              ; preds = %347
  %361 = or i8 %325, 32
  %362 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %363 = load i32, ptr %362, align 4
  switch i32 %363, label %370 [
    i32 6000000, label %364
    i32 7000000, label %366
  ]

364:                                              ; preds = %360
  %365 = or i8 %325, -96
  br label %370

366:                                              ; preds = %360
  %367 = or i8 %325, 96
  br label %370

368:                                              ; preds = %347
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fc0013_set_params) #11
  br label %477

370:                                              ; preds = %366, %364, %360
  %371 = phi i8 [ %361, %360 ], [ %367, %366 ], [ %365, %364 ]
  %372 = getelementptr inbounds i8, ptr %2, i32 1
  %373 = getelementptr inbounds i8, ptr %3, i32 4
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 1, ptr %2, align 2
  store i8 %348, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %376 = load i8, ptr %58, align 4
  %377 = zext i8 %376 to i16
  store i16 %377, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %378 = load ptr, ptr %29, align 4
  %379 = call i32 @i2c_transfer(ptr noundef %378, ptr noundef nonnull %3, i32 noundef 1) #10
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %386, label %381

381:                                              ; preds = %410, %404, %398, %392, %386, %370
  %382 = phi i32 [ 1, %370 ], [ 2, %386 ], [ 3, %392 ], [ 4, %398 ], [ 5, %404 ], [ 6, %410 ]
  %383 = phi i8 [ %348, %370 ], [ %349, %386 ], [ %357, %392 ], [ %358, %398 ], [ %318, %404 ], [ %371, %410 ]
  %384 = zext i8 %383 to i32
  %385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %382, i32 noundef %384) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %466

386:                                              ; preds = %370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 2, ptr %2, align 2
  store i8 %349, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %387 = load i8, ptr %58, align 4
  %388 = zext i8 %387 to i16
  store i16 %388, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %389 = load ptr, ptr %29, align 4
  %390 = call i32 @i2c_transfer(ptr noundef %389, ptr noundef nonnull %3, i32 noundef 1) #10
  %391 = icmp eq i32 %390, 1
  br i1 %391, label %392, label %381

392:                                              ; preds = %386
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 3, ptr %2, align 2
  store i8 %357, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %393 = load i8, ptr %58, align 4
  %394 = zext i8 %393 to i16
  store i16 %394, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %395 = load ptr, ptr %29, align 4
  %396 = call i32 @i2c_transfer(ptr noundef %395, ptr noundef nonnull %3, i32 noundef 1) #10
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %381

398:                                              ; preds = %392
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 4, ptr %2, align 2
  store i8 %358, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %399 = load i8, ptr %58, align 4
  %400 = zext i8 %399 to i16
  store i16 %400, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %401 = load ptr, ptr %29, align 4
  %402 = call i32 @i2c_transfer(ptr noundef %401, ptr noundef nonnull %3, i32 noundef 1) #10
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %404, label %381

404:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 5, ptr %2, align 2
  store i8 %318, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %405 = load i8, ptr %58, align 4
  %406 = zext i8 %405 to i16
  store i16 %406, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %407 = load ptr, ptr %29, align 4
  %408 = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %3, i32 noundef 1) #10
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %381

410:                                              ; preds = %404
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 6, ptr %2, align 2
  store i8 %371, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %373, align 4, !annotation !8
  %411 = load i8, ptr %58, align 4
  %412 = zext i8 %411 to i16
  store i16 %412, ptr %3, align 4
  store i16 0, ptr %374, align 2
  store i16 2, ptr %373, align 4
  store ptr %2, ptr %375, align 4
  %413 = load ptr, ptr %29, align 4
  %414 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %3, i32 noundef 1) #10
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %381

416:                                              ; preds = %410
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %417 = call fastcc i32 @fc0013_readreg(ptr noundef %29, i8 noundef zeroext 17, ptr noundef nonnull %27)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %466

419:                                              ; preds = %416
  %420 = load i8, ptr %27, align 1
  %421 = and i8 %420, -5
  %422 = or i8 %421, %320
  %423 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 17, i8 noundef zeroext %422)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %466

425:                                              ; preds = %419
  %426 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext -128)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %466

428:                                              ; preds = %425
  %429 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext 0)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %466

431:                                              ; preds = %428
  %432 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext 0)
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %466

434:                                              ; preds = %431
  call void @msleep(i32 noundef 10) #10
  %435 = call fastcc i32 @fc0013_readreg(ptr noundef %29, i8 noundef zeroext 14, ptr noundef nonnull %27)
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %466

437:                                              ; preds = %434
  %438 = load i8, ptr %27, align 1
  %439 = and i8 %438, 63
  store i8 %439, ptr %27, align 1
  br i1 %323, label %440, label %449

440:                                              ; preds = %437
  %441 = icmp ugt i8 %439, 60
  br i1 %441, label %442, label %460

442:                                              ; preds = %440
  %443 = and i8 %371, -9
  %444 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 6, i8 noundef zeroext %443)
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %460

446:                                              ; preds = %442
  %447 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext -128)
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %458, label %460

449:                                              ; preds = %437
  %450 = icmp ult i8 %439, 2
  br i1 %450, label %451, label %460

451:                                              ; preds = %449
  %452 = or i8 %371, 8
  %453 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 6, i8 noundef zeroext %452)
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %451
  %456 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext -128)
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %455, %446
  %459 = call fastcc i32 @fc0013_writereg(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %460

460:                                              ; preds = %458, %455, %451, %449, %446, %442, %440
  %461 = phi i32 [ %447, %446 ], [ 0, %440 ], [ %456, %455 ], [ 0, %449 ], [ %444, %442 ], [ %453, %451 ], [ %459, %458 ]
  %462 = load i32, ptr %30, align 4
  %463 = getelementptr inbounds %struct.fc0013_priv, ptr %29, i32 0, i32 4
  store i32 %462, ptr %463, align 4
  %464 = load i32, ptr %362, align 4
  %465 = getelementptr inbounds %struct.fc0013_priv, ptr %29, i32 0, i32 5
  store i32 %464, ptr %465, align 4
  br label %466

466:                                              ; preds = %460, %434, %431, %428, %425, %419, %416, %381, %289, %286, %283, %267, %248, %245, %242, %226, %206, %203, %200, %184, %166, %70, %38
  %467 = phi i32 [ %42, %38 ], [ %167, %166 ], [ -121, %184 ], [ -121, %200 ], [ %204, %203 ], [ %209, %206 ], [ -121, %381 ], [ %417, %416 ], [ %423, %419 ], [ %435, %434 ], [ %461, %460 ], [ -121, %226 ], [ -121, %242 ], [ %246, %245 ], [ %252, %248 ], [ -121, %267 ], [ -121, %283 ], [ %287, %286 ], [ %293, %289 ], [ -121, %70 ], [ %432, %431 ], [ %429, %428 ], [ %426, %425 ]
  %468 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %473, label %471

471:                                              ; preds = %466
  %472 = call i32 %469(ptr noundef %0, i32 noundef 0) #10
  br label %473

473:                                              ; preds = %471, %466
  %474 = icmp eq i32 %467, 0
  br i1 %474, label %477, label %475

475:                                              ; preds = %473
  %476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.fc0013_set_params, i32 noundef %467) #11
  br label %477

477:                                              ; preds = %475, %473, %368
  %478 = phi i32 [ -22, %368 ], [ %467, %475 ], [ 0, %473 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #10
  ret i32 %478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0013_priv, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0013_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0013_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0013_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0013_get_rf_strength(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef 1) #10
  br label %17

17:                                               ; preds = %15, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 19, ptr %7, align 2
  %18 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %19 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.fc0013_priv, ptr %11, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %24, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %8, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 19, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  br label %95

30:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 19, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %31 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #10, !annotation !8
  %32 = load i8, ptr %20, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %6, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %39, align 4
  %40 = load ptr, ptr %11, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %6, i32 noundef 2) #10
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i8, ptr %5, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %45) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %95

47:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %48 = load i8, ptr %9, align 1
  %49 = zext i8 %48 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 20, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %50 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %50, i8 0, i32 16, i1 false) #10, !annotation !8
  %51 = load i8, ptr %20, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %4, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %53, align 2
  store i16 1, ptr %50, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %52, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %9, ptr %58, align 4
  %59 = load ptr, ptr %11, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %4, i32 noundef 2) #10
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load i8, ptr %3, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %64) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %95

66:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %67 = load i8, ptr %9, align 1
  %68 = and i8 %67, 31
  %69 = zext i8 %68 to i32
  %70 = load ptr, ptr %12, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 %70(ptr noundef %0, i32 noundef 0) #10
  br label %74

74:                                               ; preds = %72, %66
  %75 = icmp ult i8 %68, 24
  br i1 %75, label %76, label %104

76:                                               ; preds = %74
  %77 = getelementptr [24 x i32], ptr @fc0013_get_rf_strength.fc0013_lna_gain_table, i32 0, i32 %69
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %49, 5
  %80 = add nuw i32 %79, 2147483641
  %81 = and i32 %49, 31
  %82 = sub nuw i32 %80, %81
  %83 = shl i32 %82, 1
  %84 = add nsw i32 %83, -4
  %85 = sdiv i32 %78, -10
  %86 = add i32 %84, %85
  %87 = icmp sgt i32 %86, 44
  br i1 %87, label %100, label %88

88:                                               ; preds = %76
  %89 = icmp slt i32 %86, -95
  br i1 %89, label %100, label %90

90:                                               ; preds = %88
  %91 = trunc i32 %86 to i16
  %92 = mul nsw i16 %91, 255
  %93 = add i16 %92, 24225
  %94 = udiv i16 %93, 140
  br label %100

95:                                               ; preds = %62, %43, %28
  %96 = load ptr, ptr %12, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = call i32 %96(ptr noundef %0, i32 noundef 0) #10
  br label %104

100:                                              ; preds = %90, %88, %76
  %101 = phi i16 [ %94, %90 ], [ 255, %76 ], [ 0, %88 ]
  %102 = shl nuw i16 %101, 8
  %103 = or i16 %102, %101
  store i16 %103, ptr %1, align 2
  br label %107

104:                                              ; preds = %98, %95, %74
  %105 = phi i32 [ -1, %74 ], [ -121, %95 ], [ -121, %98 ]
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.fc0013_get_rf_strength, i32 noundef %105) #11
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i32 [ %105, %104 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
