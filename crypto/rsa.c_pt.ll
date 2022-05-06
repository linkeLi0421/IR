; ModuleID = '/llk/IR/crypto/rsa.c_pt.bc'
source_filename = "../crypto/rsa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_rsa_generic__220_285_rsa_init4 = internal global ptr @rsa_init, section ".initcall4.init", align 4
@__exitcall_rsa_exit = internal global ptr @rsa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace221 = internal constant [22 x i8] c"rsa_generic.alias=rsa\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto222 = internal constant [29 x i8] c"rsa_generic.alias=crypto-rsa\00", section ".modinfo", align 1
@__UNIQUE_ID_file223 = internal constant [36 x i8] c"rsa_generic.file=crypto/rsa_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [24 x i8] c"rsa_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [46 x i8] c"rsa_generic.description=RSA generic algorithm\00", section ".modinfo", align 1
@rsa = internal global %struct.akcipher_alg { ptr null, ptr null, ptr @rsa_enc, ptr @rsa_dec, ptr @rsa_set_pub_key, ptr @rsa_set_priv_key, ptr @rsa_max_size, ptr null, ptr @rsa_exit_tfm, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 12, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"rsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rsa-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@rsa_pkcs1pad_tmpl = external dso_local global %struct.crypto_template, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias_crypto222, ptr @__UNIQUE_ID_alias_userspace221, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__exitcall_rsa_exit, ptr @__initcall__kmod_rsa_generic__220_285_rsa_init4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsa_init() #0 {
  %1 = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @rsa) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @crypto_register_template(ptr noundef nonnull @rsa_pkcs1pad_tmpl) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @rsa) #6
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsa_exit() #0 {
  tail call void @crypto_unregister_template(ptr noundef nonnull @rsa_pkcs1pad_tmpl) #6
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @rsa) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsa_enc(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 5
  %6 = tail call ptr @mpi_alloc(i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11, !prof !9

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15, !prof !9

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 32
  %20 = tail call ptr @mpi_read_raw_from_sgl(ptr noundef %17, i32 noundef %19) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %20, i32 noundef 0) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = tail call i32 @mpi_cmp(ptr noundef nonnull %20, ptr noundef %26) #6
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i32 @mpi_powm(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef %30, ptr noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @mpi_write_to_sgl(ptr noundef nonnull %6, ptr noundef %36, i32 noundef %38, ptr noundef nonnull %2) #6
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %2, align 4
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = select i1 %43, i32 -74, i32 %39
  br label %45

45:                                               ; preds = %34, %29, %25, %22
  %46 = phi i32 [ %32, %29 ], [ %44, %34 ], [ -22, %25 ], [ -22, %22 ]
  call void @mpi_free(ptr noundef nonnull %20) #6
  br label %47

47:                                               ; preds = %45, %15, %11, %8
  %48 = phi i32 [ %46, %45 ], [ -12, %15 ], [ -22, %11 ], [ -22, %8 ]
  call void @mpi_free(ptr noundef nonnull %6) #6
  br label %49

49:                                               ; preds = %47, %1
  %50 = phi i32 [ %48, %47 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsa_dec(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 5
  %6 = tail call ptr @mpi_alloc(i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11, !prof !9

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15, !prof !9

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 32
  %20 = tail call ptr @mpi_read_raw_from_sgl(ptr noundef %17, i32 noundef %19) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @mpi_cmp_ui(ptr noundef nonnull %20, i32 noundef 0) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = tail call i32 @mpi_cmp(ptr noundef nonnull %20, ptr noundef %26) #6
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i32 @mpi_powm(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef %30, ptr noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.akcipher_request, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @mpi_write_to_sgl(ptr noundef nonnull %6, ptr noundef %36, i32 noundef %38, ptr noundef nonnull %2) #6
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %2, align 4
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = select i1 %43, i32 -74, i32 %39
  br label %45

45:                                               ; preds = %34, %29, %25, %22
  %46 = phi i32 [ %32, %29 ], [ %44, %34 ], [ -22, %25 ], [ -22, %22 ]
  call void @mpi_free(ptr noundef nonnull %20) #6
  br label %47

47:                                               ; preds = %45, %15, %11, %8
  %48 = phi i32 [ %46, %45 ], [ -12, %15 ], [ -22, %11 ], [ -22, %8 ]
  call void @mpi_free(ptr noundef nonnull %6) #6
  br label %49

49:                                               ; preds = %47, %1
  %50 = phi i32 [ %48, %47 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsa_set_pub_key(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rsa_key, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @mpi_free(ptr noundef %9) #6
  %10 = load ptr, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %10) #6
  store ptr null, ptr %6, align 4
  store ptr null, ptr %8, align 4
  store ptr null, ptr %5, align 4
  %11 = call i32 @rsa_parse_pub_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = call ptr @mpi_read_raw_data(ptr noundef %15, i32 noundef %17) #6
  store ptr %18, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = call ptr @mpi_read_raw_data(ptr noundef %21, i32 noundef %23) #6
  store ptr %24, ptr %5, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gcry_mpi, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 5
  %30 = add i32 %29, -512
  %31 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 23) #6
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %38, label %33

33:                                               ; preds = %38, %26, %20, %13
  %34 = phi i32 [ -22, %26 ], [ -12, %20 ], [ -12, %13 ], [ -22, %38 ]
  %35 = load ptr, ptr %6, align 4
  call void @mpi_free(ptr noundef %35) #6
  %36 = load ptr, ptr %8, align 4
  call void @mpi_free(ptr noundef %36) #6
  %37 = load ptr, ptr %5, align 4
  call void @mpi_free(ptr noundef %37) #6
  store ptr null, ptr %6, align 4
  store ptr null, ptr %8, align 4
  store ptr null, ptr %5, align 4
  br label %43

38:                                               ; preds = %26
  %39 = trunc i32 %31 to i8
  %40 = lshr i8 -81, %39
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %33, label %43

43:                                               ; preds = %38, %33, %3
  %44 = phi i32 [ %11, %3 ], [ %34, %33 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsa_set_priv_key(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rsa_key, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false)
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @mpi_free(ptr noundef %9) #6
  %10 = load ptr, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %10) #6
  store ptr null, ptr %6, align 4
  store ptr null, ptr %8, align 4
  store ptr null, ptr %5, align 4
  %11 = call i32 @rsa_parse_priv_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = call ptr @mpi_read_raw_data(ptr noundef %15, i32 noundef %17) #6
  store ptr %18, ptr %6, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = call ptr @mpi_read_raw_data(ptr noundef %22, i32 noundef %24) #6
  store ptr %25, ptr %8, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = call ptr @mpi_read_raw_data(ptr noundef %28, i32 noundef %30) #6
  store ptr %31, ptr %5, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gcry_mpi, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 5
  %37 = add i32 %36, -512
  %38 = call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 23) #6
  %39 = icmp ult i32 %38, 8
  br i1 %39, label %45, label %40

40:                                               ; preds = %45, %33, %27, %20, %13
  %41 = phi i32 [ -22, %33 ], [ -12, %27 ], [ -12, %20 ], [ -12, %13 ], [ -22, %45 ]
  %42 = load ptr, ptr %6, align 4
  call void @mpi_free(ptr noundef %42) #6
  %43 = load ptr, ptr %8, align 4
  call void @mpi_free(ptr noundef %43) #6
  %44 = load ptr, ptr %5, align 4
  call void @mpi_free(ptr noundef %44) #6
  store ptr null, ptr %6, align 4
  store ptr null, ptr %8, align 4
  store ptr null, ptr %5, align 4
  br label %50

45:                                               ; preds = %33
  %46 = trunc i32 %38 to i8
  %47 = lshr i8 -81, %46
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %40, label %50

50:                                               ; preds = %45, %40, %3
  %51 = phi i32 [ %11, %3 ], [ %41, %40 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsa_max_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsa_exit_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @mpi_free(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %6) #6
  %7 = load ptr, ptr %2, align 4
  tail call void @mpi_free(ptr noundef %7) #6
  store ptr null, ptr %3, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_from_sgl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_write_to_sgl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_pub_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_read_raw_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_parse_priv_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
