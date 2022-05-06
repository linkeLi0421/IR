; ModuleID = '/llk/IR/lib/decompress.c_pt.bc'
source_filename = "../lib/decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.compress_format = type { [2 x i8], ptr, ptr }

@compressed_formats = internal constant [9 x %struct.compress_format] [%struct.compress_format { [2 x i8] c"\1F\8B", ptr @.str, ptr @gunzip }, %struct.compress_format { [2 x i8] c"\1F\9E", ptr @.str, ptr @gunzip }, %struct.compress_format { [2 x i8] c"BZ", ptr @.str.1, ptr @bunzip2 }, %struct.compress_format { [2 x i8] c"]\00", ptr @.str.2, ptr @unlzma }, %struct.compress_format { [2 x i8] c"\FD7", ptr @.str.3, ptr @unxz }, %struct.compress_format { [2 x i8] c"\89L", ptr @.str.4, ptr @unlzo }, %struct.compress_format { [2 x i8] c"\02!", ptr @.str.5, ptr @unlz4 }, %struct.compress_format { [2 x i8] c"(\B5", ptr @.str.6, ptr @unzstd }, %struct.compress_format zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @decompress_method(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 section ".init.text" {
  %4 = icmp slt i32 %1, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %0, ptr noundef nonnull dereferenceable(2) @compressed_formats, i32 2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %15

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  store ptr null, ptr %2, align 4
  br label %28

11:                                               ; preds = %15
  %12 = getelementptr %struct.compress_format, ptr %16, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %0, ptr noundef dereferenceable(2) %12, i32 2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %12, %11 ], [ @compressed_formats, %5 ]
  %17 = getelementptr %struct.compress_format, ptr %16, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11

20:                                               ; preds = %15, %11, %5
  %21 = phi ptr [ @compressed_formats, %5 ], [ getelementptr inbounds ([9 x %struct.compress_format], ptr @compressed_formats, i32 0, i32 8, i32 0, i32 0), %15 ], [ %12, %11 ]
  %22 = phi ptr [ @.str, %5 ], [ null, %15 ], [ %18, %11 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store ptr %22, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.compress_format, ptr %21, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %10, %8
  %29 = phi ptr [ %27, %25 ], [ null, %10 ], [ null, %8 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gunzip(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bunzip2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unlzma(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unxz(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unlzo(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unlz4(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unzstd(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #2

attributes #0 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }

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
