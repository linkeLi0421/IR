; ModuleID = '/llk/IR/crypto/asymmetric_keys/x509_public_key.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/x509_public_key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.asymmetric_key_parser = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.x509_certificate = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }

@.str.2 = private unnamed_addr constant [7 x i8] c"ecdsa-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@x509_key_parser = internal global %struct.asymmetric_key_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str.4, ptr @x509_key_preparse }, align 4
@__initcall__kmod_x509_key_parser__198_280_x509_key_init6 = internal global ptr @x509_key_init, section ".initcall6.init", align 4
@__exitcall_x509_key_exit = internal global ptr @x509_key_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description199 = internal constant [53 x i8] c"x509_key_parser.description=X.509 certificate parser\00", section ".modinfo", align 1
@__UNIQUE_ID_author200 = internal constant [37 x i8] c"x509_key_parser.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [60 x i8] c"x509_key_parser.file=crypto/asymmetric_keys/x509_key_parser\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [28 x i8] c"x509_key_parser.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"X509\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@public_key_subtype = external dso_local global %struct.asymmetric_key_subtype, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_x509_key_exit, ptr @__initcall__kmod_x509_key_parser__198_280_x509_key_init6, ptr @x509_key_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_get_sig_params(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 8
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 9
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.public_key, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 26
  store i8 1, ptr %16, align 1
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 27
  store i8 1, ptr %22, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 27
  store i8 1, ptr %28, align 8
  br label %71

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 12
  %33 = load i32, ptr %32, align 8
  %34 = tail call ptr @kmemdup(ptr noundef %31, i32 noundef %33, i32 noundef 3264) #9
  %35 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %71, label %37

37:                                               ; preds = %29
  %38 = load i32, ptr %32, align 8
  %39 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %24, align 4
  %41 = tail call ptr @crypto_alloc_shash(ptr noundef %40, i32 noundef 0, i32 noundef 0) #9
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = ptrtoint ptr %41 to i32
  %45 = icmp eq ptr %41, inttoptr (i32 -2 to ptr)
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 27
  store i8 1, ptr %47, align 8
  br label %71

48:                                               ; preds = %37
  %49 = load i32, ptr %41, align 64
  %50 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 -64
  %53 = load i32, ptr %52, align 64
  %54 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %53, i32 noundef 3264) #10
  %56 = getelementptr inbounds %struct.public_key_signature, ptr %3, i32 0, i32 2
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = add i32 %49, 8
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  store ptr %41, ptr %60, align 64
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = load ptr, ptr %56, align 4
  %66 = tail call i32 @crypto_shash_digest(ptr noundef nonnull %60, ptr noundef %63, i32 noundef %64, ptr noundef %65) #9
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 0)
  tail call void @kfree(ptr noundef nonnull %60) #9
  br label %68

68:                                               ; preds = %62, %58, %48
  %69 = phi i32 [ %67, %62 ], [ -12, %58 ], [ -12, %48 ]
  %70 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %41, ptr noundef %70) #9
  br label %71

71:                                               ; preds = %68, %46, %43, %29, %27
  %72 = phi i32 [ 0, %46 ], [ %69, %68 ], [ 0, %27 ], [ -12, %29 ], [ %44, %43 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @x509_check_for_self_signed(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %72

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @bcmp(ptr %9, ptr %11, i32 %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr [3 x ptr], ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %47, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %25, ptr noundef %20) #9
  %27 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %15, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %28, ptr noundef %30) #9
  %32 = select i1 %26, i1 true, i1 %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %23
  %34 = xor i1 %26, true
  %35 = select i1 %34, i1 true, i1 %31
  %36 = xor i1 %31, true
  %37 = select i1 %36, i1 true, i1 %26
  %38 = select i1 %35, i1 %37, i1 false
  %39 = load ptr, ptr %15, align 4
  br i1 %38, label %47, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %39, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr [3 x ptr], ptr %39, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %43, %40, %33, %14
  %48 = phi ptr [ %39, %43 ], [ %39, %40 ], [ %16, %14 ], [ %39, %33 ]
  %49 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.public_key, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.public_key_signature, ptr %48, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @strcmp(ptr noundef %52, ptr noundef %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = tail call i32 @strncmp(ptr noundef %52, ptr noundef nonnull dereferenceable(7) @.str.2, i32 noundef 6)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(6) @.str.3)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60, %47
  %64 = tail call i32 @public_key_verify_signature(ptr noundef %50, ptr noundef %48) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = icmp eq i32 %64, -65
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 27
  store i8 1, ptr %69, align 8
  br label %72

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.x509_certificate, ptr %0, i32 0, i32 25
  store i8 1, ptr %71, align 2
  br label %72

72:                                               ; preds = %70, %68, %66, %60, %57, %43, %23, %7, %1
  %73 = phi i32 [ -129, %57 ], [ -129, %60 ], [ 0, %68 ], [ %64, %66 ], [ %64, %70 ], [ 0, %23 ], [ 0, %1 ], [ 0, %7 ], [ -129, %43 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @public_key_verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @x509_key_exit() #3 section ".exit.text" {
  tail call void @unregister_asymmetric_key_parser(ptr noundef nonnull @x509_key_parser) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_asymmetric_key_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @x509_key_init() #3 section ".init.text" {
  %1 = tail call i32 @register_asymmetric_key_parser(ptr noundef nonnull @x509_key_parser) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @x509_key_preparse(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @x509_cert_parse(ptr noundef %3, i32 noundef %5) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %95

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 26
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.public_key, ptr %16, i32 0, i32 6
  store ptr @.str.5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 27
  %19 = load i8, ptr %18, align 8, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void @public_key_signature_free(ptr noundef %23) #9
  store ptr null, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 28
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @strlen(ptr noundef %30)
  %32 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 21
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 20
  br label %41

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 15
  %39 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 14
  %40 = load ptr, ptr %39, align 8
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %43 = phi ptr [ %33, %35 ], [ %40, %37 ]
  %44 = load i32, ptr %42, align 4
  %45 = add i32 %31, 2
  %46 = shl i32 %44, 1
  %47 = add i32 %45, %46
  %48 = add i32 %47, 1
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3264) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %93, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %29, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %49, ptr align 1 %52, i32 %31, i1 false)
  %53 = getelementptr i8, ptr %49, i32 %31
  %54 = getelementptr i8, ptr %53, i32 1
  store i8 58, ptr %53, align 1
  %55 = getelementptr i8, ptr %54, i32 1
  store i8 32, ptr %54, align 1
  %56 = tail call ptr @bin2hex(ptr noundef %55, ptr noundef %43, i32 noundef %44) #9
  store i8 0, ptr %56, align 1
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 12) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %58, align 8
  %63 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr [3 x ptr], ptr %58, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 18
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 19
  %69 = load i32, ptr %68, align 4
  %70 = tail call ptr @asymmetric_key_generate_id(ptr noundef %67, i32 noundef %69, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %71 = getelementptr [3 x ptr], ptr %58, i32 0, i32 2
  store ptr %70, ptr %71, align 8
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = ptrtoint ptr %70 to i32
  br label %86

75:                                               ; preds = %60
  %76 = load ptr, ptr @public_key_subtype, align 4
  tail call void @__module_get(ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  %78 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr @public_key_subtype, ptr %78, align 4
  %79 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 2
  store ptr %58, ptr %79, align 8
  %80 = load ptr, ptr %15, align 8
  store ptr %80, ptr %77, align 8
  %81 = getelementptr inbounds %struct.x509_certificate, ptr %6, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 3
  store ptr %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 1
  store ptr %49, ptr %84, align 4
  %85 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 5
  store i32 100, ptr %85, align 8
  store ptr null, ptr %15, align 8
  store ptr null, ptr %61, align 8
  store ptr null, ptr %63, align 4
  store ptr null, ptr %81, align 4
  br label %86

86:                                               ; preds = %75, %73
  %87 = phi ptr [ %49, %73 ], [ null, %75 ]
  %88 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %89 = phi ptr [ %58, %73 ], [ null, %75 ]
  tail call void @kfree(ptr noundef %89) #9
  br label %90

90:                                               ; preds = %86, %51
  %91 = phi ptr [ %87, %86 ], [ %49, %51 ]
  %92 = phi i32 [ %88, %86 ], [ -12, %51 ]
  tail call void @kfree(ptr noundef %91) #9
  br label %93

93:                                               ; preds = %90, %41, %24, %10
  %94 = phi i32 [ -129, %24 ], [ %92, %90 ], [ -12, %41 ], [ -65, %10 ]
  tail call void @x509_free_certificate(ptr noundef %6) #9
  br label %95

95:                                               ; preds = %93, %8
  %96 = phi i32 [ %9, %8 ], [ %94, %93 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x509_cert_parse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asymmetric_key_generate_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x509_free_certificate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_asymmetric_key_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

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
