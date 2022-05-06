; ModuleID = '/llk/IR/lib/strncpy_from_user.c_pt.bc'
source_filename = "../lib/strncpy_from_user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strncpy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strncpy_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_strncpy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_strncpy_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strncpy_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strncpy_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strncpy_from_user to i32), ptr @__kstrtab_strncpy_from_user, ptr @__kstrtabns_strncpy_from_user }, section "___ksymtab+strncpy_from_user", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_strncpy_from_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_user(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %89, label %5, !prof !8

5:                                                ; preds = %3
  %6 = icmp ult ptr %1, inttoptr (i32 -1090519040 to ptr)
  br i1 %6, label %7, label %89, !prof !9

7:                                                ; preds = %5
  %8 = ptrtoint ptr %1 to i32
  %9 = sub i32 -1090519040, %8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %2)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #3, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %89

14:                                               ; preds = %7
  %15 = icmp ugt i32 %10, 3
  br i1 %15, label %16, label %55

16:                                               ; preds = %14
  %17 = tail call ptr @llvm.thread.pointer() #4
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  br label %19

19:                                               ; preds = %50, %16
  %20 = phi i32 [ %10, %16 ], [ %53, %50 ]
  %21 = phi i32 [ 0, %16 ], [ %52, %50 ]
  %22 = getelementptr i8, ptr %1, i32 %21
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #5, !srcloc !11
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #4, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !13
  %26 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %22, i32 -1090519041) #4, !srcloc !14
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #4, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !13
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %61, !prof !9

30:                                               ; preds = %19
  %31 = add i32 %28, -16843009
  %32 = and i32 %28, -2139062144
  %33 = xor i32 %32, -2139062144
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = extractvalue { i32, i32 } %26, 1
  %38 = add i32 %34, -1
  %39 = xor i32 %34, -1
  %40 = and i32 %38, %39
  %41 = lshr i32 %40, 7
  %42 = and i32 %41, %37
  %43 = getelementptr i8, ptr %0, i32 %21
  store i32 %42, ptr %43, align 4
  %44 = icmp eq i32 %40, 127
  %45 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 false) #4, !range !15
  %46 = sub nuw nsw i32 32, %45
  %47 = lshr i32 %46, 3
  %48 = select i1 %44, i32 0, i32 %47
  %49 = add i32 %48, %21
  br label %89

50:                                               ; preds = %30
  %51 = getelementptr i8, ptr %0, i32 %21
  store i32 %28, ptr %51, align 4
  %52 = add i32 %21, 4
  %53 = add i32 %20, -4
  %54 = icmp ugt i32 %53, 3
  br i1 %54, label %19, label %55

55:                                               ; preds = %50, %14
  %56 = phi i32 [ 0, %14 ], [ %52, %50 ]
  %57 = phi i32 [ %10, %14 ], [ %53, %50 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @llvm.thread.pointer() #4
  br label %61

61:                                               ; preds = %59, %19
  %62 = phi ptr [ %60, %59 ], [ %17, %19 ]
  %63 = phi i32 [ %57, %59 ], [ %20, %19 ]
  %64 = phi i32 [ %56, %59 ], [ %21, %19 ]
  %65 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  br label %66

66:                                               ; preds = %81, %61
  %67 = phi i32 [ %63, %61 ], [ %83, %81 ]
  %68 = phi i32 [ %64, %61 ], [ %82, %81 ]
  %69 = getelementptr i8, ptr %1, i32 %68
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #5, !srcloc !11
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #4, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !13
  %73 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %69, i32 -1090519041) #4, !srcloc !16
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #4, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88, !prof !9

76:                                               ; preds = %66
  %77 = extractvalue { i32, i32 } %73, 1
  %78 = trunc i32 %77 to i8
  %79 = getelementptr i8, ptr %0, i32 %68
  store i8 %78, ptr %79, align 1
  %80 = icmp eq i8 %78, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = add i32 %68, 1
  %83 = add i32 %67, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %66

85:                                               ; preds = %81, %55
  %86 = phi i32 [ %56, %55 ], [ %82, %81 ]
  %87 = icmp ult i32 %86, %2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %66
  br label %89

89:                                               ; preds = %88, %85, %76, %36, %7, %5, %3
  %90 = phi i32 [ 0, %3 ], [ -14, %88 ], [ %86, %85 ], [ %49, %36 ], [ -14, %7 ], [ -14, %5 ], [ %68, %76 ]
  ret i32 %90
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152056847, i64 2152056872}
!11 = !{i64 2403232}
!12 = !{i64 2403429}
!13 = !{i64 2149888708}
!14 = !{i64 2152021513, i64 2152021823, i64 2152022137, i64 2152022451}
!15 = !{i32 0, i32 33}
!16 = !{i64 2152048366, i64 2152048676, i64 2152048990, i64 2152049304}
