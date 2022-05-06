; ModuleID = '/llk/IR/fs/ntfs/upcase.c_pt.bc'
source_filename = "../fs/ntfs/upcase.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }

@generate_default_upcase.uc_run_table = internal unnamed_addr constant [40 x [3 x i32]] [[3 x i32] [i32 97, i32 123, i32 -32], [3 x i32] [i32 1105, i32 1117, i32 -80], [3 x i32] [i32 8048, i32 8050, i32 74], [3 x i32] [i32 224, i32 247, i32 -32], [3 x i32] [i32 1118, i32 1120, i32 -80], [3 x i32] [i32 8050, i32 8054, i32 86], [3 x i32] [i32 248, i32 255, i32 -32], [3 x i32] [i32 1377, i32 1415, i32 -48], [3 x i32] [i32 8054, i32 8056, i32 100], [3 x i32] [i32 598, i32 600, i32 -205], [3 x i32] [i32 7936, i32 7944, i32 8], [3 x i32] [i32 8056, i32 8058, i32 128], [3 x i32] [i32 650, i32 652, i32 -217], [3 x i32] [i32 7952, i32 7958, i32 8], [3 x i32] [i32 8058, i32 8060, i32 112], [3 x i32] [i32 940, i32 941, i32 -38], [3 x i32] [i32 7968, i32 7976, i32 8], [3 x i32] [i32 8060, i32 8062, i32 126], [3 x i32] [i32 941, i32 944, i32 -37], [3 x i32] [i32 7984, i32 7992, i32 8], [3 x i32] [i32 8112, i32 8114, i32 8], [3 x i32] [i32 945, i32 962, i32 -32], [3 x i32] [i32 8000, i32 8006, i32 8], [3 x i32] [i32 8144, i32 8146, i32 8], [3 x i32] [i32 962, i32 963, i32 -31], [3 x i32] [i32 8017, i32 8018, i32 8], [3 x i32] [i32 8160, i32 8162, i32 8], [3 x i32] [i32 963, i32 972, i32 -32], [3 x i32] [i32 8019, i32 8020, i32 8], [3 x i32] [i32 8165, i32 8166, i32 7], [3 x i32] [i32 972, i32 973, i32 -64], [3 x i32] [i32 8021, i32 8022, i32 8], [3 x i32] [i32 8560, i32 8576, i32 -16], [3 x i32] [i32 973, i32 975, i32 -63], [3 x i32] [i32 8023, i32 8024, i32 8], [3 x i32] [i32 9424, i32 9450, i32 -26], [3 x i32] [i32 1072, i32 1104, i32 -32], [3 x i32] [i32 8032, i32 8040, i32 8], [3 x i32] [i32 65345, i32 65371, i32 -32], [3 x i32] zeroinitializer], align 4
@generate_default_upcase.uc_dup_table = internal unnamed_addr constant [25 x [2 x i32]] [[2 x i32] [i32 256, i32 303], [2 x i32] [i32 416, i32 422], [2 x i32] [i32 994, i32 1007], [2 x i32] [i32 1227, i32 1228], [2 x i32] [i32 306, i32 311], [2 x i32] [i32 435, i32 439], [2 x i32] [i32 1120, i32 1153], [2 x i32] [i32 1232, i32 1259], [2 x i32] [i32 313, i32 329], [2 x i32] [i32 461, i32 477], [2 x i32] [i32 1168, i32 1215], [2 x i32] [i32 1262, i32 1269], [2 x i32] [i32 330, i32 376], [2 x i32] [i32 478, i32 495], [2 x i32] [i32 1215, i32 1215], [2 x i32] [i32 1272, i32 1273], [2 x i32] [i32 377, i32 382], [2 x i32] [i32 500, i32 501], [2 x i32] [i32 1217, i32 1220], [2 x i32] [i32 7680, i32 7829], [2 x i32] [i32 395, i32 395], [2 x i32] [i32 506, i32 536], [2 x i32] [i32 1223, i32 1224], [2 x i32] [i32 7840, i32 7929], [2 x i32] zeroinitializer], align 4
@generate_default_upcase.uc_word_table = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 255, i32 376], [2 x i32] [i32 429, i32 428], [2 x i32] [i32 499, i32 497], [2 x i32] [i32 617, i32 406], [2 x i32] [i32 387, i32 386], [2 x i32] [i32 432, i32 431], [2 x i32] [i32 595, i32 385], [2 x i32] [i32 623, i32 412], [2 x i32] [i32 389, i32 388], [2 x i32] [i32 441, i32 440], [2 x i32] [i32 596, i32 390], [2 x i32] [i32 626, i32 413], [2 x i32] [i32 392, i32 391], [2 x i32] [i32 445, i32 444], [2 x i32] [i32 601, i32 399], [2 x i32] [i32 629, i32 415], [2 x i32] [i32 396, i32 395], [2 x i32] [i32 454, i32 452], [2 x i32] [i32 603, i32 400], [2 x i32] [i32 643, i32 425], [2 x i32] [i32 402, i32 401], [2 x i32] [i32 457, i32 455], [2 x i32] [i32 608, i32 403], [2 x i32] [i32 648, i32 430], [2 x i32] [i32 409, i32 408], [2 x i32] [i32 460, i32 458], [2 x i32] [i32 611, i32 404], [2 x i32] [i32 658, i32 439], [2 x i32] [i32 424, i32 423], [2 x i32] [i32 477, i32 398], [2 x i32] [i32 616, i32 407], [2 x i32] zeroinitializer], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @generate_default_upcase() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = icmp ugt i32 %1, 32
  br i1 %2, label %3, label %65, !prof !8

3:                                                ; preds = %0
  %4 = tail call noalias ptr @__vmalloc(i32 noundef 131072, i32 noundef 3138) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(131072) %4, i8 0, i32 131072, i1 false)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i32 [ 0, %6 ], [ %11, %7 ]
  %9 = trunc i32 %8 to i16
  %10 = getelementptr i16, ptr %4, i32 %8
  store i16 %9, ptr %10, align 2
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp eq i32 %11, 65536
  br i1 %12, label %13, label %7

13:                                               ; preds = %30, %7
  %14 = phi i32 [ %33, %30 ], [ 97, %7 ]
  %15 = phi i32 [ %31, %30 ], [ 0, %7 ]
  %16 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %15, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i16
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi i32 [ %14, %19 ], [ %28, %23 ]
  %25 = getelementptr i16, ptr %4, i32 %24
  %26 = load i16, ptr %25, align 2
  %27 = add i16 %26, %22
  store i16 %27, ptr %25, align 2
  %28 = add nsw i32 %24, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %13
  %31 = add nuw nsw i32 %15, 1
  %32 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, 39
  br i1 %34, label %35, label %13

35:                                               ; preds = %49, %30
  %36 = phi i32 [ %52, %49 ], [ 256, %30 ]
  %37 = phi i32 [ %50, %49 ], [ 0, %30 ]
  %38 = getelementptr [25 x [2 x i32]], ptr @generate_default_upcase.uc_dup_table, i32 0, i32 %37, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %41, %35
  %42 = phi i32 [ %47, %41 ], [ %36, %35 ]
  %43 = add nsw i32 %42, 1
  %44 = getelementptr i16, ptr %4, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = add i16 %45, -1
  store i16 %46, ptr %44, align 2
  %47 = add i32 %42, 2
  %48 = icmp slt i32 %47, %39
  br i1 %48, label %41, label %49

49:                                               ; preds = %41, %35
  %50 = add nuw nsw i32 %37, 1
  %51 = getelementptr [25 x [2 x i32]], ptr @generate_default_upcase.uc_dup_table, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, 24
  br i1 %53, label %54, label %35

54:                                               ; preds = %54, %49
  %55 = phi i32 [ %63, %54 ], [ 255, %49 ]
  %56 = phi i32 [ %61, %54 ], [ 0, %49 ]
  %57 = getelementptr [32 x [2 x i32]], ptr @generate_default_upcase.uc_word_table, i32 0, i32 %56, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr i16, ptr %4, i32 %55
  store i16 %59, ptr %60, align 2
  %61 = add nuw nsw i32 %56, 1
  %62 = getelementptr [32 x [2 x i32]], ptr @generate_default_upcase.uc_word_table, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, 31
  br i1 %64, label %65, label %54

65:                                               ; preds = %54, %3, %0
  %66 = phi ptr [ null, %3 ], [ null, %0 ], [ %4, %54 ]
  ret ptr %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(0) }

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
