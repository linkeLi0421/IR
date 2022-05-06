; ModuleID = '/llk/IR/lib/usercopy.c_pt.bc'
source_filename = "../lib/usercopy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_check_zeroed_user:\09\09\09\09\09"
module asm "\09.asciz \09\22check_zeroed_user\22\09\09\09\09\09"
module asm "__kstrtabns_check_zeroed_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_check_zeroed_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_check_zeroed_user = external dso_local constant [0 x i8], align 1
@__ksymtab_check_zeroed_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @check_zeroed_user to i32), ptr @__kstrtab_check_zeroed_user, ptr @__kstrtabns_check_zeroed_user }, section "___ksymtab+check_zeroed_user", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_check_zeroed_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @check_zeroed_user(ptr noundef %0, i32 noundef %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %57, label %6, !prof !8

6:                                                ; preds = %2
  %7 = sub nsw i32 0, %4
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = add i32 %4, %1
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %9, i32 -1090519040) #2, !srcloc !9
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %6
  %14 = tail call ptr @llvm.thread.pointer() #3
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #4, !srcloc !10
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #3, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !12
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1090519041) #3, !srcloc !13
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #3, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %57, !prof !14

22:                                               ; preds = %13
  %23 = extractvalue { i32, i32 } %19, 1
  %24 = icmp eq i32 %4, 0
  %25 = shl nuw nsw i32 %4, 3
  %26 = shl nsw i32 -1, %25
  %27 = select i1 %24, i32 -1, i32 %26
  %28 = and i32 %23, %27
  br label %29

29:                                               ; preds = %36, %22
  %30 = phi i32 [ %28, %22 ], [ %44, %36 ]
  %31 = phi i32 [ %9, %22 ], [ %38, %36 ]
  %32 = phi ptr [ %8, %22 ], [ %37, %36 ]
  %33 = icmp ugt i32 %31, 4
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %36, label %53, !prof !14

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %32, i32 4
  %38 = add i32 %31, -4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #4, !srcloc !10
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #3, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !12
  %42 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %37, i32 -1090519041) #3, !srcloc !15
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = extractvalue { i32, i32 } %42, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #3, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !12
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %29, label %57, !prof !14

46:                                               ; preds = %29
  %47 = icmp eq i32 %31, 4
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = shl nuw nsw i32 %31, 3
  %50 = shl nsw i32 -1, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %30, %51
  br label %53

53:                                               ; preds = %48, %46, %34
  %54 = phi i32 [ %52, %48 ], [ %30, %46 ], [ 1, %34 ]
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %53, %36, %13, %6, %2
  %58 = phi i32 [ %56, %53 ], [ 1, %2 ], [ -14, %6 ], [ -14, %13 ], [ -14, %36 ]
  ret i32 %58
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149911949, i64 2149911974}
!10 = !{i64 2401410}
!11 = !{i64 2401607}
!12 = !{i64 2149886886}
!13 = !{i64 2149940481, i64 2149940791, i64 2149941105, i64 2149941419}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149972106, i64 2149972416, i64 2149972730, i64 2149973044}
