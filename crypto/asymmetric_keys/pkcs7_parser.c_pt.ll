; ModuleID = '/llk/IR/crypto/asymmetric_keys/pkcs7_parser.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/pkcs7_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_free_message:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_free_message\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_free_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_parse_message:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_parse_message\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_parse_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pkcs7_get_content_data:\09\09\09\09\09"
module asm "\09.asciz \09\22pkcs7_get_content_data\22\09\09\09\09\09"
module asm "__kstrtabns_pkcs7_get_content_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type opaque
%struct.pkcs7_message = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr }
%struct.pkcs7_signed_info = type { ptr, ptr, i32, i8, i8, ptr, i32, i32, ptr, i32, i64, ptr }
%struct.pkcs7_parse_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i8 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_description106 = internal constant [40 x i8] c"pkcs7_message.description=PKCS#7 parser\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [35 x i8] c"pkcs7_message.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [56 x i8] c"pkcs7_message.file=crypto/asymmetric_keys/pkcs7_message\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [26 x i8] c"pkcs7_message.license=GPL\00", section ".modinfo", align 1
@__kstrtab_pkcs7_free_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_free_message = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_free_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_free_message to i32), ptr @__kstrtab_pkcs7_free_message, ptr @__kstrtabns_pkcs7_free_message }, section "___ksymtab_gpl+pkcs7_free_message", align 4
@pkcs7_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_pkcs7_parse_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_parse_message = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_parse_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_parse_message to i32), ptr @__kstrtab_pkcs7_parse_message, ptr @__kstrtabns_pkcs7_parse_message }, section "___ksymtab_gpl+pkcs7_parse_message", align 4
@__kstrtab_pkcs7_get_content_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_pkcs7_get_content_data = external dso_local constant [0 x i8], align 1
@__ksymtab_pkcs7_get_content_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pkcs7_get_content_data to i32), ptr @__kstrtab_pkcs7_get_content_data, ptr @__kstrtabns_pkcs7_get_content_data }, section "___ksymtab_gpl+pkcs7_get_content_data", align 4
@.str = private unnamed_addr constant [30 x i8] c"PKCS7: Unknown OID: [%lu] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Unsupported digest algo: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"x962\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Unsupported pkey algo: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"\014PKCS7: Only support pkcs7_signedData type\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\014PKCS7: Unsupported SignedData version\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\014PKCS7: Unsupported SignerInfo version\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"\014PKCS7: SignedData-SignerInfo version mismatch\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"\014PKCS7: Unsupported data type %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"\014PKCS7: Mismatch between global data type (%d) and sinfo %u (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\014PKCS7: S/MIME Caps only allowed with Authenticode\0A\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"\014PKCS7: Authenticode AuthAttrs only allowed with Authenticode\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\014PKCS7: Repeated/multivalue AuthAttrs not permitted\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\014PKCS7: Missing required AuthAttr\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"\014PKCS7: Unexpected Authenticode AuthAttr\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\014PKCS7: Authenticode requires AuthAttrs\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [44 x i8] c"\014PKCS7: Inconsistently supplied authAttrs\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_pkcs7_free_message, ptr @__ksymtab_pkcs7_get_content_data, ptr @__ksymtab_pkcs7_parse_message], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pkcs7_free_message(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %10, %3
  %7 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %19

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %13, %10 ], [ %4, %3 ]
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %0, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %11) #9
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %10

15:                                               ; preds = %19, %6
  %16 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %24

19:                                               ; preds = %19, %6
  %20 = phi ptr [ %22, %19 ], [ %8, %6 ]
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %7, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %20) #9
  %22 = load ptr, ptr %7, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %15, label %19

24:                                               ; preds = %24, %15
  %25 = phi ptr [ %29, %24 ], [ %17, %15 ]
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %16, align 4
  %27 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %25, i32 0, i32 11
  %28 = load ptr, ptr %27, align 8
  tail call void @public_key_signature_free(ptr noundef %28) #9
  tail call void @kfree(ptr noundef nonnull %25) #9
  %29 = load ptr, ptr %16, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24

31:                                               ; preds = %24, %15
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x509_free_certificate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pkcs7_parse_message(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #10
  store ptr %8, ptr %4, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %78, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 56) #10
  %13 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 48) #10
  %18 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 11
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %0 to i32
  %22 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 4
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.pkcs7_message, ptr %8, i32 0, i32 2
  %26 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %4, i32 0, i32 2
  store ptr %25, ptr %26, align 8
  %27 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @pkcs7_decoder, ptr noundef nonnull %4, ptr noundef %0, i32 noundef %1) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = inttoptr i32 %27 to ptr
  br label %58

31:                                               ; preds = %20
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.pkcs7_message, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %34, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pkcs7_message, ptr %32, i32 0, i32 4
  store i8 1, ptr %41, align 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ 1, %40 ], [ 0, %36 ]
  br label %44

44:                                               ; preds = %48, %42
  %45 = phi ptr [ %34, %42 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %46, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = zext i1 %51 to i32
  %53 = icmp eq i32 %43, %52
  br i1 %53, label %44, label %54

54:                                               ; preds = %48, %31
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %58

56:                                               ; preds = %44
  %57 = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  br label %58

58:                                               ; preds = %56, %54, %29
  %59 = phi ptr [ %30, %29 ], [ inttoptr (i32 -22 to ptr), %54 ], [ %57, %56 ]
  %60 = load ptr, ptr %23, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %62, %58
  %63 = phi ptr [ %65, %62 ], [ %60, %58 ]
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %23, align 4
  tail call void @x509_free_certificate(ptr noundef nonnull %63) #9
  %65 = load ptr, ptr %23, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %62

67:                                               ; preds = %62, %58
  %68 = load ptr, ptr %13, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67, %15
  %71 = phi ptr [ %59, %67 ], [ inttoptr (i32 -12 to ptr), %15 ]
  %72 = phi ptr [ %68, %67 ], [ %12, %15 ]
  %73 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %72, i32 0, i32 11
  %74 = load ptr, ptr %73, align 8
  tail call void @public_key_signature_free(ptr noundef %74) #9
  tail call void @kfree(ptr noundef nonnull %72) #9
  br label %75

75:                                               ; preds = %70, %67, %10
  %76 = phi ptr [ inttoptr (i32 -12 to ptr), %10 ], [ %59, %67 ], [ %71, %70 ]
  %77 = load ptr, ptr %4, align 8
  tail call void @pkcs7_free_message(ptr noundef %77)
  br label %78

78:                                               ; preds = %75, %6
  %79 = phi ptr [ %76, %75 ], [ inttoptr (i32 -12 to ptr), %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %80

80:                                               ; preds = %78, %2
  %81 = phi ptr [ %79, %78 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_get_content_data(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) #3 {
  %5 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 4
  %9 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pkcs7_message, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %12, %8, %4
  %16 = phi i32 [ -61, %4 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_OID(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [50 x i8], align 1
  %7 = tail call i32 @look_up_OID(ptr noundef %3, i32 noundef %4) #9
  %8 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = icmp eq i32 %7, 98
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %6, i8 0, i32 50, i1 false), !annotation !8
  %11 = call i32 @sprint_oid(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6, i32 noundef 50) #9
  %12 = ptrtoint ptr %3 to i32
  %13 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %15, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #9
  br label %17

17:                                               ; preds = %10, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_digest_algo(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %50 [
    i32 28, label %8
    i32 29, label %14
    i32 45, label %20
    i32 47, label %26
    i32 48, label %32
    i32 49, label %38
    i32 50, label %44
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.public_key_signature, ptr %12, i32 0, i32 6
  store ptr @.str.1, ptr %13, align 4
  br label %52

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.public_key_signature, ptr %18, i32 0, i32 6
  store ptr @.str.2, ptr %19, align 4
  br label %52

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.public_key_signature, ptr %24, i32 0, i32 6
  store ptr @.str.3, ptr %25, align 4
  br label %52

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.public_key_signature, ptr %30, i32 0, i32 6
  store ptr @.str.4, ptr %31, align 4
  br label %52

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.public_key_signature, ptr %36, i32 0, i32 6
  store ptr @.str.5, ptr %37, align 4
  br label %52

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.public_key_signature, ptr %42, i32 0, i32 6
  store ptr @.str.6, ptr %43, align 4
  br label %52

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.public_key_signature, ptr %48, i32 0, i32 6
  store ptr @.str.7, ptr %49, align 4
  br label %52

50:                                               ; preds = %5
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %7) #11
  br label %52

52:                                               ; preds = %50, %44, %38, %32, %26, %20, %14, %8
  %53 = phi i32 [ -65, %50 ], [ 0, %44 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_pkey_algo(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %28 [
    i32 10, label %8
    i32 5, label %18
    i32 6, label %18
    i32 7, label %18
    i32 8, label %18
    i32 9, label %18
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.public_key_signature, ptr %12, i32 0, i32 5
  store ptr @.str.9, ptr %13, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.public_key_signature, ptr %16, i32 0, i32 7
  store ptr @.str.10, ptr %17, align 4
  br label %30

18:                                               ; preds = %5, %5, %5, %5, %5
  %19 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.public_key_signature, ptr %22, i32 0, i32 5
  store ptr @.str.11, ptr %23, align 4
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.public_key_signature, ptr %26, i32 0, i32 7
  store ptr @.str.12, ptr %27, align 4
  br label %30

28:                                               ; preds = %5
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %7) #11
  br label %30

30:                                               ; preds = %28, %18, %8
  %31 = phi i32 [ -65, %28 ], [ 0, %18 ], [ 0, %8 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_check_content_type(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 20
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ -22, %9 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signeddata_version(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.pkcs7_message, ptr %9, i32 0, i32 3
  store i8 %8, ptr %10, align 4
  switch i8 %8, label %11 [
    i8 1, label %13
    i8 3, label %13
  ]

11:                                               ; preds = %7, %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %13

13:                                               ; preds = %11, %7, %7
  %14 = phi i32 [ -22, %11 ], [ 0, %7 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signerinfo_version(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1
  switch i8 %8, label %23 [
    i8 1, label %9
    i8 3, label %16
  ]

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.pkcs7_message, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 15
  store i8 0, ptr %15, align 4
  br label %27

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.pkcs7_message, ptr %17, i32 0, i32 3
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 15
  store i8 1, ptr %22, align 4
  br label %27

23:                                               ; preds = %7, %5
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %27

25:                                               ; preds = %16, %9
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %27

27:                                               ; preds = %25, %23, %21, %14
  %28 = phi i32 [ -22, %23 ], [ -74, %25 ], [ 0, %21 ], [ 0, %14 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_extract_cert(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %2, 48
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = sub i32 0, %1
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = add i32 %4, %1
  %11 = getelementptr i8, ptr %9, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -128
  %14 = add i32 %10, 2
  %15 = select i1 %13, i32 %14, i32 %10
  %16 = tail call ptr @x509_cert_parse(ptr noundef %9, i32 noundef %15) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = ptrtoint ptr %16 to i32
  br label %27

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.x509_certificate, ptr %16, i32 0, i32 22
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  store ptr %16, ptr %26, align 4
  store ptr %16, ptr %25, align 4
  br label %27

27:                                               ; preds = %20, %18, %5
  %28 = phi i32 [ %19, %18 ], [ 0, %20 ], [ -74, %5 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x509_cert_parse(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_note_certificate_list(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  store ptr %11, ptr %12, align 4
  store ptr null, ptr %10, align 4
  store ptr %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_content(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 19, label %10
    i32 33, label %10
  ]

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %7) #11
  br label %13

10:                                               ; preds = %5, %5
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.pkcs7_message, ptr %11, i32 0, i32 5
  store i32 %7, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ -22, %8 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pkcs7_note_data(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.pkcs7_message, ptr %6, i32 0, i32 8
  store ptr %3, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.pkcs7_message, ptr %8, i32 0, i32 6
  store i32 %4, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.pkcs7_message, ptr %10, i32 0, i32 7
  store i32 %1, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_authenticated_attr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %80 [
    i32 22, label %10
    i32 24, label %26
    i32 23, label %35
    i32 25, label %46
    i32 35, label %59
    i32 34, label %65
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = and i32 %12, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %10
  %17 = tail call i32 @look_up_OID(ptr noundef %3, i32 noundef %4) #9
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.pkcs7_message, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %80, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %20, i32 noundef %24, i32 noundef %17) #11
  br label %80

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 2
  store i32 %29, ptr %27, align 4
  %30 = and i32 %28, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 10
  %34 = tail call i32 @x509_decode_time(ptr noundef %33, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #9
  br label %80

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 4
  store i32 %38, ptr %36, align 4
  %39 = and i32 %37, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %35
  %42 = icmp eq i8 %2, 4
  br i1 %42, label %43, label %80

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 5
  store ptr %3, ptr %44, align 8
  %45 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 6
  store i32 %4, ptr %45, align 4
  br label %80

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 8
  store i32 %49, ptr %47, align 4
  %50 = and i32 %48, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.pkcs7_message, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 33
  br i1 %56, label %80, label %57

57:                                               ; preds = %52
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %80

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 16
  store i32 %62, ptr %60, align 4
  %63 = and i32 %61, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %78

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 32
  store i32 %68, ptr %66, align 4
  %69 = and i32 %67, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65, %59
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.pkcs7_message, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 33
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %80

78:                                               ; preds = %65, %59, %46, %35, %26, %10
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %80

80:                                               ; preds = %78, %76, %71, %57, %52, %43, %41, %32, %22, %16, %5
  %81 = phi i32 [ -129, %78 ], [ -129, %76 ], [ -129, %57 ], [ 0, %43 ], [ %34, %32 ], [ -74, %22 ], [ 0, %16 ], [ -74, %41 ], [ 0, %52 ], [ 0, %71 ], [ 0, %5 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_decode_time(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_set_of_authattrs(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %5
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %36

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.pkcs7_message, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %8, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %36

29:                                               ; preds = %23, %18
  %30 = add i32 %1, -1
  %31 = sub i32 1, %1
  %32 = getelementptr i8, ptr %3, i32 %31
  %33 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  %34 = add i32 %30, %4
  %35 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 7
  store i32 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %29, %27, %16
  %37 = phi i32 [ -74, %27 ], [ 0, %29 ], [ -74, %16 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_serial(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 9
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 10
  store i32 %4, ptr %7, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_issuer(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 12
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 11
  store i32 %4, ptr %7, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pkcs7_sig_note_skid(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 13
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 14
  store i32 %4, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_sig_note_signature(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %4, i32 noundef 3264) #9
  %7 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.public_key_signature, ptr %10, i32 0, i32 1
  store ptr %6, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.public_key_signature, ptr %14, i32 0, i32 3
  store i32 %4, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi i32 [ 0, %18 ], [ -12, %5 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pkcs7_note_signed_info(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.pkcs7_message, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 33
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %65

18:                                               ; preds = %12, %5
  %19 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 15
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @asymmetric_key_generate_id(ptr noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef %30) #9
  br label %38

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = tail call ptr @asymmetric_key_generate_id(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @.str.26, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %32, %22
  %39 = phi ptr [ %37, %32 ], [ %31, %22 ]
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  br label %65

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 11
  %45 = load ptr, ptr %44, align 8
  store ptr %39, ptr %45, align 4
  %46 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %7, i32 0, i32 2
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.pkcs7_parse_context, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  store ptr %7, ptr %51, align 4
  store ptr %7, ptr %50, align 4
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 56) #10
  store ptr %53, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %43
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 48) #10
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %58, i32 0, i32 11
  store ptr %57, ptr %59, align 8
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.pkcs7_signed_info, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, i32 -12, i32 0
  br label %65

65:                                               ; preds = %55, %43, %41, %16
  %66 = phi i32 [ %42, %41 ], [ -74, %16 ], [ -12, %43 ], [ %64, %55 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
