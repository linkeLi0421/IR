; ModuleID = '/llk/IR/drivers/clk/rockchip/softrst.c_pt.bc'
source_filename = "../drivers/clk/rockchip/softrst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_register_softrst:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_register_softrst\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_register_softrst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rockchip_softrst = type { %struct.reset_controller_dev, ptr, i32, i32, i8, %struct.spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@rockchip_softrst_ops = internal constant %struct.reset_control_ops { ptr null, ptr @rockchip_softrst_assert, ptr @rockchip_softrst_deassert, ptr null }, align 4
@.str = private unnamed_addr constant [47 x i8] c"\013%s: could not register reset controller, %d\0A\00", align 1
@__func__.rockchip_register_softrst = private unnamed_addr constant [26 x i8] c"rockchip_register_softrst\00", align 1
@__kstrtab_rockchip_register_softrst = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_register_softrst = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_register_softrst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_register_softrst to i32), ptr @__kstrtab_rockchip_register_softrst, ptr @__kstrtabns_rockchip_register_softrst }, section "___ksymtab_gpl+rockchip_register_softrst", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rockchip_register_softrst], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_register_softrst(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rockchip_softrst, ptr %6, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rockchip_softrst, ptr %6, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rockchip_softrst, ptr %6, i32 0, i32 4
  store i8 %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.rockchip_softrst, ptr %6, i32 0, i32 2
  store i32 %1, ptr %12, align 8
  %13 = and i8 %3, 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 32, i32 16
  %16 = getelementptr inbounds %struct.rockchip_softrst, ptr %6, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.reset_controller_dev, ptr %6, i32 0, i32 1
  store ptr null, ptr %17, align 4
  %18 = mul i32 %15, %1
  %19 = getelementptr inbounds %struct.reset_controller_dev, ptr %6, i32 0, i32 8
  store i32 %18, ptr %19, align 8
  store ptr @rockchip_softrst_ops, ptr %6, align 8
  %20 = getelementptr inbounds %struct.reset_controller_dev, ptr %6, i32 0, i32 5
  store ptr %0, ptr %20, align 4
  %21 = tail call i32 @reset_controller_register(ptr noundef nonnull %6) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_register_softrst, i32 noundef %21) #6
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %25

25:                                               ; preds = %23, %8, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_softrst_assert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = udiv i32 %1, %5
  %7 = mul i32 %6, %5
  %8 = sub i32 %1, %7
  %9 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %14 = shl nuw i32 1, %8
  %15 = shl i32 %14, 16
  %16 = or i32 %15, %14
  %17 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = shl i32 %6, 2
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #5, !srcloc !9
  br label %33

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 5
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #5
  %24 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %6, 2
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %29 = shl nuw i32 1, %8
  %30 = or i32 %28, %29
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr i8, ptr %31, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #5
  br label %33

33:                                               ; preds = %21, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_softrst_deassert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = udiv i32 %1, %5
  %7 = mul i32 %6, %5
  %8 = sub i32 %1, %7
  %9 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %14 = shl i32 65536, %8
  %15 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %6, 2
  %18 = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !9
  br label %32

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 5
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.rockchip_softrst, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = shl i32 %6, 2
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %27 = shl nuw i32 1, %8
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr i8, ptr %30, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #5
  br label %32

32:                                               ; preds = %19, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2150570267}
!9 = !{i64 2597359}
!10 = !{i64 2597777}
!11 = !{i64 2150571288}
!12 = !{i64 2150571601}
!13 = !{i64 2150577502}
!14 = !{i64 2150578453}
!15 = !{i64 2150578768}
