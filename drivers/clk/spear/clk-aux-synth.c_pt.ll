; ModuleID = '/llk/IR/drivers/clk/spear/clk-aux-synth.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-aux-synth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aux_clk_masks = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_aux = type { %struct.clk_hw, ptr, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.aux_rate_tbl = type { i16, i16, i8 }

@.str = private unnamed_addr constant [42 x i8] c"\013clk-aux-synth: Invalid arguments passed\00", align 1
@default_aux_masks = internal constant %struct.aux_clk_masks { i32 1, i32 30, i32 0, i32 1, i32 4095, i32 16, i32 4095, i32 0, i32 31 }, align 4
@clk_aux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_aux_recalc_rate, ptr @clk_aux_round_rate, ptr null, ptr null, ptr null, ptr @clk_aux_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013clk-aux-synth: clk register failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_aux(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca ptr, align 4
  %12 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #7
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !8
  %14 = icmp ne ptr %0, null
  %15 = icmp ne ptr %2, null
  %16 = and i1 %14, %15
  %17 = icmp ne ptr %4, null
  %18 = and i1 %16, %17
  %19 = icmp ne ptr %6, null
  %20 = and i1 %18, %19
  %21 = icmp ne i8 %7, 0
  %22 = and i1 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %62

25:                                               ; preds = %10
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 32) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = icmp eq ptr %5, null
  %31 = select i1 %30, ptr @default_aux_masks, ptr %5
  %32 = getelementptr inbounds %struct.clk_aux, ptr %27, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_aux, ptr %27, i32 0, i32 1
  store ptr %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_aux, ptr %27, i32 0, i32 3
  store ptr %6, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_aux, ptr %27, i32 0, i32 4
  store i8 %7, ptr %35, align 8
  %36 = getelementptr inbounds %struct.clk_aux, ptr %27, i32 0, i32 5
  store ptr %8, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_hw, ptr %27, i32 0, i32 2
  store ptr %12, ptr %37, align 8
  store ptr %0, ptr %12, align 4
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr @clk_aux_ops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %11, ptr %40, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 1, ptr %41, align 4
  %42 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %27) #7
  %43 = icmp eq ptr %42, null
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %45 = or i1 %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %29
  %47 = icmp eq ptr %1, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %32, align 8
  %50 = getelementptr inbounds %struct.aux_clk_masks, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %4, i8 noundef zeroext %52, i8 noundef zeroext 0, ptr noundef %8) #7
  %54 = icmp eq ptr %53, null
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = or i1 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = icmp eq ptr %9, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  store ptr %53, ptr %9, align 4
  br label %62

60:                                               ; preds = %48, %29
  call void @kfree(ptr noundef nonnull %27) #7
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %62

62:                                               ; preds = %60, %59, %57, %46, %25, %23
  %63 = phi ptr [ null, %60 ], [ inttoptr (i32 -22 to ptr), %23 ], [ %42, %46 ], [ inttoptr (i32 -12 to ptr), %25 ], [ %42, %59 ], [ %42, %57 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #7
  ret ptr %63
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
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_aux_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %13, i32 noundef %9) #7
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %12, %20
  %22 = load i32, ptr %18, align 4
  %23 = and i32 %21, %22
  %24 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  %27 = select i1 %26, i32 2, i32 1
  %28 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %12, %29
  %31 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %30, %32
  %34 = mul i32 %33, %27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %12, %38
  %40 = getelementptr inbounds %struct.aux_clk_masks, ptr %18, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %39, %41
  %43 = udiv i32 %1, 10000
  %44 = mul i32 %42, %43
  %45 = udiv i32 %44, %34
  %46 = mul i32 %45, 10000
  br label %47

47:                                               ; preds = %36, %16
  %48 = phi i32 [ %46, %36 ], [ 0, %16 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_aux_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull @aux_calc_rate, i8 noundef zeroext %7, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_aux_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @aux_calc_rate, i8 noundef zeroext %8, ptr noundef nonnull %4) #7
  %10 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #7
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  %20 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.aux_clk_masks, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %22, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %19, %26
  %28 = load i32, ptr %4, align 4
  %29 = getelementptr %struct.aux_rate_tbl, ptr %6, i32 %28
  %30 = getelementptr %struct.aux_rate_tbl, ptr %6, i32 %28, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = and i32 %22, %32
  %34 = shl i32 %33, %24
  %35 = or i32 %34, %27
  %36 = getelementptr inbounds %struct.aux_clk_masks, ptr %21, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.aux_clk_masks, ptr %21, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %37, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %35, %41
  %43 = load i16, ptr %29, align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %37, %44
  %46 = shl i32 %45, %39
  %47 = or i32 %46, %42
  %48 = getelementptr inbounds %struct.aux_clk_masks, ptr %21, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.aux_clk_masks, ptr %21, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %49, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %47, %53
  %55 = getelementptr %struct.aux_rate_tbl, ptr %6, i32 %28, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %49, %57
  %59 = shl i32 %58, %51
  %60 = or i32 %59, %54
  %61 = load ptr, ptr %17, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #7, !srcloc !10
  %62 = load ptr, ptr %10, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %15
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %62, i32 noundef %16) #7
  br label %65

65:                                               ; preds = %64, %15
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
define internal i32 @aux_calc_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.clk_aux, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.aux_rate_tbl, ptr %5, i32 %2
  %7 = getelementptr %struct.aux_rate_tbl, ptr %5, i32 %2, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 2, i32 1
  %11 = udiv i32 %1, 10000
  %12 = load i16, ptr %6, align 2
  %13 = zext i16 %12 to i32
  %14 = mul i32 %11, %13
  %15 = getelementptr %struct.aux_rate_tbl, ptr %5, i32 %2, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = mul nuw nsw i32 %10, %17
  %19 = udiv i32 %14, %18
  %20 = mul i32 %19, 10000
  ret i32 %20
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
!9 = !{i64 2991350}
!10 = !{i64 2990932}
