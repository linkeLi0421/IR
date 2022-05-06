; ModuleID = '/llk/IR/arch/arm/kernel/smp_scu.c_pt.bc'
source_filename = "../arch/arm/kernel/smp_scu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scu_get_core_count(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !8
  %4 = and i32 %3, 3
  %5 = add nuw nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scu_enable(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #4, !srcloc !9
  %3 = and i32 %2, -15728656
  %4 = icmp eq i32 %3, 1091551376
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = or i32 %7, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #3, !srcloc !10
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = xor i1 %4, true
  %18 = and i32 %2, 14680064
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = select i1 %20, i32 1, i32 33
  %22 = or i32 %13, %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %22) #3, !srcloc !10
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %23() #3
  br label %24

24:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scu_power_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #3
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 255
  %9 = icmp ugt i32 %1, 3
  %10 = icmp eq i32 %1, 1
  %11 = or i1 %9, %10
  %12 = icmp ugt i32 %8, 3
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 8
  %16 = getelementptr i8, ptr %15, i32 %8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #3, !srcloc !11
  %18 = and i8 %17, -4
  %19 = trunc i32 %1 to i8
  %20 = or i8 %18, %19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %20) #3, !srcloc !12
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i32 [ 0, %14 ], [ -22, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scu_cpu_power_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 8
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #3, !srcloc !11
  %11 = and i8 %10, -4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %11) #3, !srcloc !12
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 0, %7 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scu_get_cpu_power_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 8
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #3, !srcloc !11
  %11 = and i8 %10, 3
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!8 = !{i64 362473}
!9 = !{i64 2151212005}
!10 = !{i64 362055}
!11 = !{i64 362253}
!12 = !{i64 361858}
