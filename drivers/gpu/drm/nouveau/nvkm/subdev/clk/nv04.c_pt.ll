; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.132, %struct.anon.132 }
%struct.anon.132 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_pll_vals = type { %union.anon.120, i32, i32 }
%union.anon.120 = type { %struct.anon.122 }
%struct.anon.122 = type { i16, i16 }
%struct.anon.121 = type { i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.123 }
%struct.anon.123 = type { i8, i8, i8, i8, i8 }

@nv04_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [1 x %struct.nvkm_domain] } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [1 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_pll_calc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1
  %11 = call i32 @nv04_pll_calc(ptr noundef %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %3, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %5, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.anon.121, ptr %3, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = load i32, ptr %6, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %3, align 4
  %22 = load i32, ptr %7, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.anon.121, ptr %3, i32 0, i32 3
  store i8 %23, ptr %24, align 1
  %25 = load i32, ptr %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.anon.121, ptr %3, i32 0, i32 2
  store i8 %26, ptr %27, align 2
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %13, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_pll_prog(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_bios, ptr %9, i32 0, i32 7, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = freeze i8 %11
  %13 = icmp ugt i8 %12, 63
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  switch i8 %12, label %19 [
    i8 54, label %15
    i8 53, label %15
    i8 49, label %15
    i8 48, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14, %3
  %16 = icmp ugt i32 %1, 16476
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @setPLL_double_highregs(ptr noundef %7, i32 noundef %1, ptr noundef %2) #3
  br label %20

18:                                               ; preds = %15
  tail call void @setPLL_double_lowregs(ptr noundef %7, i32 noundef %1, ptr noundef %2) #3
  br label %20

19:                                               ; preds = %14
  tail call void @setPLL_single(ptr noundef %7, i32 noundef %1, ptr noundef %2) #3
  br label %20

20:                                               ; preds = %19, %18, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_double_highregs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_double_lowregs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_single(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_clk_new_(ptr noundef nonnull @nv04_clk, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nvkm_clk, ptr %8, i32 0, i32 21
  store ptr @nv04_clk_pll_calc, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_clk, ptr %10, i32 0, i32 22
  store ptr @nv04_clk_pll_prog, ptr %11, align 4
  br label %12

12:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
