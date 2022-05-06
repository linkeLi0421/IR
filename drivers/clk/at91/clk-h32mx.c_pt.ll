; ModuleID = '/llk/IR/drivers/clk/at91/clk-h32mx.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-h32mx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sama5d4_h32mx = type { %struct.clk_hw, ptr }

@h32mx_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sama5d4_h32mx_recalc_rate, ptr @clk_sama5d4_h32mx_round_rate, ptr null, ptr null, ptr null, ptr @clk_sama5d4_h32mx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [27 x i8] c"\014H32MX clock is too fast\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_h32mx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @h32mx_ops, ptr %11, align 4
  %12 = icmp eq ptr %2, null
  %13 = select i1 %12, ptr null, ptr %4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp ne ptr %2, null
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clk_sama5d4_h32mx, ptr %8, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #8
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %23, %10, %3
  %26 = phi ptr [ %24, %23 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %26
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
define internal i32 @clk_sama5d4_h32mx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_sama5d4_h32mx, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 48, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = lshr i32 %1, 1
  br label %16

12:                                               ; preds = %2
  %13 = icmp ugt i32 %1, 90000000
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %16

16:                                               ; preds = %14, %12, %10
  %17 = phi i32 [ %11, %10 ], [ %1, %14 ], [ %1, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_sama5d4_h32mx_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %4, 1
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = sub i32 %1, %7
  %11 = sub i32 %4, %1
  %12 = icmp ult i32 %10, %11
  %13 = select i1 %12, i32 %7, i32 %4
  br label %14

14:                                               ; preds = %9, %6, %3
  %15 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama5d4_h32mx_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %2, %1
  %5 = lshr i32 %2, 1
  %6 = icmp eq i32 %5, %1
  %7 = or i1 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = select i1 %6, i32 16777216, i32 0
  %10 = getelementptr inbounds %struct.clk_sama5d4_h32mx, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 48, i32 noundef 16777216, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
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
!8 = !{!"auto-init"}
