; ModuleID = '/llk/IR/crypto/asymmetric_keys/pkcs7_verify.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_verify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_verify\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }

@hash_algo_name = external dso_local constant [20 x ptr], align 4
@.str = private unnamed_addr constant [46 x i8] c"\014PKCS7: Invalid module sig (not pkcs7-data)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\014PKCS7: Invalid module sig (has authattrs)\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\014PKCS7: Invalid firmware sig (not pkcs7-data)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\014PKCS7: Invalid firmware sig (missing authattrs)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\014PKCS7: Invalid kexec sig (not Authenticode)\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\014PKCS7: Invalid unspecified sig (not pkcs7-data)\0A\00", align 1
@__kstrtab_pkcs7_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_verify to i32), ptr @__kstrtab_pkcs7_verify, ptr @__kstrtabns_pkcs7_verify }, section "___ksymtab_gpl+pkcs7_verify", align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\014PKCS7: Sig %u: No messageDigest\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\014PKCS7: Message signed outside of X.509 validity window\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\014PKCS7: Sig %u: X.509 algo and PKCS#7 sig algo don't match\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"\014PKCS7: Sig %u: X.509 chain contains auth-skid nonmatch (%u->%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\014PKCS7: Sig %u: X.509 chain contains loop\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pkcs7_verify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_get_digest(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @pkcs7_digest(ptr noundef %0, ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %6, i32 0, i32 11
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %1, align 4
  %19 = load ptr, ptr %15, align 8
  %20 = getelementptr inbounds %struct.public_key_signature, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %2, align 4
  %22 = load ptr, ptr %15, align 8
  %23 = getelementptr inbounds %struct.public_key_signature, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @match_string(ptr noundef nonnull @hash_algo_name, i32 noundef 20, ptr noundef %24) #9
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 %25, ptr %3, align 4
  br label %28

28:                                               ; preds = %27, %14, %11, %8, %4
  %29 = phi i32 [ -74, %8 ], [ -74, %4 ], [ %12, %11 ], [ 0, %27 ], [ 0, %14 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pkcs7_digest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %91

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %91, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  %18 = icmp eq ptr %14, inttoptr (i32 -2 to ptr)
  %19 = select i1 %18, i32 -65, i32 %17
  br label %91

20:                                               ; preds = %13
  %21 = load i32, ptr %14, align 64
  %22 = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 -64
  %25 = load i32, ptr %24, align 64
  %26 = getelementptr inbounds %struct.public_key_signature, ptr %5, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #10
  store ptr %27, ptr %6, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %88, label %29

29:                                               ; preds = %20
  %30 = add i32 %21, 8
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %88, label %33

33:                                               ; preds = %29
  store ptr %14, ptr %31, align 64
  %34 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %31, ptr noundef %35, i32 noundef %37, ptr noundef %38) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %86, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  %46 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 5
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %51) #11
  br label %84

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %26, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load ptr, ptr %6, align 4
  %60 = tail call i32 @bcmp(ptr %59, ptr nonnull %47, i32 %55)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  tail call void @llvm.memset.p0.i32(ptr align 1 %59, i8 0, i32 %55, i1 false)
  %63 = load ptr, ptr %31, align 64
  %64 = getelementptr inbounds %struct.crypto_shash, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 64
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.crypto_shash, ptr %63, i32 0, i32 2, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 -128
  %72 = load ptr, ptr %71, align 64
  %73 = tail call i32 %72(ptr noundef nonnull %31) #9
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  store i8 49, ptr %3, align 1
  %76 = call i32 @crypto_shash_update(ptr noundef nonnull %31, ptr noundef nonnull %3, i32 noundef 1) #9
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %42, align 4
  %80 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %1, i32 0, i32 7
  %81 = load i32, ptr %80, align 8
  %82 = load ptr, ptr %6, align 4
  %83 = call i32 @crypto_shash_finup(ptr noundef nonnull %31, ptr noundef %79, i32 noundef %81, ptr noundef %82) #9
  br label %84

84:                                               ; preds = %78, %75, %68, %62, %58, %53, %49
  %85 = phi i32 [ -129, %49 ], [ -74, %53 ], [ -129, %58 ], [ %73, %68 ], [ %76, %75 ], [ -126, %62 ], [ %83, %78 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %86

86:                                               ; preds = %84, %41, %33
  %87 = phi i32 [ %39, %33 ], [ %85, %84 ], [ %39, %41 ]
  call void @kfree(ptr noundef nonnull %31) #9
  br label %88

88:                                               ; preds = %86, %29, %20
  %89 = phi i32 [ %87, %86 ], [ -12, %29 ], [ -12, %20 ]
  %90 = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %90) #9
  br label %91

91:                                               ; preds = %88, %16, %9, %2
  %92 = phi i32 [ %89, %88 ], [ 0, %2 ], [ -65, %9 ], [ %19, %16 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_verify(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  switch i32 %1, label %219 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %19
    i32 5, label %23
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 19
  br i1 %6, label %7, label %216

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %216

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 19
  br i1 %14, label %15, label %216

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %216, label %27

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %27, label %216

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 19
  br i1 %26, label %27, label %216

27:                                               ; preds = %23, %19, %15, %7
  %28 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %219, label %31

31:                                               ; preds = %212, %27
  %32 = phi ptr [ %214, %212 ], [ %29, %27 ]
  %33 = phi i32 [ %213, %212 ], [ -65, %27 ]
  %34 = tail call fastcc i32 @pkcs7_digest(ptr noundef %0, ptr noundef nonnull %32) #9
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %198, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %0, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 11
  %41 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 2
  br label %42

42:                                               ; preds = %64, %39
  %43 = phi ptr [ %37, %39 ], [ %65, %64 ]
  %44 = getelementptr inbounds %struct.x509_certificate, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %40, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %45, ptr noundef %47) #9
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.x509_certificate, ptr %43, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.public_key, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %40, align 8
  %55 = getelementptr inbounds %struct.public_key_signature, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @strcmp(ptr noundef %53, ptr noundef %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, ptr %41, align 8
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %60) #11
  br label %64

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 1
  store ptr %43, ptr %63, align 4
  br label %67

64:                                               ; preds = %59, %42
  %65 = load ptr, ptr %43, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %42

67:                                               ; preds = %64, %62, %36
  %68 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %198, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 9
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 10
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds %struct.x509_certificate, ptr %69, i32 0, i32 8
  %80 = load i64, ptr %79, align 8
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.x509_certificate, ptr %69, i32 0, i32 9
  %84 = load i64, ptr %83, align 8
  %85 = icmp sgt i64 %78, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %76
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %198

88:                                               ; preds = %82, %71
  %89 = getelementptr inbounds %struct.x509_certificate, ptr %69, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 11
  %92 = load ptr, ptr %91, align 8
  %93 = tail call i32 @public_key_verify_signature(ptr noundef %90, ptr noundef %92) #9
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %198, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %68, align 4
  %97 = load ptr, ptr %0, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %99, %95
  %100 = phi ptr [ %102, %99 ], [ %97, %95 ]
  %101 = getelementptr inbounds %struct.x509_certificate, ptr %100, i32 0, i32 23
  store i8 0, ptr %101, align 4
  %102 = load ptr, ptr %100, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %99

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %195, %104
  %106 = phi ptr [ %181, %195 ], [ %96, %104 ]
  %107 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 23
  store i8 1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 28
  %109 = load i8, ptr %108, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 4
  store i8 1, ptr %112, align 1
  %113 = load ptr, ptr %68, align 4
  %114 = icmp eq ptr %113, %106
  br i1 %114, label %198, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %119, %115 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.x509_certificate, ptr %116, i32 0, i32 28
  store i8 1, ptr %117, align 1
  %118 = getelementptr inbounds %struct.x509_certificate, ptr %116, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %106
  br i1 %120, label %198, label %115

121:                                              ; preds = %105
  %122 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 26
  %123 = load i8, ptr %122, align 1, !range !8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %198

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr [3 x ptr], ptr %127, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 25
  %132 = load i8, ptr %131, align 2, !range !8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 27
  %136 = load i8, ptr %135, align 8, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %198

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 1
  store ptr %106, ptr %139, align 4
  br label %198

140:                                              ; preds = %125
  %141 = icmp eq ptr %128, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %146, %140
  %143 = phi ptr [ %144, %146 ], [ %0, %140 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.x509_certificate, ptr %144, i32 0, i32 6
  %148 = load ptr, ptr %147, align 8
  %149 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %148, ptr noundef nonnull %128) #9
  br i1 %149, label %165, label %142

150:                                              ; preds = %140
  %151 = icmp eq ptr %130, null
  br i1 %151, label %198, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %0, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %198, label %155

155:                                              ; preds = %162, %152
  %156 = phi ptr [ %163, %162 ], [ %153, %152 ]
  %157 = getelementptr inbounds %struct.x509_certificate, ptr %156, i32 0, i32 7
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef nonnull %158, ptr noundef nonnull %130) #9
  br i1 %161, label %180, label %162

162:                                              ; preds = %160, %155
  %163 = load ptr, ptr %156, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %198, label %155

165:                                              ; preds = %146
  %166 = load ptr, ptr %129, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.x509_certificate, ptr %144, i32 0, i32 7
  %170 = load ptr, ptr %169, align 4
  %171 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %170, ptr noundef nonnull %166) #9
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 2
  %174 = load i32, ptr %173, align 8
  %175 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 22
  %176 = load i32, ptr %175, align 8
  %177 = getelementptr inbounds %struct.x509_certificate, ptr %144, i32 0, i32 22
  %178 = load i32, ptr %177, align 8
  %179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %174, i32 noundef %176, i32 noundef %178) #11
  br label %198

180:                                              ; preds = %168, %165, %160
  %181 = phi ptr [ %144, %168 ], [ %144, %165 ], [ %156, %160 ]
  %182 = getelementptr inbounds %struct.x509_certificate, ptr %181, i32 0, i32 23
  %183 = load i8, ptr %182, align 4, !range !8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 2
  %187 = load i32, ptr %186, align 8
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %187) #11
  br label %198

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.x509_certificate, ptr %181, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8
  %192 = load ptr, ptr %126, align 4
  %193 = tail call i32 @public_key_verify_signature(ptr noundef %191, ptr noundef %192) #9
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.x509_certificate, ptr %106, i32 0, i32 1
  store ptr %181, ptr %196, align 4
  %197 = icmp eq ptr %106, %181
  br i1 %197, label %198, label %105

198:                                              ; preds = %195, %189, %185, %172, %162, %152, %150, %142, %138, %134, %121, %115, %111, %88, %86, %67, %31
  %199 = phi i32 [ -129, %86 ], [ %34, %31 ], [ 0, %67 ], [ %93, %88 ], [ 0, %138 ], [ 0, %185 ], [ -129, %172 ], [ 0, %134 ], [ 0, %111 ], [ 0, %162 ], [ 0, %142 ], [ 0, %115 ], [ 0, %152 ], [ 0, %121 ], [ 0, %195 ], [ %193, %189 ], [ 0, %150 ]
  %200 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 4
  %201 = load i8, ptr %200, align 1, !range !8
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = icmp eq i32 %33, -65
  %205 = select i1 %204, i32 -129, i32 %33
  br label %212

206:                                              ; preds = %198
  %207 = icmp slt i32 %199, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %206
  %209 = icmp eq i32 %199, -65
  br i1 %209, label %210, label %219

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %32, i32 0, i32 3
  store i8 1, ptr %211, align 4
  br label %212

212:                                              ; preds = %210, %206, %203
  %213 = phi i32 [ %205, %203 ], [ %33, %210 ], [ 0, %206 ]
  %214 = load ptr, ptr %32, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %31

216:                                              ; preds = %23, %19, %15, %11, %7, %3
  %217 = phi ptr [ @.str, %3 ], [ @.str.1, %7 ], [ @.str.2, %11 ], [ @.str.3, %15 ], [ @.str.4, %19 ], [ @.str.5, %23 ]
  %218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %217) #11
  br label %219

219:                                              ; preds = %216, %212, %208, %27, %2
  %220 = phi i32 [ -22, %2 ], [ -65, %27 ], [ -129, %216 ], [ %199, %208 ], [ %213, %212 ]
  ret i32 %220
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_supply_detached_data(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store ptr %1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 6
  store i32 %2, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @public_key_verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
