; ModuleID = '/llk/IR/crypto/asymmetric_keys/x509_cert_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/x509_cert_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_free_certificate:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_free_certificate\22\09\09\09\09\09"
module asm "__kstrtabns_x509_free_certificate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_cert_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_cert_parse\22\09\09\09\09\09"
module asm "__kstrtabns_x509_cert_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_x509_decode_time:\09\09\09\09\09"
module asm "\09.asciz \09\22x509_decode_time\22\09\09\09\09\09"
module asm "__kstrtabns_x509_decode_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.x509_parse_context = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_x509_free_certificate = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_free_certificate = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_free_certificate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_free_certificate to i32), ptr @__kstrtab_x509_free_certificate, ptr @__kstrtabns_x509_free_certificate }, section "___ksymtab_gpl+x509_free_certificate", align 4
@x509_decoder = external dso_local constant %struct.asn1_decoder, align 1
@x509_akid_decoder = external dso_local constant %struct.asn1_decoder, align 1
@.str = private unnamed_addr constant [44 x i8] c"\014X.509: Couldn't decode AuthKeyIdentifier\0A\00", align 1
@__kstrtab_x509_cert_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_cert_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_cert_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_cert_parse to i32), ptr @__kstrtab_x509_cert_parse, ptr @__kstrtabns_x509_cert_parse }, section "___ksymtab_gpl+x509_cert_parse", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"x962\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"\014X.509: Got cert with pkey (%u) and sig (%u) algorithm OIDs\0A\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p192\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p256\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"ecdsa-nist-p384\00", align 1
@x509_decode_time.month_lengths = internal unnamed_addr constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1
@__kstrtab_x509_decode_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_x509_decode_time = external dso_local constant [0 x i8], align 1
@__ksymtab_x509_decode_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @x509_decode_time to i32), ptr @__kstrtab_x509_decode_time, ptr @__kstrtabns_x509_decode_time }, section "___ksymtab_gpl+x509_decode_time", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_x509_cert_parse, ptr @__ksymtab_x509_decode_time, ptr @__ksymtab_x509_free_certificate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @x509_free_certificate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @public_key_free(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @public_key_signature_free(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #13
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %16

16:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @x509_cert_parse(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 112) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #14
  %9 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 2
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #14
  %14 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %90, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 68) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %90, label %20

20:                                               ; preds = %16
  store ptr %4, ptr %18, align 8
  %21 = ptrtoint ptr %0 to i32
  %22 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @x509_decoder, ptr noundef nonnull %18, ptr noundef %0, i32 noundef %1) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %87, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 18
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @x509_akid_decoder, ptr noundef nonnull %18, ptr noundef nonnull %27, i32 noundef %31) #13
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %87

36:                                               ; preds = %29, %25
  %37 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = tail call ptr @kmemdup(ptr noundef %38, i32 noundef %40, i32 noundef 3264) #13
  %42 = load ptr, ptr %9, align 8
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %9, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %87, label %46

46:                                               ; preds = %36
  %47 = load i32, ptr %39, align 8
  %48 = getelementptr inbounds %struct.public_key, ptr %43, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = tail call ptr @kmemdup(ptr noundef %50, i32 noundef %52, i32 noundef 3264) #13
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds %struct.public_key, ptr %54, i32 0, i32 3
  store ptr %53, ptr %55, align 4
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds %struct.public_key, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %87, label %60

60:                                               ; preds = %46
  %61 = load i32, ptr %51, align 8
  %62 = getelementptr inbounds %struct.public_key, ptr %56, i32 0, i32 4
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.x509_parse_context, ptr %18, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds %struct.public_key, ptr %65, i32 0, i32 2
  store i32 %64, ptr %66, align 4
  %67 = tail call i32 @x509_get_sig_params(ptr noundef nonnull %4) #13
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 14
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 15
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 16
  %77 = load i32, ptr %76, align 8
  %78 = tail call ptr @asymmetric_key_generate_id(ptr noundef %71, i32 noundef %73, ptr noundef %75, i32 noundef %77) #13
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = ptrtoint ptr %78 to i32
  br label %87

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 6
  store ptr %78, ptr %83, align 8
  %84 = tail call i32 @x509_check_for_self_signed(ptr noundef nonnull %4) #13
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @kfree(ptr noundef nonnull %18) #13
  br label %106

87:                                               ; preds = %82, %80, %60, %46, %36, %34, %20
  %88 = phi i32 [ %23, %20 ], [ %32, %34 ], [ %67, %60 ], [ %81, %80 ], [ %84, %82 ], [ -12, %46 ], [ -12, %36 ]
  tail call void @kfree(ptr noundef nonnull %18) #13
  %89 = load ptr, ptr %9, align 8
  br label %90

90:                                               ; preds = %87, %16, %11, %6
  %91 = phi ptr [ %89, %87 ], [ %8, %16 ], [ %8, %11 ], [ null, %6 ]
  %92 = phi i32 [ %88, %87 ], [ -12, %16 ], [ -12, %11 ], [ -12, %6 ]
  tail call void @public_key_free(ptr noundef %91) #13
  %93 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  tail call void @public_key_signature_free(ptr noundef %94) #13
  %95 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 4
  %96 = load ptr, ptr %95, align 8
  tail call void @kfree(ptr noundef %96) #13
  %97 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  tail call void @kfree(ptr noundef %98) #13
  %99 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  tail call void @kfree(ptr noundef %100) #13
  %101 = getelementptr inbounds %struct.x509_certificate, ptr %4, i32 0, i32 7
  %102 = load ptr, ptr %101, align 4
  tail call void @kfree(ptr noundef %102) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %103

103:                                              ; preds = %90, %2
  %104 = phi i32 [ %92, %90 ], [ -12, %2 ]
  %105 = inttoptr i32 %104 to ptr
  br label %106

106:                                              ; preds = %103, %86
  %107 = phi ptr [ %105, %103 ], [ %4, %86 ]
  ret ptr %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_get_sig_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_check_for_self_signed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_OID(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [50 x i8], align 1
  %7 = tail call i32 @look_up_OID(ptr noundef %3, i32 noundef %4) #13
  %8 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  store i32 %7, ptr %8, align 4
  %9 = icmp eq i32 %7, 98
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %6, i8 0, i32 50, i1 false), !annotation !8
  %11 = call i32 @sprint_oid(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6, i32 noundef 50) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #13
  br label %12

12:                                               ; preds = %10, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_tbs_certificate(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = sub i32 0, %1
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 10
  store ptr %7, ptr %9, align 8
  %10 = add i32 %4, %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.x509_certificate, ptr %11, i32 0, i32 11
  store i32 %10, ptr %12, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_pkey_algo(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %42 [
    i32 93, label %24
    i32 83, label %17
    i32 13, label %18
    i32 14, label %8
    i32 15, label %9
    i32 16, label %10
    i32 17, label %11
    i32 18, label %12
    i32 5, label %22
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 82, label %20
  ]

8:                                                ; preds = %5
  br label %18

9:                                                ; preds = %5
  br label %18

10:                                               ; preds = %5
  br label %18

11:                                               ; preds = %5
  br label %18

12:                                               ; preds = %5
  br label %18

13:                                               ; preds = %5
  br label %22

14:                                               ; preds = %5
  br label %22

15:                                               ; preds = %5
  br label %22

16:                                               ; preds = %5
  br label %22

17:                                               ; preds = %5
  br label %20

18:                                               ; preds = %12, %11, %10, %9, %8, %5
  %19 = phi ptr [ @.str.6, %12 ], [ @.str.5, %11 ], [ @.str.4, %10 ], [ @.str.3, %9 ], [ @.str.2, %8 ], [ @.str.1, %5 ]
  br label %24

20:                                               ; preds = %17, %5
  %21 = phi ptr [ @.str.8, %17 ], [ @.str.7, %5 ]
  br label %24

22:                                               ; preds = %16, %15, %14, %13, %5
  %23 = phi ptr [ @.str.5, %16 ], [ @.str.4, %15 ], [ @.str.3, %14 ], [ @.str.6, %13 ], [ @.str.2, %5 ]
  br label %24

24:                                               ; preds = %22, %20, %18, %5
  %25 = phi ptr [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ @.str.9, %5 ]
  %26 = phi ptr [ @.str.15, %22 ], [ @.str.12, %20 ], [ @.str.10, %18 ], [ @.str.14, %5 ]
  %27 = phi ptr [ @.str.16, %22 ], [ @.str.13, %20 ], [ @.str.11, %18 ], [ @.str.13, %5 ]
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.x509_certificate, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.public_key_signature, ptr %30, i32 0, i32 6
  store ptr %25, ptr %31, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.x509_certificate, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.public_key_signature, ptr %34, i32 0, i32 5
  store ptr %26, ptr %35, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.x509_certificate, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.public_key_signature, ptr %38, i32 0, i32 7
  store ptr %27, ptr %39, align 4
  %40 = load i32, ptr %6, align 4
  %41 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %24, %5
  %43 = phi i32 [ -65, %5 ], [ 0, %24 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_signature(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %9, i32 noundef %7) #15
  br label %44

13:                                               ; preds = %5
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(4) @.str.10)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(7) @.str.12)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(4) @.str.14)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(6) @.str.15)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %24, %21, %13
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = load i8, ptr %3, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %3, i32 1
  %37 = add i32 %4, -1
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi i32 [ %37, %35 ], [ %4, %27 ]
  %40 = phi ptr [ %36, %35 ], [ %3, %27 ]
  %41 = getelementptr inbounds %struct.x509_certificate, ptr %14, i32 0, i32 13
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.x509_certificate, ptr %42, i32 0, i32 12
  store i32 %39, ptr %43, align 8
  br label %44

44:                                               ; preds = %38, %32, %30, %11
  %45 = phi i32 [ -22, %11 ], [ 0, %38 ], [ -74, %32 ], [ -74, %30 ]
  ret i32 %45
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_serial(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 14
  store ptr %3, ptr %7, align 8
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 15
  store i32 %4, ptr %9, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_extract_name_segment(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %35 [
    i32 51, label %8
    i32 56, label %17
    i32 21, label %26
  ]

8:                                                ; preds = %5
  %9 = trunc i32 %4 to i8
  %10 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 12
  store i8 %9, ptr %10, align 2
  %11 = ptrtoint ptr %3 to i32
  %12 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 15
  store i16 %15, ptr %16, align 2
  br label %35

17:                                               ; preds = %5
  %18 = trunc i32 %4 to i8
  %19 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 11
  store i8 %18, ptr %19, align 1
  %20 = ptrtoint ptr %3 to i32
  %21 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 14
  store i16 %24, ptr %25, align 4
  br label %35

26:                                               ; preds = %5
  %27 = trunc i32 %4 to i8
  %28 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 13
  store i8 %27, ptr %28, align 1
  %29 = ptrtoint ptr %3 to i32
  %30 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 16
  store i16 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %26, %17, %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_issuer(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 17
  store ptr %3, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 16
  store i32 %4, ptr %9, align 8
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr [3 x ptr], ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = tail call ptr @asymmetric_key_generate_id(ptr noundef %3, i32 noundef %4, ptr noundef nonnull @.str.18, i32 noundef 0) #13
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %31

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.x509_certificate, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr [3 x ptr], ptr %24, i32 0, i32 2
  store ptr %17, ptr %25, align 4
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %21, %5
  %28 = phi ptr [ %26, %21 ], [ %10, %5 ]
  %29 = getelementptr inbounds %struct.x509_certificate, ptr %28, i32 0, i32 4
  %30 = tail call fastcc i32 @x509_fabricate_name(ptr noundef %0, ptr noundef %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i32 [ %30, %27 ], [ %20, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @x509_fabricate_name(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %103

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 1
  br i1 %11, label %14, label %25

14:                                               ; preds = %8
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 13
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 1) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %103, label %24

24:                                               ; preds = %20
  store i8 0, ptr %22, align 8
  br label %99

25:                                               ; preds = %8
  %26 = zext i8 %13 to i32
  %27 = icmp eq i8 %13, 0
  %28 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 15
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %5, i32 %30
  br i1 %27, label %90, label %32

32:                                               ; preds = %25
  %33 = icmp ult i8 %10, %13
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 14
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %5, i32 %37
  %39 = tail call i32 @bcmp(ptr %31, ptr %38, i32 %26)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %34, %32
  %42 = icmp ugt i8 %10, 6
  %43 = icmp ugt i8 %13, 6
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 14
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %5, i32 %48
  %50 = tail call i32 @bcmp(ptr noundef dereferenceable(7) %31, ptr noundef dereferenceable(7) %49, i32 7)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %90, label %52

52:                                               ; preds = %45, %41
  %53 = zext i8 %10 to i32
  %54 = add nuw nsw i32 %53, 2
  %55 = add nuw nsw i32 %54, %26
  %56 = add nuw nsw i32 %55, 1
  %57 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %103, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 14
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %5, i32 %62
  %64 = load i8, ptr %12, align 1
  %65 = zext i8 %64 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %57, ptr align 1 %63, i32 %65, i1 false)
  %66 = getelementptr i8, ptr %57, i32 %65
  store i8 58, ptr %66, align 1
  %67 = add nuw nsw i32 %65, 1
  %68 = getelementptr i8, ptr %57, i32 %67
  store i8 32, ptr %68, align 1
  %69 = getelementptr i8, ptr %66, i32 2
  %70 = load i16, ptr %28, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %5, i32 %71
  %73 = load i8, ptr %9, align 2
  %74 = zext i8 %73 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr align 1 %72, i32 %74, i1 false)
  %75 = add nuw nsw i32 %65, 2
  %76 = add nuw nsw i32 %75, %74
  %77 = getelementptr i8, ptr %57, i32 %76
  store i8 0, ptr %77, align 1
  br label %99

78:                                               ; preds = %14
  %79 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 14
  br label %84

80:                                               ; preds = %16
  %81 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 13
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 16
  br label %84

84:                                               ; preds = %80, %78
  %85 = phi ptr [ %79, %78 ], [ %83, %80 ]
  %86 = phi i8 [ %13, %78 ], [ %82, %80 ]
  %87 = load i16, ptr %85, align 4
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %5, i32 %88
  br label %90

90:                                               ; preds = %84, %45, %34, %25
  %91 = phi ptr [ %31, %34 ], [ %31, %45 ], [ %31, %25 ], [ %89, %84 ]
  %92 = phi i8 [ %10, %34 ], [ %10, %45 ], [ %10, %25 ], [ %86, %84 ]
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %93, 1
  %95 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %94, i32 noundef 3264) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %95, ptr align 1 %91, i32 %93, i1 false)
  %98 = getelementptr i8, ptr %95, i32 %93
  store i8 0, ptr %98, align 1
  br label %99

99:                                               ; preds = %97, %59, %24
  %100 = phi ptr [ %95, %97 ], [ %57, %59 ], [ %22, %24 ]
  store ptr %100, ptr %1, align 4
  store i8 0, ptr %9, align 2
  %101 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 11
  store i8 0, ptr %101, align 1
  %102 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 13
  store i8 0, ptr %102, align 1
  br label %103

103:                                              ; preds = %99, %90, %52, %20, %2
  %104 = phi i32 [ 0, %99 ], [ -22, %2 ], [ -12, %20 ], [ -12, %52 ], [ -12, %90 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_subject(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 18
  store ptr %3, ptr %7, align 8
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.x509_certificate, ptr %8, i32 0, i32 19
  store i32 %4, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 5
  %12 = tail call fastcc i32 @x509_fabricate_name(ptr noundef %0, ptr noundef %11)
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @x509_note_params(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = sub i32 0, %1
  %16 = getelementptr i8, ptr %3, i32 %15
  %17 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = add i32 %4, %1
  %19 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %10, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_extract_key_data(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 7
  store i32 %8, ptr %9, align 4
  switch i32 %8, label %38 [
    i32 10, label %23
    i32 78, label %10
    i32 79, label %10
    i32 2, label %11
  ]

10:                                               ; preds = %5, %5
  br label %23

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @parse_OID(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %6) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %11
  %19 = load i32, ptr %6, align 4
  switch i32 %19, label %38 [
    i32 91, label %23
    i32 3, label %20
    i32 4, label %21
    i32 46, label %22
  ]

20:                                               ; preds = %18
  br label %23

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %21, %20, %18, %10, %5
  %24 = phi ptr [ @.str.19, %20 ], [ @.str.20, %21 ], [ @.str.21, %22 ], [ @.str.12, %10 ], [ @.str.10, %5 ], [ @.str.14, %18 ]
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.x509_certificate, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.public_key, ptr %27, i32 0, i32 7
  store ptr %24, ptr %28, align 4
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load i8, ptr %3, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %3, i32 1
  %35 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = add i32 %4, -1
  %37 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %33, %30, %23, %18, %11, %5
  %39 = phi i32 [ 0, %33 ], [ -74, %11 ], [ -65, %18 ], [ -65, %5 ], [ -74, %30 ], [ -74, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_OID(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_process_extension(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %39 [
    i32 64, label %8
    i32 71, label %36
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.x509_certificate, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ult i32 %4, 3
  %14 = or i1 %13, %12
  br i1 %14, label %39, label %15

15:                                               ; preds = %8
  %16 = load i8, ptr %3, align 1
  %17 = icmp eq i8 %16, 4
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %3, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %4, -2
  %23 = icmp eq i32 %22, %21
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %3, i32 2
  %26 = getelementptr inbounds %struct.x509_certificate, ptr %9, i32 0, i32 20
  store i32 %21, ptr %26, align 8
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.x509_certificate, ptr %27, i32 0, i32 21
  store ptr %25, ptr %28, align 4
  %29 = tail call ptr @asymmetric_key_generate_id(ptr noundef %25, i32 noundef %21, ptr noundef nonnull @.str.18, i32 noundef 0) #13
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %29 to i32
  br label %39

33:                                               ; preds = %24
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.x509_certificate, ptr %34, i32 0, i32 7
  store ptr %29, ptr %35, align 4
  br label %39

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 18
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 17
  store i32 %4, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %33, %31, %18, %15, %8, %5
  %40 = phi i32 [ %32, %31 ], [ 0, %33 ], [ 0, %36 ], [ -74, %8 ], [ -74, %18 ], [ -74, %15 ], [ 0, %5 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_decode_time(ptr nocapture noundef writeonly %0, i32 %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = icmp eq i8 %2, 23
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = icmp eq i32 %4, 13
  br i1 %8, label %9, label %178

9:                                                ; preds = %7
  %10 = load i8, ptr %3, align 1
  %11 = add i8 %10, -48
  %12 = icmp ugt i8 %11, 9
  br i1 %12, label %178, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = add i8 %15, -48
  %17 = icmp ugt i8 %16, 9
  br i1 %17, label %178, label %18

18:                                               ; preds = %13
  %19 = zext i8 %16 to i32
  %20 = zext i8 %11 to i32
  %21 = mul nuw nsw i32 %20, 10
  %22 = add nuw nsw i32 %21, %19
  %23 = getelementptr i8, ptr %3, i32 2
  %24 = icmp ugt i32 %22, 49
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %22, 1900
  br label %66

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %22, 2000
  br label %66

29:                                               ; preds = %5
  %30 = icmp ne i8 %2, 24
  %31 = icmp ne i32 %4, 15
  %32 = or i1 %30, %31
  br i1 %32, label %178, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %3, align 1
  %35 = add i8 %34, -48
  %36 = icmp ugt i8 %35, 9
  br i1 %36, label %178, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %3, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, -48
  %41 = icmp ugt i8 %40, 9
  br i1 %41, label %178, label %42

42:                                               ; preds = %37
  %43 = zext i8 %40 to i32
  %44 = zext i8 %35 to i32
  %45 = mul nuw nsw i32 %44, 10
  %46 = add nuw nsw i32 %45, %43
  %47 = getelementptr i8, ptr %3, i32 2
  %48 = mul nuw nsw i32 %46, 100
  %49 = load i8, ptr %47, align 1
  %50 = add i8 %49, -48
  %51 = icmp ugt i8 %50, 9
  br i1 %51, label %178, label %52

52:                                               ; preds = %42
  %53 = getelementptr i8, ptr %3, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = add i8 %54, -48
  %56 = icmp ugt i8 %55, 9
  br i1 %56, label %178, label %57

57:                                               ; preds = %52
  %58 = zext i8 %55 to i32
  %59 = zext i8 %50 to i32
  %60 = mul nuw nsw i32 %59, 10
  %61 = getelementptr i8, ptr %3, i32 4
  %62 = add nuw nsw i32 %60, %48
  %63 = add nuw nsw i32 %62, %58
  %64 = add nsw i32 %63, -1950
  %65 = icmp ult i32 %64, 100
  br i1 %65, label %178, label %66

66:                                               ; preds = %57, %27, %25
  %67 = phi i32 [ %26, %25 ], [ %28, %27 ], [ %63, %57 ]
  %68 = phi ptr [ %23, %25 ], [ %23, %27 ], [ %61, %57 ]
  %69 = load i8, ptr %68, align 1
  %70 = add i8 %69, -48
  %71 = icmp ugt i8 %70, 9
  br i1 %71, label %178, label %72

72:                                               ; preds = %66
  %73 = getelementptr i8, ptr %68, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = add i8 %74, -48
  %76 = icmp ugt i8 %75, 9
  br i1 %76, label %178, label %77

77:                                               ; preds = %72
  %78 = zext i8 %75 to i32
  %79 = zext i8 %70 to i32
  %80 = mul nuw nsw i32 %79, 10
  %81 = add nuw nsw i32 %80, %78
  %82 = getelementptr i8, ptr %68, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = add i8 %83, -48
  %85 = icmp ugt i8 %84, 9
  br i1 %85, label %178, label %86

86:                                               ; preds = %77
  %87 = getelementptr i8, ptr %68, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = add i8 %88, -48
  %90 = icmp ugt i8 %89, 9
  br i1 %90, label %178, label %91

91:                                               ; preds = %86
  %92 = zext i8 %89 to i32
  %93 = zext i8 %84 to i32
  %94 = mul nuw nsw i32 %93, 10
  %95 = add nuw nsw i32 %94, %92
  %96 = getelementptr i8, ptr %68, i32 4
  %97 = load i8, ptr %96, align 1
  %98 = add i8 %97, -48
  %99 = icmp ugt i8 %98, 9
  br i1 %99, label %178, label %100

100:                                              ; preds = %91
  %101 = getelementptr i8, ptr %68, i32 5
  %102 = load i8, ptr %101, align 1
  %103 = add i8 %102, -48
  %104 = icmp ugt i8 %103, 9
  br i1 %104, label %178, label %105

105:                                              ; preds = %100
  %106 = zext i8 %103 to i32
  %107 = zext i8 %98 to i32
  %108 = mul nuw nsw i32 %107, 10
  %109 = add nuw nsw i32 %108, %106
  %110 = getelementptr i8, ptr %68, i32 6
  %111 = load i8, ptr %110, align 1
  %112 = add i8 %111, -48
  %113 = icmp ugt i8 %112, 9
  br i1 %113, label %178, label %114

114:                                              ; preds = %105
  %115 = getelementptr i8, ptr %68, i32 7
  %116 = load i8, ptr %115, align 1
  %117 = add i8 %116, -48
  %118 = icmp ugt i8 %117, 9
  br i1 %118, label %178, label %119

119:                                              ; preds = %114
  %120 = zext i8 %117 to i32
  %121 = zext i8 %112 to i32
  %122 = mul nuw nsw i32 %121, 10
  %123 = add nuw nsw i32 %122, %120
  %124 = getelementptr i8, ptr %68, i32 8
  %125 = load i8, ptr %124, align 1
  %126 = add i8 %125, -48
  %127 = icmp ugt i8 %126, 9
  br i1 %127, label %178, label %128

128:                                              ; preds = %119
  %129 = getelementptr i8, ptr %68, i32 9
  %130 = load i8, ptr %129, align 1
  %131 = add i8 %130, -48
  %132 = icmp ugt i8 %131, 9
  br i1 %132, label %178, label %133

133:                                              ; preds = %128
  %134 = zext i8 %131 to i32
  %135 = zext i8 %126 to i32
  %136 = mul nuw nsw i32 %135, 10
  %137 = add nuw nsw i32 %136, %134
  %138 = getelementptr i8, ptr %68, i32 10
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 90
  br i1 %140, label %141, label %178

141:                                              ; preds = %133
  %142 = icmp ult i32 %67, 1970
  %143 = icmp eq i32 %81, 0
  %144 = select i1 %142, i1 true, i1 %143
  %145 = icmp ugt i32 %81, 12
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %178, label %147

147:                                              ; preds = %141
  %148 = add nsw i32 %81, -1
  %149 = getelementptr [12 x i8], ptr @x509_decode_time.month_lengths, i32 0, i32 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %81, 2
  %153 = and i32 %67, 3
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = trunc i32 %67 to i16
  %158 = urem i16 %157, 100
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = trunc i32 %67 to i16
  %162 = urem i16 %161, 400
  %163 = icmp eq i16 %162, 0
  %164 = select i1 %163, i32 29, i32 28
  br label %165

165:                                              ; preds = %160, %156, %147
  %166 = phi i32 [ %164, %160 ], [ 29, %156 ], [ %151, %147 ]
  %167 = icmp eq i32 %95, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %165
  %169 = icmp ugt i32 %95, %166
  %170 = icmp ugt i32 %109, 24
  %171 = select i1 %169, i1 true, i1 %170
  %172 = icmp ugt i32 %123, 59
  %173 = select i1 %171, i1 true, i1 %172
  %174 = icmp ugt i32 %137, 60
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %168
  %177 = tail call i64 @mktime64(i32 noundef %67, i32 noundef %81, i32 noundef %95, i32 noundef %109, i32 noundef %123, i32 noundef %137) #13
  store i64 %177, ptr %0, align 8
  br label %178

178:                                              ; preds = %176, %168, %165, %141, %133, %128, %119, %114, %105, %100, %91, %86, %77, %72, %66, %57, %52, %42, %37, %33, %29, %13, %9, %7
  %179 = phi i32 [ 0, %176 ], [ -74, %133 ], [ -74, %29 ], [ -74, %7 ], [ -74, %165 ], [ -74, %168 ], [ -74, %141 ], [ -74, %57 ], [ -74, %13 ], [ -74, %9 ], [ -74, %37 ], [ -74, %33 ], [ -74, %52 ], [ -74, %42 ], [ -74, %72 ], [ -74, %66 ], [ -74, %86 ], [ -74, %77 ], [ -74, %100 ], [ -74, %91 ], [ -74, %114 ], [ -74, %105 ], [ -74, %128 ], [ -74, %119 ]
  ret i32 %179
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_not_before(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 8
  %8 = tail call i32 @x509_decode_time(ptr noundef %7, i32 undef, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_note_not_after(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 9
  %8 = tail call i32 @x509_decode_time(ptr noundef %7, i32 undef, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_akid_note_kid(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x ptr], ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = tail call ptr @asymmetric_key_generate_id(ptr noundef %3, i32 noundef %4, ptr noundef nonnull @.str.18, i32 noundef 0) #13
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.x509_certificate, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr [3 x ptr], ptr %20, i32 0, i32 1
  store ptr %13, ptr %21, align 4
  br label %22

22:                                               ; preds = %17, %15, %5
  %23 = phi i32 [ %16, %15 ], [ 0, %17 ], [ 0, %5 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @x509_akid_note_name(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 19
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 20
  store i32 %4, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_akid_note_serial(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.x509_certificate, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.x509_parse_context, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @asymmetric_key_generate_id(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %7, i32 noundef %17) #13
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i32
  br label %26

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.x509_certificate, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  store ptr %18, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %20, %9, %5
  %27 = phi i32 [ %21, %20 ], [ 0, %22 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
