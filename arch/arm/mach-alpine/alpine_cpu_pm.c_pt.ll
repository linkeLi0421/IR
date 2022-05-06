; ModuleID = '/llk/IR/arch/arm/mach-alpine/alpine_cpu_pm.c_pt.bc'
source_filename = "../arch/arm/mach-alpine/alpine_cpu_pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.al_cpu_resume_regs = type { i32, i32, [0 x %struct.al_cpu_resume_regs_per_cpu] }
%struct.al_cpu_resume_regs_per_cpu = type { i32, i32 }

@wakeup_supported = internal unnamed_addr global i32 0, align 4
@al_cpu_resume_regs = internal unnamed_addr global ptr null, align 4
@al_sysfabric = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [28 x i8] c"al,alpine-sysfabric-service\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"al,alpine-cpu-resume\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alpine_cpu_wakeup(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @wakeup_supported, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %6 = load ptr, ptr @al_cpu_resume_regs, align 4
  %7 = getelementptr %struct.al_cpu_resume_regs, ptr %6, i32 0, i32 2, i32 %0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #3, !srcloc !9
  %8 = load ptr, ptr @al_sysfabric, align 4
  %9 = shl i32 %0, 8
  %10 = add i32 %9, 8224
  %11 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %10, i32 noundef 0) #3
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ 0, %5 ], [ -38, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @alpine_cpu_pm_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #3
  store ptr %1, ptr @al_sysfabric, align 4
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #3
  %3 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #3
  store ptr %3, ptr @al_cpu_resume_regs, align 4
  %4 = load ptr, ptr @al_sysfabric, align 4
  %5 = icmp ule ptr %4, inttoptr (i32 -4096 to ptr)
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i32
  store i32 %8, ptr @wakeup_supported, align 4
  br i1 %7, label %9, label %14

9:                                                ; preds = %0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %11 = and i32 %10, -256
  %12 = icmp eq i32 %11, -253636096
  %13 = zext i1 %12 to i32
  store i32 %13, ptr @wakeup_supported, align 4
  br label %14

14:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2150964532}
!9 = !{i64 360665}
!10 = !{i64 361083}
!11 = !{i64 2150965348}
