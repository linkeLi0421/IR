; ModuleID = '/llk/IR/arch/arm/plat-omap/counter_32k.c_pt.bc'
source_filename = "../arch/arm/plat-omap/counter_32k.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timespec64 = type { i64, i32 }

@sync32k_cnt_reg = internal unnamed_addr global ptr null, align 4
@persistent_mult = internal global i32 0, align 4
@persistent_shift = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"32k_counter\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\01332k_counter: can't register clocksource\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\016OMAP clocksource: 32k_counter at 32768 Hz\0A\00", align 1
@cycles = internal unnamed_addr global i32 0, align 4
@persistent_ts = internal unnamed_addr global %struct.timespec64 zeroinitializer, align 8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_init_clocksource_32k(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !8
  %3 = icmp ult i32 %2, 1073741824
  %4 = select i1 %3, i32 16, i32 48
  %5 = getelementptr i8, ptr %0, i32 %4
  store ptr %5, ptr @sync32k_cnt_reg, align 4
  tail call void @clocks_calc_mult_shift(ptr noundef nonnull @persistent_mult, ptr noundef nonnull @persistent_shift, i32 noundef 32768, i32 noundef 1000000000, i32 noundef 120000) #6
  %6 = load ptr, ptr @sync32k_cnt_reg, align 4
  %7 = tail call i32 @clocksource_mmio_init(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef 32768, i32 noundef 250, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @sched_clock_register(ptr noundef nonnull @omap_32k_read_sched_clock, i32 noundef 32, i32 noundef 32768) #6
  %10 = tail call i32 @register_persistent_clock(ptr noundef nonnull @omap_read_persistent_clock64) #6
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ @.str.2, %9 ], [ @.str.1, %1 ]
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %12) #7
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @omap_32k_read_sched_clock() #3 {
  %1 = load ptr, ptr @sync32k_cnt_reg, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_persistent_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_read_persistent_clock64(ptr nocapture noundef writeonly %0) #3 {
  %2 = alloca i64, align 8
  %3 = load i32, ptr @cycles, align 4
  %4 = load ptr, ptr @sync32k_cnt_reg, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #6, !srcloc !8
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  store i32 %9, ptr @cycles, align 4
  %10 = sub i32 %9, %3
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr @persistent_mult, align 4
  %13 = load i32, ptr @persistent_shift, align 4
  %14 = zext i32 %12 to i64
  %15 = mul nuw i64 %14, %11
  %16 = zext i32 %13 to i64
  %17 = lshr i64 %15, %16
  %18 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @persistent_ts, i32 0, i32 1), align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 %20, ptr %2, align 8
  %21 = icmp ugt i64 %20, 999999999
  %22 = trunc i64 %20 to i32
  br i1 %21, label %23, label %32

23:                                               ; preds = %23, %8
  %24 = phi i32 [ %28, %23 ], [ 0, %8 ]
  %25 = phi i64 [ %27, %23 ], [ %20, %8 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %2, i64 %25) #6, !srcloc !9
  %26 = load i64, ptr %2, align 8
  %27 = add i64 %26, -1000000000
  store i64 %27, ptr %2, align 8
  %28 = add i32 %24, 1
  %29 = icmp ugt i64 %27, 999999999
  br i1 %29, label %23, label %30

30:                                               ; preds = %23
  %31 = trunc i64 %27 to i32
  br label %32

32:                                               ; preds = %30, %8
  %33 = phi i32 [ %22, %8 ], [ %31, %30 ]
  %34 = phi i32 [ 0, %8 ], [ %28, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %35 = zext i32 %34 to i64
  %36 = load i64, ptr @persistent_ts, align 8
  %37 = add i64 %36, %35
  store i64 %37, ptr @persistent_ts, align 8
  store i32 %33, ptr getelementptr inbounds (%struct.timespec64, ptr @persistent_ts, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @persistent_ts, i32 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 1720837}
!9 = !{i64 1272621}
