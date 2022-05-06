; ModuleID = '/llk/IR/crypto/deflate.c_pt.bc'
source_filename = "../crypto/deflate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.deflate_ctx = type { %struct.z_stream_s, %struct.z_stream_s }

@scomp = internal global [2 x %struct.scomp_alg] [%struct.scomp_alg { ptr @deflate_alloc_ctx, ptr @deflate_free_ctx, ptr @deflate_scompress, ptr @deflate_sdecompress, [48 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"deflate-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.scomp_alg { ptr @zlib_deflate_alloc_ctx, ptr @deflate_free_ctx, ptr @deflate_scompress, ptr @deflate_sdecompress, [48 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zlib-deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zlib-deflate-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }], align 64
@__initcall__kmod_deflate__228_334_deflate_mod_init4 = internal global ptr @deflate_mod_init, section ".initcall4.init", align 4
@__exitcall_deflate_mod_fini = internal global ptr @deflate_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [28 x i8] c"deflate.file=crypto/deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"deflate.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [61 x i8] c"deflate.description=Deflate Compression Algorithm for IPCOMP\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [55 x i8] c"deflate.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace233 = internal constant [22 x i8] c"deflate.alias=deflate\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto234 = internal constant [29 x i8] c"deflate.alias=crypto-deflate\00", section ".modinfo", align 1
@alg = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, [48 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 96, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"deflate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"deflate-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @deflate_compress, ptr @deflate_decompress }, [12 x i8] undef }, ptr @deflate_init, ptr @deflate_exit, ptr null, ptr null, [48 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto234, ptr @__UNIQUE_ID_alias_userspace233, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_deflate_mod_fini, ptr @__initcall__kmod_deflate__228_334_deflate_mod_init4, ptr @deflate_mod_fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @deflate_mod_fini() #0 section ".exit.text" {
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #6
  tail call void @crypto_unregister_scomps(ptr noundef nonnull @scomp, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomps(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @deflate_mod_init() #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @crypto_register_scomps(ptr noundef nonnull @scomp, i32 noundef 2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #6
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_compress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %7 = tail call i32 @zlib_deflateReset(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  store ptr %1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  store ptr %3, ptr %11, align 4
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @zlib_deflate(ptr noundef %6, i32 noundef 5) #6
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 4
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %9, %5
  %20 = phi i32 [ 0, %16 ], [ -22, %5 ], [ -22, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_decompress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 32
  %8 = tail call i32 @zlib_inflateReset(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  store ptr %1, ptr %7, align 4
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 36
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 44
  store ptr %3, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @zlib_inflate(ptr noundef %7, i32 noundef 3) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i32, ptr %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, ptr %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %7, align 4
  store i32 1, ptr %11, align 4
  %24 = call i32 @zlib_inflate(ptr noundef %7, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi i32 [ %24, %23 ], [ %15, %10 ]
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %4, align 4
  br label %31

31:                                               ; preds = %28, %25, %20, %17, %5
  %32 = phi i32 [ 0, %28 ], [ -22, %5 ], [ -22, %25 ], [ -22, %17 ], [ -22, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = tail call fastcc i32 @__deflate_init(ptr noundef %2, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deflate_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = tail call i32 @zlib_deflateEnd(ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 16
  %5 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 32
  %7 = tail call i32 @zlib_inflateEnd(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %9) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__deflate_init(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @zlib_deflate_workspacesize(i32 noundef 15, i32 noundef 8) #6
  %4 = tail call noalias ptr @vzalloc(i32 noundef %3) #7
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @zlib_deflateInit2(ptr noundef %0, i32 noundef 3, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0) #6
  br label %13

11:                                               ; preds = %7
  %12 = tail call i32 @zlib_deflateInit2(ptr noundef %0, i32 noundef -1, i32 noundef 8, i32 noundef -11, i32 noundef 8, i32 noundef 0) #6
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = tail call i32 @zlib_inflate_workspacesize() #6
  %18 = tail call noalias ptr @vzalloc(i32 noundef %17) #7
  %19 = getelementptr inbounds %struct.deflate_ctx, ptr %0, i32 0, i32 1, i32 8
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.deflate_ctx, ptr %0, i32 0, i32 1
  %23 = select i1 %8, i32 -11, i32 15
  %24 = tail call i32 @zlib_inflateInit2(ptr noundef %22, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 4
  tail call void @vfree(ptr noundef %27) #6
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ -12, %16 ], [ -22, %26 ]
  %30 = tail call i32 @zlib_deflateEnd(ptr noundef %0) #6
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi i32 [ %29, %28 ], [ -22, %13 ]
  %33 = load ptr, ptr %5, align 4
  tail call void @vfree(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %31, %21, %2
  %35 = phi i32 [ 0, %21 ], [ -12, %2 ], [ %32, %31 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateInit2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deflate_alloc_ctx(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @__deflate_init(ptr noundef nonnull %3, i32 noundef 0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  %9 = inttoptr i32 %6 to ptr
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deflate_free_ctx(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @zlib_deflateEnd(ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.deflate_ctx, ptr %1, i32 0, i32 1
  %7 = tail call i32 @zlib_inflateEnd(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.deflate_ctx, ptr %1, i32 0, i32 1, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %9) #6
  tail call void @kfree_sensitive(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_scompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) #2 {
  %7 = tail call i32 @zlib_deflateReset(ptr noundef %5) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  store ptr %1, ptr %5, align 4
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 3
  store ptr %3, ptr %11, align 4
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @zlib_deflate(ptr noundef %5, i32 noundef 5) #6
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %9, %6
  %20 = phi i32 [ 0, %16 ], [ -22, %6 ], [ -22, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deflate_sdecompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) #2 {
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.deflate_ctx, ptr %5, i32 0, i32 1
  %9 = tail call i32 @zlib_inflateReset(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  store ptr %1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.deflate_ctx, ptr %5, i32 0, i32 1, i32 1
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.deflate_ctx, ptr %5, i32 0, i32 1, i32 3
  store ptr %3, ptr %13, align 4
  %14 = load i32, ptr %4, align 4
  %15 = getelementptr inbounds %struct.deflate_ctx, ptr %5, i32 0, i32 1, i32 4
  store i32 %14, ptr %15, align 4
  %16 = tail call i32 @zlib_inflate(ptr noundef %8, i32 noundef 3) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, ptr %12, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, ptr %15, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1
  store ptr %7, ptr %8, align 4
  store i32 1, ptr %12, align 4
  %25 = call i32 @zlib_inflate(ptr noundef %8, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi i32 [ %25, %24 ], [ %16, %11 ]
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.deflate_ctx, ptr %5, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %4, align 4
  br label %32

32:                                               ; preds = %29, %26, %21, %18, %6
  %33 = phi i32 [ 0, %29 ], [ -22, %6 ], [ -22, %26 ], [ -22, %18 ], [ -22, %21 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zlib_deflate_alloc_ctx(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @__deflate_init(ptr noundef nonnull %3, i32 noundef 1) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  %9 = inttoptr i32 %6 to ptr
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_scomps(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind allocsize(2) }

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
