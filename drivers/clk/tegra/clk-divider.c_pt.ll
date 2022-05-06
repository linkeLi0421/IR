; ModuleID = '/llk/IR/drivers/clk/tegra/clk-divider.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_frac_div_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_restore_context, ptr @clk_frac_div_recalc_rate, ptr @clk_frac_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_frac_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [49 x i8] c"\013%s: could not allocate fractional divider clk\0A\00", align 1
@__func__.tegra_clk_register_divider = private unnamed_addr constant [27 x i8] c"tegra_clk_register_divider\00", align 1
@mc_div_table = internal constant [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_divider_restore_context(ptr noundef %0) #0 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %2) #7
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #7
  %5 = tail call i32 @clk_frac_div_set_rate(ptr noundef %0, i32 noundef %4, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_div_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  %6 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp ne i8 %8, 0
  %10 = and i32 %5, 16777216
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %5, %17
  %19 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = shl nsw i32 -1, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %18, %23
  %25 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = add i32 %24, %28
  %30 = sext i32 %28 to i64
  %31 = mul nsw i64 %30, %14
  %32 = add i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %39, !prof !9

36:                                               ; preds = %13
  %37 = trunc i64 %34 to i32
  %38 = udiv i32 %37, %29
  br label %43

39:                                               ; preds = %13
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %34) #8, !srcloc !10
  %41 = extractvalue { i64, i64 } %40, 1
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %39, %36, %2
  %44 = phi i32 [ %1, %2 ], [ %38, %36 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_div_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = tail call i32 @div_frac_get(i32 noundef %1, i32 noundef %4, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext %12) #7
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #7
  %15 = load i8, ptr %9, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = shl i32 %4, %16
  %19 = add nuw i32 %17, %14
  %20 = add i32 %18, -1
  %21 = add i32 %20, %19
  %22 = udiv i32 %21, %19
  br label %23

23:                                               ; preds = %6, %3
  %24 = phi i32 [ %22, %6 ], [ %4, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_div_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = tail call i32 @div_frac_get(i32 noundef %1, i32 noundef %2, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %9) #7
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #7
  %12 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %13) #7
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  %22 = load i8, ptr %4, align 2
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %0, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %21, %30
  %32 = shl i32 %11, %28
  %33 = or i32 %31, %32
  %34 = load i8, ptr %8, align 4
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %17
  %38 = icmp slt i32 %10, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = or i32 %33, 16777216
  br label %43

41:                                               ; preds = %37
  %42 = and i32 %33, -16777217
  br label %43

43:                                               ; preds = %41, %39, %17
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ], [ %33, %17 ]
  %45 = and i8 %34, 2
  %46 = icmp eq i8 %45, 0
  %47 = add nsw i32 %28, -6
  %48 = shl nuw i32 1, %47
  %49 = select i1 %46, i32 0, i32 %48
  %50 = or i32 %44, %49
  %51 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #7, !srcloc !11
  %52 = load ptr, ptr %12, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %52, i32 noundef %18) #7
  br label %55

55:                                               ; preds = %54, %43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_divider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  %11 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #7
  %12 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !12
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tegra_clk_register_divider) #10
  br label %37

18:                                               ; preds = %9
  store ptr %0, ptr %11, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr @tegra_clk_frac_div_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %3, ptr %20, align 4
  %21 = icmp eq ptr %1, null
  %22 = select i1 %21, ptr null, ptr %10
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ne ptr %1, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 3
  store i8 %5, ptr %28, align 1
  %29 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 4
  store i8 %6, ptr %29, align 2
  %30 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 5
  store i8 %7, ptr %30, align 1
  %31 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 6
  store ptr %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_clk_frac_div, ptr %14, i32 0, i32 2
  store i8 %4, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %11, ptr %33, align 8
  %34 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %14) #7
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %14) #7
  br label %37

37:                                               ; preds = %36, %18, %16
  %38 = phi ptr [ inttoptr (i32 -12 to ptr), %16 ], [ %34, %36 ], [ %34, %18 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #7
  ret ptr %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_mc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 2048, ptr noundef %2, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 32, ptr noundef nonnull @mc_div_table, ptr noundef %3) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
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
!8 = !{i64 948141}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148328135, i64 2148328415, i64 2148328749, i64 2148329083}
!11 = !{i64 947723}
!12 = !{!"auto-init"}
