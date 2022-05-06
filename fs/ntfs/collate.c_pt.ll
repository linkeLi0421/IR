; ModuleID = '/llk/IR/fs/ntfs/collate.c_pt.bc'
source_filename = "../fs/ntfs/collate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@ntfs_do_collate0x0 = internal unnamed_addr constant [3 x ptr] [ptr @ntfs_collate_binary, ptr null, ptr null], align 4
@ntfs_do_collate0x1 = internal unnamed_addr constant [4 x ptr] [ptr @ntfs_collate_ntofs_ulong, ptr null, ptr null, ptr null], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_collate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %1, -17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/collate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

10:                                               ; preds = %6
  %11 = icmp ult i32 %1, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr [3 x ptr], ptr @ntfs_do_collate0x0, i32 0, i32 %1
  br label %20

14:                                               ; preds = %10
  %15 = icmp ult i32 %1, 16
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/collate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

17:                                               ; preds = %14
  %18 = add nsw i32 %1, -16
  %19 = getelementptr [4 x ptr], ptr @ntfs_do_collate0x1, i32 0, i32 %18
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %13, %12 ]
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #4
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ntfs_collate_binary(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = icmp slt i32 %2, %4
  %7 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %8 = tail call i32 @memcmp(ptr noundef %1, ptr noundef %3, i32 noundef %7)
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %2, %4
  %11 = select i1 %6, i32 -1, i32 1
  %12 = select i1 %10, i32 0, i32 %11
  %13 = select i1 %9, i32 %12, i32 %8
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_collate_ntofs_ulong(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, %4
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/collate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 4
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/collate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 40, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = load i32, ptr %3, align 4
  %14 = icmp ult i32 %12, %13
  %15 = icmp ne i32 %12, %13
  %16 = zext i1 %15 to i32
  %17 = select i1 %14, i32 -1, i32 %16
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152737711, i64 2152738192, i64 2152737748, i64 2152737804, i64 2152737838, i64 2152737862, i64 2152737903, i64 2152737924, i64 2152737952, i64 2152737986}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152739751, i64 2152740233, i64 2152739788, i64 2152739844, i64 2152739878, i64 2152739902, i64 2152739943, i64 2152739964, i64 2152739992, i64 2152740026}
!12 = !{i64 2152734688, i64 2152735169, i64 2152734725, i64 2152734781, i64 2152734815, i64 2152734839, i64 2152734880, i64 2152734901, i64 2152734929, i64 2152734963}
!13 = !{i64 2152735699, i64 2152736180, i64 2152735736, i64 2152735792, i64 2152735826, i64 2152735850, i64 2152735891, i64 2152735912, i64 2152735940, i64 2152735974}
