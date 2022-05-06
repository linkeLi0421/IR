; ModuleID = '/llk/IR/arch/arm/mach-shmobile/platsmp-scu.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/platsmp-scu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@shmobile_boot_fn = external dso_local local_unnamed_addr global i32, align 4
@shmobile_scu_base_phys = internal unnamed_addr global i32 0, align 4
@shmobile_scu_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [25 x i8] c"arm/shmobile-scu:prepare\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @shmobile_smp_scu_prepare_cpus(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @shmobile_smp_boot to i32), i32 -2130706432, i32 8454144) #3, !srcloc !8
  store i32 %3, ptr @shmobile_boot_fn, align 4
  store i32 %0, ptr @shmobile_scu_base_phys, align 4
  %4 = tail call ptr @ioremap(i32 noundef %0, i32 noundef 4096) #4
  store ptr %4, ptr @shmobile_scu_base, align 4
  tail call void @scu_enable(ptr noundef %4) #4
  %5 = load ptr, ptr @shmobile_scu_base, align 4
  %6 = tail call i32 @scu_power_mode(ptr noundef %5, i32 noundef 0) #4
  %7 = tail call i32 @__cpuhp_setup_state(i32 noundef 56, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @shmobile_scu_cpu_prepare, ptr noundef null, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_boot() #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmobile_scu_cpu_prepare(i32 noundef %0) #2 {
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @shmobile_boot_scu to i32), i32 -2130706432, i32 8454144) #3, !srcloc !8
  %3 = load i32, ptr @shmobile_scu_base_phys, align 4
  tail call void @shmobile_smp_hook(i32 noundef %0, i32 noundef %2, i32 noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmobile_smp_scu_cpu_die(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @shmobile_smp_hook(i32 noundef %0, i32 noundef 0, i32 noundef 0) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #4
  %3 = load ptr, ptr @shmobile_scu_base, align 4
  %4 = tail call i32 @scu_power_mode(ptr noundef %3, i32 noundef 3) #4
  tail call void @shmobile_smp_sleep() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_hook(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_smp_sleep() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmobile_smp_scu_cpu_kill(i32 noundef %0) local_unnamed_addr #2 {
  %2 = shl i32 %0, 3
  %3 = shl i32 3, %2
  br label %4

4:                                                ; preds = %11, %1
  %5 = phi i32 [ 0, %1 ], [ %13, %11 ]
  %6 = load ptr, ptr @shmobile_scu_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %9 = and i32 %8, %3
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 1000
  br i1 %14, label %15, label %4

15:                                               ; preds = %11, %4
  %16 = phi i32 [ 1, %4 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_boot_scu() #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

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
!8 = !{i64 2148780829, i64 2148780852, i64 2148780884, i64 2148780916, i64 2148780954, i64 2148780984}
!9 = !{i64 2152575163}
!10 = !{i64 3650251}
!11 = !{i64 2152575562}
