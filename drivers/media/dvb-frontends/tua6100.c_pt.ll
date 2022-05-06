; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tua6100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tua6100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tua6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tua6100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tua6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.tua6100_priv = type { i32, ptr, i32 }

@tua6100_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Infineon TUA6100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @tua6100_release, ptr null, ptr @tua6100_sleep, ptr null, ptr null, ptr @tua6100_set_params, ptr null, ptr null, ptr @tua6100_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tua6100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tua6100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tua6100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tua6100_attach to i32), ptr @__kstrtab_tua6100_attach, ptr @__kstrtabns_tua6100_attach }, section "___ksymtab+tua6100_attach", align 4
@__UNIQUE_ID_description249 = internal constant [31 x i8] c"description=DVB tua6100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [25 x i8] c"author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: i2c error\0A\00", align 1
@__func__.tua6100_sleep = private unnamed_addr constant [14 x i8] c"tua6100_sleep\00", align 1
@__const.tua6100_set_params.reg2 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tua6100_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tua6100_attach(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 -128, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = trunc i32 %1 to i16
  store i16 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 %17(ptr noundef %0, i32 noundef 1) #8
  br label %21

21:                                               ; preds = %19, %3
  %22 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 2) #8
  %23 = load ptr, ptr %16, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 %23(ptr noundef %0, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %25, %21
  %28 = icmp eq i32 %22, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 12) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  store i32 %1, ptr %31, align 8
  %34 = getelementptr inbounds %struct.tua6100_priv, ptr %31, i32 0, i32 1
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %35, ptr noundef nonnull align 4 dereferenceable(220) @tua6100_tuner_ops, i32 220, i1 false)
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %31, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %29, %27
  %38 = phi ptr [ %0, %33 ], [ null, %27 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret ptr %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tua6100_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tua6100_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i32, ptr %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 %13(ptr noundef %0, i32 noundef 1) #8
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.tua6100_priv, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tua6100_sleep) #10
  br label %24

24:                                               ; preds = %22, %17
  %25 = load ptr, ptr %12, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 %25(ptr noundef %0, i32 noundef 0) #8
  br label %29

29:                                               ; preds = %27, %24
  %30 = select i1 %21, i32 0, i32 %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tua6100_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [4 x i8], align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const.tua6100_set_params.reg2, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = load i32, ptr %10, align 4
  %13 = trunc i32 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %2, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %17 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %17, align 4, !annotation !8
  %18 = load i32, ptr %10, align 4
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %6, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %3, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %23 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %23, align 4, !annotation !8
  %24 = load i32, ptr %10, align 4
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %7, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  store i16 3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %4, ptr %28, align 4
  %29 = load i32, ptr %8, align 4
  %30 = icmp ult i32 %29, 2000000
  %31 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  br i1 %30, label %32, label %41

32:                                               ; preds = %1
  store i8 3, ptr %31, align 1
  %33 = icmp ult i32 %29, 1630000
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  %35 = icmp ugt i32 %29, 1524999
  %36 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %37 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 4, ptr %37, align 1
  br i1 %35, label %42, label %38

38:                                               ; preds = %34
  %39 = icmp ult i32 %29, 1455000
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  store i8 28, ptr %36, align 1
  br label %48

41:                                               ; preds = %1
  store i8 7, ptr %31, align 1
  br label %44

42:                                               ; preds = %38, %34
  %43 = phi i8 [ 44, %38 ], [ -84, %34 ]
  store i8 12, ptr %36, align 1
  br label %48

44:                                               ; preds = %41, %32
  %45 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 -116, ptr %45, align 1
  %46 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %47 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 4, ptr %47, align 1
  store i8 28, ptr %46, align 1
  br label %48

48:                                               ; preds = %44, %42, %40
  %49 = phi i8 [ %43, %42 ], [ -116, %44 ], [ 44, %40 ]
  %50 = shl i32 %29, 2
  %51 = udiv i32 %50, 4000
  %52 = udiv i32 %50, 128000
  %53 = lshr i32 %52, 9
  %54 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %55 = trunc i32 %53 to i8
  %56 = and i8 %55, 3
  %57 = or i8 %49, %56
  store i8 %57, ptr %54, align 1
  %58 = lshr i32 %52, 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %59, ptr %60, align 2
  %61 = trunc i32 %52 to i8
  %62 = shl i8 %61, 7
  %63 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %64 = mul nuw nsw i32 %52, 96
  %65 = mul nuw nsw i32 %52, 32000
  %66 = getelementptr inbounds %struct.tua6100_priv, ptr %10, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = add nuw nsw i32 %64, %51
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 127
  %70 = or i8 %69, %62
  store i8 %70, ptr %63, align 1
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %48
  %75 = call i32 %72(ptr noundef %0, i32 noundef 1) #8
  br label %76

76:                                               ; preds = %74, %48
  %77 = getelementptr inbounds %struct.tua6100_priv, ptr %10, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %5, i32 noundef 1) #8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load ptr, ptr %71, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 %82(ptr noundef %0, i32 noundef 1) #8
  br label %86

86:                                               ; preds = %84, %81
  %87 = load ptr, ptr %77, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %7, i32 noundef 1) #8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load ptr, ptr %71, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 %91(ptr noundef %0, i32 noundef 1) #8
  br label %95

95:                                               ; preds = %93, %90
  %96 = load ptr, ptr %77, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %6, i32 noundef 1) #8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load ptr, ptr %71, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call i32 %100(ptr noundef %0, i32 noundef 0) #8
  br label %104

104:                                              ; preds = %102, %99, %95, %86, %76
  %105 = phi i32 [ -5, %76 ], [ -5, %86 ], [ -5, %95 ], [ 0, %102 ], [ 0, %99 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tua6100_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tua6100_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
