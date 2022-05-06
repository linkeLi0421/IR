; ModuleID = '/llk/IR/drivers/nfc/s3fwrn5/phy_common.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/phy_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_set_wake\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_set_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_power_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_power_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_power_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_phy_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_phy_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_phy_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_common = type { ptr, i32, i32, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__kstrtab_s3fwrn5_phy_set_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_set_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_set_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_set_wake to i32), ptr @__kstrtab_s3fwrn5_phy_set_wake, ptr @__kstrtabns_s3fwrn5_phy_set_wake }, section "___ksymtab+s3fwrn5_phy_set_wake", align 4
@__kstrtab_s3fwrn5_phy_power_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_power_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_power_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_power_ctrl to i32), ptr @__kstrtab_s3fwrn5_phy_power_ctrl, ptr @__kstrtabns_s3fwrn5_phy_power_ctrl }, section "___ksymtab+s3fwrn5_phy_power_ctrl", align 4
@__kstrtab_s3fwrn5_phy_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_set_mode to i32), ptr @__kstrtab_s3fwrn5_phy_set_mode, ptr @__kstrtabns_s3fwrn5_phy_set_mode }, section "___ksymtab+s3fwrn5_phy_set_mode", align 4
@__kstrtab_s3fwrn5_phy_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_phy_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_phy_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_phy_get_mode to i32), ptr @__kstrtab_s3fwrn5_phy_get_mode, ptr @__kstrtabns_s3fwrn5_phy_get_mode }, section "___ksymtab+s3fwrn5_phy_get_mode", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_s3fwrn5_phy_get_mode, ptr @__ksymtab_s3fwrn5_phy_power_ctrl, ptr @__ksymtab_s3fwrn5_phy_set_mode, ptr @__ksymtab_s3fwrn5_phy_set_wake], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s3fwrn5_phy_set_wake(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #2
  %4 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = zext i1 %1 to i32
  %7 = tail call ptr @gpio_to_desc(i32 noundef %5) #2
  tail call void @gpiod_set_raw_value(ptr noundef %7, i32 noundef %6) #2
  br i1 %1, label %8, label %9

8:                                                ; preds = %2
  tail call void @msleep(i32 noundef 20) #2
  br label %9

9:                                                ; preds = %8, %2
  tail call void @mutex_unlock(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @s3fwrn5_phy_power_ctrl(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @gpio_to_desc(i32 noundef %8) #2
  tail call void @gpiod_set_raw_value(ptr noundef %9, i32 noundef 1) #2
  %10 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @gpio_to_desc(i32 noundef %11) #2
  tail call void @gpiod_set_raw_value(ptr noundef %12, i32 noundef 0) #2
  switch i32 %1, label %16 [
    i32 2, label %13
    i32 0, label %19
  ]

13:                                               ; preds = %6
  %14 = load i32, ptr %10, align 4
  %15 = tail call ptr @gpio_to_desc(i32 noundef %14) #2
  tail call void @gpiod_set_raw_value(ptr noundef %15, i32 noundef 1) #2
  br label %16

16:                                               ; preds = %13, %6
  tail call void @msleep(i32 noundef 20) #2
  %17 = load i32, ptr %7, align 4
  %18 = tail call ptr @gpio_to_desc(i32 noundef %17) #2
  tail call void @gpiod_set_raw_value(ptr noundef %18, i32 noundef 0) #2
  tail call void @msleep(i32 noundef 20) #2
  br label %19

19:                                               ; preds = %16, %6, %2
  %20 = xor i1 %5, true
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s3fwrn5_phy_set_mode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #2
  %4 = tail call zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef %0, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %3) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_phy_get_mode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %2) #2
  %3 = getelementptr inbounds %struct.phy_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
