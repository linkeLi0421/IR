; ModuleID = '/llk/IR/drivers/clk/mmp/clk-apmu.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-apmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_apmu = type { %struct.clk_hw, ptr, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_apmu_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_apmu_enable, ptr @clk_apmu_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_apmu(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #5
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %5
  store ptr %0, ptr %7, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @clk_apmu_ops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 4, ptr %14, align 4
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr null, ptr %6
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ne ptr %1, null
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_apmu, ptr %10, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_apmu, ptr %10, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_apmu, ptr %10, i32 0, i32 4
  store ptr %4, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %24, align 8
  %25 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %10) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  call void @kfree(ptr noundef nonnull %10) #5
  br label %28

28:                                               ; preds = %27, %12, %5
  %29 = phi ptr [ null, %5 ], [ %25, %27 ], [ %25, %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #5
  ret ptr %29
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_apmu_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  %12 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  %15 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !10
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %8) #5
  br label %19

19:                                               ; preds = %18, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_apmu_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  %12 = getelementptr inbounds %struct.clk_apmu, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #5, !srcloc !10
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %17, i32 noundef %8) #5
  br label %20

20:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

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
!9 = !{i64 945878}
!10 = !{i64 945460}
