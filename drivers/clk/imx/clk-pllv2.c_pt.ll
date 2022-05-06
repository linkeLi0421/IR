; ModuleID = '/llk/IR/drivers/clk/imx/clk-pllv2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv2 = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv2_ops = internal constant %struct.clk_ops { ptr @clk_pllv2_prepare, ptr @clk_pllv2_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv2_recalc_rate, ptr @clk_pllv2_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [27 x i8] c"\013MX5: pll locking failed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_pllv2, ptr %8, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  store ptr %0, ptr %5, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @clk_pllv2_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %16, align 8
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #8
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv2_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv2, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = or i32 %4, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #8, !srcloc !10
  br label %6

6:                                                ; preds = %11, %1
  %7 = phi i32 [ 0, %1 ], [ %13, %11 ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, 1000
  br i1 %14, label %15, label %6

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ -22, %15 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pllv2_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv2, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = and i32 %4, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv2_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv2, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  %6 = getelementptr i8, ptr %4, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = getelementptr i8, ptr %4, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = getelementptr i8, ptr %4, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  %12 = and i32 %5, 4096
  %13 = and i32 %7, 15
  %14 = and i32 %9, 134217727
  %15 = shl i32 %11, 5
  %16 = ashr exact i32 %15, 5
  %17 = icmp eq i32 %12, 0
  %18 = select i1 %17, i32 1, i32 2
  %19 = shl i32 %1, %18
  %20 = add nuw nsw i32 %13, 1
  %21 = sdiv i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = tail call i32 @llvm.abs.i32(i32 %16, i1 true) #8
  %24 = zext i32 %23 to i64
  %25 = mul nsw i64 %24, %22
  %26 = add nuw nsw i32 %14, 1
  %27 = icmp ult i64 %25, 4294967296
  br i1 %27, label %28, label %31, !prof !11

28:                                               ; preds = %2
  %29 = trunc i64 %25 to i32
  %30 = udiv i32 %29, %26
  br label %35

31:                                               ; preds = %2
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %25) #11, !srcloc !12
  %33 = extractvalue { i64, i64 } %32, 1
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %30, %28 ], [ %34, %31 ]
  %37 = icmp slt i32 %15, 0
  %38 = lshr i32 %7, 4
  %39 = and i32 %38, 15
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 5) #8
  %41 = mul i32 %21, %40
  %42 = sub i32 0, %36
  %43 = select i1 %37, i32 %42, i32 %36
  %44 = add i32 %43, %41
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pllv2_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %2, align 4
  %5 = shl i32 %4, 2
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %8 = phi i32 [ -1, %3 ], [ %7, %6 ]
  %9 = add nsw i32 %8, 2
  %10 = mul i32 %9, %1
  %11 = udiv i32 %10, %5
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp ult i32 %7, 15
  %14 = icmp slt i32 %11, 5
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %6, label %16

16:                                               ; preds = %6
  %17 = icmp sgt i32 %11, 15
  br i1 %17, label %47, label %18

18:                                               ; preds = %16
  %19 = mul i32 %12, %1
  %20 = mul i32 %11, %5
  %21 = sub i32 %19, %20
  %22 = udiv i32 %5, 1000000
  %23 = udiv i32 %21, %22
  %24 = shl i32 %11, 4
  %25 = or i32 %24, %7
  %26 = shl i32 %23, 5
  %27 = ashr exact i32 %26, 5
  %28 = add nuw nsw i32 %7, 1
  %29 = sdiv i32 %5, %28
  %30 = sext i32 %29 to i64
  %31 = tail call i32 @llvm.abs.i32(i32 %27, i1 true) #8
  %32 = zext i32 %31 to i64
  %33 = mul nsw i64 %32, %30
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %33) #11, !srcloc !13
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %33, i64 %34, i32 0) #11, !srcloc !14
  %36 = extractvalue { i64, i32 } %35, 0
  %37 = lshr i64 %36, 18
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %26, 0
  %40 = lshr i32 %25, 4
  %41 = and i32 %40, 15
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 5) #8
  %43 = mul i32 %29, %42
  %44 = sub i32 0, %38
  %45 = select i1 %39, i32 %44, i32 %38
  %46 = add i32 %45, %43
  br label %47

47:                                               ; preds = %18, %16
  %48 = phi i32 [ %46, %18 ], [ -22, %16 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv2_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_pllv2, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 2
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i32 [ 0, %3 ], [ %13, %7 ]
  %9 = phi i32 [ -1, %3 ], [ %8, %7 ]
  %10 = add nsw i32 %9, 2
  %11 = mul i32 %10, %1
  %12 = udiv i32 %11, %6
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp ult i32 %8, 15
  %15 = icmp slt i32 %12, 5
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %7, label %17

17:                                               ; preds = %7
  %18 = icmp sgt i32 %12, 15
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = mul i32 %13, %1
  %21 = mul i32 %12, %6
  %22 = sub i32 %20, %21
  %23 = udiv i32 %6, 1000000
  %24 = udiv i32 %22, %23
  %25 = shl i32 %12, 4
  %26 = or i32 %25, %8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  %28 = or i32 %27, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %28) #8, !srcloc !10
  %29 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #8, !srcloc !10
  %30 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 999999) #8, !srcloc !10
  %31 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %24) #8, !srcloc !10
  br label %32

32:                                               ; preds = %19, %17
  %33 = phi i32 [ 0, %19 ], [ -22, %17 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!9 = !{i64 1723986}
!10 = !{i64 1723568}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148330256, i64 2148330536, i64 2148330870, i64 2148331204}
!13 = !{i64 844425, i64 844452}
!14 = !{i64 845120, i64 845147, i64 845180, i64 845201, i64 845228, i64 845254}
