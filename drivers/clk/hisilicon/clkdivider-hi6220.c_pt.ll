; ModuleID = '/llk/IR/drivers/clk/hisilicon/clkdivider-hi6220.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clkdivider-hi6220.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.hi6220_clk_divider = type { %struct.clk_hw, ptr, i8, i8, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@hi6220_clkdiv_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6220_clkdiv_recalc_rate, ptr @hi6220_clkdiv_round_rate, ptr null, ptr null, ptr null, ptr @hi6220_clkdiv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hi6220_register_clkdiv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  %11 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #7
  %12 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  %17 = zext i8 %6 to i32
  %18 = shl nuw i32 1, %17
  %19 = add nuw i32 %18, 1
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 8) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %26, label %22, !prof !9

22:                                               ; preds = %16
  %23 = extractvalue { i32, i1 } %20, 0
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %16
  tail call void @kfree(ptr noundef nonnull %14) #7
  br label %55

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %29, %27 ], [ 0, %22 ]
  %29 = add nuw i32 %28, 1
  %30 = getelementptr %struct.clk_div_table, ptr %24, i32 %28
  %31 = getelementptr %struct.clk_div_table, ptr %24, i32 %28, i32 1
  store i32 %29, ptr %31, align 4
  store i32 %28, ptr %30, align 8
  %32 = icmp eq i32 %29, %18
  br i1 %32, label %33, label %27

33:                                               ; preds = %27
  store ptr %1, ptr %11, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr @hi6220_clkdiv_ops, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %3, ptr %35, align 4
  %36 = icmp eq ptr %2, null
  %37 = select i1 %36, ptr null, ptr %10
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %37, ptr %38, align 4
  %39 = icmp ne ptr %2, null
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 1
  store ptr %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 2
  store i8 %5, ptr %43, align 8
  %44 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 3
  store i8 %6, ptr %44, align 1
  %45 = icmp eq i32 %7, 0
  %46 = shl nuw i32 1, %7
  %47 = select i1 %45, i32 0, i32 %46
  %48 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 6
  store ptr %8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %11, ptr %50, align 8
  %51 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %14, i32 0, i32 5
  store ptr %24, ptr %51, align 8
  %52 = call ptr @clk_register(ptr noundef %0, ptr noundef nonnull %14) #7
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  call void @kfree(ptr noundef nonnull %24) #7
  call void @kfree(ptr noundef nonnull %14) #7
  br label %55

55:                                               ; preds = %54, %33, %26, %9
  %56 = phi ptr [ inttoptr (i32 -12 to ptr), %26 ], [ %52, %54 ], [ %52, %33 ], [ inttoptr (i32 -12 to ptr), %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #7
  ret ptr %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %15, ptr noundef %17, i32 noundef 16, i32 noundef %12) #7
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %9 = tail call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %8, i32 noundef %1, ptr noundef %2, ptr noundef %5, i8 noundef zeroext %7, i32 noundef 16) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_clkdiv_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %5, i8 noundef zeroext %7, i32 noundef 16) #7
  %9 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %16 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  %19 = load i8, ptr %6, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = shl i32 %22, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %18, %27
  %29 = shl i32 %8, %25
  %30 = getelementptr inbounds %struct.hi6220_clk_divider, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %29, %31
  %33 = or i32 %32, %28
  %34 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #7, !srcloc !11
  %35 = load ptr, ptr %9, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %35, i32 noundef %15) #7
  br label %38

38:                                               ; preds = %37, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2990193}
!11 = !{i64 2989775}
