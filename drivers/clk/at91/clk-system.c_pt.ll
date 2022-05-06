; ModuleID = '/llk/IR/drivers/clk/at91/clk-system.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-system.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_system = type { %struct.clk_hw, ptr, %struct.at91_clk_pms, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }

@system_ops = internal constant %struct.clk_ops { ptr @clk_system_prepare, ptr @clk_system_unprepare, ptr @clk_system_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_system_save_context, ptr @clk_system_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_system(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = icmp eq ptr %2, null
  %9 = icmp ugt i8 %3, 31
  %10 = or i1 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 36) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  store ptr %1, ptr %6, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @system_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_system, ptr %13, i32 0, i32 3
  store i8 %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %6, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_system, ptr %13, i32 0, i32 1
  store ptr %0, ptr %22, align 4
  %23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #6
  %26 = inttoptr i32 %23 to ptr
  br label %27

27:                                               ; preds = %25, %15, %11, %4
  %28 = phi ptr [ %26, %25 ], [ %13, %15 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  ret ptr %28
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
define internal i32 @clk_system_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef %8) #6
  %10 = load i8, ptr %5, align 4
  %11 = and i8 %10, -8
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 4
  %15 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %16 = call i32 @regmap_read(ptr noundef %14, i32 noundef 104, ptr noundef nonnull %2) #6
  %17 = load i32, ptr %2, align 4
  %18 = shl nuw nsw i32 1, %15
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %20, label %21, label %30

21:                                               ; preds = %21, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !10
  %22 = load ptr, ptr %3, align 4
  %23 = load i8, ptr %5, align 4
  %24 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %25 = call i32 @regmap_read(ptr noundef %22, i32 noundef 104, ptr noundef nonnull %2) #6
  %26 = load i32, ptr %2, align 4
  %27 = shl nuw i32 1, %24
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %29, label %21, label %30

30:                                               ; preds = %21, %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_system_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 4, i32 noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_system_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %2) #6
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = and i32 %9, 248
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 104, ptr noundef nonnull %2) #6
  %19 = load i32, ptr %2, align 4
  %20 = load i8, ptr %7, align 4
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %19, %21
  %23 = and i32 %22, 1
  br label %24

24:                                               ; preds = %16, %13, %1
  %25 = phi i32 [ %23, %16 ], [ 0, %1 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_system_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %2) #6
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = and i32 %9, 248
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 104, ptr noundef nonnull %2) #6
  %19 = load i32, ptr %2, align 4
  %20 = load i8, ptr %7, align 4
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %19, %21
  %23 = and i32 %22, 1
  br label %24

24:                                               ; preds = %16, %13, %1
  %25 = phi i32 [ %23, %16 ], [ 0, %1 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %26 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 2, i32 2
  store i32 %25, ptr %26, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_system_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_system, ptr %0, i32 0, i32 2, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_system_prepare(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 2151201324}
!10 = !{i64 2151201166}
