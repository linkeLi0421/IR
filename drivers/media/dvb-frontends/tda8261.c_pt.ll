; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda8261.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda8261.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda8261_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda8261_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda8261_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda8261_state = type { ptr, ptr, ptr, i32, i32 }
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
%struct.tda8261_config = type { i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@tda8261_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"TDA8261\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @tda8261_release, ptr null, ptr null, ptr null, ptr null, ptr @tda8261_set_params, ptr null, ptr null, ptr @tda8261_get_frequency, ptr null, ptr null, ptr @tda8261_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@div_tab = internal unnamed_addr constant [5 x i32] [i32 2000, i32 1000, i32 500, i32 250, i32 125], align 4
@.str = private unnamed_addr constant [41 x i8] c"\016%s: Attaching TDA8261 8PSK/QPSK tuner\0A\00", align 1
@__func__.tda8261_attach = private unnamed_addr constant [15 x i8] c"tda8261_attach\00", align 1
@__kstrtab_tda8261_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda8261_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda8261_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda8261_attach to i32), ptr @__kstrtab_tda8261_attach, ptr @__kstrtabns_tda8261_attach }, section "___ksymtab+tda8261_attach", align 4
@__UNIQUE_ID_author249 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [36 x i8] c"description=TDA8261 8PSK/QPSK Tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\014%s: Frequency beyond limits, frequency=%d\0A\00", align 1
@__func__.tda8261_set_params = private unnamed_addr constant [19 x i8] c"tda8261_set_params\00", align 1
@ref_div = internal unnamed_addr constant [5 x i8] c"\00\01\02\05\07", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\013%s: I/O Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\013%s: write error, err=%d\0A\00", align 1
@__func__.tda8261_write = private unnamed_addr constant [14 x i8] c"tda8261_write\00", align 1
@__func__.tda8261_get_status = private unnamed_addr constant [19 x i8] c"tda8261_get_status\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\013%s: read error, err=%d\0A\00", align 1
@__func__.tda8261_read = private unnamed_addr constant [13 x i8] c"tda8261_read\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tda8261_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda8261_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tda8261_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.tda8261_state, ptr %5, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  store ptr %0, ptr %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %11, ptr noundef nonnull align 4 dereferenceable(220) @tda8261_ops, i32 220, i1 false)
  %12 = getelementptr inbounds %struct.tda8261_config, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [5 x i32], ptr @div_tab, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 1000
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8261_attach) #8
  br label %20

19:                                               ; preds = %3
  tail call void @kfree(ptr noundef null) #9
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi ptr [ null, %19 ], [ %0, %7 ]
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda8261_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8261_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tda8261_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = load i32, ptr %6, align 4
  %12 = add i32 %11, -2150001
  %13 = icmp ult i32 %12, -1200001
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8261_set_params, i32 noundef %11) #8
  br label %84

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tda8261_config, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [5 x i32], ptr @div_tab, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %11, -1
  %22 = add i32 %21, %20
  %23 = udiv i32 %22, %20
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %5, align 4
  %26 = trunc i32 %23 to i8
  %27 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = getelementptr [5 x i8], ptr @ref_div, i32 0, i32 %18
  %29 = load i8, ptr %28, align 1
  %30 = shl i8 %29, 1
  %31 = and i8 %30, 14
  %32 = or i8 %31, -128
  %33 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %32, ptr %33, align 2
  %34 = icmp ult i32 %11, 1450000
  br i1 %34, label %39, label %35

35:                                               ; preds = %16
  %36 = icmp ult i32 %11, 2000000
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = icmp ult i32 %11, 2150000
  br i1 %38, label %39, label %42

39:                                               ; preds = %37, %35, %16
  %40 = phi i8 [ 0, %16 ], [ 64, %35 ], [ -128, %37 ]
  %41 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %40, ptr %41, align 1
  br label %42

42:                                               ; preds = %39, %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %43 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %43, align 4, !annotation !8
  %44 = load i8, ptr %10, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %4, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tda8261_state, ptr %8, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %4, i32 noundef 1) #9
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %58

53:                                               ; preds = %42
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tda8261_write, i32 noundef %50) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  %55 = icmp slt i32 %50, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda8261_set_params) #8
  br label %84

58:                                               ; preds = %53, %52
  call void @msleep(i32 noundef 20) #9
  %59 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  %60 = getelementptr inbounds %struct.tda8261_state, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %62 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 1, ptr %62, align 4, !annotation !8
  %63 = load i8, ptr %61, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %2, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %66, align 4
  %67 = getelementptr inbounds %struct.tda8261_state, ptr %59, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %2, i32 noundef 1) #9
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %75

72:                                               ; preds = %58
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda8261_read, i32 noundef %69) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  %74 = icmp slt i32 %69, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %71
  %76 = load i8, ptr %3, align 1
  %77 = and i8 %76, 64
  %78 = icmp eq i8 %77, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br i1 %78, label %84, label %82

79:                                               ; preds = %72
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda8261_get_status) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda8261_set_params) #8
  br label %84

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.tda8261_state, ptr %8, i32 0, i32 3
  store i32 %11, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79, %75, %56, %14
  %85 = phi i32 [ -22, %14 ], [ %50, %56 ], [ %69, %79 ], [ 0, %82 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda8261_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda8261_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8261_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  store i32 0, ptr %1, align 4
  %7 = getelementptr inbounds %struct.tda8261_state, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %9, align 4, !annotation !8
  %10 = load i8, ptr %8, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tda8261_state, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #9
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %24

19:                                               ; preds = %2
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda8261_read, i32 noundef %16) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %21 = icmp slt i32 %16, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda8261_get_status) #8
  br label %29

24:                                               ; preds = %19, %18
  %25 = load i8, ptr %4, align 1
  %26 = and i8 %25, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 1, ptr %1, align 4
  br label %29

29:                                               ; preds = %28, %24, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

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
