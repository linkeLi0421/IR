; ModuleID = '/llk/IR/crypto/rsa-pkcs1pad.c_pt.bc'
source_filename = "../crypto/rsa-pkcs1pad.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rsa_asn1_template = type { ptr, ptr, i32 }
%struct.akcipher_instance = type { ptr, [60 x i8], %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.68, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@rsa_pkcs1pad_tmpl = dso_local local_unnamed_addr global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr null, ptr @pkcs1pad_create, [128 x i8] c"pkcs1pad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str = private unnamed_addr constant [13 x i8] c"pkcs1pad(%s)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pkcs1pad(%s,%s)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rsa_asn1_templates = internal constant [8 x %struct.rsa_asn1_template] [%struct.rsa_asn1_template { ptr @.str.2, ptr @rsa_digest_info_md5, i32 18 }, %struct.rsa_asn1_template { ptr @.str.3, ptr @rsa_digest_info_sha1, i32 15 }, %struct.rsa_asn1_template { ptr @.str.4, ptr @rsa_digest_info_rmd160, i32 15 }, %struct.rsa_asn1_template { ptr @.str.5, ptr @rsa_digest_info_sha256, i32 19 }, %struct.rsa_asn1_template { ptr @.str.6, ptr @rsa_digest_info_sha384, i32 19 }, %struct.rsa_asn1_template { ptr @.str.7, ptr @rsa_digest_info_sha512, i32 19 }, %struct.rsa_asn1_template { ptr @.str.8, ptr @rsa_digest_info_sha224, i32 19 }, %struct.rsa_asn1_template zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@rsa_digest_info_md5 = internal constant [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\05\05\00\04\10", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@rsa_digest_info_sha1 = internal constant [15 x i8] c"0!0\09\06\05+\0E\03\02\1A\05\00\04\14", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@rsa_digest_info_rmd160 = internal constant [15 x i8] c"0!0\09\06\05+$\03\02\01\05\00\04\14", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@rsa_digest_info_sha256 = internal constant [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\01\05\00\04 ", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@rsa_digest_info_sha384 = internal constant [19 x i8] c"0A0\0D\06\09`\86H\01e\03\04\02\02\05\00\040", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@rsa_digest_info_sha512 = internal constant [19 x i8] c"0Q0\0D\06\09`\86H\01e\03\04\02\03\05\00\04@", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@rsa_digest_info_sha224 = internal constant [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\04\05\00\04\1C", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"crypto/rsa-pkcs1pad.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 608) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %93, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #11
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_akcipher(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr ptr, ptr %1, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @crypto_attr_alg_name(ptr noundef %23) #11
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %28 = getelementptr i8, ptr %21, i32 40
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %27, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %28)
  %30 = icmp sgt i32 %29, 127
  br i1 %30, label %91, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %33 = getelementptr i8, ptr %21, i32 168
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %33)
  %35 = icmp sgt i32 %34, 127
  br i1 %35, label %91, label %71

36:                                               ; preds = %19
  %37 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(4) @.str.2) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(5) @.str.3) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.4) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.5) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.6) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.7) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.8) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 1, i32 1, i32 24
  store ptr null, ptr %58, align 4
  br label %91

59:                                               ; preds = %54, %51, %48, %45, %42, %39, %36
  %60 = phi ptr [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 5), %51 ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 4), %48 ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 3), %45 ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 2), %42 ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 1), %39 ], [ @rsa_asn1_templates, %36 ], [ getelementptr inbounds ([8 x %struct.rsa_asn1_template], ptr @rsa_asn1_templates, i32 0, i32 6), %54 ]
  %61 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 1, i32 1, i32 24
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %63 = getelementptr i8, ptr %21, i32 40
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %62, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %63, ptr noundef %24)
  %65 = icmp sgt i32 %64, 127
  br i1 %65, label %91, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %68 = getelementptr i8, ptr %21, i32 168
  %69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %67, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %68, ptr noundef %24)
  %70 = icmp sgt i32 %69, 127
  br i1 %70, label %91, label %71

71:                                               ; preds = %66, %31
  %72 = getelementptr i8, ptr %21, i32 32
  %73 = load i32, ptr %72, align 32
  %74 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2
  %75 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %73, ptr %75, align 32
  %76 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %76, align 8
  %77 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store ptr @pkcs1pad_init_tfm, ptr %77, align 4
  %78 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store ptr @pkcs1pad_exit_tfm, ptr %78, align 32
  %79 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @pkcs1pad_encrypt, ptr %79, align 8
  %80 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @pkcs1pad_decrypt, ptr %80, align 4
  store ptr @pkcs1pad_sign, ptr %74, align 64
  %81 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @pkcs1pad_verify, ptr %81, align 4
  %82 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @pkcs1pad_set_pub_key, ptr %82, align 16
  %83 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @pkcs1pad_set_priv_key, ptr %83, align 4
  %84 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store ptr @pkcs1pad_get_max_size, ptr %84, align 8
  %85 = getelementptr i8, ptr %21, i32 -28
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 192
  %88 = getelementptr inbounds %struct.akcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 36
  store i32 %87, ptr %88, align 4
  store ptr @pkcs1pad_free, ptr %8, align 64
  %89 = call i32 @akcipher_register_instance(ptr noundef %0, ptr noundef nonnull %8) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %71, %66, %59, %57, %31, %26, %10
  %92 = phi i32 [ %17, %10 ], [ -36, %26 ], [ -36, %31 ], [ %89, %71 ], [ -36, %59 ], [ -36, %66 ], [ -22, %57 ]
  call void @crypto_drop_spawn(ptr noundef %11) #11
  call void @kfree(ptr noundef nonnull %8) #11
  br label %93

93:                                               ; preds = %91, %71, %6, %2
  %94 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %92, %91 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_akcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #11
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store ptr %5, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pkcs1pad_exit_tfm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 32
  %12 = add i32 %7, -11
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %104, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %7, ptr %15, align 4
  br label %104

19:                                               ; preds = %14
  %20 = xor i32 %11, -1
  %21 = add i32 %7, %20
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #13
  %23 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 20
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %104, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %10, align 32
  %27 = load i32, ptr %6, align 4
  %28 = sub i32 %27, %26
  %29 = add i32 %28, -2
  store i8 2, ptr %22, align 64
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %43

31:                                               ; preds = %31, %25
  %32 = phi i32 [ %41, %31 ], [ 1, %25 ]
  %33 = tail call i32 @prandom_u32() #11
  %34 = zext i32 %33 to i64
  %35 = mul nuw nsw i64 %34, 255
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i8
  %38 = add nuw i8 %37, 1
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr i8, ptr %39, i32 %32
  store i8 %38, ptr %40, align 1
  %41 = add nuw i32 %32, 1
  %42 = icmp eq i32 %41, %29
  br i1 %42, label %43, label %31

43:                                               ; preds = %31, %25
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr i8, ptr %44, i32 %29
  store i8 0, ptr %45, align 1
  %46 = load ptr, ptr %23, align 4
  %47 = load i32, ptr %6, align 4
  %48 = load i32, ptr %10, align 32
  %49 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, i32 1, i32 2
  tail call void @sg_init_table(ptr noundef %5, i32 noundef %52) #11
  %53 = load ptr, ptr @mem_map, align 4
  %54 = ptrtoint ptr %46 to i32
  %55 = add i32 %54, 1073741824
  %56 = lshr i32 %55, 12
  %57 = getelementptr %struct.page, ptr %53, i32 %56
  %58 = ptrtoint ptr %57 to i32
  %59 = and i32 %58, 3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !9

61:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

62:                                               ; preds = %43
  %63 = xor i32 %48, -1
  %64 = add i32 %47, %63
  %65 = and i32 %54, 4095
  %66 = load i32, ptr %5, align 4
  %67 = and i32 %66, 3
  %68 = or i32 %67, %58
  store i32 %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 %65, ptr %69, align 4
  %70 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 0, i32 1
  store i32 %64, ptr %70, align 4
  br i1 %51, label %79, label %71

71:                                               ; preds = %62
  %72 = add nsw i32 %52, -1
  %73 = getelementptr %struct.scatterlist, ptr %5, i32 %72
  %74 = getelementptr %struct.scatterlist, ptr %5, i32 %72, i32 1
  store i32 0, ptr %74, align 4
  %75 = getelementptr %struct.scatterlist, ptr %5, i32 %72, i32 2
  store i32 0, ptr %75, align 4
  %76 = ptrtoint ptr %50 to i32
  %77 = and i32 %76, -4
  %78 = or i32 %77, 1
  store i32 %78, ptr %73, align 4
  br label %79

79:                                               ; preds = %71, %62
  %80 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 3
  store ptr %81, ptr %82, align 16
  %83 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 1
  store ptr @pkcs1pad_encrypt_sign_complete_cb, ptr %85, align 8
  %86 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 2
  store ptr %0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 4
  store i32 %84, ptr %87, align 4
  %88 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %6, align 4
  %91 = add i32 %90, -1
  %92 = load i32, ptr %15, align 4
  %93 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 1
  store ptr %5, ptr %93, align 8
  %94 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 2
  store ptr %89, ptr %94, align 4
  %95 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 3
  store i32 %91, ptr %95, align 32
  %96 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  store i32 %92, ptr %96, align 4
  %97 = getelementptr inbounds %struct.crypto_tfm, ptr %81, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 -56
  %100 = load ptr, ptr %99, align 8
  %101 = tail call i32 %100(ptr noundef %80) #11
  switch i32 %101, label %102 [
    i32 -16, label %104
    i32 -115, label %104
  ]

102:                                              ; preds = %79
  %103 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %0, i32 noundef %101)
  br label %104

104:                                              ; preds = %102, %79, %79, %19, %18, %9, %1
  %105 = phi i32 [ -75, %18 ], [ %103, %102 ], [ -22, %1 ], [ -75, %9 ], [ -12, %19 ], [ %101, %79 ], [ %101, %79 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 32
  %11 = icmp eq i32 %10, %6
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #13
  %14 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  store ptr %13, ptr %14, align 64
  %15 = icmp eq ptr %13, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %18 = load i32, ptr %5, align 4
  tail call void @sg_init_table(ptr noundef %17, i32 noundef 1) #11
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %13 to i32
  %21 = add i32 %20, 1073741824
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

28:                                               ; preds = %16
  %29 = and i32 %20, 4032
  %30 = load i32, ptr %17, align 4
  %31 = and i32 %30, 3
  %32 = or i32 %31, %24
  store i32 %32, ptr %17, align 4
  %33 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %29, ptr %33, align 4
  %34 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 8
  store i32 %18, ptr %34, align 4
  %35 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 3
  store ptr %36, ptr %37, align 16
  %38 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 1
  store ptr @pkcs1pad_decrypt_complete_cb, ptr %40, align 8
  %41 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 2
  store ptr %0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 4
  store i32 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %9, align 32
  %46 = load i32, ptr %5, align 4
  %47 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 1
  store ptr %44, ptr %47, align 8
  %48 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 2
  store ptr %17, ptr %48, align 4
  %49 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 3
  store i32 %45, ptr %49, align 32
  %50 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  store i32 %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.crypto_tfm, ptr %36, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -52
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %35) #11
  switch i32 %55, label %56 [
    i32 -16, label %58
    i32 -115, label %58
  ]

56:                                               ; preds = %28
  %57 = tail call fastcc i32 @pkcs1pad_decrypt_complete(ptr noundef %0, i32 noundef %55)
  br label %58

58:                                               ; preds = %56, %28, %28, %12, %8, %1
  %59 = phi i32 [ %57, %56 ], [ -22, %8 ], [ -22, %1 ], [ -12, %12 ], [ %55, %28 ], [ %55, %28 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_sign(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 476
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %114, label %13

13:                                               ; preds = %1
  %14 = icmp eq ptr %9, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rsa_asn1_template, ptr %9, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %17, %15 ], [ 0, %13 ]
  %20 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 32
  %22 = add i32 %21, %19
  %23 = add i32 %11, -11
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %114, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %11
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 %11, ptr %26, align 4
  br label %114

30:                                               ; preds = %25
  %31 = xor i32 %21, -1
  %32 = add i32 %11, %31
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3264) #13
  %34 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 20
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %114, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %20, align 32
  %38 = add i32 %19, %37
  %39 = load i32, ptr %10, align 4
  %40 = sub i32 %39, %38
  %41 = add i32 %40, -2
  store i8 1, ptr %33, align 64
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr i8, ptr %42, i32 1
  %44 = add i32 %40, -3
  tail call void @llvm.memset.p0.i32(ptr align 1 %43, i8 -1, i32 %44, i1 false)
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr i8, ptr %45, i32 %41
  store i8 0, ptr %46, align 1
  br i1 %14, label %55, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr %34, align 4
  %49 = getelementptr i8, ptr %48, i32 %41
  %50 = getelementptr i8, ptr %49, i32 1
  %51 = getelementptr inbounds %struct.rsa_asn1_template, ptr %9, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rsa_asn1_template, ptr %9, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %52, i32 %54, i1 false)
  br label %55

55:                                               ; preds = %47, %36
  %56 = load ptr, ptr %34, align 4
  %57 = load i32, ptr %10, align 4
  %58 = load i32, ptr %20, align 32
  %59 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, i32 1, i32 2
  tail call void @sg_init_table(ptr noundef %5, i32 noundef %62) #11
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %56 to i32
  %65 = add i32 %64, 1073741824
  %66 = lshr i32 %65, 12
  %67 = getelementptr %struct.page, ptr %63, i32 %66
  %68 = ptrtoint ptr %67 to i32
  %69 = and i32 %68, 3
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !9

71:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

72:                                               ; preds = %55
  %73 = xor i32 %58, -1
  %74 = add i32 %57, %73
  %75 = and i32 %64, 4095
  %76 = load i32, ptr %5, align 4
  %77 = and i32 %76, 3
  %78 = or i32 %77, %68
  store i32 %78, ptr %5, align 4
  %79 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 %75, ptr %79, align 4
  %80 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 0, i32 1
  store i32 %74, ptr %80, align 4
  br i1 %61, label %89, label %81

81:                                               ; preds = %72
  %82 = add nsw i32 %62, -1
  %83 = getelementptr %struct.scatterlist, ptr %5, i32 %82
  %84 = getelementptr %struct.scatterlist, ptr %5, i32 %82, i32 1
  store i32 0, ptr %84, align 4
  %85 = getelementptr %struct.scatterlist, ptr %5, i32 %82, i32 2
  store i32 0, ptr %85, align 4
  %86 = ptrtoint ptr %60 to i32
  %87 = and i32 %86, -4
  %88 = or i32 %87, 1
  store i32 %88, ptr %83, align 4
  br label %89

89:                                               ; preds = %81, %72
  %90 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 3
  store ptr %91, ptr %92, align 16
  %93 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 1
  store ptr @pkcs1pad_encrypt_sign_complete_cb, ptr %95, align 8
  %96 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 2
  store ptr %0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 4
  store i32 %94, ptr %97, align 4
  %98 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %10, align 4
  %101 = add i32 %100, -1
  %102 = load i32, ptr %26, align 4
  %103 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 1
  store ptr %5, ptr %103, align 8
  %104 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 2
  store ptr %99, ptr %104, align 4
  %105 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 3
  store i32 %101, ptr %105, align 32
  %106 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  store i32 %102, ptr %106, align 4
  %107 = getelementptr inbounds %struct.crypto_tfm, ptr %91, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 -52
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 %110(ptr noundef %90) #11
  switch i32 %111, label %112 [
    i32 -16, label %114
    i32 -115, label %114
  ]

112:                                              ; preds = %89
  %113 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %0, i32 noundef %111)
  br label %114

114:                                              ; preds = %112, %89, %89, %30, %29, %18, %1
  %115 = phi i32 [ -75, %29 ], [ %113, %112 ], [ -22, %1 ], [ -75, %18 ], [ -12, %30 ], [ %111, %89 ], [ %111, %89 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_verify(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 539, i32 noundef 9, ptr noundef null) #11
  br label %69

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 540, i32 noundef 9, ptr noundef null) #11
  br label %69

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 32
  %21 = icmp ult i32 %20, %16
  br i1 %21, label %69, label %22

22:                                               ; preds = %18
  %23 = add i32 %16, %11
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #13
  %25 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  store ptr %24, ptr %25, align 64
  %26 = icmp eq ptr %24, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5
  %29 = load i32, ptr %15, align 4
  tail call void @sg_init_table(ptr noundef %28, i32 noundef 1) #11
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %24 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = ptrtoint ptr %34 to i32
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !9

38:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

39:                                               ; preds = %27
  %40 = and i32 %31, 4032
  %41 = load i32, ptr %28, align 4
  %42 = and i32 %41, 3
  %43 = or i32 %42, %35
  store i32 %43, ptr %28, align 4
  %44 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %40, ptr %44, align 4
  %45 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 8
  store i32 %29, ptr %45, align 4
  %46 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 3
  store ptr %47, ptr %48, align 16
  %49 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 1
  store ptr @pkcs1pad_verify_complete_cb, ptr %51, align 8
  %52 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 2
  store ptr %0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 0, i32 4
  store i32 %50, ptr %53, align 4
  %54 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = load i32, ptr %19, align 32
  %57 = load i32, ptr %15, align 4
  %58 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 1
  store ptr %55, ptr %58, align 8
  %59 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 2
  store ptr %28, ptr %59, align 4
  %60 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 3
  store i32 %56, ptr %60, align 32
  %61 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  store i32 %57, ptr %61, align 4
  %62 = getelementptr inbounds %struct.crypto_tfm, ptr %47, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 -56
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 %65(ptr noundef %46) #11
  switch i32 %66, label %67 [
    i32 -16, label %69
    i32 -115, label %69
  ]

67:                                               ; preds = %39
  %68 = tail call fastcc i32 @pkcs1pad_verify_complete(ptr noundef %0, i32 noundef %66)
  br label %69

69:                                               ; preds = %67, %39, %39, %22, %18, %14, %13, %8
  %70 = phi i32 [ %68, %67 ], [ -22, %13 ], [ -22, %8 ], [ -22, %18 ], [ -22, %14 ], [ -12, %22 ], [ %66, %39 ], [ %66, %39 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_set_pub_key(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -48
  %10 = load ptr, ptr %9, align 16
  %11 = tail call i32 %10(ptr noundef %6, ptr noundef %1, i32 noundef %2) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -40
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %18(ptr noundef %14) #11
  %20 = icmp ugt i32 %19, 4096
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 %19, ptr %5, align 4
  br label %22

22:                                               ; preds = %21, %13, %3
  %23 = phi i32 [ 0, %21 ], [ %11, %3 ], [ -524, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pkcs1pad_set_priv_key(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -44
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %6, ptr noundef %1, i32 noundef %2) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -40
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %18(ptr noundef %14) #11
  %20 = icmp ugt i32 %19, 4096
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 %19, ptr %5, align 4
  br label %22

22:                                               ; preds = %21, %13, %3
  %23 = phi i32 [ 0, %21 ], [ %11, %3 ], [ -524, %13 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pkcs1pad_get_max_size(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pkcs1pad_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.akcipher_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @akcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pkcs1pad_encrypt_sign_complete_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.crypto_async_request, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq i32 %1, -115
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr noundef %5, i32 noundef %1)
  call void %18(ptr noundef nonnull %3, i32 noundef %19) #11
  br label %20

20:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_encrypt_sign_complete(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %10, %8
  %12 = icmp eq i32 %10, %8
  br i1 %12, label %29, label %13, !prof !9

13:                                               ; preds = %6
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = zext i32 %8 to i64
  %20 = tail call i32 @sg_nents_for_len(ptr noundef %18, i64 noundef %19) #11
  %21 = getelementptr i8, ptr %14, i32 %11
  %22 = tail call i32 @sg_copy_to_buffer(ptr noundef %18, i32 noundef %20, ptr noundef %21, i32 noundef %8) #11
  %23 = load ptr, ptr %17, align 4
  %24 = load i32, ptr %9, align 4
  %25 = zext i32 %24 to i64
  %26 = tail call i32 @sg_nents_for_len(ptr noundef %23, i64 noundef %25) #11
  %27 = load i32, ptr %9, align 4
  %28 = tail call i32 @sg_copy_from_buffer(ptr noundef %23, i32 noundef %26, ptr noundef nonnull %14, i32 noundef %27) #11
  tail call void @kfree_sensitive(ptr noundef nonnull %14) #11
  br label %29

29:                                               ; preds = %16, %13, %6, %2
  %30 = phi i32 [ %1, %2 ], [ 0, %6 ], [ -12, %16 ], [ -12, %13 ]
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 1, i32 5, i32 20
  %35 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %35) #11
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pkcs1pad_decrypt_complete_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.crypto_async_request, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq i32 %1, -115
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call fastcc i32 @pkcs1pad_decrypt_complete(ptr noundef %5, i32 noundef %1)
  call void %18(ptr noundef nonnull %3, i32 noundef %19) #11
  br label %20

20:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_decrypt_complete(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %56

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %56, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  %15 = load ptr, ptr %14, align 64
  %16 = icmp eq i32 %8, %10
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i8, ptr %15, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = add i32 %8, -1
  %22 = getelementptr i8, ptr %15, i32 1
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %21, %20 ], [ %8, %13 ]
  %25 = phi ptr [ %22, %20 ], [ %15, %13 ]
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 2
  %28 = icmp ugt i32 %24, 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %56

30:                                               ; preds = %35, %23
  %31 = phi i32 [ %36, %35 ], [ 1, %23 ]
  %32 = getelementptr i8, ptr %25, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = add nuw i32 %31, 1
  %37 = icmp eq i32 %36, %24
  br i1 %37, label %56, label %30

38:                                               ; preds = %30
  %39 = icmp ult i32 %31, 9
  %40 = icmp eq i32 %31, %24
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = add i32 %31, 1
  %44 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %24, %43
  %47 = icmp ult i32 %45, %46
  store i32 %46, ptr %44, align 4
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = zext i32 %46 to i64
  %52 = tail call i32 @sg_nents_for_len(ptr noundef %50, i64 noundef %51) #11
  %53 = getelementptr i8, ptr %25, i32 %43
  %54 = load i32, ptr %44, align 4
  %55 = tail call i32 @sg_copy_from_buffer(ptr noundef %50, i32 noundef %52, ptr noundef %53, i32 noundef %54) #11
  br label %56

56:                                               ; preds = %48, %42, %38, %35, %23, %17, %4, %2
  %57 = phi i32 [ %1, %2 ], [ -22, %4 ], [ -22, %17 ], [ -22, %23 ], [ -22, %38 ], [ -75, %42 ], [ 0, %48 ], [ -22, %35 ]
  %58 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  %59 = load ptr, ptr %58, align 64
  tail call void @kfree_sensitive(ptr noundef %59) #11
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pkcs1pad_verify_complete_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.crypto_async_request, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq i32 %1, -115
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call fastcc i32 @pkcs1pad_verify_complete(ptr noundef %5, i32 noundef %1)
  call void %18(ptr noundef nonnull %3, i32 noundef %19) #11
  br label %20

20:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pkcs1pad_verify_complete(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 476
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 3, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %92, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  %19 = load ptr, ptr %18, align 64
  %20 = icmp eq i32 %12, %14
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8, ptr %19, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %21
  %25 = add i32 %12, -1
  %26 = getelementptr i8, ptr %19, i32 1
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %25, %24 ], [ %12, %17 ]
  %29 = phi ptr [ %26, %24 ], [ %19, %17 ]
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 1
  %32 = icmp ugt i32 %28, 1
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %92

34:                                               ; preds = %39, %27
  %35 = phi i32 [ %40, %39 ], [ 1, %27 ]
  %36 = getelementptr i8, ptr %29, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = add nuw i32 %35, 1
  %41 = icmp eq i32 %40, %28
  br i1 %41, label %92, label %34

42:                                               ; preds = %34
  %43 = icmp ult i32 %35, 9
  %44 = icmp eq i32 %35, %28
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %92, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %29, i32 %35
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = add i32 %35, 1
  %52 = icmp eq ptr %8, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %29, i32 %51
  %55 = getelementptr inbounds %struct.rsa_asn1_template, ptr %8, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rsa_asn1_template, ptr %8, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @__crypto_memneq(ptr noundef %54, ptr noundef %56, i32 noundef %58) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %53
  %62 = load i32, ptr %57, align 4
  %63 = add i32 %62, %51
  br label %64

64:                                               ; preds = %61, %50
  %65 = phi i32 [ %63, %61 ], [ %51, %50 ]
  %66 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = sub i32 %28, %65
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 %68, ptr %66, align 4
  br label %92

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %75 = load i32, ptr %74, align 32
  %76 = add i32 %75, %67
  %77 = zext i32 %76 to i64
  %78 = tail call i32 @sg_nents_for_len(ptr noundef %73, i64 noundef %77) #11
  %79 = load ptr, ptr %18, align 64
  %80 = load i32, ptr %13, align 4
  %81 = getelementptr i8, ptr %79, i32 %80
  %82 = load i32, ptr %66, align 4
  %83 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %73, i32 noundef %78, ptr noundef %81, i32 noundef %82, i32 noundef %80) #11
  %84 = load ptr, ptr %18, align 64
  %85 = load i32, ptr %13, align 4
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = getelementptr i8, ptr %29, i32 %65
  %88 = load i32, ptr %66, align 4
  %89 = tail call i32 @bcmp(ptr %86, ptr %87, i32 %88)
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 0, i32 -129
  br label %92

92:                                               ; preds = %71, %70, %53, %46, %42, %39, %27, %21, %10, %2
  %93 = phi i32 [ %1, %2 ], [ -22, %10 ], [ -22, %21 ], [ -74, %27 ], [ -74, %42 ], [ -74, %46 ], [ -74, %53 ], [ -129, %70 ], [ %91, %71 ], [ -74, %39 ]
  %94 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 2
  %95 = load ptr, ptr %94, align 64
  tail call void @kfree_sensitive(ptr noundef %95) #11
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152452951, i64 2152453443, i64 2152452988, i64 2152453044, i64 2152453078, i64 2152453102, i64 2152453143, i64 2152453164, i64 2152453192, i64 2152453226}
!11 = !{!"branch_weights", i32 1, i32 2000}
