; ModuleID = '/llk/IR/drivers/media/dvb-frontends/isl6405.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6405.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6405_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6405_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6405_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.isl6405 = type { i8, i8, i8, ptr, i8 }
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

@__kstrtab_isl6405_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6405_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6405_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6405_attach to i32), ptr @__kstrtab_isl6405_attach, ptr @__kstrtabns_isl6405_attach }, section "___ksymtab+isl6405_attach", align 4
@__UNIQUE_ID_description249 = internal constant [57 x i8] c"description=Driver for lnb supply and control ic isl6405\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [41 x i8] c"author=Hartmut Hackmann & Oliver Endriss\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_isl6405_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @isl6405_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = alloca %struct.i2c_msg, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 12) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i8 %3, -1
  %12 = select i1 %11, i8 32, i8 64
  %13 = getelementptr inbounds %struct.isl6405, ptr %8, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.isl6405, ptr %8, i32 0, i32 4
  store i8 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.isl6405, ptr %8, i32 0, i32 1
  store i8 %3, ptr %16, align 1
  %17 = xor i8 %4, -1
  %18 = getelementptr inbounds %struct.isl6405, ptr %8, i32 0, i32 2
  store i8 %17, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  %19 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %19, align 4, !annotation !8
  %20 = zext i8 %2 to i16
  store i16 %20, ptr %6, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %8, ptr %22, align 4
  %23 = or i8 %12, %3
  %24 = and i8 %23, %17
  store i8 %24, ptr %8, align 8
  %25 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 1) #5
  %26 = icmp eq i32 %25, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  br i1 %26, label %28, label %27

27:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #5
  store ptr null, ptr %15, align 4
  br label %32

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @isl6405_release, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @isl6405_set_voltage, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 26
  store ptr @isl6405_enable_high_lnb_voltage, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %27, %5
  %33 = phi ptr [ null, %27 ], [ %0, %28 ], [ null, %5 ]
  ret ptr %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6405_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp sgt i8 %14, -1
  %16 = load i8, ptr %5, align 4
  br i1 %15, label %23, label %17

17:                                               ; preds = %2
  %18 = and i8 %16, -13
  store i8 %18, ptr %5, align 4
  switch i32 %1, label %40 [
    i32 2, label %29
    i32 0, label %19
    i32 1, label %21
  ]

19:                                               ; preds = %17
  %20 = or i8 %18, 4
  br label %29

21:                                               ; preds = %17
  %22 = or i8 %16, 12
  br label %29

23:                                               ; preds = %2
  %24 = and i8 %16, -7
  store i8 %24, ptr %5, align 4
  switch i32 %1, label %40 [
    i32 2, label %29
    i32 0, label %25
    i32 1, label %27
  ]

25:                                               ; preds = %23
  %26 = or i8 %24, 2
  br label %29

27:                                               ; preds = %23
  %28 = or i8 %16, 6
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19, %17
  %30 = phi i8 [ %24, %23 ], [ %26, %25 ], [ %28, %27 ], [ %18, %17 ], [ %20, %19 ], [ %22, %21 ]
  %31 = or i8 %30, %14
  %32 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 2
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, %31
  store i8 %34, ptr %5, align 4
  %35 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #5
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 0, i32 -5
  br label %40

40:                                               ; preds = %29, %23, %17
  %41 = phi i32 [ %39, %29 ], [ -22, %17 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isl6405_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 1, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.isl6405, ptr %4, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.isl6405, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = load i8, ptr %4, align 4
  %14 = icmp slt i8 %12, 0
  %15 = select i1 %14, i8 -13, i8 -7
  %16 = and i8 %13, %15
  %17 = or i8 %16, %12
  %18 = getelementptr inbounds %struct.isl6405, ptr %4, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %17, %19
  store i8 %20, ptr %4, align 4
  %21 = getelementptr inbounds %struct.isl6405, ptr %4, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  %24 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %24) #5
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6405_enable_high_lnb_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp sgt i8 %14, -1
  %16 = icmp eq i32 %1, 0
  %17 = load i8, ptr %5, align 4
  br i1 %15, label %23, label %18

18:                                               ; preds = %2
  br i1 %16, label %21, label %19

19:                                               ; preds = %18
  %20 = or i8 %17, 16
  br label %28

21:                                               ; preds = %18
  %22 = and i8 %17, -17
  br label %28

23:                                               ; preds = %2
  br i1 %16, label %26, label %24

24:                                               ; preds = %23
  %25 = or i8 %17, 8
  br label %28

26:                                               ; preds = %23
  %27 = and i8 %17, -9
  br label %28

28:                                               ; preds = %26, %24, %21, %19
  %29 = phi i8 [ %25, %24 ], [ %27, %26 ], [ %20, %19 ], [ %22, %21 ]
  %30 = or i8 %29, %14
  %31 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, %30
  store i8 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.isl6405, ptr %5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 1) #5
  %37 = icmp eq i32 %36, 1
  %38 = select i1 %37, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }

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
