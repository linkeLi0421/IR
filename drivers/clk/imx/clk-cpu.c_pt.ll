; ModuleID = '/llk/IR/drivers/clk/imx/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_cpu = type { %struct.clk_hw, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_cpu_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_recalc_rate, ptr @clk_cpu_round_rate, ptr null, ptr null, ptr null, ptr @clk_cpu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_imx_clk_hw_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_cpu to i32), ptr @__kstrtab_imx_clk_hw_cpu, ptr @__kstrtabns_imx_clk_hw_cpu }, section "___ksymtab_gpl+imx_clk_hw_cpu", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_imx_clk_hw_cpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_cpu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #5
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.clk_cpu, ptr %11, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_cpu, ptr %11, i32 0, i32 2
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_cpu, ptr %11, i32 0, i32 3
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_cpu, ptr %11, i32 0, i32 4
  store ptr %5, ptr %17, align 8
  store ptr %0, ptr %8, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_cpu_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 2048, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %22, align 8
  %23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %11) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #5
  %26 = inttoptr i32 %23 to ptr
  br label %27

27:                                               ; preds = %25, %13, %6
  %28 = phi ptr [ %26, %25 ], [ %11, %13 ], [ inttoptr (i32 -12 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #5
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
define internal i32 @clk_cpu_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %1) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_cpu_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_set_parent(ptr noundef %5, ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %1) #5
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = tail call i32 @clk_set_parent(ptr noundef %15, ptr noundef %16) #5
  br i1 %14, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.clk_cpu, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %1) #5
  br label %22

22:                                               ; preds = %18, %10, %3
  %23 = phi i32 [ 0, %18 ], [ %8, %3 ], [ %13, %10 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

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
