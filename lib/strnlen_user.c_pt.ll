; ModuleID = '/llk/IR/lib/strnlen_user.c_pt.bc'
source_filename = "../lib/strnlen_user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strnlen_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strnlen_user\22\09\09\09\09\09"
module asm "__kstrtabns_strnlen_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_strnlen_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strnlen_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strnlen_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strnlen_user to i32), ptr @__kstrtab_strnlen_user, ptr @__kstrtabns_strnlen_user }, section "___ksymtab+strnlen_user", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_strnlen_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strnlen_user(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  %4 = icmp ult ptr %0, inttoptr (i32 -1090519040 to ptr)
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %72, !prof !8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %0 to i32
  %8 = sub i32 -1090519040, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %1)
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %9, i32 -1090519040) #3, !srcloc !9
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %6
  %14 = and i32 %7, 3
  %15 = sub nsw i32 0, %14
  %16 = getelementptr i8, ptr %0, i32 %15
  %17 = tail call ptr @llvm.thread.pointer() #4
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #5, !srcloc !10
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #4, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !12
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %16, i32 -1090519041) #4, !srcloc !13
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #4, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %72, !prof !14

25:                                               ; preds = %13
  %26 = extractvalue { i32, i32 } %22, 1
  %27 = add nuw i32 %9, %14
  %28 = shl nuw nsw i32 %14, 3
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = or i32 %26, %30
  br label %32

32:                                               ; preds = %57, %25
  %33 = phi i32 [ %31, %25 ], [ %65, %57 ]
  %34 = phi i32 [ 0, %25 ], [ %55, %57 ]
  %35 = phi i32 [ %27, %25 ], [ %58, %57 ]
  %36 = add i32 %33, -16843009
  %37 = and i32 %33, -2139062144
  %38 = xor i32 %37, -2139062144
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %32
  %42 = add i32 %39, -1
  %43 = xor i32 %39, -1
  %44 = and i32 %42, %43
  %45 = lshr i32 %44, 7
  %46 = icmp eq i32 %44, 127
  %47 = tail call i32 @llvm.ctlz.i32(i32 %45, i1 false) #4, !range !15
  %48 = sub nuw nsw i32 32, %47
  %49 = lshr i32 %48, 3
  %50 = select i1 %46, i32 0, i32 %49
  %51 = sub nsw i32 1, %14
  %52 = add i32 %51, %34
  %53 = add i32 %52, %50
  br label %72

54:                                               ; preds = %32
  %55 = add i32 %34, 4
  %56 = icmp ult i32 %35, 5
  br i1 %56, label %67, label %57, !prof !16

57:                                               ; preds = %54
  %58 = add i32 %35, -4
  %59 = getelementptr i8, ptr %16, i32 %55
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #5, !srcloc !10
  %61 = and i32 %60, -13
  %62 = or i32 %61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #4, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !12
  %63 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %59, i32 -1090519041) #4, !srcloc !17
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = extractvalue { i32, i32 } %63, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #4, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !12
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %32, label %72

67:                                               ; preds = %54
  %68 = sub i32 %55, %14
  %69 = icmp ult i32 %68, %1
  %70 = add i32 %1, 1
  %71 = select i1 %69, i32 0, i32 %70
  br label %72

72:                                               ; preds = %67, %57, %41, %13, %6, %2
  %73 = phi i32 [ 0, %2 ], [ 0, %13 ], [ %53, %41 ], [ %71, %67 ], [ 0, %6 ], [ 0, %57 ]
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 4000000, i32 4001}
!9 = !{i64 2152056516, i64 2152056541}
!10 = !{i64 2402616}
!11 = !{i64 2402813}
!12 = !{i64 2149888092}
!13 = !{i64 2152020813, i64 2152021123, i64 2152021437, i64 2152021751}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i32 0, i32 33}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152052467, i64 2152052777, i64 2152053091, i64 2152053405}
