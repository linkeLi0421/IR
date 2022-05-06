; ModuleID = '/llk/IR/drivers/clk/imx/clk-busy.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-busy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_busy_divider = type { %struct.clk_divider, ptr, ptr, i8 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_busy_mux = type { %struct.clk_mux, ptr, ptr, i8 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }

@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_busy_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_busy_divider_recalc_rate, ptr @clk_busy_divider_round_rate, ptr null, ptr null, ptr null, ptr @clk_busy_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_busy_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_busy_mux_set_parent, ptr @clk_busy_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_busy_divider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #5
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 40) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.clk_busy_divider, ptr %12, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_busy_divider, ptr %12, i32 0, i32 3
  store i8 %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_divider, ptr %12, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_divider, ptr %12, i32 0, i32 2
  store i8 %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.clk_divider, ptr %12, i32 0, i32 3
  store i8 %4, ptr %19, align 1
  %20 = getelementptr inbounds %struct.clk_divider, ptr %12, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_busy_divider, ptr %12, i32 0, i32 1
  store ptr @clk_divider_ops, ptr %21, align 4
  store ptr %0, ptr %9, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @clk_busy_divider_ops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 2052, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %8, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %9, ptr %26, align 8
  %27 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #5
  %30 = inttoptr i32 %27 to ptr
  br label %31

31:                                               ; preds = %29, %14, %7
  %32 = phi ptr [ %30, %29 ], [ %12, %14 ], [ inttoptr (i32 -12 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #5
  ret ptr %32
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_busy_mux(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #5
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 44) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.clk_busy_mux, ptr %12, i32 0, i32 2
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_busy_mux, ptr %12, i32 0, i32 3
  store i8 %5, ptr %16, align 8
  %17 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 4
  store i8 %2, ptr %18, align 8
  %19 = zext i8 %3 to i32
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_busy_mux, ptr %12, i32 0, i32 1
  store ptr @clk_mux_ops, ptr %24, align 8
  store ptr %0, ptr %9, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @clk_busy_mux_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 2048, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %6, ptr %27, align 4
  %28 = trunc i32 %7 to i8
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %9, ptr %30, align 8
  %31 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #5
  %34 = inttoptr i32 %31 to ptr
  br label %35

35:                                               ; preds = %33, %14, %8
  %36 = phi ptr [ %34, %33 ], [ %12, %14 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #5
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_busy_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_busy_divider, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_busy_divider, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_busy_divider, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_busy_divider, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 1
  %17 = zext i8 %14 to i32
  %18 = shl nuw i32 1, %17
  br label %19

19:                                               ; preds = %23, %10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !9
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = sub i32 %16, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %19

27:                                               ; preds = %23, %19, %3
  %28 = phi i32 [ %8, %3 ], [ 0, %19 ], [ -110, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_busy_mux_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_busy_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i8 noundef zeroext %1) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_busy_mux, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_busy_mux, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %14, 1
  %16 = zext i8 %13 to i32
  %17 = shl nuw i32 1, %16
  br label %18

18:                                               ; preds = %22, %9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %15, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %22, %18, %2
  %27 = phi i32 [ %7, %2 ], [ 0, %18 ], [ -110, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_busy_mux_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_busy_mux, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %0) #5
  ret i8 %6
}

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
!9 = !{i64 2876479}
