; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-ddr.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-ddr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_register_ddrclk:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_register_ddrclk\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_register_ddrclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_ddrclk = type { %struct.clk_hw, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@rockchip_ddrclk_sip_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_ddrclk_sip_recalc_rate, ptr @rockchip_ddrclk_sip_round_rate, ptr null, ptr null, ptr @rockchip_ddrclk_get_parent, ptr @rockchip_ddrclk_sip_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013%s: unsupported ddrclk type %d\0A\00", align 1
@__func__.rockchip_clk_register_ddrclk = private unnamed_addr constant [29 x i8] c"rockchip_clk_register_ddrclk\00", align 1
@__kstrtab_rockchip_clk_register_ddrclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_register_ddrclk = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_register_ddrclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_register_ddrclk to i32), ptr @__kstrtab_rockchip_clk_register_ddrclk, ptr @__kstrtabns_rockchip_clk_register_ddrclk }, section "___ksymtab_gpl+rockchip_clk_register_ddrclk", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rockchip_clk_register_ddrclk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_ddrclk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #6
  %14 = getelementptr inbounds i8, ptr %13, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 12, i1 false), !annotation !8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 44) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  store ptr %0, ptr %13, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 5
  store i8 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 6
  %22 = or i32 %1, 128
  store i32 %22, ptr %21, align 4
  %23 = icmp eq i32 %9, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 1
  store ptr @rockchip_ddrclk_sip_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 1
  store ptr %10, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 8
  store ptr %11, ptr %27, align 8
  %28 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %13, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 2
  store i32 %4, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 3
  store i32 %5, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 4
  store i32 %6, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 5
  store i32 %7, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 6
  store i32 %8, ptr %33, align 8
  %34 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %16, i32 0, i32 7
  store i32 1, ptr %34, align 4
  %35 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %16) #6
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %39, label %40

37:                                               ; preds = %18
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_clk_register_ddrclk, i32 noundef %9) #8
  tail call void @kfree(ptr noundef nonnull %16) #6
  br label %40

39:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %16) #6
  br label %40

40:                                               ; preds = %39, %37, %24, %12
  %41 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ %35, %39 ], [ %35, %24 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #6
  ret ptr %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #6
  %4 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #6
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @rockchip_ddrclk_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %7, %9
  %11 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 32, %12
  %14 = lshr i32 -1, %13
  %15 = and i32 %14, %10
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #6
  %8 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %7) #6
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2894868}
!10 = !{i64 2150620038}
