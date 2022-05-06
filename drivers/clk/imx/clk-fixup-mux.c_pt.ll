; ModuleID = '/llk/IR/drivers/clk/imx/clk-fixup-mux.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-fixup-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixup_mux = type { %struct.clk_mux, ptr, ptr }

@clk_fixup_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixup_mux_set_parent, ptr @clk_fixup_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_fixup_mux(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #5
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 40) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  store ptr %0, ptr %8, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_fixup_mux_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %4, ptr %17, align 4
  %18 = trunc i32 %5 to i8
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_mux, ptr %13, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_mux, ptr %13, i32 0, i32 4
  store i8 %2, ptr %22, align 8
  %23 = zext i8 %3 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.clk_mux, ptr %13, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_mux, ptr %13, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_fixup_mux, ptr %13, i32 0, i32 1
  store ptr @clk_mux_ops, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_fixup_mux, ptr %13, i32 0, i32 2
  store ptr %6, ptr %30, align 4
  %31 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #5
  %34 = inttoptr i32 %31 to ptr
  br label %35

35:                                               ; preds = %33, %15, %11, %7
  %36 = phi ptr [ %34, %33 ], [ %13, %15 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #5
  ret ptr %36
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
define internal i32 @clk_fixup_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %10 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl i32 %11, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %9, %16
  %18 = zext i8 %1 to i32
  %19 = shl i32 %18, %14
  %20 = or i32 %17, %19
  store i32 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.clk_fixup_mux, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  call void %22(ptr noundef nonnull %3) #5
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %7, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !12
  %25 = load ptr, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_fixup_mux_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_fixup_mux, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %0) #5
  ret i8 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 2843035}
!10 = !{i64 2150564083}
!11 = !{i64 2150564259}
!12 = !{i64 2842617}
