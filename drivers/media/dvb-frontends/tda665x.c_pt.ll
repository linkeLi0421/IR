; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda665x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda665x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda665x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda665x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda665x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda665x_state = type { ptr, ptr, ptr, i32, i32 }
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
%struct.tda665x_config = type { [128 x i8], i8, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@tda665x_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @tda665x_release, ptr null, ptr null, ptr null, ptr null, ptr @tda665x_set_params, ptr null, ptr null, ptr @tda665x_get_frequency, ptr null, ptr null, ptr @tda665x_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [36 x i8] c"\017%s: Attaching TDA665x (%s) tuner\0A\00", align 1
@__func__.tda665x_attach = private unnamed_addr constant [15 x i8] c"tda665x_attach\00", align 1
@__kstrtab_tda665x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda665x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda665x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda665x_attach to i32), ptr @__kstrtab_tda665x_attach, ptr @__kstrtabns_tda665x_attach }, section "___ksymtab+tda665x_attach", align 4
@__UNIQUE_ID_description249 = internal constant [27 x i8] c"description=TDA665x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\013%s: Frequency beyond limits, frequency=%d\0A\00", align 1
@__func__.tda665x_set_frequency = private unnamed_addr constant [22 x i8] c"tda665x_set_frequency\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\017%s: Waiting to Phase LOCK\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\017%s: Tuner Phase locked: status=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\013%s: No Phase lock: status=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\013%s: I/O Error\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\013%s: I/O Error err=<%d>\0A\00", align 1
@__func__.tda665x_write = private unnamed_addr constant [14 x i8] c"tda665x_write\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\017%s: Tuner Phase Locked\0A\00", align 1
@__func__.tda665x_get_status = private unnamed_addr constant [19 x i8] c"tda665x_get_status\00", align 1
@__func__.tda665x_read = private unnamed_addr constant [13 x i8] c"tda665x_read\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tda665x_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda665x_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tda665x_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.tda665x_state, ptr %5, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  store ptr %0, ptr %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %11, ptr noundef nonnull align 4 dereferenceable(220) @tda665x_ops, i32 220, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %11, ptr noundef align 4 dereferenceable(128) %1, i32 128, i1 false)
  %12 = getelementptr inbounds %struct.tda665x_config, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tda665x_config, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tda665x_config, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda665x_attach, ptr noundef %11) #8
  br label %22

22:                                               ; preds = %7, %3
  %23 = phi ptr [ %0, %7 ], [ null, %3 ]
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda665x_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda665x_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tda665x_state, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 12713984, ptr %4, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %6
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda665x_set_frequency, i32 noundef %6) #8
  br label %82

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %6
  %24 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %23, %25
  %27 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 1
  %30 = add i32 %29, %26
  %31 = udiv i32 %30, %28
  %32 = lshr i32 %31, 8
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 127
  store i8 %34, ptr %4, align 4
  %35 = trunc i32 %31 to i8
  %36 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %38 = icmp ult i32 %6, 153000000
  br i1 %38, label %52, label %39

39:                                               ; preds = %20
  %40 = icmp ult i32 %6, 438000000
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = icmp ult i32 %6, 300000000
  %43 = select i1 %42, i8 98, i8 -126
  br label %52

44:                                               ; preds = %39
  %45 = icmp ult i32 %6, 470000000
  %46 = select i1 %45, i8 100, i8 4
  %47 = icmp ult i32 %6, 526000000
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = or i8 %46, -128
  br label %52

50:                                               ; preds = %44
  %51 = or i8 %46, -96
  br label %52

52:                                               ; preds = %50, %48, %41, %20
  %53 = phi i8 [ %51, %50 ], [ %49, %48 ], [ -31, %20 ], [ %43, %41 ]
  store i8 %53, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %54 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 5, ptr %54, align 4, !annotation !8
  %55 = getelementptr inbounds %struct.tda665x_config, ptr %10, i32 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %2, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tda665x_state, ptr %8, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %2, i32 noundef 1) #9
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %68

65:                                               ; preds = %52
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tda665x_write, i32 noundef %62) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  %67 = icmp slt i32 %62, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65, %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda665x_set_frequency) #8
  call void @msleep(i32 noundef 20) #9
  %70 = call i32 @tda665x_get_status(ptr noundef %0, ptr noundef nonnull %3) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %3, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tda665x_set_frequency, i32 noundef 1) #8
  %77 = getelementptr inbounds %struct.tda665x_state, ptr %8, i32 0, i32 3
  store i32 %6, ptr %77, align 4
  br label %82

78:                                               ; preds = %72
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda665x_set_frequency, i32 noundef %73) #8
  br label %82

80:                                               ; preds = %68, %65
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda665x_set_frequency) #8
  br label %82

82:                                               ; preds = %80, %78, %75, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda665x_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda665x_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda665x_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  store i32 0, ptr %1, align 4
  %7 = getelementptr inbounds %struct.tda665x_state, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tda665x_config, ptr %8, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tda665x_state, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %23

20:                                               ; preds = %2
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tda665x_read, i32 noundef %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  %22 = icmp slt i32 %17, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %19
  %24 = load i8, ptr %4, align 1
  %25 = and i8 %24, 64
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda665x_get_status) #8
  store i32 1, ptr %1, align 4
  br label %31

29:                                               ; preds = %20
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda665x_get_status) #8
  br label %31

31:                                               ; preds = %29, %27, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
