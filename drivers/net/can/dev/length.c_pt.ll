; ModuleID = '/llk/IR/drivers/net/can/dev/length.c_pt.bc'
source_filename = "../drivers/net/can/dev/length.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_fd_dlc2len:\09\09\09\09\09"
module asm "\09.asciz \09\22can_fd_dlc2len\22\09\09\09\09\09"
module asm "__kstrtabns_can_fd_dlc2len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_fd_len2dlc:\09\09\09\09\09"
module asm "\09.asciz \09\22can_fd_len2dlc\22\09\09\09\09\09"
module asm "__kstrtabns_can_fd_len2dlc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_skb_get_frame_len:\09\09\09\09\09"
module asm "\09.asciz \09\22can_skb_get_frame_len\22\09\09\09\09\09"
module asm "__kstrtabns_can_skb_get_frame_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }

@dlc2len = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\0C\10\14\18 0@", align 1
@__kstrtab_can_fd_dlc2len = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_fd_dlc2len = external dso_local constant [0 x i8], align 1
@__ksymtab_can_fd_dlc2len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_fd_dlc2len to i32), ptr @__kstrtab_can_fd_dlc2len, ptr @__kstrtabns_can_fd_dlc2len }, section "___ksymtab_gpl+can_fd_dlc2len", align 4
@len2dlc = internal unnamed_addr constant [65 x i8] c"\00\01\02\03\04\05\06\07\08\09\09\09\09\0A\0A\0A\0A\0B\0B\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 1
@__kstrtab_can_fd_len2dlc = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_fd_len2dlc = external dso_local constant [0 x i8], align 1
@__ksymtab_can_fd_len2dlc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_fd_len2dlc to i32), ptr @__kstrtab_can_fd_len2dlc, ptr @__kstrtabns_can_fd_len2dlc }, section "___ksymtab_gpl+can_fd_len2dlc", align 4
@__kstrtab_can_skb_get_frame_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_skb_get_frame_len = external dso_local constant [0 x i8], align 1
@__ksymtab_can_skb_get_frame_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_skb_get_frame_len to i32), ptr @__kstrtab_can_skb_get_frame_len, ptr @__kstrtabns_can_skb_get_frame_len }, section "___ksymtab_gpl+can_skb_get_frame_len", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_can_fd_dlc2len, ptr @__ksymtab_can_fd_len2dlc, ptr @__ksymtab_can_skb_get_frame_len], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %0) #0 {
  %2 = and i8 %0, 15
  %3 = zext i8 %2 to i32
  %4 = getelementptr [16 x i8], ptr @dlc2len, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %0) #0 {
  %2 = icmp ugt i8 %0, 64
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = zext i8 %0 to i32
  %5 = getelementptr [65 x i8], ptr @len2dlc, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ %6, %3 ], [ 15, %1 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @can_skb_get_frame_len(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 72
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp ugt i8 %9, 64
  br i1 %10, label %24, label %11, !prof !8

11:                                               ; preds = %7
  %12 = zext i8 %9 to i32
  %13 = getelementptr [65 x i8], ptr @len2dlc, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 15
  %16 = zext i8 %15 to i32
  br label %24

17:                                               ; preds = %1
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  br label %34

24:                                               ; preds = %11, %7
  %25 = phi i32 [ %16, %11 ], [ 15, %7 ]
  %26 = getelementptr [16 x i8], ptr @dlc2len, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = load i32, ptr %3, align 8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = add i8 %27, 10
  br label %41

32:                                               ; preds = %24
  %33 = add i8 %27, 8
  br label %41

34:                                               ; preds = %21, %17
  %35 = phi i8 [ 0, %17 ], [ %23, %21 ]
  %36 = icmp sgt i32 %18, -1
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = add i8 %35, 9
  br label %41

39:                                               ; preds = %34
  %40 = add i8 %35, 6
  br label %41

41:                                               ; preds = %39, %37, %32, %30
  %42 = phi i8 [ %31, %30 ], [ %33, %32 ], [ %38, %37 ], [ %40, %39 ]
  %43 = zext i8 %42 to i32
  ret i32 %43
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
