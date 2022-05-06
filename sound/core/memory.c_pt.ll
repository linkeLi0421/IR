; ModuleID = '/llk/IR/sound/core/memory.c_pt.bc'
source_filename = "../sound/core/memory.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_to_user_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_to_user_fromio\22\09\09\09\09\09"
module asm "__kstrtabns_copy_to_user_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_user_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_user_toio\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_user_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_copy_to_user_fromio = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_to_user_fromio = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_to_user_fromio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_to_user_fromio to i32), ptr @__kstrtab_copy_to_user_fromio, ptr @__kstrtabns_copy_to_user_fromio }, section "___ksymtab+copy_to_user_fromio", align 4
@__kstrtab_copy_from_user_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_user_toio = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_user_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_user_toio to i32), ptr @__kstrtab_copy_from_user_toio, ptr @__kstrtabns_copy_from_user_toio }, section "___ksymtab+copy_from_user_toio", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_copy_from_user_toio, ptr @__ksymtab_copy_to_user_fromio], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_to_user_fromio(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !8
  br label %5

5:                                                ; preds = %15, %3
  %6 = phi ptr [ %0, %3 ], [ %24, %15 ]
  %7 = phi ptr [ %1, %3 ], [ %25, %15 ]
  %8 = phi i32 [ %2, %3 ], [ %23, %15 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = call i32 @llvm.umin.i32(i32 %8, i32 256)
  call void @mmiocpy(ptr noundef nonnull %4, ptr noundef %7, i32 noundef %11) #6
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %11, i32 -1090519040) #7, !srcloc !9
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #6
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #8, !srcloc !10
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %21 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %11) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %22 = icmp eq i32 %21, 0
  %23 = sub i32 %8, %11
  %24 = getelementptr i8, ptr %6, i32 %11
  %25 = getelementptr i8, ptr %7, i32 %11
  br i1 %22, label %5, label %26

26:                                               ; preds = %15, %10, %5
  %27 = phi i32 [ -14, %15 ], [ 0, %5 ], [ -14, %10 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_from_user_toio(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !8
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %26, %3
  %7 = phi i32 [ %27, %26 ], [ %2, %3 ]
  %8 = phi ptr [ %29, %26 ], [ %1, %3 ]
  %9 = phi ptr [ %28, %26 ], [ %0, %3 ]
  %10 = call i32 @llvm.umin.i32(i32 %7, i32 256)
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %10, i32 -1090519040) #7, !srcloc !13
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !14

14:                                               ; preds = %6
  %15 = tail call ptr @llvm.thread.pointer() #6
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #8, !srcloc !10
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %8, i32 noundef %10) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !14

22:                                               ; preds = %14, %6
  %23 = phi i32 [ %20, %14 ], [ %10, %6 ]
  %24 = sub i32 %10, %23
  %25 = getelementptr i8, ptr %4, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %23, i1 false) #6
  br label %31

26:                                               ; preds = %14
  call void @mmiocpy(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %10) #6
  %27 = sub i32 %7, %10
  %28 = getelementptr i8, ptr %9, i32 %10
  %29 = getelementptr i8, ptr %8, i32 %10
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %6

31:                                               ; preds = %26, %22, %3
  %32 = phi i32 [ -14, %22 ], [ 0, %3 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149995576, i64 2149995601}
!10 = !{i64 2491110}
!11 = !{i64 2491307}
!12 = !{i64 2149976586}
!13 = !{i64 2149994998, i64 2149995023}
!14 = !{!"branch_weights", i32 2000, i32 1}
