; ModuleID = '/llk/IR/lib/fdt_strerror.c_pt.bc'
source_filename = "../lib/fdt_strerror.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_errtabent = type { ptr }

@.str = private unnamed_addr constant [22 x i8] c"<valid offset/length>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<no error>\00", align 1
@fdt_errtable = internal unnamed_addr constant [20 x %struct.fdt_errtabent] [%struct.fdt_errtabent zeroinitializer, %struct.fdt_errtabent { ptr @.str.3 }, %struct.fdt_errtabent { ptr @.str.4 }, %struct.fdt_errtabent { ptr @.str.5 }, %struct.fdt_errtabent { ptr @.str.6 }, %struct.fdt_errtabent { ptr @.str.7 }, %struct.fdt_errtabent { ptr @.str.8 }, %struct.fdt_errtabent { ptr @.str.9 }, %struct.fdt_errtabent { ptr @.str.10 }, %struct.fdt_errtabent { ptr @.str.11 }, %struct.fdt_errtabent { ptr @.str.12 }, %struct.fdt_errtabent { ptr @.str.13 }, %struct.fdt_errtabent { ptr @.str.14 }, %struct.fdt_errtabent { ptr @.str.15 }, %struct.fdt_errtabent { ptr @.str.16 }, %struct.fdt_errtabent { ptr @.str.17 }, %struct.fdt_errtabent { ptr @.str.18 }, %struct.fdt_errtabent { ptr @.str.19 }, %struct.fdt_errtabent { ptr @.str.20 }, %struct.fdt_errtabent { ptr @.str.21 }], align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"<unknown error>\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"FDT_ERR_NOTFOUND\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"FDT_ERR_EXISTS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"FDT_ERR_NOSPACE\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADOFFSET\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FDT_ERR_BADPATH\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADPHANDLE\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADSTATE\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"FDT_ERR_TRUNCATED\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADMAGIC\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADVERSION\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"FDT_ERR_BADSTRUCTURE\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADLAYOUT\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"FDT_ERR_INTERNAL\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"FDT_ERR_BADNCELLS\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADVALUE\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"FDT_ERR_BADOVERLAY\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"FDT_ERR_NOPHANDLES\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"FDT_ERR_BADFLAGS\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"FDT_ERR_ALIGNMENT\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @fdt_strerror(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = sub i32 0, %0
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr [20 x %struct.fdt_errtabent], ptr @fdt_errtable, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %5
  br label %13

13:                                               ; preds = %12, %8, %3, %1
  %14 = phi ptr [ %10, %8 ], [ @.str.2, %12 ], [ @.str, %1 ], [ @.str.1, %3 ]
  ret ptr %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
