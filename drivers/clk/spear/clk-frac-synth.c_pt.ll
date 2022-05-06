; ModuleID = '/llk/IR/drivers/clk/spear/clk-frac-synth.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-frac-synth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_frac = type { %struct.clk_hw, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.frac_rate_tbl = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\013clk-frac-synth: Invalid arguments passed\0A\00", align 1
@clk_frac_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_frac_recalc_rate, ptr @clk_frac_round_rate, ptr null, ptr null, ptr null, ptr @clk_frac_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013clk-frac-synth: clk register failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_frac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #7
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = icmp ne ptr %0, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %11, %12
  %14 = icmp ne ptr %3, null
  %15 = and i1 %13, %14
  %16 = icmp ne ptr %4, null
  %17 = and i1 %15, %16
  %18 = icmp ne i8 %5, 0
  %19 = and i1 %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %42

22:                                               ; preds = %7
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.clk_frac, ptr %24, i32 0, i32 1
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_frac, ptr %24, i32 0, i32 2
  store ptr %4, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_frac, ptr %24, i32 0, i32 3
  store i8 %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_frac, ptr %24, i32 0, i32 4
  store ptr %6, ptr %30, align 8
  %31 = getelementptr inbounds %struct.clk_hw, ptr %24, i32 0, i32 2
  store ptr %9, ptr %31, align 8
  store ptr %0, ptr %9, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @clk_frac_ops, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %8, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 1, ptr %35, align 4
  %36 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %24) #7
  %37 = icmp eq ptr %36, null
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  call void @kfree(ptr noundef nonnull %24) #7
  br label %42

42:                                               ; preds = %40, %26, %22, %20
  %43 = phi ptr [ null, %40 ], [ inttoptr (i32 -22 to ptr), %20 ], [ %36, %26 ], [ inttoptr (i32 -12 to ptr), %22 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #7
  ret ptr %43
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %13, i32 noundef %9) #7
  br label %16

16:                                               ; preds = %15, %8
  %17 = and i32 %12, 131071
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = udiv i32 %1, 10000
  %21 = shl i32 %20, 14
  %22 = shl nuw nsw i32 %17, 1
  %23 = udiv i32 %21, %22
  %24 = mul i32 %23, 10000
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %24, %19 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull @frac_calc_rate, i8 noundef zeroext %7, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_frac_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @frac_calc_rate, i8 noundef zeroext %8, ptr noundef nonnull %4) #7
  %10 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #7
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  %20 = and i32 %19, -131072
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr %struct.frac_rate_tbl, ptr %6, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 131071
  %25 = or i32 %24, %20
  %26 = load ptr, ptr %17, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #7, !srcloc !10
  %27 = load ptr, ptr %10, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %27, i32 noundef %16) #7
  br label %30

30:                                               ; preds = %29, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate_index(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @frac_calc_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.clk_frac, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = udiv i32 %1, 10000
  %7 = shl i32 %6, 14
  %8 = getelementptr %struct.frac_rate_tbl, ptr %5, i32 %2
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 1
  %11 = udiv i32 %7, %10
  %12 = mul i32 %11, 10000
  ret i32 %12
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2990273}
!10 = !{i64 2989855}
