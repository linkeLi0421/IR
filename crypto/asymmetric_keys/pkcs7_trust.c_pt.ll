; ModuleID = '/llk/IR/crypto/asymmetric_keys/pkcs7_trust.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_trust.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_validate_trust:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_validate_trust\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_validate_trust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }

@__kstrtab_pkcs7_validate_trust = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_validate_trust = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_validate_trust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_validate_trust to i32), ptr @__kstrtab_pkcs7_validate_trust, ptr @__kstrtabns_pkcs7_validate_trust }, section "___ksymtab_gpl+pkcs7_validate_trust", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pkcs7_validate_trust], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_validate_trust(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 23
  store i8 0, ptr %7, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %102, %10
  %15 = phi ptr [ %104, %102 ], [ %12, %10 ]
  %16 = phi i32 [ %103, %102 ], [ -126, %10 ]
  %17 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 11
  %18 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 3
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %17, align 4
  br label %27

27:                                               ; preds = %50, %25
  %28 = phi ptr [ %52, %50 ], [ %26, %25 ]
  %29 = phi ptr [ %48, %50 ], [ %23, %25 ]
  %30 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 23
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 24
  %35 = load i8, ptr %34, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %102, label %84

37:                                               ; preds = %27
  store i8 1, ptr %30, align 4
  %38 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @find_asymmetric_key(ptr noundef %1, ptr noundef %39, ptr noundef %41, ptr noundef null, i1 noundef zeroext false) #2
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = icmp eq ptr %42, inttoptr (i32 -12 to ptr)
  br i1 %45, label %108, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %29
  br i1 %49, label %102, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.x509_certificate, ptr %29, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %48, null
  br i1 %53, label %54, label %27

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr [3 x ptr], ptr %52, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = tail call ptr @find_asymmetric_key(ptr noundef %1, ptr noundef %55, ptr noundef %58, ptr noundef null, i1 noundef zeroext false) #2
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = icmp eq ptr %62, inttoptr (i32 -126 to ptr)
  br i1 %65, label %66, label %95

66:                                               ; preds = %64, %54, %21
  %67 = load ptr, ptr %17, align 8
  %68 = load ptr, ptr %67, align 4
  %69 = tail call ptr @find_asymmetric_key(ptr noundef %1, ptr noundef %68, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #2
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %95, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %17, align 8
  br label %73

73:                                               ; preds = %71, %61, %37
  %74 = phi ptr [ %69, %71 ], [ %62, %61 ], [ %42, %37 ]
  %75 = phi ptr [ null, %71 ], [ %29, %61 ], [ %29, %37 ]
  %76 = phi ptr [ %72, %71 ], [ %52, %61 ], [ %28, %37 ]
  %77 = tail call i32 @verify_signature(ptr noundef %74, ptr noundef %76) #2
  tail call void @key_put(ptr noundef %74) #2
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = icmp eq i32 %77, -12
  %81 = select i1 %80, i32 -12, i32 -129
  br label %108

82:                                               ; preds = %73
  %83 = icmp eq ptr %75, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %82, %33
  %85 = phi ptr [ %75, %82 ], [ %29, %33 ]
  %86 = getelementptr inbounds %struct.x509_certificate, ptr %85, i32 0, i32 24
  store i8 1, ptr %86, align 1
  %87 = load ptr, ptr %22, align 4
  %88 = icmp eq ptr %87, %85
  br i1 %88, label %101, label %89

89:                                               ; preds = %89, %84
  %90 = phi ptr [ %93, %89 ], [ %87, %84 ]
  %91 = getelementptr inbounds %struct.x509_certificate, ptr %90, i32 0, i32 24
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds %struct.x509_certificate, ptr %90, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %85
  br i1 %94, label %101, label %89

95:                                               ; preds = %66, %64
  %96 = phi ptr [ %62, %64 ], [ %69, %66 ]
  %97 = ptrtoint ptr %96 to i32
  switch i32 %97, label %106 [
    i32 -126, label %102
    i32 -65, label %98
    i32 0, label %101
  ]

98:                                               ; preds = %95, %14
  %99 = icmp eq i32 %16, -126
  %100 = select i1 %99, i32 -65, i32 %16
  br label %102

101:                                              ; preds = %95, %89, %84, %82
  br label %102

102:                                              ; preds = %101, %98, %95, %46, %33
  %103 = phi i32 [ 0, %101 ], [ %100, %98 ], [ %16, %95 ], [ %16, %33 ], [ %16, %46 ]
  %104 = load ptr, ptr %15, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %14

106:                                              ; preds = %95
  %107 = ptrtoint ptr %96 to i32
  br label %108

108:                                              ; preds = %106, %102, %79, %44, %10
  %109 = phi i32 [ %81, %79 ], [ -126, %10 ], [ %107, %106 ], [ -12, %44 ], [ %103, %102 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i8 0, i8 2}
