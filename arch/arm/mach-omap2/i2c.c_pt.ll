; ModuleID = '/llk/IR/arch/arm/mach-omap2/i2c.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.65, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.65 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.list_head = type { ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [45 x i8] c"\014%s: %s: softreset failed (waited %d usec)\0A\00", align 1
@__func__.omap_i2c_reset = private unnamed_addr constant [15 x i8] c"omap_i2c_reset\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_i2c_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @omap_rev() #3
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 52
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @omap_rev() #3
  %7 = and i32 %6, -16777216
  %8 = icmp eq i32 %7, 889192448
  %9 = select i1 %8, i16 36, i16 164
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i16 [ 36, %1 ], [ %9, %5 ]
  %12 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext %11) #3
  %13 = and i32 %12, -32769
  tail call void @omap_hwmod_write(i32 noundef %13, ptr noundef %0, i16 noundef zeroext %11) #3
  %14 = tail call i32 @omap_hwmod_softreset(ptr noundef %0) #3
  %15 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext %11) #3
  %16 = or i32 %15, 32768
  tail call void @omap_hwmod_write(i32 noundef %16, ptr noundef %0, i16 noundef zeroext %11) #3
  %17 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %29, %10
  %19 = phi i32 [ 0, %10 ], [ %31, %29 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.omap_hwmod_class, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i16
  %26 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext %25) #3
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #3
  %31 = add nuw nsw i32 %19, 1
  %32 = icmp eq i32 %31, 10000
  br i1 %32, label %33, label %18

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_i2c_reset, ptr noundef %34, i32 noundef 10000) #4
  br label %36

36:                                               ; preds = %33, %18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwmod_write(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_softreset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
