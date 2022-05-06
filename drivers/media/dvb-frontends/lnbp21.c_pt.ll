; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lnbp21.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lnbp21.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbh24_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbh24_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbh24_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbp21_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbp21_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbp21_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lnbp21 = type { i8, i8, i8, ptr, i8 }
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

@__kstrtab_lnbh24_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbh24_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbh24_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbh24_attach to i32), ptr @__kstrtab_lnbh24_attach, ptr @__kstrtabns_lnbh24_attach }, section "___ksymtab+lnbh24_attach", align 4
@__kstrtab_lnbp21_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbp21_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbp21_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbp21_attach to i32), ptr @__kstrtab_lnbp21_attach, ptr @__kstrtabns_lnbp21_attach }, section "___ksymtab+lnbp21_attach", align 4
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"description=Driver for lnb supply and control ic lnbp21, lnbh24\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [41 x i8] c"author=Oliver Endriss, Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [30 x i8] c"\016LNBx2x attached on addr=%x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_lnbh24_attach, ptr @__ksymtab_lnbp21_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lnbh24_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = tail call fastcc ptr @lnbx2x_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lnbx2x_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.i2c_msg, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 12) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.lnbp21, ptr %8, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.lnbp21, ptr %8, i32 0, i32 4
  store i8 %4, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.lnbp21, ptr %8, i32 0, i32 1
  store i8 %2, ptr %14, align 1
  %15 = xor i8 %3, -1
  %16 = getelementptr inbounds %struct.lnbp21, ptr %8, i32 0, i32 2
  store i8 %15, ptr %16, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %17 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %17, align 4, !annotation !8
  %18 = zext i8 %4 to i16
  store i16 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %8, ptr %20, align 4
  %21 = or i8 %2, 64
  %22 = and i8 %21, %15
  store i8 %22, ptr %8, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 1) #6
  %24 = icmp eq i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #6
  br label %38

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @lnbp21_release, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @lnbp21_set_voltage, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 26
  store ptr @lnbp21_enable_high_lnb_voltage, ptr %29, align 4
  %30 = and i8 %3, 32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 24
  store ptr @lnbp21_set_tone, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i8, ptr %12, align 8
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %36) #7
  br label %38

38:                                               ; preds = %34, %25, %5
  %39 = phi ptr [ null, %25 ], [ %0, %34 ], [ null, %5 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lnbp21_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = tail call fastcc ptr @lnbx2x_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 8)
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbp21_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = load i8, ptr %5, align 4
  %14 = and i8 %13, -13
  store i8 %14, ptr %5, align 4
  switch i32 %1, label %32 [
    i32 2, label %19
    i32 0, label %15
    i32 1, label %17
  ]

15:                                               ; preds = %2
  %16 = or i8 %14, 4
  br label %19

17:                                               ; preds = %2
  %18 = or i8 %13, 12
  br label %19

19:                                               ; preds = %17, %15, %2
  %20 = phi i8 [ %18, %17 ], [ %16, %15 ], [ %14, %2 ]
  %21 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %20, %22
  %24 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, %23
  store i8 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #6
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 0, i32 -5
  br label %32

32:                                               ; preds = %19, %2
  %33 = phi i32 [ %31, %19 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lnbp21_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 1, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.lnbp21, ptr %4, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %10, align 4
  %11 = load i8, ptr %4, align 4
  %12 = and i8 %11, -13
  %13 = getelementptr inbounds %struct.lnbp21, ptr %4, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = or i8 %14, %12
  %16 = getelementptr inbounds %struct.lnbp21, ptr %4, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, %15
  store i8 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.lnbp21, ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  %22 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %22) #6
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbp21_enable_high_lnb_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = icmp eq i32 %1, 0
  %14 = load i8, ptr %5, align 4
  %15 = and i8 %14, -17
  %16 = select i1 %13, i8 0, i8 16
  %17 = or i8 %15, %16
  %18 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, %17
  %21 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, %20
  store i8 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #6
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbp21_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  switch i32 %1, label %32 [
    i32 1, label %13
    i32 0, label %16
  ]

13:                                               ; preds = %2
  %14 = load i8, ptr %5, align 4
  %15 = and i8 %14, -33
  br label %19

16:                                               ; preds = %2
  %17 = load i8, ptr %5, align 4
  %18 = or i8 %17, 32
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i8 [ %18, %16 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, %20
  %24 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, %23
  store i8 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.lnbp21, ptr %5, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #6
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 0, i32 -5
  br label %32

32:                                               ; preds = %19, %2
  %33 = phi i32 [ %31, %19 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
