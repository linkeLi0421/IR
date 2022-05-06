; ModuleID = '/llk/IR/drivers/clk/tegra/clk-periph-fixed.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-periph-fixed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_periph_fixed = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_clk_periph_regs = type { i32, i32, i32, i32, i32, i32 }

@tegra_clk_periph_fixed_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @tegra_clk_periph_fixed_enable, ptr @tegra_clk_periph_fixed_disable, ptr @tegra_clk_periph_fixed_is_enabled, ptr null, ptr null, ptr null, ptr @tegra_clk_periph_fixed_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = tail call ptr @get_reg_bank(i32 noundef %6) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 32) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %9, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %2, ptr %18, align 4
  %19 = icmp eq ptr %1, null
  %20 = select i1 %19, ptr null, ptr %8
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ne ptr %1, null
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_periph_fixed_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %15, i32 0, i32 1
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %15, i32 0, i32 2
  store ptr %11, ptr %27, align 8
  %28 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %15, i32 0, i32 3
  store i32 %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %15, i32 0, i32 4
  store i32 %5, ptr %29, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %15, i32 0, i32 5
  store i32 %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %9, ptr %31, align 8
  %32 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %15) #6
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #6
  br label %35

35:                                               ; preds = %34, %17, %13, %7
  %36 = phi ptr [ %32, %34 ], [ %32, %17 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_periph_fixed_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %6 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %5) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_clk_periph_fixed_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %6 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %5) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_periph_fixed_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %13 = and i32 %12, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %6, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %22 = and i32 %21, %5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15, %1
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ 0, %24 ], [ 1, %15 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @tegra_clk_periph_fixed_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %3
  %8 = getelementptr inbounds %struct.tegra_clk_periph_fixed, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i64 %7, 4294967296
  br i1 %10, label %11, label %14, !prof !15

11:                                               ; preds = %2
  %12 = trunc i64 %7 to i32
  %13 = udiv i32 %12, %9
  br label %18

14:                                               ; preds = %2
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #8, !srcloc !16
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2151098418}
!10 = !{i64 2842839}
!11 = !{i64 2151098777}
!12 = !{i64 2843257}
!13 = !{i64 2151097826}
!14 = !{i64 2151098211}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148653927, i64 2148654207, i64 2148654541, i64 2148654875}
