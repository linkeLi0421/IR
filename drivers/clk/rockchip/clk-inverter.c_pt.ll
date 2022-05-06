; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-inverter.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-inverter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rockchip_inv_clock = type { %struct.clk_hw, ptr, i32, i32, ptr }

@rockchip_inv_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_inv_get_phase, ptr @rockchip_inv_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [35 x i8] c"\013%s: unsupported phase %d for %s\0A\00", align 1
@__func__.rockchip_inv_set_phase = private unnamed_addr constant [23 x i8] c"rockchip_inv_set_phase\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_inverter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #6
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 28) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  store ptr %0, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @rockchip_inv_clk_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %18, align 8
  %19 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %11, i32 0, i32 1
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %11, i32 0, i32 2
  store i32 %4, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %11, i32 0, i32 3
  store i32 %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %11, i32 0, i32 4
  store ptr %6, ptr %22, align 8
  %23 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %11) #6
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #6
  br label %26

26:                                               ; preds = %25, %13, %7
  %27 = phi ptr [ %23, %25 ], [ %23, %13 ], [ inttoptr (i32 -12 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #6
  ret ptr %27
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
define internal i32 @rockchip_inv_get_phase(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %5 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, %4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 180
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_inv_set_phase(ptr noundef %0, i32 noundef %1) #0 {
  %3 = srem i32 %1, 180
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = icmp ne i32 %1, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %15

12:                                               ; preds = %2
  %13 = tail call ptr @clk_hw_get_name(ptr noundef %0) #6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_inv_set_phase, i32 noundef %1, ptr noundef %13) #8
  br label %39

15:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 %7, %17
  %19 = add i32 %17, 16
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %18
  %22 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !12
  br label %39

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #6
  %28 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %31 = getelementptr inbounds %struct.rockchip_inv_clock, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = shl nuw i32 1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = or i32 %35, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %37 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #6, !srcloc !12
  %38 = load ptr, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %27) #6
  br label %39

39:                                               ; preds = %24, %15, %12
  %40 = phi i32 [ -22, %12 ], [ 0, %24 ], [ 0, %15 ]
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2988744}
!10 = !{i64 2150565417}
!11 = !{i64 2150567661}
!12 = !{i64 2988326}
!13 = !{i64 2150568616}
!14 = !{i64 2150568888}
