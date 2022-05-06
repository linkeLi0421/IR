; ModuleID = '/llk/IR/drivers/clk/ux500/clk-prcc.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-prcc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_prcc = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_prcc_pclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_prcc_pclk_enable, ptr @clk_prcc_pclk_disable, ptr @clk_prcc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_prcc_kclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_prcc_kclk_enable, ptr @clk_prcc_kclk_disable, ptr @clk_prcc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [41 x i8] c"\013clk_prcc: %s invalid arguments passed\0A\00", align 1
@__func__.clk_reg_prcc = private unnamed_addr constant [13 x i8] c"clk_reg_prcc\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\013clk_prcc: %s failed to register clk\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcc_pclk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @clk_reg_prcc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @clk_prcc_pclk_ops)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_prcc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false), !annotation !8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.clk_reg_prcc) #8
  br label %40

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @ioremap(i32 noundef %2, i32 noundef 4096) #7
  %18 = getelementptr inbounds %struct.clk_prcc, ptr %14, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_prcc, ptr %14, i32 0, i32 2
  store i32 %3, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_prcc, ptr %14, i32 0, i32 3
  store i32 1, ptr %22, align 4
  store ptr %0, ptr %8, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %4, ptr %24, align 4
  %25 = icmp eq ptr %1, null
  %26 = select i1 %25, ptr null, ptr %7
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp ne ptr %1, null
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %8, ptr %31, align 8
  %32 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %14) #7
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load ptr, ptr %18, align 4
  call void @iounmap(ptr noundef %37) #7
  br label %38

38:                                               ; preds = %36, %16
  call void @kfree(ptr noundef nonnull %14) #7
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_reg_prcc) #8
  br label %40

40:                                               ; preds = %38, %20, %12, %10
  %41 = phi ptr [ inttoptr (i32 -12 to ptr), %38 ], [ inttoptr (i32 -22 to ptr), %10 ], [ %32, %20 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #7
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcc_kclk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @clk_reg_prcc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @clk_prcc_kclk_ops)
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcc_pclk_enable(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !10
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !14
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 3
  store i32 1, ptr %20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_prcc_pclk_disable(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #7, !srcloc !10
  %7 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 3
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcc_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_prcc_kclk_enable(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #7, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %13, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !19
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %13, %1
  %21 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 3
  store i32 1, ptr %21, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_prcc_kclk_disable(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #7, !srcloc !10
  %7 = getelementptr inbounds %struct.clk_prcc, ptr %0, i32 0, i32 3
  store i32 0, ptr %7, align 4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2151448615}
!10 = !{i64 2989566}
!11 = !{i64 2989984}
!12 = !{i64 2151449103}
!13 = !{i64 2151449349}
!14 = !{i64 2151449191}
!15 = !{i64 2151450697}
!16 = !{i64 2151452190}
!17 = !{i64 2151452678}
!18 = !{i64 2151452924}
!19 = !{i64 2151452766}
!20 = !{i64 2151454272}
