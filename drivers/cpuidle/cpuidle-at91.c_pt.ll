; ModuleID = '/llk/IR/drivers/cpuidle/cpuidle-at91.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-at91.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_cpuidle_at91__162_65_at91_cpuidle_driver_init6 = internal global ptr @at91_cpuidle_driver_init, section ".initcall6.init", align 4
@at91_cpuidle_driver = internal global %struct.platform_driver { ptr @at91_cpuidle_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"cpuidle-at91\00", align 1
@at91_standby = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"at91_idle\00", align 1
@at91_idle_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.1, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"RAM_SR\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WFI and DDR Self Refresh\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 10, i32 0, i32 10000, ptr @at91_enter_idle, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpuidle_at91__162_65_at91_cpuidle_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_cpuidle_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_cpuidle_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_cpuidle_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr @at91_standby, align 4
  %4 = tail call i32 @cpuidle_register(ptr noundef nonnull @at91_idle_driver, ptr noundef null) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_enter_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #2 {
  %4 = load ptr, ptr @at91_standby, align 4
  tail call void %4() #3
  ret i32 %2
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
