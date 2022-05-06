; ModuleID = '/llk/IR/drivers/clk/at91/clk-smd.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-smd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91sam9x5_clk_smd = type { %struct.clk_hw, ptr }

@at91sam9x5_smd_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91sam9x5_clk_smd_recalc_rate, ptr @at91sam9x5_clk_smd_round_rate, ptr null, ptr @at91sam9x5_clk_smd_set_parent, ptr @at91sam9x5_clk_smd_get_parent, ptr @at91sam9x5_clk_smd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @at91sam9x5_smd_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %8, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #7
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %4
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
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
define internal i32 @at91sam9x5_clk_smd_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 60, ptr noundef nonnull %3) #7
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 31
  %10 = add nuw nsw i32 %9, 1
  %11 = udiv i32 %1, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = udiv i32 %4, %1
  %8 = icmp ugt i32 %7, 15
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = lshr i32 %4, 4
  br label %19

11:                                               ; preds = %6
  %12 = udiv i32 %4, %7
  %13 = add nuw nsw i32 %7, 1
  %14 = udiv i32 %4, %13
  %15 = sub i32 %12, %1
  %16 = sub i32 %1, %14
  %17 = icmp ugt i32 %15, %16
  %18 = select i1 %17, i32 %14, i32 %12
  br label %19

19:                                               ; preds = %11, %9, %3
  %20 = phi i32 [ %10, %9 ], [ %18, %11 ], [ %4, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = icmp ugt i8 %1, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i8 %1, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 60, i32 noundef 1, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @at91sam9x5_clk_smd_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 60, ptr noundef nonnull %2) #7
  %6 = load i32, ptr %2, align 4
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = udiv i32 %2, %1
  %5 = mul i32 %4, %1
  %6 = sub i32 %2, %5
  %7 = icmp ne i32 %6, 0
  %8 = icmp ugt i32 %1, %2
  %9 = or i1 %8, %7
  %10 = icmp ugt i32 %4, 16
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = shl nuw nsw i32 %4, 8
  %16 = add nsw i32 %15, -256
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 60, i32 noundef 7936, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
