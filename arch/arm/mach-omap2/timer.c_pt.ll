; ModuleID = '/llk/IR/arch/arm/mach-omap2/timer.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@arch_timer_freq = internal unnamed_addr global i32 0, align 4
@realtime_counter_init.sys_clk = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [22 x i8] c"\013%s: ioremap failed\0A\00", align 1
@__func__.realtime_counter_init = private unnamed_addr constant [22 x i8] c"realtime_counter_init\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\013%s: failed to get system clock handle\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_cntfreq() local_unnamed_addr #0 {
  %1 = load i32, ptr @arch_timer_freq, align 4
  tail call void @omap_smc1(i32 noundef 265, i32 noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap5_realtime_timer_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @omap_clk_init() #4
  tail call fastcc void @realtime_counter_init() #5
  tail call void @timer_probe() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_clk_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @realtime_counter_init() unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @ioremap(i32 noundef 1210331648, i32 noundef 32) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.realtime_counter_init) #6
  br label %53

5:                                                ; preds = %0
  %6 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.1) #4
  store ptr %6, ptr @realtime_counter_init.sys_clk, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.realtime_counter_init) #6
  tail call void @iounmap(ptr noundef nonnull %1) #4
  br label %53

10:                                               ; preds = %5
  %11 = tail call i32 @clk_get_rate(ptr noundef %6) #4
  %12 = tail call i32 @omap_rev() #4
  %13 = and i32 %12, -16777216
  %14 = icmp eq i32 %13, 117440512
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1732) #4
  %17 = and i32 %16, 768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %10
  switch i32 %11, label %25 [
    i32 12000000, label %26
    i32 13000000, label %20
    i32 19200000, label %21
    i32 20000000, label %22
    i32 26000000, label %23
    i32 27000000, label %24
  ]

20:                                               ; preds = %19
  br label %26

21:                                               ; preds = %19
  br label %26

22:                                               ; preds = %19
  br label %26

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %15
  %27 = phi i64 [ 25, %25 ], [ 1125, %24 ], [ 1625, %23 ], [ 625, %22 ], [ 25, %21 ], [ 1625, %20 ], [ 244, %15 ], [ 125, %19 ]
  %28 = phi i64 [ 4, %25 ], [ 256, %24 ], [ 384, %23 ], [ 192, %22 ], [ 8, %21 ], [ 768, %20 ], [ 75, %15 ], [ 64, %19 ]
  %29 = getelementptr i8, ptr %1, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  %31 = and i32 %30, -4096
  %32 = trunc i64 %28 to i32
  %33 = or i32 %31, %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %33) #4, !srcloc !9
  %34 = getelementptr i8, ptr %1, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  %36 = and i32 %35, -4096
  %37 = trunc i64 %27 to i32
  %38 = or i32 %36, %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %38) #4, !srcloc !9
  %39 = zext i32 %11 to i64
  %40 = mul nuw nsw i64 %28, %39
  %41 = add nsw i64 %27, -1
  %42 = add nuw nsw i64 %41, %40
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %44, label %47, !prof !10

44:                                               ; preds = %26
  %45 = trunc i64 %42 to i32
  %46 = udiv i32 %45, %37
  br label %51

47:                                               ; preds = %26
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %42) #7, !srcloc !11
  %49 = extractvalue { i64, i64 } %48, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  store i32 %52, ptr @arch_timer_freq, align 4
  tail call void @omap_smc1(i32 noundef 265, i32 noundef %52) #4
  tail call void @iounmap(ptr noundef nonnull %1) #4
  br label %53

53:                                               ; preds = %51, %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2820741}
!9 = !{i64 2820323}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148358491, i64 2148358771, i64 2148359105, i64 2148359439}
