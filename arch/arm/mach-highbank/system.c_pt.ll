; ModuleID = '/llk/IR/arch/arm/mach-highbank/system.c_pt.bc'
source_filename = "../arch/arm/mach-highbank/system.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@sregs_base = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@scu_base_addr = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @highbank_restart(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3
  tail call void @arm_heavy_mb() #3
  %4 = load ptr, ptr @sregs_base, align 4
  %5 = getelementptr i8, ptr %4, i32 3840
  br i1 %3, label %6, label %22

6:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 2) #3, !srcloc !8
  %7 = load ptr, ptr @scu_base_addr, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @scu_power_mode(ptr noundef nonnull %7, i32 noundef 3) #3
  br label %38

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #3
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr @sregs_base, align 4
  %18 = shl i32 %16, 2
  %19 = and i32 %18, 1020
  %20 = add nuw nsw i32 %19, 512
  %21 = getelementptr i8, ptr %17, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #3, !srcloc !8
  br label %38

22:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #3, !srcloc !8
  %23 = load ptr, ptr @scu_base_addr, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @scu_power_mode(ptr noundef nonnull %23, i32 noundef 3) #3
  br label %38

27:                                               ; preds = %22
  %28 = tail call ptr @llvm.thread.pointer() #3
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr @sregs_base, align 4
  %34 = shl i32 %32, 2
  %35 = and i32 %34, 1020
  %36 = add nuw nsw i32 %35, 512
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #3, !srcloc !8
  br label %38

38:                                               ; preds = %27, %25, %11, %9
  br label %39

39:                                               ; preds = %39, %38
  %40 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %41 = tail call i32 %40() #3
  br label %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 359404}
