; ModuleID = '/llk/IR/drivers/input/input-compat.c_pt.bc'
source_filename = "../drivers/input/input-compat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_event_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22input_event_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_input_event_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_event_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22input_event_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_input_event_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_effect_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_effect_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_effect_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_input_event_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_event_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_input_event_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_event_from_user to i32), ptr @__kstrtab_input_event_from_user, ptr @__kstrtabns_input_event_from_user }, section "___ksymtab_gpl+input_event_from_user", align 4
@__kstrtab_input_event_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_event_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_input_event_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_event_to_user to i32), ptr @__kstrtab_input_event_to_user, ptr @__kstrtabns_input_event_to_user }, section "___ksymtab_gpl+input_event_to_user", align 4
@__kstrtab_input_ff_effect_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_effect_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_effect_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_effect_from_user to i32), ptr @__kstrtab_input_ff_effect_from_user, ptr @__kstrtabns_input_ff_effect_from_user }, section "___ksymtab_gpl+input_ff_effect_from_user", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_input_event_from_user, ptr @__ksymtab_input_event_to_user, ptr @__ksymtab_input_ff_effect_from_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_event_from_user(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1090519040) #4, !srcloc !8
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !9

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #5
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #6, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %12 = tail call i32 @arm_copy_from_user(ptr noundef %1, ptr noundef %0, i32 noundef 16) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !9

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %12, %6 ], [ 16, %2 ]
  %16 = sub i32 16, %15
  %17 = getelementptr i8, ptr %1, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #5
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ 0, %6 ], [ -14, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_event_to_user(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1090519040) #4, !srcloc !13
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #5
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #6, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %12 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef 16) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -14
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ -14, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_ff_effect_from_user(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 44
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 44, i32 -1090519040) #4, !srcloc !8
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !9

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #5
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #6, !srcloc !10
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %15 = tail call i32 @arm_copy_from_user(ptr noundef %2, ptr noundef %0, i32 noundef 44) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !9

17:                                               ; preds = %9, %5
  %18 = phi i32 [ %15, %9 ], [ 44, %5 ]
  %19 = sub i32 44, %18
  %20 = getelementptr i8, ptr %2, i32 %19
  tail call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #5
  br label %21

21:                                               ; preds = %17, %9, %3
  %22 = phi i32 [ -22, %3 ], [ 0, %9 ], [ -14, %17 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

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
!8 = !{i64 2149906294, i64 2149906319}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2402406}
!11 = !{i64 2402603}
!12 = !{i64 2149887882}
!13 = !{i64 2149906872, i64 2149906897}
