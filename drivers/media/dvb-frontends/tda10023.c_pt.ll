; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda10023.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10023.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10023_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10023_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10023_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qam_params = type { i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda10023_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8, i32, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }

@tda10023_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10023 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 65024 }, [8 x i8] c"\01\12\00\00\00\00\00\00", ptr null, ptr @tda10023_release, ptr null, ptr @tda10023_init, ptr @tda10023_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10023_set_parameters, ptr null, ptr @tda10023_get_frontend, ptr @tda10023_read_status, ptr @tda10023_read_ber, ptr @tda10023_read_signal_strength, ptr @tda10023_read_snr, ptr @tda10023_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10023_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__UNIQUE_ID_description249 = internal constant [54 x i8] c"description=Philips TDA10023 DVB-C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [33 x i8] c"author=Georg Acher, Hartmut Birr\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10023_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10023_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10023_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10023_attach to i32), ptr @__kstrtab_tda10023_attach, ptr @__kstrtabns_tda10023_attach }, section "___ksymtab+tda10023_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [83 x i8] c"\013DVB: TDA10023(%d): %s, writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.tda10023_writereg = private unnamed_addr constant [18 x i8] c"tda10023_writereg\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\013DVB: TDA10023(%d): %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.tda10023_readreg = private unnamed_addr constant [17 x i8] c"tda10023_readreg\00", align 1
@tda10023_set_parameters.qam_params = internal unnamed_addr constant [6 x %struct.qam_params] [%struct.qam_params { i8 20, i8 120, i8 -116, i8 -106, i8 120, i8 76 }, %struct.qam_params { i8 0, i8 -121, i8 -94, i8 -111, i8 -116, i8 87 }, %struct.qam_params { i8 4, i8 100, i8 116, i8 -106, i8 -116, i8 87 }, %struct.qam_params { i8 8, i8 70, i8 67, i8 106, i8 106, i8 68 }, %struct.qam_params { i8 12, i8 54, i8 52, i8 126, i8 120, i8 76 }, %struct.qam_params { i8 16, i8 38, i8 35, i8 108, i8 92, i8 60 }], align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"tda10023: lock tuner fails\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"tda10023: unlock tuner fails\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tda10023_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10023_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1064) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %99, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  store ptr %1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 0, ptr %7, align 2
  %14 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 51, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = load i8, ptr %0, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %8, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %31, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ -1, %22 ]
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %29, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 0, i32 noundef 51, i32 noundef %20) #10
  br label %31

31:                                               ; preds = %28, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 26, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %32 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %32, i8 0, i32 16, i1 false) #9, !annotation !8
  %33 = load ptr, ptr %13, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %6, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %36, align 2
  store i16 1, ptr %32, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %39 = load i8, ptr %33, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %43, align 4
  %44 = load ptr, ptr %10, align 8
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 2) #9
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %56, label %47

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ -1, %47 ]
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %54, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 26, i32 noundef %45) #10
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %58 = and i8 %57, -16
  %59 = icmp eq i8 %58, 112
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2
  %62 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %62, ptr noundef nonnull align 4 dereferenceable(544) @tda10023_ops, i32 544, i1 false)
  %63 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 3
  store i8 %2, ptr %63, align 8
  %64 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 4
  store i8 35, ptr %64, align 1
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr inbounds %struct.tda10023_config, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 5
  br i1 %68, label %82, label %70

70:                                               ; preds = %60
  store i32 %67, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tda10023_config, ptr %65, i32 0, i32 3
  %72 = load i8, ptr %71, align 4
  %73 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 6
  store i8 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.tda10023_config, ptr %65, i32 0, i32 4
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 7
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.tda10023_config, ptr %65, i32 0, i32 5
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %72 to i32
  %80 = mul i32 %67, %79
  %81 = zext i8 %75 to i32
  br label %85

82:                                               ; preds = %60
  store i32 28920000, ptr %69, align 4
  %83 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 6
  store i8 8, ptr %83, align 8
  %84 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 7
  store i8 4, ptr %84, align 1
  br label %85

85:                                               ; preds = %82, %70
  %86 = phi i32 [ 4, %82 ], [ %81, %70 ]
  %87 = phi i8 [ 1, %82 ], [ %78, %70 ]
  %88 = phi i32 [ 231360000, %82 ], [ %80, %70 ]
  %89 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 8
  store i8 %87, ptr %89, align 2
  %90 = zext i8 %87 to i32
  %91 = mul nuw nsw i32 %86, %90
  %92 = udiv i32 %88, %91
  %93 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 9
  store i32 %92, ptr %93, align 4
  %94 = lshr i32 %92, 7
  %95 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 1, i32 0, i32 5
  store i32 %94, ptr %95, align 4
  %96 = lshr i32 %92, 3
  %97 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 1, i32 0, i32 6
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 3
  store ptr %10, ptr %98, align 8
  br label %100

99:                                               ; preds = %56, %3
  call void @kfree(ptr noundef %10) #9
  br label %100

100:                                              ; preds = %99, %85
  %101 = phi ptr [ null, %99 ], [ %61, %85 ]
  ret ptr %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda10023_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [126 x i8], align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 126, ptr nonnull %2) #9
  %5 = getelementptr inbounds i8, ptr %2, i32 89
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(126) %5, i8 0, i32 37, i1 false), !annotation !8
  store i8 42, ptr %2, align 1
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -1, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 2, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 -1, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 100, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds i8, ptr %2, i32 6
  store i8 42, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %2, i32 7
  store i8 -1, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %2, i32 8
  store i8 3, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %2, i32 9
  store i8 -1, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %2, i32 10
  store i8 100, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %2, i32 11
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %2, i32 12
  store i8 40, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %2, i32 13
  store i8 -1, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %2, i32 14
  %20 = getelementptr inbounds %struct.tda10023_state, ptr %4, i32 0, i32 6
  %21 = load i8, ptr %20, align 4
  %22 = add i8 %21, -1
  store i8 %22, ptr %19, align 1
  %23 = getelementptr inbounds i8, ptr %2, i32 15
  store i8 41, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %2, i32 16
  store i8 -1, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %2, i32 17
  %26 = getelementptr inbounds %struct.tda10023_state, ptr %4, i32 0, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = shl i8 %27, 6
  %29 = add i8 %28, -64
  %30 = getelementptr inbounds %struct.tda10023_state, ptr %4, i32 0, i32 8
  %31 = load i8, ptr %30, align 2
  %32 = add i8 %31, -1
  %33 = or i8 %29, %32
  store i8 %33, ptr %25, align 1
  %34 = getelementptr inbounds i8, ptr %2, i32 18
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %2, i32 19
  store i8 -1, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %2, i32 20
  store i8 35, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %2, i32 21
  store i8 42, ptr %37, align 1
  %38 = getelementptr inbounds i8, ptr %2, i32 22
  store i8 -1, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %2, i32 23
  store i8 8, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %2, i32 24
  store i8 -1, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %2, i32 25
  store i8 100, ptr %41, align 1
  %42 = getelementptr inbounds i8, ptr %2, i32 26
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds i8, ptr %2, i32 27
  store i8 31, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %2, i32 28
  store i8 -1, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %2, i32 29
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %2, i32 30
  store i8 -1, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %2, i32 31
  store i8 100, ptr %47, align 1
  %48 = getelementptr inbounds i8, ptr %2, i32 32
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds i8, ptr %2, i32 33
  store i8 -26, ptr %49, align 1
  %50 = getelementptr inbounds i8, ptr %2, i32 34
  store i8 12, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %2, i32 35
  store i8 4, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %2, i32 36
  store i8 16, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %2, i32 37
  store i8 -64, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %2, i32 38
  store i8 -128, ptr %54, align 1
  %55 = getelementptr inbounds i8, ptr %2, i32 39
  store i8 14, ptr %55, align 1
  %56 = getelementptr inbounds i8, ptr %2, i32 40
  store i8 -1, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %2, i32 41
  store i8 -126, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %2, i32 42
  store i8 3, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %2, i32 43
  store i8 8, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %2, i32 44
  store i8 8, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %2, i32 45
  store i8 46, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %2, i32 46
  store i8 -65, ptr %62, align 1
  %63 = getelementptr inbounds i8, ptr %2, i32 47
  store i8 48, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %2, i32 48
  store i8 1, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %2, i32 49
  store i8 -1, ptr %65, align 1
  %66 = getelementptr inbounds i8, ptr %2, i32 50
  store i8 48, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %2, i32 51
  store i8 30, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %2, i32 52
  store i8 -124, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %2, i32 53
  store i8 -124, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %2, i32 54
  store i8 27, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %2, i32 55
  store i8 -1, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %2, i32 56
  store i8 -56, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %2, i32 57
  store i8 59, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %2, i32 58
  store i8 -1, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %2, i32 59
  store i8 -1, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %2, i32 60
  store i8 60, ptr %76, align 1
  %77 = getelementptr inbounds i8, ptr %2, i32 61
  store i8 -1, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %2, i32 62
  store i8 0, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %2, i32 63
  store i8 52, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %2, i32 64
  store i8 -1, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %2, i32 65
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %2, i32 66
  store i8 53, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %2, i32 67
  store i8 -1, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %2, i32 68
  store i8 -1, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %2, i32 69
  store i8 54, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %2, i32 70
  store i8 -1, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %2, i32 71
  store i8 0, ptr %87, align 1
  %88 = getelementptr inbounds i8, ptr %2, i32 72
  store i8 6, ptr %88, align 1
  %89 = getelementptr inbounds i8, ptr %2, i32 73
  store i8 -1, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %2, i32 74
  store i8 127, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %2, i32 75
  store i8 28, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %2, i32 76
  store i8 48, ptr %92, align 1
  %93 = getelementptr inbounds i8, ptr %2, i32 77
  store i8 48, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %2, i32 78
  store i8 55, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %2, i32 79
  store i8 -1, ptr %95, align 1
  %96 = getelementptr inbounds i8, ptr %2, i32 80
  store i8 -10, ptr %96, align 1
  %97 = getelementptr inbounds i8, ptr %2, i32 81
  store i8 56, ptr %97, align 1
  %98 = getelementptr inbounds i8, ptr %2, i32 82
  store i8 -1, ptr %98, align 1
  %99 = getelementptr inbounds i8, ptr %2, i32 83
  store i8 -1, ptr %99, align 1
  %100 = getelementptr inbounds i8, ptr %2, i32 84
  store i8 2, ptr %100, align 1
  %101 = getelementptr inbounds i8, ptr %2, i32 85
  store i8 -1, ptr %101, align 1
  %102 = getelementptr inbounds i8, ptr %2, i32 86
  store i8 -109, ptr %102, align 1
  %103 = getelementptr inbounds i8, ptr %2, i32 87
  store i8 45, ptr %103, align 1
  %104 = getelementptr inbounds i8, ptr %2, i32 88
  store i8 -1, ptr %104, align 1
  %105 = getelementptr inbounds i8, ptr %2, i32 89
  store i8 -10, ptr %105, align 1
  %106 = getelementptr inbounds i8, ptr %2, i32 90
  store i8 4, ptr %106, align 1
  %107 = getelementptr inbounds i8, ptr %2, i32 91
  store i8 16, ptr %107, align 1
  %108 = getelementptr inbounds i8, ptr %2, i32 92
  store i8 0, ptr %108, align 1
  %109 = getelementptr inbounds i8, ptr %2, i32 93
  store i8 18, ptr %109, align 1
  %110 = getelementptr inbounds i8, ptr %2, i32 94
  store i8 -1, ptr %110, align 1
  %111 = getelementptr inbounds i8, ptr %2, i32 95
  store i8 -95, ptr %111, align 1
  %112 = getelementptr inbounds i8, ptr %2, i32 96
  store i8 43, ptr %112, align 1
  %113 = getelementptr inbounds i8, ptr %2, i32 97
  store i8 1, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %2, i32 98
  store i8 -95, ptr %114, align 1
  %115 = getelementptr inbounds i8, ptr %2, i32 99
  store i8 32, ptr %115, align 1
  %116 = getelementptr inbounds i8, ptr %2, i32 100
  store i8 -1, ptr %116, align 1
  %117 = getelementptr inbounds i8, ptr %2, i32 101
  store i8 4, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %2, i32 102
  store i8 44, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %2, i32 103
  store i8 -1, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %2, i32 104
  store i8 13, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %2, i32 105
  store i8 -60, ptr %121, align 1
  %122 = getelementptr inbounds i8, ptr %2, i32 106
  store i8 -1, ptr %122, align 1
  %123 = getelementptr inbounds i8, ptr %2, i32 107
  store i8 0, ptr %123, align 1
  %124 = getelementptr inbounds i8, ptr %2, i32 108
  store i8 -61, ptr %124, align 1
  %125 = getelementptr inbounds i8, ptr %2, i32 109
  store i8 48, ptr %125, align 1
  %126 = getelementptr inbounds i8, ptr %2, i32 110
  store i8 0, ptr %126, align 1
  %127 = getelementptr inbounds i8, ptr %2, i32 111
  store i8 -75, ptr %127, align 1
  %128 = getelementptr inbounds i8, ptr %2, i32 112
  store i8 -1, ptr %128, align 1
  %129 = getelementptr inbounds i8, ptr %2, i32 113
  store i8 25, ptr %129, align 1
  %130 = getelementptr inbounds i8, ptr %2, i32 114
  store i8 0, ptr %130, align 1
  %131 = getelementptr inbounds i8, ptr %2, i32 115
  store i8 3, ptr %131, align 1
  %132 = getelementptr inbounds i8, ptr %2, i32 116
  store i8 1, ptr %132, align 1
  %133 = getelementptr inbounds i8, ptr %2, i32 117
  store i8 0, ptr %133, align 1
  %134 = getelementptr inbounds i8, ptr %2, i32 118
  store i8 3, ptr %134, align 1
  %135 = getelementptr inbounds i8, ptr %2, i32 119
  store i8 3, ptr %135, align 1
  %136 = getelementptr inbounds i8, ptr %2, i32 120
  store i8 -1, ptr %136, align 1
  %137 = getelementptr inbounds i8, ptr %2, i32 121
  store i8 100, ptr %137, align 1
  %138 = getelementptr inbounds i8, ptr %2, i32 122
  store i8 0, ptr %138, align 1
  %139 = getelementptr inbounds i8, ptr %2, i32 123
  store i8 -1, ptr %139, align 1
  %140 = getelementptr inbounds i8, ptr %2, i32 124
  store i8 -1, ptr %140, align 1
  %141 = getelementptr inbounds i8, ptr %2, i32 125
  store i8 -1, ptr %141, align 1
  %142 = getelementptr inbounds %struct.tda10023_state, ptr %4, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tda10023_config, ptr %143, i32 0, i32 7
  %145 = load i16, ptr %144, align 4
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %1
  %148 = trunc i16 %145 to i8
  store i8 %148, ptr %96, align 1
  %149 = load ptr, ptr %142, align 4
  %150 = getelementptr inbounds %struct.tda10023_config, ptr %149, i32 0, i32 7
  %151 = load i16, ptr %150, align 4
  %152 = lshr i16 %151, 8
  %153 = trunc i16 %152 to i8
  store i8 %153, ptr %99, align 1
  %154 = load ptr, ptr %142, align 4
  br label %155

155:                                              ; preds = %147, %1
  %156 = phi ptr [ %154, %147 ], [ %143, %1 ]
  %157 = getelementptr inbounds %struct.tda10023_config, ptr %156, i32 0, i32 6
  %158 = load i8, ptr %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  store i8 %158, ptr %111, align 1
  br label %161

161:                                              ; preds = %160, %155
  br label %162

162:                                              ; preds = %176, %161
  %163 = phi ptr [ %2, %161 ], [ %167, %176 ]
  %164 = getelementptr i8, ptr %163, i32 1
  %165 = load i8, ptr %163, align 1
  %166 = load i8, ptr %164, align 1
  %167 = getelementptr i8, ptr %163, i32 3
  %168 = icmp eq i8 %165, -1
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = icmp eq i8 %166, -1
  br i1 %170, label %177, label %171

171:                                              ; preds = %169
  %172 = zext i8 %166 to i32
  tail call void @msleep(i32 noundef %172) #9
  br label %176

173:                                              ; preds = %162
  %174 = getelementptr i8, ptr %163, i32 2
  %175 = load i8, ptr %174, align 1
  tail call fastcc void @tda10023_writebit(ptr noundef %4, i8 noundef zeroext %165, i8 noundef zeroext %166, i8 noundef zeroext %175) #9
  br label %176

176:                                              ; preds = %173, %171
  br label %162

177:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 126, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 27, ptr %4, align 2
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 2, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ -1, %19 ]
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %26, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 27, i32 noundef 2, i32 noundef %17) #10
  br label %28

28:                                               ; preds = %25, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %29 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -128, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = load ptr, ptr %10, align 4
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %35, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %41, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ -1, %39 ]
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %46, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 0, i32 noundef 128, i32 noundef %37) #10
  br label %48

48:                                               ; preds = %45, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  switch i32 %27, label %385 [
    i32 1, label %33
    i32 18, label %32
  ]

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %1
  %34 = phi i8 [ 3, %32 ], [ 2, %1 ]
  %35 = icmp ult i32 %29, 6
  br i1 %35, label %36, label %385

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef %0) #9
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 0) #9
  br label %47

47:                                               ; preds = %45, %40, %36
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, 10
  %53 = udiv i32 %52, 984
  %54 = icmp ugt i32 %53, %49
  br i1 %54, label %74, label %55

55:                                               ; preds = %47
  %56 = udiv i32 %52, 640
  %57 = icmp ugt i32 %56, %49
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = udiv i32 %52, 492
  %60 = icmp ugt i32 %59, %49
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = udiv i32 %52, 320
  %63 = icmp ugt i32 %62, %49
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = udiv i32 %52, 246
  %66 = icmp ugt i32 %65, %49
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = udiv i32 %52, 160
  %69 = icmp ugt i32 %68, %49
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = udiv i32 %52, 123
  %72 = icmp ugt i32 %71, %49
  %73 = select i1 %72, i8 -128, i8 0
  br label %74

74:                                               ; preds = %70, %67, %64, %61, %58, %55, %47
  %75 = phi i8 [ -128, %47 ], [ 0, %55 ], [ -128, %58 ], [ 0, %61 ], [ -128, %64 ], [ 0, %67 ], [ %73, %70 ]
  %76 = phi i32 [ 3, %47 ], [ 3, %55 ], [ 2, %58 ], [ 2, %61 ], [ 1, %64 ], [ 1, %67 ], [ 0, %70 ]
  %77 = or i32 %76, 24
  %78 = shl nuw i32 1, %77
  %79 = zext i32 %78 to i64
  %80 = zext i32 %49 to i64
  %81 = mul nuw nsw i64 %79, %80
  %82 = icmp ult i64 %81, 4294967296
  br i1 %82, label %83, label %92, !prof !9

83:                                               ; preds = %74
  %84 = trunc i64 %81 to i32
  %85 = udiv i32 %84, %51
  %86 = zext i32 %85 to i64
  %87 = trunc i32 %85 to i8
  %88 = lshr i64 %86, 8
  %89 = trunc i64 %88 to i8
  %90 = lshr i64 %86, 16
  %91 = trunc i64 %90 to i8
  br label %100

92:                                               ; preds = %74
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %51, i64 %81) #11, !srcloc !10
  %94 = extractvalue { i64, i64 } %93, 1
  %95 = trunc i64 %94 to i8
  %96 = lshr i64 %94, 8
  %97 = trunc i64 %96 to i8
  %98 = lshr i64 %94, 16
  %99 = trunc i64 %98 to i8
  br label %100

100:                                              ; preds = %92, %83
  %101 = phi i8 [ %97, %92 ], [ %89, %83 ]
  %102 = phi i8 [ %99, %92 ], [ %91, %83 ]
  %103 = phi i8 [ %95, %92 ], [ %87, %83 ]
  %104 = shl i32 %51, 4
  %105 = ashr i32 %104, %76
  %106 = lshr i32 %49, 1
  %107 = add i32 %105, %106
  %108 = udiv i32 %107, %49
  %109 = tail call i32 @llvm.smin.i32(i32 %108, i32 255) #9
  %110 = trunc i32 %76 to i8
  %111 = shl nuw i8 %110, 6
  tail call fastcc void @tda10023_writebit(ptr noundef %31, i8 noundef zeroext 3, i8 noundef zeroext -64, i8 noundef zeroext %111) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 10, ptr %24, align 2
  %112 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %103, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %113 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %113, align 4, !annotation !8
  %114 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %25, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %119, align 4
  %120 = load ptr, ptr %31, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %25, i32 noundef 1) #9
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %133, label %123

123:                                              ; preds = %100
  %124 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %128, %127 ], [ -1, %123 ]
  %131 = zext i8 %103 to i32
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %130, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 10, i32 noundef %131, i32 noundef %121) #10
  br label %133

133:                                              ; preds = %129, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 11, ptr %22, align 2
  %134 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %101, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %135 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %135, align 4, !annotation !8
  %136 = load ptr, ptr %114, align 4
  %137 = load i8, ptr %136, align 4
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %23, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %139, align 2
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %140, align 4
  %141 = load ptr, ptr %31, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %23, i32 noundef 1) #9
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %154, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %146, align 4
  br label %150

150:                                              ; preds = %148, %144
  %151 = phi i32 [ %149, %148 ], [ -1, %144 ]
  %152 = zext i8 %101 to i32
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %151, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 11, i32 noundef %152, i32 noundef %142) #10
  br label %154

154:                                              ; preds = %150, %133
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  %155 = and i8 %102, 31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 12, ptr %20, align 2
  %156 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %155, ptr %156, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %157 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %157, align 4, !annotation !8
  %158 = load ptr, ptr %114, align 4
  %159 = load i8, ptr %158, align 4
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %21, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %162, align 4
  %163 = load ptr, ptr %31, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %21, i32 noundef 1) #9
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %176, label %166

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %168, align 4
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ -1, %166 ]
  %174 = zext i8 %155 to i32
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %173, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 12, i32 noundef %174, i32 noundef %164) #10
  br label %176

176:                                              ; preds = %172, %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  %177 = trunc i32 %109 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 13, ptr %18, align 2
  %178 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %177, ptr %178, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %179 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %179, align 4, !annotation !8
  %180 = load ptr, ptr %114, align 4
  %181 = load i8, ptr %180, align 4
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %19, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %183, align 2
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %184, align 4
  %185 = load ptr, ptr %31, align 4
  %186 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %19, i32 noundef 1) #9
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %198, label %188

188:                                              ; preds = %176
  %189 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = load i32, ptr %190, align 4
  br label %194

194:                                              ; preds = %192, %188
  %195 = phi i32 [ %193, %192 ], [ -1, %188 ]
  %196 = and i32 %109, 255
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %195, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 13, i32 noundef %196, i32 noundef %186) #10
  br label %198

198:                                              ; preds = %194, %176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 61, ptr %16, align 2
  %199 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %75, ptr %199, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %200 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %200, align 4, !annotation !8
  %201 = load ptr, ptr %114, align 4
  %202 = load i8, ptr %201, align 4
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %17, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %205, align 4
  %206 = load ptr, ptr %31, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %17, i32 noundef 1) #9
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %219, label %209

209:                                              ; preds = %198
  %210 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %211, align 4
  br label %215

215:                                              ; preds = %213, %209
  %216 = phi i32 [ %214, %213 ], [ -1, %209 ]
  %217 = zext i8 %75 to i32
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %216, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 61, i32 noundef %217, i32 noundef %207) #10
  br label %219

219:                                              ; preds = %215, %198
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %220 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29
  %221 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29, i32 1
  %222 = load i8, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 5, ptr %14, align 2
  %223 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %222, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %224 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 0, ptr %224, align 4, !annotation !8
  %225 = load ptr, ptr %114, align 4
  %226 = load i8, ptr %225, align 4
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %15, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %228, align 2
  store i16 2, ptr %224, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %229, align 4
  %230 = load ptr, ptr %31, align 4
  %231 = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %15, i32 noundef 1) #9
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %243, label %233

233:                                              ; preds = %219
  %234 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = load i32, ptr %235, align 4
  br label %239

239:                                              ; preds = %237, %233
  %240 = phi i32 [ %238, %237 ], [ -1, %233 ]
  %241 = zext i8 %222 to i32
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %240, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 5, i32 noundef %241, i32 noundef %231) #10
  br label %243

243:                                              ; preds = %239, %219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %244 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29, i32 2
  %245 = load i8, ptr %244, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 8, ptr %12, align 2
  %246 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %245, ptr %246, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %247 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %247, align 4, !annotation !8
  %248 = load ptr, ptr %114, align 4
  %249 = load i8, ptr %248, align 4
  %250 = zext i8 %249 to i16
  store i16 %250, ptr %13, align 4
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %251, align 2
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %252, align 4
  %253 = load ptr, ptr %31, align 4
  %254 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %13, i32 noundef 1) #9
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %266, label %256

256:                                              ; preds = %243
  %257 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = load i32, ptr %258, align 4
  br label %262

262:                                              ; preds = %260, %256
  %263 = phi i32 [ %261, %260 ], [ -1, %256 ]
  %264 = zext i8 %245 to i32
  %265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %263, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 8, i32 noundef %264, i32 noundef %254) #10
  br label %266

266:                                              ; preds = %262, %243
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  %267 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29, i32 3
  %268 = load i8, ptr %267, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 9, ptr %10, align 2
  %269 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %268, ptr %269, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %270 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %270, align 4, !annotation !8
  %271 = load ptr, ptr %114, align 4
  %272 = load i8, ptr %271, align 4
  %273 = zext i8 %272 to i16
  store i16 %273, ptr %11, align 4
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %274, align 2
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %275, align 4
  %276 = load ptr, ptr %31, align 4
  %277 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %11, i32 noundef 1) #9
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %289, label %279

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %281, align 4
  br label %285

285:                                              ; preds = %283, %279
  %286 = phi i32 [ %284, %283 ], [ -1, %279 ]
  %287 = zext i8 %268 to i32
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %286, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 9, i32 noundef %287, i32 noundef %277) #10
  br label %289

289:                                              ; preds = %285, %266
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  %290 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29, i32 4
  %291 = load i8, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 -76, ptr %8, align 2
  %292 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %291, ptr %292, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %293 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %293, align 4, !annotation !8
  %294 = load ptr, ptr %114, align 4
  %295 = load i8, ptr %294, align 4
  %296 = zext i8 %295 to i16
  store i16 %296, ptr %9, align 4
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %297, align 2
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %298, align 4
  %299 = load ptr, ptr %31, align 4
  %300 = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %9, i32 noundef 1) #9
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %312, label %302

302:                                              ; preds = %289
  %303 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = load i32, ptr %304, align 4
  br label %308

308:                                              ; preds = %306, %302
  %309 = phi i32 [ %307, %306 ], [ -1, %302 ]
  %310 = zext i8 %291 to i32
  %311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %309, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 180, i32 noundef %310, i32 noundef %300) #10
  br label %312

312:                                              ; preds = %308, %289
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %313 = getelementptr [6 x %struct.qam_params], ptr @tda10023_set_parameters.qam_params, i32 0, i32 %29, i32 5
  %314 = load i8, ptr %313, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 -74, ptr %6, align 2
  %315 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %314, ptr %315, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %316 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %316, align 4, !annotation !8
  %317 = load ptr, ptr %114, align 4
  %318 = load i8, ptr %317, align 4
  %319 = zext i8 %318 to i16
  store i16 %319, ptr %7, align 4
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %320, align 2
  %321 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %321, align 4
  %322 = load ptr, ptr %31, align 4
  %323 = call i32 @i2c_transfer(ptr noundef %322, ptr noundef nonnull %7, i32 noundef 1) #9
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %335, label %325

325:                                              ; preds = %312
  %326 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329

329:                                              ; preds = %325
  %330 = load i32, ptr %327, align 4
  br label %331

331:                                              ; preds = %329, %325
  %332 = phi i32 [ %330, %329 ], [ -1, %325 ]
  %333 = zext i8 %314 to i32
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %332, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 182, i32 noundef %333, i32 noundef %323) #10
  br label %335

335:                                              ; preds = %331, %312
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call fastcc void @tda10023_writebit(ptr noundef %31, i8 noundef zeroext 4, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call fastcc void @tda10023_writebit(ptr noundef %31, i8 noundef zeroext 61, i8 noundef zeroext -4, i8 noundef zeroext %34)
  %336 = load i8, ptr %220, align 1
  %337 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 4
  %338 = load i8, ptr %337, align 1
  %339 = and i8 %338, 99
  %340 = or i8 %339, %336
  %341 = and i8 %340, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  %342 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %341, ptr %342, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %343 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %343, align 4, !annotation !8
  %344 = load ptr, ptr %114, align 4
  %345 = load i8, ptr %344, align 4
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %5, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %348, align 4
  %349 = load ptr, ptr %31, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %5, i32 noundef 1) #9
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %362, label %352

352:                                              ; preds = %335
  %353 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %354 = load ptr, ptr %353, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %358, label %356

356:                                              ; preds = %352
  %357 = load i32, ptr %354, align 4
  br label %358

358:                                              ; preds = %356, %352
  %359 = phi i32 [ %357, %356 ], [ -1, %352 ]
  %360 = zext i8 %341 to i32
  %361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %359, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 0, i32 noundef %360, i32 noundef %350) #10
  br label %362

362:                                              ; preds = %358, %335
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %363 = or i8 %340, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %364 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %363, ptr %364, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %365 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %365, align 4, !annotation !8
  %366 = load ptr, ptr %114, align 4
  %367 = load i8, ptr %366, align 4
  %368 = zext i8 %367 to i16
  store i16 %368, ptr %3, align 4
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %369, align 2
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %370, align 4
  %371 = load ptr, ptr %31, align 4
  %372 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %3, i32 noundef 1) #9
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %384, label %374

374:                                              ; preds = %362
  %375 = getelementptr inbounds %struct.tda10023_state, ptr %31, i32 0, i32 2, i32 2
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr %376, align 4
  br label %380

380:                                              ; preds = %378, %374
  %381 = phi i32 [ %379, %378 ], [ -1, %374 ]
  %382 = zext i8 %363 to i32
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %381, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef 0, i32 noundef %382, i32 noundef %372) #10
  br label %384

384:                                              ; preds = %380, %362
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  store i8 %340, ptr %337, align 1
  br label %385

385:                                              ; preds = %384, %33, %1
  %386 = phi i32 [ 0, %384 ], [ -22, %1 ], [ -22, %33 ]
  ret i32 %386
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 17, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = load i8, ptr %16, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 2) #9
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ -1, %30 ]
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %37, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 17, i32 noundef %28) #10
  br label %39

39:                                               ; preds = %36, %2
  %40 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 25, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %41 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %41, i8 0, i32 16, i1 false) #9, !annotation !8
  %42 = load ptr, ptr %15, align 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %8, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %45, align 2
  store i16 1, ptr %41, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %48 = load i8, ptr %42, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %52, align 4
  %53 = load ptr, ptr %13, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %8, i32 noundef 2) #9
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %65, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ -1, %56 ]
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %63, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 25, i32 noundef %54) #10
  br label %65

65:                                               ; preds = %62, %39
  %66 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 4, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %67 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %67, i8 0, i32 16, i1 false) #9, !annotation !8
  %68 = load ptr, ptr %15, align 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %5, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %71, align 2
  store i16 1, ptr %67, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %74 = load i8, ptr %68, align 4
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %78, align 4
  %79 = load ptr, ptr %13, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %5, i32 noundef 2) #9
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %91, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %84, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %87, %86 ], [ -1, %82 ]
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %89, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 4, i32 noundef %80) #10
  br label %91

91:                                               ; preds = %88, %65
  %92 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %93 = lshr i8 %92, 5
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = lshr i8 %99, 2
  %101 = and i8 %100, 7
  %102 = add nuw nsw i8 %101, 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 0, ptr %105, align 4
  %106 = load i32, ptr %1, align 4
  %107 = add i32 %106, 31250
  %108 = urem i32 %107, 62500
  %109 = sub i32 %107, %108
  store i32 %109, ptr %1, align 4
  %110 = and i8 %40, 2
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %91
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %114 = load i32, ptr %113, align 4
  %115 = sext i8 %66 to i32
  %116 = mul i32 %114, %115
  %117 = ashr i32 %116, 10
  %118 = sub i32 %109, %117
  store i32 %118, ptr %1, align 4
  br label %119

119:                                              ; preds = %112, %91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 17, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ -1, %24 ]
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 17, i32 noundef %22) #10
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %39, 3
  store i32 %40, ptr %1, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = and i32 %35, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 12
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = and i32 %35, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %1, align 4
  %52 = or i32 %51, 16
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 20, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %15 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %22 = load i8, ptr %16, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 2) #9
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ -1, %30 ]
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %37, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 20, i32 noundef %28) #10
  br label %39

39:                                               ; preds = %36, %2
  %40 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 21, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %41 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %41, i8 0, i32 16, i1 false) #9, !annotation !8
  %42 = load ptr, ptr %15, align 4
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %8, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %45, align 2
  store i16 1, ptr %41, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %48 = load i8, ptr %42, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %52, align 4
  %53 = load ptr, ptr %13, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %8, i32 noundef 2) #9
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %65, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ -1, %56 ]
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %63, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 21, i32 noundef %54) #10
  br label %65

65:                                               ; preds = %62, %39
  %66 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 22, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %67 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %67, i8 0, i32 16, i1 false) #9, !annotation !8
  %68 = load ptr, ptr %15, align 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %5, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %71, align 2
  store i16 1, ptr %67, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %74 = load i8, ptr %68, align 4
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %78, align 4
  %79 = load ptr, ptr %13, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %5, i32 noundef 2) #9
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %91, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.tda10023_state, ptr %13, i32 0, i32 2, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %84, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %87, %86 ], [ -1, %82 ]
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %89, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 22, i32 noundef %80) #10
  br label %91

91:                                               ; preds = %88, %65
  %92 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %93 = and i8 %92, 15
  call fastcc void @tda10023_writebit(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext -64, i8 noundef zeroext 0)
  %94 = zext i8 %40 to i32
  %95 = zext i8 %66 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %96, %94
  %98 = zext i8 %93 to i32
  %99 = shl nuw nsw i32 %98, 16
  %100 = or i32 %99, %97
  store i32 %100, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 47, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #9
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ -1, %27 ]
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %34, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 47, i32 noundef %25) #10
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 23, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %38 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #9, !annotation !8
  %39 = load ptr, ptr %12, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %5, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %38, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %45 = load i8, ptr %39, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %49, align 4
  %50 = load ptr, ptr %10, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %5, i32 noundef 2) #9
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %62, label %53

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.tda10023_state, ptr %10, i32 0, i32 2, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ -1, %53 ]
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %60, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 23, i32 noundef %51) #10
  br label %62

62:                                               ; preds = %59, %36
  %63 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %64 = xor i8 %63, -1
  %65 = zext i8 %64 to i16
  %66 = xor i8 %37, -1
  %67 = lshr i8 %66, 4
  %68 = zext i8 %67 to i16
  %69 = add nuw nsw i16 %65, %68
  %70 = icmp ugt i16 %69, 144
  %71 = shl nuw nsw i16 %69, 1
  %72 = add nsw i16 %71, -288
  %73 = select i1 %70, i16 %72, i16 0
  %74 = add nsw i16 %73, %69
  %75 = call i16 @llvm.umin.i16(i16 %74, i16 255)
  %76 = mul nuw i16 %75, 257
  store i16 %76, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 24, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #9
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.tda10023_state, ptr %7, i32 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ -1, %24 ]
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 24, i32 noundef %22) #10
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %35 = xor i8 %34, -1
  %36 = zext i8 %35 to i16
  %37 = mul nuw i16 %36, 257
  store i16 %37, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 116, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #9, !annotation !8
  %18 = getelementptr inbounds %struct.tda10023_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %22, align 2
  store i16 1, ptr %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %25 = load i8, ptr %19, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 2) #9
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %42, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.tda10023_state, ptr %16, i32 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ -1, %33 ]
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %40, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 116, i32 noundef %31) #10
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 117, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  %44 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %44, i8 0, i32 16, i1 false) #9, !annotation !8
  %45 = load ptr, ptr %18, align 4
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %11, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %48, align 2
  store i16 1, ptr %44, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %51 = load i8, ptr %45, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %53, align 2
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %55, align 4
  %56 = load ptr, ptr %16, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %11, i32 noundef 2) #9
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %68, label %59

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.tda10023_state, ptr %16, i32 0, i32 2, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ -1, %59 ]
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %66, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 117, i32 noundef %57) #10
  br label %68

68:                                               ; preds = %65, %42
  %69 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 118, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %70 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #9, !annotation !8
  %71 = load ptr, ptr %18, align 4
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i16
  store i16 %73, ptr %8, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %74, align 2
  store i16 1, ptr %70, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %77 = load i8, ptr %71, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %81, align 4
  %82 = load ptr, ptr %16, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %8, i32 noundef 2) #9
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %94, label %85

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.tda10023_state, ptr %16, i32 0, i32 2, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %87, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %90, %89 ], [ -1, %85 ]
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %92, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 118, i32 noundef %83) #10
  br label %94

94:                                               ; preds = %91, %68
  %95 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 119, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %96 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %96, i8 0, i32 16, i1 false) #9, !annotation !8
  %97 = load ptr, ptr %18, align 4
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %5, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %100, align 2
  store i16 1, ptr %96, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %103 = load i8, ptr %97, align 4
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %107, align 4
  %108 = load ptr, ptr %16, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %5, i32 noundef 2) #9
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %120, label %111

111:                                              ; preds = %94
  %112 = getelementptr inbounds %struct.tda10023_state, ptr %16, i32 0, i32 2, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %113, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %116, %115 ], [ -1, %111 ]
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %118, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef 119, i32 noundef %109) #10
  br label %120

120:                                              ; preds = %117, %94
  %121 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %122 = zext i8 %43 to i32
  %123 = zext i8 %69 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = or i32 %124, %122
  %126 = zext i8 %95 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or i32 %125, %127
  %129 = zext i8 %121 to i32
  %130 = shl nuw i32 %129, 24
  %131 = or i32 %128, %130
  store i32 %131, ptr %1, align 4
  call fastcc void @tda10023_writebit(ptr noundef %16, i8 noundef zeroext 16, i8 noundef zeroext 32, i8 noundef zeroext 0)
  call fastcc void @tda10023_writebit(ptr noundef %16, i8 noundef zeroext 16, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call fastcc void @tda10023_writebit(ptr noundef %16, i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10023_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 -16369, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.tda10023_state, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %6, i32 noundef 1) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %23

23:                                               ; preds = %21, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %38

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 16399, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.tda10023_state, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %4, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %8, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %4, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %37

37:                                               ; preds = %35, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %38

38:                                               ; preds = %37, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda10023_writebit(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = icmp eq i8 %2, -1
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 %1, ptr %10, align 2
  %14 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %3, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %15 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.tda10023_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %11, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %11, i32 noundef 1) #9
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %36, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.tda10023_state, ptr %0, i32 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ -1, %25 ]
  %33 = zext i8 %1 to i32
  %34 = zext i8 %3 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %32, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef %33, i32 noundef %34, i32 noundef %23) #10
  br label %36

36:                                               ; preds = %31, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  br label %92

37:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 %1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %38 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #9, !annotation !8
  %39 = getelementptr inbounds %struct.tda10023_state, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %9, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %38, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %46 = load i8, ptr %40, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %50, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %9, i32 noundef 2) #9
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %64, label %54

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.tda10023_state, ptr %0, i32 0, i32 2, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ -1, %54 ]
  %62 = zext i8 %1 to i32
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %61, ptr noundef nonnull @__func__.tda10023_readreg, i32 noundef %62, i32 noundef %52) #10
  br label %64

64:                                               ; preds = %60, %37
  %65 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %66 = xor i8 %2, -1
  %67 = and i8 %65, %66
  %68 = and i8 %3, %2
  %69 = or i8 %67, %68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 %1, ptr %5, align 2
  %70 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %69, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %71 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %71, align 4, !annotation !8
  %72 = load ptr, ptr %39, align 4
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %6, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %76, align 4
  %77 = load ptr, ptr %0, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %6, i32 noundef 1) #9
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %91, label %80

80:                                               ; preds = %64
  %81 = getelementptr inbounds %struct.tda10023_state, ptr %0, i32 0, i32 2, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %82, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i32 [ %85, %84 ], [ -1, %80 ]
  %88 = zext i8 %1 to i32
  %89 = zext i8 %69 to i32
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %87, ptr noundef nonnull @__func__.tda10023_writereg, i32 noundef %88, i32 noundef %89, i32 noundef %78) #10
  br label %91

91:                                               ; preds = %86, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %92

92:                                               ; preds = %91, %36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!10 = !{i64 2147698916, i64 2147699196, i64 2147699530, i64 2147699864}
