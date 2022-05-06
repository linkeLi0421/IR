; ModuleID = '/llk/IR/drivers/clk/mmp/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmp_clk_gate = type { %struct.clk_hw, ptr, i32, i32, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@mmp_clk_gate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_gate_enable, ptr @mmp_clk_gate_disable, ptr @mmp_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_gate_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !11
  %20 = load ptr, ptr %2, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %8) #5
  br label %23

23:                                               ; preds = %22, %7
  %24 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #5
  %30 = udiv i32 2000000, %29
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %32

32:                                               ; preds = %28, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmp_clk_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %12 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !11
  %20 = load ptr, ptr %2, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %8) #5
  br label %23

23:                                               ; preds = %22, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %8) #5
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %11
  %19 = getelementptr inbounds %struct.mmp_clk_gate, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca ptr, align 4
  %12 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #5
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !15
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 36) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %10
  store ptr %1, ptr %12, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr @mmp_clk_gate_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 %3, ptr %19, align 4
  %20 = icmp eq ptr %2, null
  %21 = select i1 %20, ptr null, ptr %11
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ne ptr %2, null
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 1
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 2
  store i32 %5, ptr %27, align 8
  %28 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 3
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 4
  store i32 %7, ptr %29, align 8
  %30 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 5
  store i32 %8, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mmp_clk_gate, ptr %15, i32 0, i32 6
  store ptr %9, ptr %31, align 8
  %32 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %12, ptr %32, align 8
  %33 = call ptr @clk_register(ptr noundef %0, ptr noundef nonnull %15) #5
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #5
  br label %36

36:                                               ; preds = %35, %17, %10
  %37 = phi ptr [ %33, %35 ], [ %33, %17 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #5
  ret ptr %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

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
!8 = !{i64 2989339}
!9 = !{i64 2151478083}
!10 = !{i64 2151478260}
!11 = !{i64 2988921}
!12 = !{i64 2151480912}
!13 = !{i64 2151481089}
!14 = !{i64 2151483057}
!15 = !{!"auto-init"}
