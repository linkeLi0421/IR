; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0297.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0297.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0297_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0297_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0297_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stv0297_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0297_config = type { i8, ptr, i8 }

@stv0297_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0297 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 870000, i32 11700000, i32 0, i32 64000 }, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr null, ptr @stv0297_release, ptr null, ptr @stv0297_init, ptr @stv0297_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0297_set_frontend, ptr null, ptr @stv0297_get_frontend, ptr @stv0297_read_status, ptr @stv0297_read_ber, ptr @stv0297_read_signal_strength, ptr @stv0297_read_snr, ptr @stv0297_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stv0297_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"description=ST STV0297 DVB-C Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [45 x i8] c"author=Dennis Noermann and Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_stv0297_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0297_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0297_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0297_attach to i32), ptr @__kstrtab_stv0297_attach, ptr @__kstrtabns_stv0297_attach }, section "___ksymtab+stv0297_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0297_readreg = private unnamed_addr constant [16 x i8] c"stv0297_readreg\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.stv0297_writereg = private unnamed_addr constant [17 x i8] c"stv0297_writereg\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.stv0297_readregs = private unnamed_addr constant [17 x i8] c"stv0297_readregs\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_stv0297_attach], section "llvm.metadata"
@switch.table.stv0297_set_frontend = private unnamed_addr constant [5 x i32] [i32 100, i32 100, i32 100, i32 200, i32 200], align 4
@switch.table.stv0297_set_frontend.2 = private unnamed_addr constant [5 x i32] [i32 1000, i32 1000, i32 1000, i32 500, i32 500], align 4
@switch.table.stv0297_set_frontend.3 = private unnamed_addr constant [5 x i8] c"\00\10@ 0", align 1
@switch.table.stv0297_get_frontend = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 4, i32 5, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0297_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1056) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 3
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = tail call fastcc i32 @stv0297_readreg(ptr noundef nonnull %4, i8 noundef zeroext -128)
  %11 = and i32 %10, 112
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %15, ptr noundef nonnull align 4 dereferenceable(544) @stv0297_ops, i32 544, i1 false)
  %16 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %16, align 8
  br label %18

17:                                               ; preds = %6, %2
  tail call void @kfree(ptr noundef %4) #9
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi ptr [ null, %17 ], [ %14, %13 ]
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stv0297_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.stv0297_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stv0297_config, ptr %8, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %0, align 4
  br i1 %23, label %38, label %25

25:                                               ; preds = %2
  %26 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #9
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = zext i8 %1 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0297_readreg, i32 noundef %29, i32 noundef %26) #10
  br label %47

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef %14, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = zext i8 %1 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0297_readreg, i32 noundef %36, i32 noundef %33) #10
  br label %47

38:                                               ; preds = %2
  %39 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 2) #9
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = zext i8 %1 to i32
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0297_readreg, i32 noundef %42, i32 noundef %39) #10
  br label %47

44:                                               ; preds = %38, %31
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %44, %41, %35, %28
  %48 = phi i32 [ -1, %28 ], [ -1, %35 ], [ %46, %44 ], [ -1, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  ret i32 %48
}

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
define internal void @stv0297_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stv0297_state, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %2, i32 1
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %11

11:                                               ; preds = %37, %1
  %12 = phi i32 [ 0, %1 ], [ %38, %37 ]
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.stv0297_config, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, -1
  %19 = or i32 %12, 1
  br i1 %18, label %20, label %24

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %15, i32 %19
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -1
  br i1 %23, label %39, label %24

24:                                               ; preds = %20, %11
  %25 = getelementptr i8, ptr %15, i32 %19
  %26 = load i8, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 %17, ptr %2, align 2
  store i8 %26, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %8, align 4, !annotation !8
  %27 = load ptr, ptr %6, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %3, align 4
  store i16 0, ptr %9, align 2
  store i16 2, ptr %8, align 4
  store ptr %2, ptr %10, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 1) #9
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = zext i8 %17 to i32
  %35 = zext i8 %26 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef %34, i32 noundef %35, i32 noundef %31) #10
  br label %37

37:                                               ; preds = %33, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %38 = add i32 %12, 2
  br label %11

39:                                               ; preds = %20
  call void @msleep(i32 noundef 200) #9
  %40 = getelementptr inbounds %struct.stv0297_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %40, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @stv0297_readreg(ptr noundef %5, i8 noundef zeroext -128) #9
  %7 = trunc i32 %6 to i8
  %8 = or i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 -128, ptr %2, align 2
  %9 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.stv0297_state, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 1) #9
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = zext i8 %8 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 128, i32 noundef %21, i32 noundef %18) #10
  br label %23

23:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_set_frontend(ptr noundef %0) #0 {
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
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [2 x i8], align 2
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [2 x i8], align 2
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [2 x i8], align 2
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [2 x i8], align 2
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca [2 x i8], align 2
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [2 x i8], align 2
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [2 x i8], align 2
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [2 x i8], align 2
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [2 x i8], align 2
  %77 = alloca %struct.i2c_msg, align 4
  %78 = alloca [2 x i8], align 2
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [2 x i8], align 2
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [2 x i8], align 2
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [2 x i8], align 2
  %87 = alloca %struct.i2c_msg, align 4
  %88 = alloca [2 x i8], align 2
  %89 = alloca %struct.i2c_msg, align 4
  %90 = alloca [2 x i8], align 2
  %91 = alloca %struct.i2c_msg, align 4
  %92 = alloca [2 x i8], align 2
  %93 = alloca %struct.i2c_msg, align 4
  %94 = alloca [2 x i8], align 2
  %95 = alloca %struct.i2c_msg, align 4
  %96 = alloca [2 x i8], align 2
  %97 = alloca %struct.i2c_msg, align 4
  %98 = alloca [2 x i8], align 2
  %99 = alloca %struct.i2c_msg, align 4
  %100 = alloca [2 x i8], align 2
  %101 = alloca %struct.i2c_msg, align 4
  %102 = alloca [2 x i8], align 2
  %103 = alloca %struct.i2c_msg, align 4
  %104 = alloca [2 x i8], align 2
  %105 = alloca %struct.i2c_msg, align 4
  %106 = alloca [2 x i8], align 2
  %107 = alloca %struct.i2c_msg, align 4
  %108 = alloca [2 x i8], align 2
  %109 = alloca %struct.i2c_msg, align 4
  %110 = alloca [2 x i8], align 2
  %111 = alloca %struct.i2c_msg, align 4
  %112 = alloca [2 x i8], align 2
  %113 = alloca %struct.i2c_msg, align 4
  %114 = alloca [2 x i8], align 2
  %115 = alloca %struct.i2c_msg, align 4
  %116 = alloca [2 x i8], align 2
  %117 = alloca %struct.i2c_msg, align 4
  %118 = alloca [2 x i8], align 2
  %119 = alloca %struct.i2c_msg, align 4
  %120 = alloca [2 x i8], align 2
  %121 = alloca %struct.i2c_msg, align 4
  %122 = alloca [2 x i8], align 2
  %123 = alloca %struct.i2c_msg, align 4
  %124 = alloca [2 x i8], align 2
  %125 = alloca %struct.i2c_msg, align 4
  %126 = alloca [2 x i8], align 2
  %127 = alloca %struct.i2c_msg, align 4
  %128 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, -1
  %134 = icmp ult i32 %133, 5
  br i1 %134, label %135, label %1299

135:                                              ; preds = %1
  %136 = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_set_frontend, i32 0, i32 %133
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_set_frontend.2, i32 0, i32 %133
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.stv0297_state, ptr %130, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.stv0297_config, ptr %143, i32 0, i32 2
  %145 = load i8, ptr %144, align 4
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  %148 = icmp ne i32 %141, 1
  %149 = zext i1 %148 to i32
  %150 = select i1 %147, i32 %141, i32 %149
  switch i32 %150, label %1299 [
    i32 0, label %153
    i32 1, label %151
  ]

151:                                              ; preds = %135
  %152 = sub nsw i32 0, %139
  br label %153

153:                                              ; preds = %151, %135
  %154 = phi i32 [ %152, %151 ], [ %139, %135 ]
  %155 = phi i1 [ false, %151 ], [ true, %135 ]
  %156 = phi i32 [ 8858520, %151 ], [ -8858520, %135 ]
  %157 = tail call i32 @stv0297_init(ptr noundef %0)
  %158 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %153
  %162 = tail call i32 %159(ptr noundef %0) #9
  %163 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = tail call i32 %164(ptr noundef %0, i32 noundef 0) #9
  br label %168

168:                                              ; preds = %166, %161, %153
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %126) #9
  store i8 -126, ptr %126, align 2
  %169 = getelementptr inbounds i8, ptr %126, i32 1
  store i8 0, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %127) #9
  %170 = getelementptr inbounds i8, ptr %127, i32 4
  store i32 0, ptr %170, align 4, !annotation !8
  %171 = load ptr, ptr %142, align 4
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %127, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 1
  store i16 0, ptr %174, align 2
  store i16 2, ptr %170, align 4
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %127, i32 0, i32 3
  store ptr %126, ptr %175, align 4
  %176 = load ptr, ptr %130, align 4
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %127, i32 noundef 1) #9
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 130, i32 noundef 0, i32 noundef %177) #10
  br label %181

181:                                              ; preds = %179, %168
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %127) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %126) #9
  %182 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 37) #9
  %183 = trunc i32 %182 to i8
  %184 = or i8 %183, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %124) #9
  store i8 37, ptr %124, align 2
  %185 = getelementptr inbounds i8, ptr %124, i32 1
  store i8 %184, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %125) #9
  %186 = getelementptr inbounds i8, ptr %125, i32 4
  store i32 2, ptr %186, align 4, !annotation !8
  %187 = load ptr, ptr %142, align 4
  %188 = load i8, ptr %187, align 4
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %125, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  store i16 0, ptr %190, align 2
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  store ptr %124, ptr %191, align 4
  %192 = load ptr, ptr %130, align 4
  %193 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %125, i32 noundef 1) #9
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %181
  %196 = zext i8 %184 to i32
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 37, i32 noundef %196, i32 noundef %193) #10
  br label %198

198:                                              ; preds = %195, %181
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %125) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %124) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %122) #9
  store i8 33, ptr %122, align 2
  %199 = getelementptr inbounds i8, ptr %122, i32 1
  store i8 64, ptr %199, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %123) #9
  %200 = getelementptr inbounds i8, ptr %123, i32 4
  store i32 2, ptr %200, align 4, !annotation !8
  %201 = load ptr, ptr %142, align 4
  %202 = load i8, ptr %201, align 4
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %123, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 1
  store i16 0, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 3
  store ptr %122, ptr %205, align 4
  %206 = load ptr, ptr %130, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %123, i32 noundef 1) #9
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %211, label %209

209:                                              ; preds = %198
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 33, i32 noundef 64, i32 noundef %207) #10
  br label %211

211:                                              ; preds = %209, %198
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %123) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %122) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %120) #9
  store i8 32, ptr %120, align 2
  %212 = getelementptr inbounds i8, ptr %120, i32 1
  store i8 93, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %121) #9
  %213 = getelementptr inbounds i8, ptr %121, i32 4
  store i32 2, ptr %213, align 4, !annotation !8
  %214 = load ptr, ptr %142, align 4
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i16
  store i16 %216, ptr %121, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %121, i32 0, i32 1
  store i16 0, ptr %217, align 2
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %121, i32 0, i32 3
  store ptr %120, ptr %218, align 4
  %219 = load ptr, ptr %130, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %121, i32 noundef 1) #9
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %224, label %222

222:                                              ; preds = %211
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 32, i32 noundef 93, i32 noundef %220) #10
  br label %224

224:                                              ; preds = %222, %211
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %121) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %120) #9
  %225 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 67) #9
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %118) #9
  store i8 67, ptr %118, align 2
  %228 = getelementptr inbounds i8, ptr %118, i32 1
  store i8 %227, ptr %228, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %119) #9
  %229 = getelementptr inbounds i8, ptr %119, i32 4
  store i32 2, ptr %229, align 4, !annotation !8
  %230 = load ptr, ptr %142, align 4
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %119, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 1
  store i16 0, ptr %233, align 2
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %119, i32 0, i32 3
  store ptr %118, ptr %234, align 4
  %235 = load ptr, ptr %130, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %119, i32 noundef 1) #9
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %241, label %238

238:                                              ; preds = %224
  %239 = zext i8 %227 to i32
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 67, i32 noundef %239, i32 noundef %236) #10
  br label %241

241:                                              ; preds = %238, %224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %119) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %118) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %116) #9
  store i8 65, ptr %116, align 2
  %242 = getelementptr inbounds i8, ptr %116, i32 1
  store i8 0, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %117) #9
  %243 = getelementptr inbounds i8, ptr %117, i32 4
  store i32 0, ptr %243, align 4, !annotation !8
  %244 = load ptr, ptr %142, align 4
  %245 = load i8, ptr %244, align 4
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %117, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 1
  store i16 0, ptr %247, align 2
  store i16 2, ptr %243, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 3
  store ptr %116, ptr %248, align 4
  %249 = load ptr, ptr %130, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %117, i32 noundef 1) #9
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %254, label %252

252:                                              ; preds = %241
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 65, i32 noundef 0, i32 noundef %250) #10
  br label %254

254:                                              ; preds = %252, %241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %117) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %116) #9
  %255 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 66) #9
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, -4
  %258 = or i8 %257, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %114) #9
  store i8 66, ptr %114, align 2
  %259 = getelementptr inbounds i8, ptr %114, i32 1
  store i8 %258, ptr %259, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %115) #9
  %260 = getelementptr inbounds i8, ptr %115, i32 4
  store i32 2, ptr %260, align 4, !annotation !8
  %261 = load ptr, ptr %142, align 4
  %262 = load i8, ptr %261, align 4
  %263 = zext i8 %262 to i16
  store i16 %263, ptr %115, align 4
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 1
  store i16 0, ptr %264, align 2
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 3
  store ptr %114, ptr %265, align 4
  %266 = load ptr, ptr %130, align 4
  %267 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %115, i32 noundef 1) #9
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %272, label %269

269:                                              ; preds = %254
  %270 = zext i8 %258 to i32
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 66, i32 noundef %270, i32 noundef %267) #10
  br label %272

272:                                              ; preds = %269, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %115) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %114) #9
  %273 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 54) #9
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, -97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %112) #9
  store i8 54, ptr %112, align 2
  %276 = getelementptr inbounds i8, ptr %112, i32 1
  store i8 %275, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %113) #9
  %277 = getelementptr inbounds i8, ptr %113, i32 4
  store i32 2, ptr %277, align 4, !annotation !8
  %278 = load ptr, ptr %142, align 4
  %279 = load i8, ptr %278, align 4
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %113, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 1
  store i16 0, ptr %281, align 2
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 3
  store ptr %112, ptr %282, align 4
  %283 = load ptr, ptr %130, align 4
  %284 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %113, i32 noundef 1) #9
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %289, label %286

286:                                              ; preds = %272
  %287 = zext i8 %275 to i32
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 54, i32 noundef %287, i32 noundef %284) #10
  br label %289

289:                                              ; preds = %286, %272
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %113) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %112) #9
  %290 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 54) #9
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, -25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %110) #9
  store i8 54, ptr %110, align 2
  %293 = getelementptr inbounds i8, ptr %110, i32 1
  store i8 %292, ptr %293, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %111) #9
  %294 = getelementptr inbounds i8, ptr %111, i32 4
  store i32 2, ptr %294, align 4, !annotation !8
  %295 = load ptr, ptr %142, align 4
  %296 = load i8, ptr %295, align 4
  %297 = zext i8 %296 to i16
  store i16 %297, ptr %111, align 4
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %111, i32 0, i32 1
  store i16 0, ptr %298, align 2
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %111, i32 0, i32 3
  store ptr %110, ptr %299, align 4
  %300 = load ptr, ptr %130, align 4
  %301 = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %111, i32 noundef 1) #9
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %306, label %303

303:                                              ; preds = %289
  %304 = zext i8 %292 to i32
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 54, i32 noundef %304, i32 noundef %301) #10
  br label %306

306:                                              ; preds = %303, %289
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %111) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %110) #9
  %307 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 113) #9
  %308 = trunc i32 %307 to i8
  %309 = or i8 %308, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %108) #9
  store i8 113, ptr %108, align 2
  %310 = getelementptr inbounds i8, ptr %108, i32 1
  store i8 %309, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %109) #9
  %311 = getelementptr inbounds i8, ptr %109, i32 4
  store i32 2, ptr %311, align 4, !annotation !8
  %312 = load ptr, ptr %142, align 4
  %313 = load i8, ptr %312, align 4
  %314 = zext i8 %313 to i16
  store i16 %314, ptr %109, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 1
  store i16 0, ptr %315, align 2
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 3
  store ptr %108, ptr %316, align 4
  %317 = load ptr, ptr %130, align 4
  %318 = call i32 @i2c_transfer(ptr noundef %317, ptr noundef nonnull %109, i32 noundef 1) #9
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %323, label %320

320:                                              ; preds = %306
  %321 = zext i8 %309 to i32
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 113, i32 noundef %321, i32 noundef %318) #10
  br label %323

323:                                              ; preds = %320, %306
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %109) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %108) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %106) #9
  store i8 114, ptr %106, align 2
  %324 = getelementptr inbounds i8, ptr %106, i32 1
  store i8 0, ptr %324, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %107) #9
  %325 = getelementptr inbounds i8, ptr %107, i32 4
  store i32 0, ptr %325, align 4, !annotation !8
  %326 = load ptr, ptr %142, align 4
  %327 = load i8, ptr %326, align 4
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %107, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 0, i32 1
  store i16 0, ptr %329, align 2
  store i16 2, ptr %325, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %107, i32 0, i32 3
  store ptr %106, ptr %330, align 4
  %331 = load ptr, ptr %130, align 4
  %332 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %107, i32 noundef 1) #9
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %336, label %334

334:                                              ; preds = %323
  %335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 114, i32 noundef 0, i32 noundef %332) #10
  br label %336

336:                                              ; preds = %334, %323
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %107) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %106) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %104) #9
  store i8 115, ptr %104, align 2
  %337 = getelementptr inbounds i8, ptr %104, i32 1
  store i8 0, ptr %337, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %105) #9
  %338 = getelementptr inbounds i8, ptr %105, i32 4
  store i32 0, ptr %338, align 4, !annotation !8
  %339 = load ptr, ptr %142, align 4
  %340 = load i8, ptr %339, align 4
  %341 = zext i8 %340 to i16
  store i16 %341, ptr %105, align 4
  %342 = getelementptr inbounds %struct.i2c_msg, ptr %105, i32 0, i32 1
  store i16 0, ptr %342, align 2
  store i16 2, ptr %338, align 4
  %343 = getelementptr inbounds %struct.i2c_msg, ptr %105, i32 0, i32 3
  store ptr %104, ptr %343, align 4
  %344 = load ptr, ptr %130, align 4
  %345 = call i32 @i2c_transfer(ptr noundef %344, ptr noundef nonnull %105, i32 noundef 1) #9
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %349, label %347

347:                                              ; preds = %336
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 115, i32 noundef 0, i32 noundef %345) #10
  br label %349

349:                                              ; preds = %347, %336
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %105) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %104) #9
  %350 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 116) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %102) #9
  store i8 116, ptr %102, align 2
  %353 = getelementptr inbounds i8, ptr %102, i32 1
  store i8 %352, ptr %353, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %103) #9
  %354 = getelementptr inbounds i8, ptr %103, i32 4
  store i32 2, ptr %354, align 4, !annotation !8
  %355 = load ptr, ptr %142, align 4
  %356 = load i8, ptr %355, align 4
  %357 = zext i8 %356 to i16
  store i16 %357, ptr %103, align 4
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 1
  store i16 0, ptr %358, align 2
  %359 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 3
  store ptr %102, ptr %359, align 4
  %360 = load ptr, ptr %130, align 4
  %361 = call i32 @i2c_transfer(ptr noundef %360, ptr noundef nonnull %103, i32 noundef 1) #9
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %366, label %363

363:                                              ; preds = %349
  %364 = zext i8 %352 to i32
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 116, i32 noundef %364, i32 noundef %361) #10
  br label %366

366:                                              ; preds = %363, %349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %103) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %102) #9
  %367 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 67) #9
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %100) #9
  store i8 67, ptr %100, align 2
  %370 = getelementptr inbounds i8, ptr %100, i32 1
  store i8 %369, ptr %370, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %101) #9
  %371 = getelementptr inbounds i8, ptr %101, i32 4
  store i32 2, ptr %371, align 4, !annotation !8
  %372 = load ptr, ptr %142, align 4
  %373 = load i8, ptr %372, align 4
  %374 = zext i8 %373 to i16
  store i16 %374, ptr %101, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  store i16 0, ptr %375, align 2
  %376 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 3
  store ptr %100, ptr %376, align 4
  %377 = load ptr, ptr %130, align 4
  %378 = call i32 @i2c_transfer(ptr noundef %377, ptr noundef nonnull %101, i32 noundef 1) #9
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %383, label %380

380:                                              ; preds = %366
  %381 = zext i8 %369 to i32
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 67, i32 noundef %381, i32 noundef %378) #10
  br label %383

383:                                              ; preds = %380, %366
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %101) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %100) #9
  %384 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 113) #9
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %98) #9
  store i8 113, ptr %98, align 2
  %387 = getelementptr inbounds i8, ptr %98, i32 1
  store i8 %386, ptr %387, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %99) #9
  %388 = getelementptr inbounds i8, ptr %99, i32 4
  store i32 2, ptr %388, align 4, !annotation !8
  %389 = load ptr, ptr %142, align 4
  %390 = load i8, ptr %389, align 4
  %391 = zext i8 %390 to i16
  store i16 %391, ptr %99, align 4
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 1
  store i16 0, ptr %392, align 2
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 3
  store ptr %98, ptr %393, align 4
  %394 = load ptr, ptr %130, align 4
  %395 = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %99, i32 noundef 1) #9
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %400, label %397

397:                                              ; preds = %383
  %398 = zext i8 %386 to i32
  %399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 113, i32 noundef %398, i32 noundef %395) #10
  br label %400

400:                                              ; preds = %397, %383
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %99) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %98) #9
  %401 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 90) #9
  %402 = trunc i32 %401 to i8
  %403 = or i8 %402, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %96) #9
  store i8 90, ptr %96, align 2
  %404 = getelementptr inbounds i8, ptr %96, i32 1
  store i8 %403, ptr %404, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %97) #9
  %405 = getelementptr inbounds i8, ptr %97, i32 4
  store i32 2, ptr %405, align 4, !annotation !8
  %406 = load ptr, ptr %142, align 4
  %407 = load i8, ptr %406, align 4
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %97, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 1
  store i16 0, ptr %409, align 2
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  store ptr %96, ptr %410, align 4
  %411 = load ptr, ptr %130, align 4
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %97, i32 noundef 1) #9
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %417, label %414

414:                                              ; preds = %400
  %415 = zext i8 %403 to i32
  %416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 90, i32 noundef %415, i32 noundef %412) #10
  br label %417

417:                                              ; preds = %414, %400
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %97) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %96) #9
  %418 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 91) #9
  %419 = trunc i32 %418 to i8
  %420 = or i8 %419, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %94) #9
  store i8 91, ptr %94, align 2
  %421 = getelementptr inbounds i8, ptr %94, i32 1
  store i8 %420, ptr %421, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %95) #9
  %422 = getelementptr inbounds i8, ptr %95, i32 4
  store i32 2, ptr %422, align 4, !annotation !8
  %423 = load ptr, ptr %142, align 4
  %424 = load i8, ptr %423, align 4
  %425 = zext i8 %424 to i16
  store i16 %425, ptr %95, align 4
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 1
  store i16 0, ptr %426, align 2
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  store ptr %94, ptr %427, align 4
  %428 = load ptr, ptr %130, align 4
  %429 = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %95, i32 noundef 1) #9
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %434, label %431

431:                                              ; preds = %417
  %432 = zext i8 %420 to i32
  %433 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 91, i32 noundef %432, i32 noundef %429) #10
  br label %434

434:                                              ; preds = %431, %417
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %94) #9
  %435 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 91) #9
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %92) #9
  store i8 91, ptr %92, align 2
  %438 = getelementptr inbounds i8, ptr %92, i32 1
  store i8 %437, ptr %438, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %93) #9
  %439 = getelementptr inbounds i8, ptr %93, i32 4
  store i32 2, ptr %439, align 4, !annotation !8
  %440 = load ptr, ptr %142, align 4
  %441 = load i8, ptr %440, align 4
  %442 = zext i8 %441 to i16
  store i16 %442, ptr %93, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  store i16 0, ptr %443, align 2
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 3
  store ptr %92, ptr %444, align 4
  %445 = load ptr, ptr %130, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %93, i32 noundef 1) #9
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %451, label %448

448:                                              ; preds = %434
  %449 = zext i8 %437 to i32
  %450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 91, i32 noundef %449, i32 noundef %446) #10
  br label %451

451:                                              ; preds = %448, %434
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %93) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %92) #9
  %452 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 91) #9
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %90) #9
  store i8 91, ptr %90, align 2
  %455 = getelementptr inbounds i8, ptr %90, i32 1
  store i8 %454, ptr %455, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %91) #9
  %456 = getelementptr inbounds i8, ptr %91, i32 4
  store i32 2, ptr %456, align 4, !annotation !8
  %457 = load ptr, ptr %142, align 4
  %458 = load i8, ptr %457, align 4
  %459 = zext i8 %458 to i16
  store i16 %459, ptr %91, align 4
  %460 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  store i16 0, ptr %460, align 2
  %461 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  store ptr %90, ptr %461, align 4
  %462 = load ptr, ptr %130, align 4
  %463 = call i32 @i2c_transfer(ptr noundef %462, ptr noundef nonnull %91, i32 noundef 1) #9
  %464 = icmp eq i32 %463, 1
  br i1 %464, label %468, label %465

465:                                              ; preds = %451
  %466 = zext i8 %454 to i32
  %467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 91, i32 noundef %466, i32 noundef %463) #10
  br label %468

468:                                              ; preds = %465, %451
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %91) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %90) #9
  %469 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 90) #9
  %470 = trunc i32 %469 to i8
  %471 = or i8 %470, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %88) #9
  store i8 90, ptr %88, align 2
  %472 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 %471, ptr %472, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %89) #9
  %473 = getelementptr inbounds i8, ptr %89, i32 4
  store i32 2, ptr %473, align 4, !annotation !8
  %474 = load ptr, ptr %142, align 4
  %475 = load i8, ptr %474, align 4
  %476 = zext i8 %475 to i16
  store i16 %476, ptr %89, align 4
  %477 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %477, align 2
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %88, ptr %478, align 4
  %479 = load ptr, ptr %130, align 4
  %480 = call i32 @i2c_transfer(ptr noundef %479, ptr noundef nonnull %89, i32 noundef 1) #9
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %485, label %482

482:                                              ; preds = %468
  %483 = zext i8 %471 to i32
  %484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 90, i32 noundef %483, i32 noundef %480) #10
  br label %485

485:                                              ; preds = %482, %468
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %88) #9
  %486 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 106) #9
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %86) #9
  store i8 106, ptr %86, align 2
  %489 = getelementptr inbounds i8, ptr %86, i32 1
  store i8 %488, ptr %489, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #9
  %490 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 2, ptr %490, align 4, !annotation !8
  %491 = load ptr, ptr %142, align 4
  %492 = load i8, ptr %491, align 4
  %493 = zext i8 %492 to i16
  store i16 %493, ptr %87, align 4
  %494 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  store i16 0, ptr %494, align 2
  %495 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  store ptr %86, ptr %495, align 4
  %496 = load ptr, ptr %130, align 4
  %497 = call i32 @i2c_transfer(ptr noundef %496, ptr noundef nonnull %87, i32 noundef 1) #9
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %502, label %499

499:                                              ; preds = %485
  %500 = zext i8 %488 to i32
  %501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 106, i32 noundef %500, i32 noundef %497) #10
  br label %502

502:                                              ; preds = %499, %485
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %86) #9
  %503 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -127) #9
  %504 = trunc i32 %503 to i8
  %505 = or i8 %504, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %84) #9
  store i8 -127, ptr %84, align 2
  %506 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 %505, ptr %506, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #9
  %507 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 2, ptr %507, align 4, !annotation !8
  %508 = load ptr, ptr %142, align 4
  %509 = load i8, ptr %508, align 4
  %510 = zext i8 %509 to i16
  store i16 %510, ptr %85, align 4
  %511 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %511, align 2
  %512 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %512, align 4
  %513 = load ptr, ptr %130, align 4
  %514 = call i32 @i2c_transfer(ptr noundef %513, ptr noundef nonnull %85, i32 noundef 1) #9
  %515 = icmp eq i32 %514, 1
  br i1 %515, label %519, label %516

516:                                              ; preds = %502
  %517 = zext i8 %505 to i32
  %518 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 129, i32 noundef %517, i32 noundef %514) #10
  br label %519

519:                                              ; preds = %516, %502
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #9
  %520 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -127) #9
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #9
  store i8 -127, ptr %82, align 2
  %523 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 %522, ptr %523, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #9
  %524 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 2, ptr %524, align 4, !annotation !8
  %525 = load ptr, ptr %142, align 4
  %526 = load i8, ptr %525, align 4
  %527 = zext i8 %526 to i16
  store i16 %527, ptr %83, align 4
  %528 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %528, align 2
  %529 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %529, align 4
  %530 = load ptr, ptr %130, align 4
  %531 = call i32 @i2c_transfer(ptr noundef %530, ptr noundef nonnull %83, i32 noundef 1) #9
  %532 = icmp eq i32 %531, 1
  br i1 %532, label %536, label %533

533:                                              ; preds = %519
  %534 = zext i8 %522 to i32
  %535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 129, i32 noundef %534, i32 noundef %531) #10
  br label %536

536:                                              ; preds = %533, %519
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #9
  %537 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -125) #9
  %538 = trunc i32 %537 to i8
  %539 = or i8 %538, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %80) #9
  store i8 -125, ptr %80, align 2
  %540 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 %539, ptr %540, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #9
  %541 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 2, ptr %541, align 4, !annotation !8
  %542 = load ptr, ptr %142, align 4
  %543 = load i8, ptr %542, align 4
  %544 = zext i8 %543 to i16
  store i16 %544, ptr %81, align 4
  %545 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %545, align 2
  %546 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %546, align 4
  %547 = load ptr, ptr %130, align 4
  %548 = call i32 @i2c_transfer(ptr noundef %547, ptr noundef nonnull %81, i32 noundef 1) #9
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %553, label %550

550:                                              ; preds = %536
  %551 = zext i8 %539 to i32
  %552 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 131, i32 noundef %551, i32 noundef %548) #10
  br label %553

553:                                              ; preds = %550, %536
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %80) #9
  %554 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -125) #9
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #9
  store i8 -125, ptr %78, align 2
  %557 = getelementptr inbounds i8, ptr %78, i32 1
  store i8 %556, ptr %557, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #9
  %558 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 2, ptr %558, align 4, !annotation !8
  %559 = load ptr, ptr %142, align 4
  %560 = load i8, ptr %559, align 4
  %561 = zext i8 %560 to i16
  store i16 %561, ptr %79, align 4
  %562 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %562, align 2
  %563 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %563, align 4
  %564 = load ptr, ptr %130, align 4
  %565 = call i32 @i2c_transfer(ptr noundef %564, ptr noundef nonnull %79, i32 noundef 1) #9
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %570, label %567

567:                                              ; preds = %553
  %568 = zext i8 %556 to i32
  %569 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 131, i32 noundef %568, i32 noundef %565) #10
  br label %570

570:                                              ; preds = %567, %553
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #9
  %571 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 0)
  %572 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 1)
  %573 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 1)
  %574 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -124) #9
  %575 = trunc i32 %574 to i8
  %576 = or i8 %575, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %76) #9
  store i8 -124, ptr %76, align 2
  %577 = getelementptr inbounds i8, ptr %76, i32 1
  store i8 %576, ptr %577, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #9
  %578 = getelementptr inbounds i8, ptr %77, i32 4
  store i32 2, ptr %578, align 4, !annotation !8
  %579 = load ptr, ptr %142, align 4
  %580 = load i8, ptr %579, align 4
  %581 = zext i8 %580 to i16
  store i16 %581, ptr %77, align 4
  %582 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  store i16 0, ptr %582, align 2
  %583 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  store ptr %76, ptr %583, align 4
  %584 = load ptr, ptr %130, align 4
  %585 = call i32 @i2c_transfer(ptr noundef %584, ptr noundef nonnull %77, i32 noundef 1) #9
  %586 = icmp eq i32 %585, 1
  br i1 %586, label %590, label %587

587:                                              ; preds = %570
  %588 = zext i8 %576 to i32
  %589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 132, i32 noundef %588, i32 noundef %585) #10
  br label %590

590:                                              ; preds = %587, %570
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %76) #9
  %591 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -124) #9
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #9
  store i8 -124, ptr %74, align 2
  %594 = getelementptr inbounds i8, ptr %74, i32 1
  store i8 %593, ptr %594, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #9
  %595 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 2, ptr %595, align 4, !annotation !8
  %596 = load ptr, ptr %142, align 4
  %597 = load i8, ptr %596, align 4
  %598 = zext i8 %597 to i16
  store i16 %598, ptr %75, align 4
  %599 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %599, align 2
  %600 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %600, align 4
  %601 = load ptr, ptr %130, align 4
  %602 = call i32 @i2c_transfer(ptr noundef %601, ptr noundef nonnull %75, i32 noundef 1) #9
  %603 = icmp eq i32 %602, 1
  br i1 %603, label %607, label %604

604:                                              ; preds = %590
  %605 = zext i8 %593 to i32
  %606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 132, i32 noundef %605, i32 noundef %602) #10
  br label %607

607:                                              ; preds = %604, %590
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #9
  %608 = trunc i32 %571 to i8
  %609 = and i8 %608, 15
  %610 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 0) #9
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, -16
  %613 = or i8 %612, %609
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #9
  store i8 0, ptr %72, align 2
  %614 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 %613, ptr %614, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #9
  %615 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 2, ptr %615, align 4, !annotation !8
  %616 = load ptr, ptr %142, align 4
  %617 = load i8, ptr %616, align 4
  %618 = zext i8 %617 to i16
  store i16 %618, ptr %73, align 4
  %619 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %619, align 2
  %620 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %620, align 4
  %621 = load ptr, ptr %130, align 4
  %622 = call i32 @i2c_transfer(ptr noundef %621, ptr noundef nonnull %73, i32 noundef 1) #9
  %623 = icmp eq i32 %622, 1
  br i1 %623, label %627, label %624

624:                                              ; preds = %607
  %625 = zext i8 %613 to i32
  %626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 0, i32 noundef %625, i32 noundef %622) #10
  br label %627

627:                                              ; preds = %624, %607
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #9
  %628 = trunc i32 %572 to i8
  %629 = and i8 %628, -16
  %630 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 1) #9
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 15
  %633 = or i8 %632, %629
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #9
  store i8 1, ptr %70, align 2
  %634 = getelementptr inbounds i8, ptr %70, i32 1
  store i8 %633, ptr %634, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #9
  %635 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 2, ptr %635, align 4, !annotation !8
  %636 = load ptr, ptr %142, align 4
  %637 = load i8, ptr %636, align 4
  %638 = zext i8 %637 to i16
  store i16 %638, ptr %71, align 4
  %639 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %639, align 2
  %640 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %640, align 4
  %641 = load ptr, ptr %130, align 4
  %642 = call i32 @i2c_transfer(ptr noundef %641, ptr noundef nonnull %71, i32 noundef 1) #9
  %643 = icmp eq i32 %642, 1
  br i1 %643, label %647, label %644

644:                                              ; preds = %627
  %645 = zext i8 %633 to i32
  %646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 1, i32 noundef %645, i32 noundef %642) #10
  br label %647

647:                                              ; preds = %644, %627
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #9
  %648 = trunc i32 %573 to i8
  %649 = and i8 %648, 15
  %650 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 1) #9
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, -16
  %653 = or i8 %652, %649
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #9
  store i8 1, ptr %68, align 2
  %654 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 %653, ptr %654, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #9
  %655 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 2, ptr %655, align 4, !annotation !8
  %656 = load ptr, ptr %142, align 4
  %657 = load i8, ptr %656, align 4
  %658 = zext i8 %657 to i16
  store i16 %658, ptr %69, align 4
  %659 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %659, align 2
  %660 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %660, align 4
  %661 = load ptr, ptr %130, align 4
  %662 = call i32 @i2c_transfer(ptr noundef %661, ptr noundef nonnull %69, i32 noundef 1) #9
  %663 = icmp eq i32 %662, 1
  br i1 %663, label %667, label %664

664:                                              ; preds = %647
  %665 = zext i8 %653 to i32
  %666 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 1, i32 noundef %665, i32 noundef %662) #10
  br label %667

667:                                              ; preds = %664, %647
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #9
  %668 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -121) #9
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #9
  store i8 -121, ptr %66, align 2
  %671 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 %670, ptr %671, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #9
  %672 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 2, ptr %672, align 4, !annotation !8
  %673 = load ptr, ptr %142, align 4
  %674 = load i8, ptr %673, align 4
  %675 = zext i8 %674 to i16
  store i16 %675, ptr %67, align 4
  %676 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %676, align 2
  %677 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %677, align 4
  %678 = load ptr, ptr %130, align 4
  %679 = call i32 @i2c_transfer(ptr noundef %678, ptr noundef nonnull %67, i32 noundef 1) #9
  %680 = icmp eq i32 %679, 1
  br i1 %680, label %684, label %681

681:                                              ; preds = %667
  %682 = zext i8 %670 to i32
  %683 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 135, i32 noundef %682, i32 noundef %679) #10
  br label %684

684:                                              ; preds = %681, %667
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #9
  store i8 99, ptr %64, align 2
  %685 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 0, ptr %685, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #9
  %686 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 0, ptr %686, align 4, !annotation !8
  %687 = load ptr, ptr %142, align 4
  %688 = load i8, ptr %687, align 4
  %689 = zext i8 %688 to i16
  store i16 %689, ptr %65, align 4
  %690 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %690, align 2
  store i16 2, ptr %686, align 4
  %691 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %691, align 4
  %692 = load ptr, ptr %130, align 4
  %693 = call i32 @i2c_transfer(ptr noundef %692, ptr noundef nonnull %65, i32 noundef 1) #9
  %694 = icmp eq i32 %693, 1
  br i1 %694, label %697, label %695

695:                                              ; preds = %684
  %696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 99, i32 noundef 0, i32 noundef %693) #10
  br label %697

697:                                              ; preds = %695, %684
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #9
  store i8 100, ptr %62, align 2
  %698 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 0, ptr %698, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #9
  %699 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 0, ptr %699, align 4, !annotation !8
  %700 = load ptr, ptr %142, align 4
  %701 = load i8, ptr %700, align 4
  %702 = zext i8 %701 to i16
  store i16 %702, ptr %63, align 4
  %703 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %703, align 2
  store i16 2, ptr %699, align 4
  %704 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %704, align 4
  %705 = load ptr, ptr %130, align 4
  %706 = call i32 @i2c_transfer(ptr noundef %705, ptr noundef nonnull %63, i32 noundef 1) #9
  %707 = icmp eq i32 %706, 1
  br i1 %707, label %710, label %708

708:                                              ; preds = %697
  %709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 100, i32 noundef 0, i32 noundef %706) #10
  br label %710

710:                                              ; preds = %708, %697
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #9
  store i8 101, ptr %60, align 2
  %711 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 0, ptr %711, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #9
  %712 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 0, ptr %712, align 4, !annotation !8
  %713 = load ptr, ptr %142, align 4
  %714 = load i8, ptr %713, align 4
  %715 = zext i8 %714 to i16
  store i16 %715, ptr %61, align 4
  %716 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %716, align 2
  store i16 2, ptr %712, align 4
  %717 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %717, align 4
  %718 = load ptr, ptr %130, align 4
  %719 = call i32 @i2c_transfer(ptr noundef %718, ptr noundef nonnull %61, i32 noundef 1) #9
  %720 = icmp eq i32 %719, 1
  br i1 %720, label %723, label %721

721:                                              ; preds = %710
  %722 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 101, i32 noundef 0, i32 noundef %719) #10
  br label %723

723:                                              ; preds = %721, %710
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #9
  store i8 102, ptr %58, align 2
  %724 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 0, ptr %724, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #9
  %725 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %725, align 4, !annotation !8
  %726 = load ptr, ptr %142, align 4
  %727 = load i8, ptr %726, align 4
  %728 = zext i8 %727 to i16
  store i16 %728, ptr %59, align 4
  %729 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %729, align 2
  store i16 2, ptr %725, align 4
  %730 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %730, align 4
  %731 = load ptr, ptr %130, align 4
  %732 = call i32 @i2c_transfer(ptr noundef %731, ptr noundef nonnull %59, i32 noundef 1) #9
  %733 = icmp eq i32 %732, 1
  br i1 %733, label %736, label %734

734:                                              ; preds = %723
  %735 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 102, i32 noundef 0, i32 noundef %732) #10
  br label %736

736:                                              ; preds = %734, %723
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #9
  store i8 103, ptr %56, align 2
  %737 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 0, ptr %737, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #9
  %738 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %738, align 4, !annotation !8
  %739 = load ptr, ptr %142, align 4
  %740 = load i8, ptr %739, align 4
  %741 = zext i8 %740 to i16
  store i16 %741, ptr %57, align 4
  %742 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %742, align 2
  store i16 2, ptr %738, align 4
  %743 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %743, align 4
  %744 = load ptr, ptr %130, align 4
  %745 = call i32 @i2c_transfer(ptr noundef %744, ptr noundef nonnull %57, i32 noundef 1) #9
  %746 = icmp eq i32 %745, 1
  br i1 %746, label %749, label %747

747:                                              ; preds = %736
  %748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 103, i32 noundef 0, i32 noundef %745) #10
  br label %749

749:                                              ; preds = %747, %736
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #9
  store i8 104, ptr %54, align 2
  %750 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 0, ptr %750, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #9
  %751 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 0, ptr %751, align 4, !annotation !8
  %752 = load ptr, ptr %142, align 4
  %753 = load i8, ptr %752, align 4
  %754 = zext i8 %753 to i16
  store i16 %754, ptr %55, align 4
  %755 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %755, align 2
  store i16 2, ptr %751, align 4
  %756 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %756, align 4
  %757 = load ptr, ptr %130, align 4
  %758 = call i32 @i2c_transfer(ptr noundef %757, ptr noundef nonnull %55, i32 noundef 1) #9
  %759 = icmp eq i32 %758, 1
  br i1 %759, label %762, label %760

760:                                              ; preds = %749
  %761 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 104, i32 noundef 0, i32 noundef %758) #10
  br label %762

762:                                              ; preds = %760, %749
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #9
  %763 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 105) #9
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #9
  store i8 105, ptr %52, align 2
  %766 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 %765, ptr %766, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #9
  %767 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 2, ptr %767, align 4, !annotation !8
  %768 = load ptr, ptr %142, align 4
  %769 = load i8, ptr %768, align 4
  %770 = zext i8 %769 to i16
  store i16 %770, ptr %53, align 4
  %771 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %771, align 2
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %772, align 4
  %773 = load ptr, ptr %130, align 4
  %774 = call i32 @i2c_transfer(ptr noundef %773, ptr noundef nonnull %53, i32 noundef 1) #9
  %775 = icmp eq i32 %774, 1
  br i1 %775, label %779, label %776

776:                                              ; preds = %762
  %777 = zext i8 %765 to i32
  %778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 105, i32 noundef %777, i32 noundef %774) #10
  br label %779

779:                                              ; preds = %776, %762
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #9
  %780 = load i32, ptr %131, align 4
  %781 = add i32 %780, -1
  %782 = icmp ult i32 %781, 5
  br i1 %782, label %783, label %804

783:                                              ; preds = %779
  %784 = getelementptr inbounds [5 x i8], ptr @switch.table.stv0297_set_frontend.3, i32 0, i32 %781
  %785 = load i8, ptr %784, align 1
  %786 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 0) #9
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, -113
  %789 = or i8 %788, %785
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #9
  store i8 0, ptr %50, align 2
  %790 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 %789, ptr %790, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #9
  %791 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 2, ptr %791, align 4, !annotation !8
  %792 = load ptr, ptr %142, align 4
  %793 = load i8, ptr %792, align 4
  %794 = zext i8 %793 to i16
  store i16 %794, ptr %51, align 4
  %795 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %795, align 2
  %796 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %796, align 4
  %797 = load ptr, ptr %130, align 4
  %798 = call i32 @i2c_transfer(ptr noundef %797, ptr noundef nonnull %51, i32 noundef 1) #9
  %799 = icmp eq i32 %798, 1
  br i1 %799, label %803, label %800

800:                                              ; preds = %783
  %801 = zext i8 %789 to i32
  %802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 0, i32 noundef %801, i32 noundef %798) #10
  br label %803

803:                                              ; preds = %800, %783
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #9
  br label %804

804:                                              ; preds = %803, %779
  %805 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %806 = load i32, ptr %805, align 4
  %807 = udiv i32 %806, 1000
  %808 = shl i32 %807, 17
  %809 = sdiv i32 %808, 7225
  %810 = shl i32 %809, 13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #9
  store i8 85, ptr %48, align 2
  %811 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 0, ptr %811, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %812 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 2, ptr %812, align 4, !annotation !8
  %813 = load ptr, ptr %142, align 4
  %814 = load i8, ptr %813, align 4
  %815 = zext i8 %814 to i16
  store i16 %815, ptr %49, align 4
  %816 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %816, align 2
  %817 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %817, align 4
  %818 = load ptr, ptr %130, align 4
  %819 = call i32 @i2c_transfer(ptr noundef %818, ptr noundef nonnull %49, i32 noundef 1) #9
  %820 = icmp eq i32 %819, 1
  br i1 %820, label %823, label %821

821:                                              ; preds = %804
  %822 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 85, i32 noundef 0, i32 noundef %819) #10
  br label %823

823:                                              ; preds = %821, %804
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #9
  %824 = lshr exact i32 %810, 8
  %825 = trunc i32 %824 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #9
  store i8 86, ptr %46, align 2
  %826 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 %825, ptr %826, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #9
  %827 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 2, ptr %827, align 4, !annotation !8
  %828 = load ptr, ptr %142, align 4
  %829 = load i8, ptr %828, align 4
  %830 = zext i8 %829 to i16
  store i16 %830, ptr %47, align 4
  %831 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %831, align 2
  %832 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %832, align 4
  %833 = load ptr, ptr %130, align 4
  %834 = call i32 @i2c_transfer(ptr noundef %833, ptr noundef nonnull %47, i32 noundef 1) #9
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %839, label %836

836:                                              ; preds = %823
  %837 = and i32 %824, 224
  %838 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 86, i32 noundef %837, i32 noundef %834) #10
  br label %839

839:                                              ; preds = %836, %823
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #9
  %840 = lshr i32 %810, 16
  %841 = trunc i32 %840 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #9
  store i8 87, ptr %44, align 2
  %842 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 %841, ptr %842, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #9
  %843 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 2, ptr %843, align 4, !annotation !8
  %844 = load ptr, ptr %142, align 4
  %845 = load i8, ptr %844, align 4
  %846 = zext i8 %845 to i16
  store i16 %846, ptr %45, align 4
  %847 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %847, align 2
  %848 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %848, align 4
  %849 = load ptr, ptr %130, align 4
  %850 = call i32 @i2c_transfer(ptr noundef %849, ptr noundef nonnull %45, i32 noundef 1) #9
  %851 = icmp eq i32 %850, 1
  br i1 %851, label %855, label %852

852:                                              ; preds = %839
  %853 = and i32 %840, 255
  %854 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 87, i32 noundef %853, i32 noundef %850) #10
  br label %855

855:                                              ; preds = %852, %839
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #9
  %856 = lshr i32 %810, 24
  %857 = trunc i32 %856 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #9
  store i8 88, ptr %42, align 2
  %858 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 %857, ptr %858, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #9
  %859 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 2, ptr %859, align 4, !annotation !8
  %860 = load ptr, ptr %142, align 4
  %861 = load i8, ptr %860, align 4
  %862 = zext i8 %861 to i16
  store i16 %862, ptr %43, align 4
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %863, align 2
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %864, align 4
  %865 = load ptr, ptr %130, align 4
  %866 = call i32 @i2c_transfer(ptr noundef %865, ptr noundef nonnull %43, i32 noundef 1) #9
  %867 = icmp eq i32 %866, 1
  br i1 %867, label %870, label %868

868:                                              ; preds = %855
  %869 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 88, i32 noundef %856, i32 noundef %866) #10
  br label %870

870:                                              ; preds = %868, %855
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #9
  %871 = load i32, ptr %805, align 4
  %872 = udiv i32 %871, 1000
  %873 = shl nsw i32 %154, 18
  %874 = sdiv i32 %873, %872
  %875 = shl i32 %874, 10
  %876 = icmp slt i32 %875, 0
  %877 = select i1 %876, i32 -500000, i32 500000
  %878 = add i32 %877, %875
  %879 = sdiv i32 %878, 1000000
  %880 = trunc i32 %879 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #9
  store i8 96, ptr %40, align 2
  %881 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 %880, ptr %881, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #9
  %882 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 2, ptr %882, align 4, !annotation !8
  %883 = load ptr, ptr %142, align 4
  %884 = load i8, ptr %883, align 4
  %885 = zext i8 %884 to i16
  store i16 %885, ptr %41, align 4
  %886 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %886, align 2
  %887 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %887, align 4
  %888 = load ptr, ptr %130, align 4
  %889 = call i32 @i2c_transfer(ptr noundef %888, ptr noundef nonnull %41, i32 noundef 1) #9
  %890 = icmp eq i32 %889, 1
  br i1 %890, label %894, label %891

891:                                              ; preds = %870
  %892 = and i32 %879, 255
  %893 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 96, i32 noundef %892, i32 noundef %889) #10
  br label %894

894:                                              ; preds = %891, %870
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #9
  %895 = lshr i32 %879, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, -16
  %898 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 105) #9
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 15
  %901 = or i8 %900, %897
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #9
  store i8 105, ptr %38, align 2
  %902 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 %901, ptr %902, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #9
  %903 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %903, align 4, !annotation !8
  %904 = load ptr, ptr %142, align 4
  %905 = load i8, ptr %904, align 4
  %906 = zext i8 %905 to i16
  store i16 %906, ptr %39, align 4
  %907 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %907, align 2
  %908 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %908, align 4
  %909 = load ptr, ptr %130, align 4
  %910 = call i32 @i2c_transfer(ptr noundef %909, ptr noundef nonnull %39, i32 noundef 1) #9
  %911 = icmp eq i32 %910, 1
  br i1 %911, label %915, label %912

912:                                              ; preds = %894
  %913 = zext i8 %901 to i32
  %914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 105, i32 noundef %913, i32 noundef %910) #10
  br label %915

915:                                              ; preds = %912, %894
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #9
  %916 = add nsw i32 %156, 268435456
  %917 = select i1 %155, i32 %916, i32 %156
  %918 = trunc i32 %917 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #9
  store i8 102, ptr %36, align 2
  %919 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 %918, ptr %919, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %920 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %920, align 4, !annotation !8
  %921 = load ptr, ptr %142, align 4
  %922 = load i8, ptr %921, align 4
  %923 = zext i8 %922 to i16
  store i16 %923, ptr %37, align 4
  %924 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %924, align 2
  %925 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %925, align 4
  %926 = load ptr, ptr %130, align 4
  %927 = call i32 @i2c_transfer(ptr noundef %926, ptr noundef nonnull %37, i32 noundef 1) #9
  %928 = icmp eq i32 %927, 1
  br i1 %928, label %932, label %929

929:                                              ; preds = %915
  %930 = and i32 %917, 248
  %931 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 102, i32 noundef %930, i32 noundef %927) #10
  br label %932

932:                                              ; preds = %929, %915
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #9
  %933 = lshr i32 %917, 8
  %934 = trunc i32 %933 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #9
  store i8 103, ptr %34, align 2
  %935 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 %934, ptr %935, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #9
  %936 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 2, ptr %936, align 4, !annotation !8
  %937 = load ptr, ptr %142, align 4
  %938 = load i8, ptr %937, align 4
  %939 = zext i8 %938 to i16
  store i16 %939, ptr %35, align 4
  %940 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %940, align 2
  %941 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %941, align 4
  %942 = load ptr, ptr %130, align 4
  %943 = call i32 @i2c_transfer(ptr noundef %942, ptr noundef nonnull %35, i32 noundef 1) #9
  %944 = icmp eq i32 %943, 1
  br i1 %944, label %948, label %945

945:                                              ; preds = %932
  %946 = and i32 %933, 255
  %947 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 103, i32 noundef %946, i32 noundef %943) #10
  br label %948

948:                                              ; preds = %945, %932
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #9
  %949 = lshr i32 %917, 16
  %950 = trunc i32 %949 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #9
  store i8 104, ptr %32, align 2
  %951 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 %950, ptr %951, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #9
  %952 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %952, align 4, !annotation !8
  %953 = load ptr, ptr %142, align 4
  %954 = load i8, ptr %953, align 4
  %955 = zext i8 %954 to i16
  store i16 %955, ptr %33, align 4
  %956 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %956, align 2
  %957 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %957, align 4
  %958 = load ptr, ptr %130, align 4
  %959 = call i32 @i2c_transfer(ptr noundef %958, ptr noundef nonnull %33, i32 noundef 1) #9
  %960 = icmp eq i32 %959, 1
  br i1 %960, label %964, label %961

961:                                              ; preds = %948
  %962 = and i32 %949, 255
  %963 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 104, i32 noundef %962, i32 noundef %959) #10
  br label %964

964:                                              ; preds = %961, %948
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #9
  %965 = lshr i32 %917, 24
  %966 = trunc i32 %965 to i8
  %967 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 105) #9
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, -16
  %970 = or i8 %969, %966
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #9
  store i8 105, ptr %30, align 2
  %971 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 %970, ptr %971, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  %972 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %972, align 4, !annotation !8
  %973 = load ptr, ptr %142, align 4
  %974 = load i8, ptr %973, align 4
  %975 = zext i8 %974 to i16
  store i16 %975, ptr %31, align 4
  %976 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %976, align 2
  %977 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %977, align 4
  %978 = load ptr, ptr %130, align 4
  %979 = call i32 @i2c_transfer(ptr noundef %978, ptr noundef nonnull %31, i32 noundef 1) #9
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %984, label %981

981:                                              ; preds = %964
  %982 = zext i8 %970 to i32
  %983 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 105, i32 noundef %982, i32 noundef %979) #10
  br label %984

984:                                              ; preds = %981, %964
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  %985 = trunc i32 %150 to i8
  %986 = shl nuw nsw i8 %985, 3
  %987 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -125) #9
  %988 = and i8 %986, 8
  %989 = trunc i32 %987 to i8
  %990 = and i8 %989, -9
  %991 = or i8 %990, %988
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #9
  store i8 -125, ptr %28, align 2
  %992 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 %991, ptr %992, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %993 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %993, align 4, !annotation !8
  %994 = load ptr, ptr %142, align 4
  %995 = load i8, ptr %994, align 4
  %996 = zext i8 %995 to i16
  store i16 %996, ptr %29, align 4
  %997 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %997, align 2
  %998 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %998, align 4
  %999 = load ptr, ptr %130, align 4
  %1000 = call i32 @i2c_transfer(ptr noundef %999, ptr noundef nonnull %29, i32 noundef 1) #9
  %1001 = icmp eq i32 %1000, 1
  br i1 %1001, label %1005, label %1002

1002:                                             ; preds = %984
  %1003 = zext i8 %991 to i32
  %1004 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 131, i32 noundef %1003, i32 noundef %1000) #10
  br label %1005

1005:                                             ; preds = %1002, %984
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #9
  %1006 = load i32, ptr %131, align 4
  %1007 = and i32 %1006, -2
  %1008 = icmp eq i32 %1007, 4
  %1009 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -120) #9
  %1010 = trunc i32 %1009 to i8
  br i1 %1008, label %1011, label %1027

1011:                                             ; preds = %1005
  %1012 = and i8 %1010, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 -120, ptr %26, align 2
  %1013 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %1012, ptr %1013, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %1014 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %1014, align 4, !annotation !8
  %1015 = load ptr, ptr %142, align 4
  %1016 = load i8, ptr %1015, align 4
  %1017 = zext i8 %1016 to i16
  store i16 %1017, ptr %27, align 4
  %1018 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %1018, align 2
  %1019 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %1019, align 4
  %1020 = load ptr, ptr %130, align 4
  %1021 = call i32 @i2c_transfer(ptr noundef %1020, ptr noundef nonnull %27, i32 noundef 1) #9
  %1022 = icmp eq i32 %1021, 1
  br i1 %1022, label %1026, label %1023

1023:                                             ; preds = %1011
  %1024 = zext i8 %1012 to i32
  %1025 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 136, i32 noundef %1024, i32 noundef %1021) #10
  br label %1026

1026:                                             ; preds = %1023, %1011
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  br label %1043

1027:                                             ; preds = %1005
  %1028 = or i8 %1010, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 -120, ptr %24, align 2
  %1029 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %1028, ptr %1029, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %1030 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %1030, align 4, !annotation !8
  %1031 = load ptr, ptr %142, align 4
  %1032 = load i8, ptr %1031, align 4
  %1033 = zext i8 %1032 to i16
  store i16 %1033, ptr %25, align 4
  %1034 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %1034, align 2
  %1035 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %1035, align 4
  %1036 = load ptr, ptr %130, align 4
  %1037 = call i32 @i2c_transfer(ptr noundef %1036, ptr noundef nonnull %25, i32 noundef 1) #9
  %1038 = icmp eq i32 %1037, 1
  br i1 %1038, label %1042, label %1039

1039:                                             ; preds = %1027
  %1040 = zext i8 %1028 to i32
  %1041 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 136, i32 noundef %1040, i32 noundef %1037) #10
  br label %1042

1042:                                             ; preds = %1039, %1027
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  br label %1043

1043:                                             ; preds = %1042, %1026
  %1044 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 90) #9
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 90, ptr %22, align 2
  %1047 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %1046, ptr %1047, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %1048 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %1048, align 4, !annotation !8
  %1049 = load ptr, ptr %142, align 4
  %1050 = load i8, ptr %1049, align 4
  %1051 = zext i8 %1050 to i16
  store i16 %1051, ptr %23, align 4
  %1052 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %1052, align 2
  %1053 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %1053, align 4
  %1054 = load ptr, ptr %130, align 4
  %1055 = call i32 @i2c_transfer(ptr noundef %1054, ptr noundef nonnull %23, i32 noundef 1) #9
  %1056 = icmp eq i32 %1055, 1
  br i1 %1056, label %1060, label %1057

1057:                                             ; preds = %1043
  %1058 = zext i8 %1046 to i32
  %1059 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 90, i32 noundef %1058, i32 noundef %1055) #10
  br label %1060

1060:                                             ; preds = %1057, %1043
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  %1061 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 106) #9
  %1062 = trunc i32 %1061 to i8
  %1063 = or i8 %1062, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 106, ptr %20, align 2
  %1064 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %1063, ptr %1064, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %1065 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %1065, align 4, !annotation !8
  %1066 = load ptr, ptr %142, align 4
  %1067 = load i8, ptr %1066, align 4
  %1068 = zext i8 %1067 to i16
  store i16 %1068, ptr %21, align 4
  %1069 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %1069, align 2
  %1070 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %1070, align 4
  %1071 = load ptr, ptr %130, align 4
  %1072 = call i32 @i2c_transfer(ptr noundef %1071, ptr noundef nonnull %21, i32 noundef 1) #9
  %1073 = icmp eq i32 %1072, 1
  br i1 %1073, label %1077, label %1074

1074:                                             ; preds = %1060
  %1075 = zext i8 %1063 to i32
  %1076 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 106, i32 noundef %1075, i32 noundef %1072) #10
  br label %1077

1077:                                             ; preds = %1074, %1060
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  %1078 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 67) #9
  %1079 = trunc i32 %1078 to i8
  %1080 = or i8 %1079, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 67, ptr %18, align 2
  %1081 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %1080, ptr %1081, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %1082 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %1082, align 4, !annotation !8
  %1083 = load ptr, ptr %142, align 4
  %1084 = load i8, ptr %1083, align 4
  %1085 = zext i8 %1084 to i16
  store i16 %1085, ptr %19, align 4
  %1086 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %1086, align 2
  %1087 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %1087, align 4
  %1088 = load ptr, ptr %130, align 4
  %1089 = call i32 @i2c_transfer(ptr noundef %1088, ptr noundef nonnull %19, i32 noundef 1) #9
  %1090 = icmp eq i32 %1089, 1
  br i1 %1090, label %1094, label %1091

1091:                                             ; preds = %1077
  %1092 = zext i8 %1080 to i32
  %1093 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 67, i32 noundef %1092, i32 noundef %1089) #10
  br label %1094

1094:                                             ; preds = %1091, %1077
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  %1095 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 91) #9
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, -49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 91, ptr %16, align 2
  %1098 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %1097, ptr %1098, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %1099 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %1099, align 4, !annotation !8
  %1100 = load ptr, ptr %142, align 4
  %1101 = load i8, ptr %1100, align 4
  %1102 = zext i8 %1101 to i16
  store i16 %1102, ptr %17, align 4
  %1103 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1103, align 2
  %1104 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1104, align 4
  %1105 = load ptr, ptr %130, align 4
  %1106 = call i32 @i2c_transfer(ptr noundef %1105, ptr noundef nonnull %17, i32 noundef 1) #9
  %1107 = icmp eq i32 %1106, 1
  br i1 %1107, label %1111, label %1108

1108:                                             ; preds = %1094
  %1109 = zext i8 %1097 to i32
  %1110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 91, i32 noundef %1109, i32 noundef %1106) #10
  br label %1111

1111:                                             ; preds = %1108, %1094
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %1112 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 3) #9
  %1113 = trunc i32 %1112 to i8
  %1114 = or i8 %1113, 12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 3, ptr %14, align 2
  %1115 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %1114, ptr %1115, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %1116 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %1116, align 4, !annotation !8
  %1117 = load ptr, ptr %142, align 4
  %1118 = load i8, ptr %1117, align 4
  %1119 = zext i8 %1118 to i16
  store i16 %1119, ptr %15, align 4
  %1120 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1120, align 2
  %1121 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1121, align 4
  %1122 = load ptr, ptr %130, align 4
  %1123 = call i32 @i2c_transfer(ptr noundef %1122, ptr noundef nonnull %15, i32 noundef 1) #9
  %1124 = icmp eq i32 %1123, 1
  br i1 %1124, label %1128, label %1125

1125:                                             ; preds = %1111
  %1126 = zext i8 %1114 to i32
  %1127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 3, i32 noundef %1126, i32 noundef %1123) #10
  br label %1128

1128:                                             ; preds = %1125, %1111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %1129 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 3) #9
  %1130 = trunc i32 %1129 to i8
  %1131 = or i8 %1130, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 3, ptr %12, align 2
  %1132 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %1131, ptr %1132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %1133 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %1133, align 4, !annotation !8
  %1134 = load ptr, ptr %142, align 4
  %1135 = load i8, ptr %1134, align 4
  %1136 = zext i8 %1135 to i16
  store i16 %1136, ptr %13, align 4
  %1137 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1137, align 2
  %1138 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1138, align 4
  %1139 = load ptr, ptr %130, align 4
  %1140 = call i32 @i2c_transfer(ptr noundef %1139, ptr noundef nonnull %13, i32 noundef 1) #9
  %1141 = icmp eq i32 %1140, 1
  br i1 %1141, label %1145, label %1142

1142:                                             ; preds = %1128
  %1143 = zext i8 %1131 to i32
  %1144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 3, i32 noundef %1143, i32 noundef %1140) #10
  br label %1145

1145:                                             ; preds = %1142, %1128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  %1146 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 67) #9
  %1147 = trunc i32 %1146 to i8
  %1148 = or i8 %1147, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 67, ptr %10, align 2
  %1149 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %1148, ptr %1149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %1150 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %1150, align 4, !annotation !8
  %1151 = load ptr, ptr %142, align 4
  %1152 = load i8, ptr %1151, align 4
  %1153 = zext i8 %1152 to i16
  store i16 %1153, ptr %11, align 4
  %1154 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1154, align 2
  %1155 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1155, align 4
  %1156 = load ptr, ptr %130, align 4
  %1157 = call i32 @i2c_transfer(ptr noundef %1156, ptr noundef nonnull %11, i32 noundef 1) #9
  %1158 = icmp eq i32 %1157, 1
  br i1 %1158, label %1162, label %1159

1159:                                             ; preds = %1145
  %1160 = zext i8 %1148 to i32
  %1161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 67, i32 noundef %1160, i32 noundef %1157) #10
  br label %1162

1162:                                             ; preds = %1159, %1145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  %1163 = load volatile i32, ptr @jiffies, align 64
  %1164 = add i32 %1163, 200
  br label %1165

1165:                                             ; preds = %1169, %1162
  %1166 = load volatile i32, ptr @jiffies, align 64
  %1167 = sub i32 %1166, %1164
  %1168 = icmp slt i32 %1167, 0
  br i1 %1168, label %1169, label %1173

1169:                                             ; preds = %1165
  call void @msleep(i32 noundef 10) #9
  %1170 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 67)
  %1171 = and i32 %1170, 8
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1165, label %1173

1173:                                             ; preds = %1169, %1165
  %1174 = load volatile i32, ptr @jiffies, align 64
  %1175 = sub i32 %1164, %1174
  %1176 = icmp slt i32 %1175, 0
  br i1 %1176, label %1281, label %1177

1177:                                             ; preds = %1173
  call void @msleep(i32 noundef 20) #9
  %1178 = load volatile i32, ptr @jiffies, align 64
  %1179 = add i32 %1178, 50
  br label %1180

1180:                                             ; preds = %1184, %1177
  %1181 = load volatile i32, ptr @jiffies, align 64
  %1182 = sub i32 %1181, %1179
  %1183 = icmp slt i32 %1182, 0
  br i1 %1183, label %1184, label %1188

1184:                                             ; preds = %1180
  call void @msleep(i32 noundef 10) #9
  %1185 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -126)
  %1186 = and i32 %1185, 4
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1180, label %1188

1188:                                             ; preds = %1184, %1180
  %1189 = load volatile i32, ptr @jiffies, align 64
  %1190 = sub i32 %1179, %1189
  %1191 = icmp slt i32 %1190, 0
  br i1 %1191, label %1281, label %1192

1192:                                             ; preds = %1188
  %1193 = load volatile i32, ptr @jiffies, align 64
  %1194 = call i32 @__msecs_to_jiffies(i32 noundef %137) #9
  %1195 = add i32 %1194, %1193
  br label %1196

1196:                                             ; preds = %1200, %1192
  %1197 = load volatile i32, ptr @jiffies, align 64
  %1198 = sub i32 %1197, %1195
  %1199 = icmp slt i32 %1198, 0
  br i1 %1199, label %1200, label %1204

1200:                                             ; preds = %1196
  call void @msleep(i32 noundef 10) #9
  %1201 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -126)
  %1202 = and i32 %1201, 8
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1196, label %1204

1204:                                             ; preds = %1200, %1196
  %1205 = load volatile i32, ptr @jiffies, align 64
  %1206 = sub i32 %1195, %1205
  %1207 = icmp slt i32 %1206, 0
  br i1 %1207, label %1281, label %1208

1208:                                             ; preds = %1204
  %1209 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 106) #9
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 106, ptr %8, align 2
  %1212 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %1211, ptr %1212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %1213 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %1213, align 4, !annotation !8
  %1214 = load ptr, ptr %142, align 4
  %1215 = load i8, ptr %1214, align 4
  %1216 = zext i8 %1215 to i16
  store i16 %1216, ptr %9, align 4
  %1217 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %1217, align 2
  %1218 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %1218, align 4
  %1219 = load ptr, ptr %130, align 4
  %1220 = call i32 @i2c_transfer(ptr noundef %1219, ptr noundef nonnull %9, i32 noundef 1) #9
  %1221 = icmp eq i32 %1220, 1
  br i1 %1221, label %1225, label %1222

1222:                                             ; preds = %1208
  %1223 = zext i8 %1211 to i32
  %1224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 106, i32 noundef %1223, i32 noundef %1220) #10
  br label %1225

1225:                                             ; preds = %1222, %1208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %1226 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -120) #9
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 -120, ptr %6, align 2
  %1229 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %1228, ptr %1229, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %1230 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %1230, align 4, !annotation !8
  %1231 = load ptr, ptr %142, align 4
  %1232 = load i8, ptr %1231, align 4
  %1233 = zext i8 %1232 to i16
  store i16 %1233, ptr %7, align 4
  %1234 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1234, align 2
  %1235 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %1235, align 4
  %1236 = load ptr, ptr %130, align 4
  %1237 = call i32 @i2c_transfer(ptr noundef %1236, ptr noundef nonnull %7, i32 noundef 1) #9
  %1238 = icmp eq i32 %1237, 1
  br i1 %1238, label %1242, label %1239

1239:                                             ; preds = %1225
  %1240 = zext i8 %1228 to i32
  %1241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 136, i32 noundef %1240, i32 noundef %1237) #10
  br label %1242

1242:                                             ; preds = %1239, %1225
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %1243 = load volatile i32, ptr @jiffies, align 64
  %1244 = add i32 %1243, 2
  br label %1245

1245:                                             ; preds = %1249, %1242
  %1246 = load volatile i32, ptr @jiffies, align 64
  %1247 = sub i32 %1246, %1244
  %1248 = icmp slt i32 %1247, 0
  br i1 %1248, label %1249, label %1253

1249:                                             ; preds = %1245
  call void @msleep(i32 noundef 10) #9
  %1250 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -33)
  %1251 = and i32 %1250, 128
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1245, label %1253

1253:                                             ; preds = %1249, %1245
  %1254 = load volatile i32, ptr @jiffies, align 64
  %1255 = sub i32 %1244, %1254
  %1256 = icmp slt i32 %1255, 0
  br i1 %1256, label %1281, label %1257

1257:                                             ; preds = %1253
  call void @msleep(i32 noundef 100) #9
  %1258 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext -33)
  %1259 = and i32 %1258, 128
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1281, label %1261

1261:                                             ; preds = %1257
  %1262 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 90) #9
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 90, ptr %4, align 2
  %1265 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %1264, ptr %1265, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %1266 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %1266, align 4, !annotation !8
  %1267 = load ptr, ptr %142, align 4
  %1268 = load i8, ptr %1267, align 4
  %1269 = zext i8 %1268 to i16
  store i16 %1269, ptr %5, align 4
  %1270 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1270, align 2
  %1271 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1271, align 4
  %1272 = load ptr, ptr %130, align 4
  %1273 = call i32 @i2c_transfer(ptr noundef %1272, ptr noundef nonnull %5, i32 noundef 1) #9
  %1274 = icmp eq i32 %1273, 1
  br i1 %1274, label %1278, label %1275

1275:                                             ; preds = %1261
  %1276 = zext i8 %1264 to i32
  %1277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 90, i32 noundef %1276, i32 noundef %1273) #10
  br label %1278

1278:                                             ; preds = %1275, %1261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %1279 = load i32, ptr %128, align 4
  %1280 = getelementptr inbounds %struct.stv0297_state, ptr %130, i32 0, i32 4
  store i32 %1279, ptr %1280, align 4
  br label %1299

1281:                                             ; preds = %1257, %1253, %1204, %1188, %1173
  %1282 = call fastcc i32 @stv0297_readreg(ptr noundef %130, i8 noundef zeroext 106) #9
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 106, ptr %2, align 2
  %1285 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %1284, ptr %1285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %1286 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %1286, align 4, !annotation !8
  %1287 = load ptr, ptr %142, align 4
  %1288 = load i8, ptr %1287, align 4
  %1289 = zext i8 %1288 to i16
  store i16 %1289, ptr %3, align 4
  %1290 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1290, align 2
  %1291 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1291, align 4
  %1292 = load ptr, ptr %130, align 4
  %1293 = call i32 @i2c_transfer(ptr noundef %1292, ptr noundef nonnull %3, i32 noundef 1) #9
  %1294 = icmp eq i32 %1293, 1
  br i1 %1294, label %1298, label %1295

1295:                                             ; preds = %1281
  %1296 = zext i8 %1284 to i32
  %1297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 106, i32 noundef %1296, i32 noundef %1293) #10
  br label %1298

1298:                                             ; preds = %1295, %1281
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %1299

1299:                                             ; preds = %1298, %1278, %135, %1
  %1300 = phi i32 [ 0, %1298 ], [ 0, %1278 ], [ -22, %1 ], [ -22, %135 ]
  ret i32 %1300
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext 0)
  %6 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext -125)
  %7 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = lshr i32 %6, 3
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.stv0297_state, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stv0297_config, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = xor i32 %10, 1
  store i32 %19, ptr %11, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext 85) #9
  %22 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext 86) #9
  %23 = shl i32 %22, 8
  %24 = or i32 %23, %21
  %25 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext 87) #9
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  %28 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext 88) #9
  %29 = shl i32 %28, 24
  %30 = or i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 28900
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %34, 1000
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 0, ptr %37, align 4
  %38 = lshr i32 %5, 4
  %39 = and i32 %38, 7
  %40 = icmp ult i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = getelementptr inbounds [5 x i32], ptr @switch.table.stv0297_get_frontend, i32 0, i32 %39
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @stv0297_readreg(ptr noundef %4, i8 noundef zeroext -33)
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 31
  store i32 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call fastcc void @stv0297_readregs(ptr noundef %7, i8 noundef zeroext -96, ptr noundef nonnull %5, i8 noundef zeroext 3)
  %8 = load i8, ptr %5, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.stv0297_state, ptr %7, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = call fastcc i32 @stv0297_readreg(ptr noundef %7, i8 noundef zeroext -96) #9
  %21 = trunc i32 %20 to i8
  %22 = or i8 %21, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 -96, ptr %3, align 2
  %23 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %22, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.stv0297_state, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %30, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %4, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %10
  %35 = zext i8 %22 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 160, i32 noundef %35, i32 noundef %32) #10
  br label %37

37:                                               ; preds = %34, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %38

38:                                               ; preds = %37, %2
  %39 = getelementptr inbounds %struct.stv0297_state, ptr %7, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call fastcc void @stv0297_readregs(ptr noundef %5, i8 noundef zeroext 65, ptr noundef nonnull %3, i8 noundef zeroext 3)
  %6 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i16
  %10 = shl nuw nsw i16 %9, 8
  %11 = load i8, ptr %3, align 1
  %12 = zext i8 %11 to i16
  %13 = or i16 %10, %12
  %14 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i16 @llvm.usub.sat.i16(i16 %13, i16 512)
  br label %22

20:                                               ; preds = %2
  %21 = call i16 @llvm.usub.sat.i16(i16 511, i16 %13)
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i16 [ %19, %18 ], [ %21, %20 ]
  %24 = shl i16 %23, 7
  %25 = lshr i16 %23, 2
  %26 = or i16 %24, %25
  store i16 %26, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !8
  call fastcc void @stv0297_readregs(ptr noundef %5, i8 noundef zeroext 7, ptr noundef nonnull %3, i8 noundef zeroext 2)
  %6 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = load i8, ptr %3, align 2
  %11 = zext i8 %10 to i16
  %12 = or i16 %9, %11
  store i16 %12, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call fastcc i32 @stv0297_readreg(ptr noundef %10, i8 noundef zeroext -33) #9
  %12 = trunc i32 %11 to i8
  %13 = or i8 %12, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 -33, ptr %7, align 2
  %14 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %13, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.stv0297_state, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %21, align 4
  %22 = load ptr, ptr %10, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 1) #9
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = zext i8 %13 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 223, i32 noundef %26, i32 noundef %23) #10
  br label %28

28:                                               ; preds = %25, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %29 = call fastcc i32 @stv0297_readreg(ptr noundef %10, i8 noundef zeroext -43)
  %30 = shl i32 %29, 8
  %31 = call fastcc i32 @stv0297_readreg(ptr noundef %10, i8 noundef zeroext -44)
  %32 = or i32 %30, %31
  store i32 %32, ptr %1, align 4
  %33 = call fastcc i32 @stv0297_readreg(ptr noundef %10, i8 noundef zeroext -33) #9
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, -4
  %36 = or i8 %35, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 -33, ptr %5, align 2
  %37 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %36, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %38 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = load ptr, ptr %16, align 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %6, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %43, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = zext i8 %36 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 223, i32 noundef %48, i32 noundef %45) #10
  br label %50

50:                                               ; preds = %47, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %51 = call fastcc i32 @stv0297_readreg(ptr noundef %10, i8 noundef zeroext -33) #9
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, -4
  %54 = or i8 %53, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 -33, ptr %3, align 2
  %55 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %54, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %56 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %56, align 4, !annotation !8
  %57 = load ptr, ptr %16, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %4, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %61, align 4
  %62 = load ptr, ptr %10, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %4, i32 noundef 1) #9
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %50
  %66 = zext i8 %54 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 223, i32 noundef %66, i32 noundef %63) #10
  br label %68

68:                                               ; preds = %65, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stv0297_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 -121, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 120, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.stv0297_state, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %8
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 135, i32 noundef 120, i32 noundef %20) #10
  br label %24

24:                                               ; preds = %22, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 -122, ptr %3, align 2
  %25 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -56, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %26 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = load ptr, ptr %13, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %4, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %10, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %4, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stv0297_writereg, i32 noundef 134, i32 noundef 200, i32 noundef %33) #10
  br label %37

37:                                               ; preds = %35, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %38

38:                                               ; preds = %37, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stv0297_readregs(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.stv0297_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %16 = load i8, ptr %9, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %20 = zext i8 %3 to i16
  store i16 %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.stv0297_config, ptr %9, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  %26 = load ptr, ptr %0, align 4
  br i1 %25, label %34, label %27

27:                                               ; preds = %4
  %28 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %6, i32 noundef 1) #9
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef %15, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %42, label %37

34:                                               ; preds = %4
  %35 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %6, i32 noundef 2) #9
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %30, %27
  %38 = phi i32 [ %28, %27 ], [ %32, %30 ], [ %35, %34 ]
  %39 = load i8, ptr %5, align 1
  %40 = zext i8 %39 to i32
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stv0297_readregs, i32 noundef %40, i32 noundef %38) #10
  br label %42

42:                                               ; preds = %37, %34, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #7

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
