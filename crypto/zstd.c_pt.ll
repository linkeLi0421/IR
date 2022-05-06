; ModuleID = '/llk/IR/crypto/zstd.c_pt.bc'
source_filename = "../crypto/zstd.c"
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
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.zstd_ctx = type { ptr, ptr, ptr, ptr }

@scomp = internal global %struct.scomp_alg { ptr @zstd_alloc_ctx, ptr @zstd_free_ctx, ptr @zstd_scompress, ptr @zstd_sdecompress, [48 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zstd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zstd-scomp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@__initcall__kmod_zstd__228_253_zstd_mod_init4 = internal global ptr @zstd_mod_init, section ".initcall4.init", align 4
@__exitcall_zstd_mod_fini = internal global ptr @zstd_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [22 x i8] c"zstd.file=crypto/zstd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [17 x i8] c"zstd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [44 x i8] c"zstd.description=Zstd Compression Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [16 x i8] c"zstd.alias=zstd\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [23 x i8] c"zstd.alias=crypto-zstd\00", section ".modinfo", align 1
@alg = internal global { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, [48 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 0, i32 16, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"zstd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"zstd-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @zstd_compress, ptr @zstd_decompress }, [12 x i8] undef }, ptr @zstd_init, ptr @zstd_exit, ptr null, ptr null, [48 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_zstd_mod_fini, ptr @__initcall__kmod_zstd__228_253_zstd_mod_init4, ptr @zstd_mod_fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zstd_mod_fini() #0 section ".exit.text" {
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #7
  tail call void @crypto_unregister_scomp(ptr noundef nonnull @scomp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_scomp(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @zstd_mod_init() #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @crypto_register_scomp(ptr noundef nonnull @scomp) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #7
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zstd_compress(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = alloca %struct.ZSTD_parameters, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false) #7, !annotation !8
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %6, i32 noundef 3, i64 noundef 0) #7
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = call i32 @zstd_compress_cctx(ptr noundef %8, ptr noundef %3, i32 noundef %9, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6) #7
  %11 = call i32 @zstd_is_error(i32 noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 %10, ptr %4, align 4
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ 0, %13 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zstd_decompress(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #2 {
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @zstd_decompress_dctx(ptr noundef %7, ptr noundef %3, i32 noundef %8, ptr noundef %1, i32 noundef %2) #7
  %10 = tail call i32 @zstd_is_error(i32 noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i32 %9, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %5
  %14 = phi i32 [ 0, %12 ], [ -22, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zstd_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = tail call fastcc i32 @__zstd_init(ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zstd_exit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @vfree(ptr noundef %4) #7
  store ptr null, ptr %3, align 4
  store ptr null, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @vfree(ptr noundef %6) #7
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_cctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_get_params(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_dctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__zstd_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.ZSTD_parameters, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #7, !annotation !8
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %2, i32 noundef 3, i64 noundef 0) #7
  %3 = call i32 @zstd_cctx_workspace_bound(ptr noundef nonnull %2) #7
  %4 = call noalias ptr @vzalloc(i32 noundef %3) #8
  %5 = getelementptr inbounds %struct.zstd_ctx, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call ptr @zstd_init_cctx(ptr noundef nonnull %4, i32 noundef %3) #7
  store ptr %8, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  call void @vfree(ptr noundef %11) #7
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ -12, %1 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %28

14:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %15 = call i32 @zstd_dctx_workspace_bound() #7
  %16 = call noalias ptr @vzalloc(i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.zstd_ctx, ptr %0, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = call ptr @zstd_init_dctx(ptr noundef nonnull %16, i32 noundef %15) #7
  %21 = getelementptr inbounds %struct.zstd_ctx, ptr %0, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 4
  call void @vfree(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i32 [ -12, %14 ], [ -22, %23 ]
  %27 = load ptr, ptr %5, align 4
  call void @vfree(ptr noundef %27) #7
  store ptr null, ptr %5, align 4
  store ptr null, ptr %0, align 4
  br label %28

28:                                               ; preds = %25, %19, %12
  %29 = phi i32 [ %26, %25 ], [ %13, %12 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_cctx_workspace_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_cctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dctx_workspace_bound() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zstd_alloc_ctx(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @__zstd_init(ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  %9 = inttoptr i32 %6 to ptr
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zstd_free_ctx(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.zstd_ctx, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @vfree(ptr noundef %4) #7
  store ptr null, ptr %3, align 4
  store ptr null, ptr %1, align 4
  %5 = getelementptr inbounds %struct.zstd_ctx, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @vfree(ptr noundef %6) #7
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zstd_ctx, ptr %1, i32 0, i32 1
  store ptr null, ptr %7, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zstd_scompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = alloca %struct.ZSTD_parameters, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 40, i1 false) #7, !annotation !8
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %7, i32 noundef 3, i64 noundef 0) #7
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = call i32 @zstd_compress_cctx(ptr noundef %8, ptr noundef %3, i32 noundef %9, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7) #7
  %11 = call i32 @zstd_is_error(i32 noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 %10, ptr %4, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i32 [ 0, %13 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zstd_sdecompress(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.zstd_ctx, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = tail call i32 @zstd_decompress_dctx(ptr noundef %8, ptr noundef %3, i32 noundef %9, ptr noundef %1, i32 noundef %2) #7
  %11 = tail call i32 @zstd_is_error(i32 noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 %10, ptr %4, align 4
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i32 [ 0, %13 ], [ -22, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_scomp(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

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
