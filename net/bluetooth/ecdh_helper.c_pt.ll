; ModuleID = '/llk/IR/net/bluetooth/ecdh_helper.c_pt.bc'
source_filename = "../net/bluetooth/ecdh_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.ecdh_completion = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }
%struct.ecdh = type { ptr, i16 }

@.str = private unnamed_addr constant [51 x i8] c"\013alg: ecdh: compute shared secret failed. err %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @compute_ecdh_secret(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ecdh_completion, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 64) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %88, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, 64
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18, !prof !9

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 3
  store ptr %0, ptr %19, align 16
  store i32 0, ptr %4, align 4
  %20 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #9
  %21 = getelementptr i64, ptr %1, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #9
  store i64 %23, ptr %8, align 8
  %24 = getelementptr i64, ptr %1, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #9
  %27 = getelementptr i64, ptr %8, i32 1
  store i64 %26, ptr %27, align 8
  %28 = getelementptr i64, ptr %1, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29) #9
  %31 = getelementptr i64, ptr %8, i32 2
  store i64 %30, ptr %31, align 8
  %32 = load i64, ptr %1, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #9
  %34 = getelementptr i64, ptr %8, i32 3
  store i64 %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %1, i32 32
  %36 = getelementptr i8, ptr %8, i32 32
  %37 = getelementptr i8, ptr %1, i32 56
  %38 = load i64, ptr %37, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #9
  store i64 %39, ptr %36, align 8
  %40 = getelementptr i8, ptr %1, i32 48
  %41 = load i64, ptr %40, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  %43 = getelementptr i8, ptr %8, i32 40
  store i64 %42, ptr %43, align 8
  %44 = getelementptr i8, ptr %1, i32 40
  %45 = load i64, ptr %44, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #9
  %47 = getelementptr i8, ptr %8, i32 48
  store i64 %46, ptr %47, align 8
  %48 = load i64, ptr %35, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #9
  %50 = getelementptr i8, ptr %8, i32 56
  store i64 %49, ptr %50, align 8
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 64) #9
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 32) #9
  %51 = getelementptr inbounds %struct.kpp_request, ptr %16, i32 0, i32 1
  store ptr %5, ptr %51, align 8
  %52 = getelementptr inbounds %struct.kpp_request, ptr %16, i32 0, i32 3
  store i32 64, ptr %52, align 32
  %53 = getelementptr inbounds %struct.kpp_request, ptr %16, i32 0, i32 2
  store ptr %6, ptr %53, align 4
  %54 = getelementptr inbounds %struct.kpp_request, ptr %16, i32 0, i32 4
  store i32 32, ptr %54, align 4
  %55 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 1
  store ptr @ecdh_complete, ptr %55, align 8
  %56 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 2
  store ptr %4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 4
  store i32 1024, ptr %57, align 4
  %58 = load ptr, ptr %19, align 16
  %59 = getelementptr inbounds %struct.crypto_tfm, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -56
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 %62(ptr noundef nonnull %16) #9
  %64 = icmp eq i32 %63, -115
  br i1 %64, label %65, label %68

65:                                               ; preds = %18
  call void @wait_for_completion(ptr noundef nonnull %4) #9
  %66 = getelementptr inbounds %struct.ecdh_completion, ptr %4, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %18
  %69 = phi i32 [ %67, %65 ], [ %63, %18 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %69) #12
  br label %85

73:                                               ; preds = %68
  %74 = getelementptr i64, ptr %2, i32 3
  %75 = load i64, ptr %74, align 8
  %76 = call i64 @llvm.bswap.i64(i64 %75) #9
  store i64 %76, ptr %8, align 8
  %77 = getelementptr i64, ptr %2, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78) #9
  store i64 %79, ptr %27, align 8
  %80 = getelementptr i64, ptr %2, i32 1
  %81 = load i64, ptr %80, align 8
  %82 = call i64 @llvm.bswap.i64(i64 %81) #9
  store i64 %82, ptr %31, align 8
  %83 = load i64, ptr %2, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #9
  store i64 %84, ptr %34, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 32, i1 false)
  br label %85

85:                                               ; preds = %73, %71
  call void @kfree_sensitive(ptr noundef nonnull %16) #9
  br label %86

86:                                               ; preds = %85, %10
  %87 = phi i32 [ %69, %85 ], [ -12, %10 ]
  call void @kfree_sensitive(ptr noundef nonnull %8) #9
  br label %88

88:                                               ; preds = %86, %3
  %89 = phi i32 [ %87, %86 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecdh_complete(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, -115
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ecdh_completion, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  tail call void @complete(ptr noundef %6) #9
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_ecdh_privkey(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ecdh, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %5
  %10 = getelementptr i64, ptr %1, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #9
  store i64 %12, ptr %7, align 8
  %13 = getelementptr i64, ptr %1, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #9
  %16 = getelementptr i64, ptr %7, i32 1
  store i64 %15, ptr %16, align 8
  %17 = getelementptr i64, ptr %1, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #9
  %20 = getelementptr i64, ptr %7, i32 2
  store i64 %19, ptr %20, align 8
  %21 = load i64, ptr %1, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #9
  %23 = getelementptr i64, ptr %7, i32 3
  store i64 %22, ptr %23, align 8
  store ptr %7, ptr %3, align 8
  %24 = getelementptr inbounds %struct.ecdh, ptr %3, i32 0, i32 1
  store i16 32, ptr %24, align 4
  br label %25

25:                                               ; preds = %9, %2
  %26 = phi ptr [ %7, %9 ], [ null, %2 ]
  %27 = call i32 @crypto_ecdh_key_len(ptr noundef nonnull %3) #9
  %28 = call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = call i32 @crypto_ecdh_encode_key(ptr noundef nonnull %28, i32 noundef %27, ptr noundef nonnull %3) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 -64
  %37 = load ptr, ptr %36, align 64
  %38 = call i32 %37(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %27) #9
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %31, %30 ], [ %38, %33 ]
  call void @kfree_sensitive(ptr noundef nonnull %28) #9
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi i32 [ %40, %39 ], [ -12, %25 ]
  call void @kfree_sensitive(ptr noundef %26) #9
  br label %43

43:                                               ; preds = %41, %5
  %44 = phi i32 [ %42, %41 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_key_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_encode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generate_ecdh_public_key(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ecdh_completion, align 4
  %4 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 64) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 64
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16, !prof !9

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 3
  store ptr %0, ptr %17, align 16
  store i32 0, ptr %3, align 4
  %18 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #9
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 64) #9
  %19 = getelementptr inbounds %struct.kpp_request, ptr %14, i32 0, i32 1
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.kpp_request, ptr %14, i32 0, i32 3
  store i32 0, ptr %20, align 32
  %21 = getelementptr inbounds %struct.kpp_request, ptr %14, i32 0, i32 2
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.kpp_request, ptr %14, i32 0, i32 4
  store i32 64, ptr %22, align 4
  %23 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 1
  store ptr @ecdh_complete, ptr %23, align 8
  %24 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 2
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 4
  store i32 1024, ptr %25, align 4
  %26 = load ptr, ptr %17, align 16
  %27 = getelementptr inbounds %struct.crypto_tfm, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 -60
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef nonnull %14) #9
  %32 = icmp eq i32 %31, -115
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  call void @wait_for_completion(ptr noundef nonnull %3) #9
  %34 = getelementptr inbounds %struct.ecdh_completion, ptr %3, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i32 [ %35, %33 ], [ %31, %16 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %36
  %40 = getelementptr i64, ptr %6, i32 3
  %41 = load i64, ptr %40, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  store i64 %42, ptr %1, align 8
  %43 = getelementptr i64, ptr %6, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #9
  %46 = getelementptr i64, ptr %1, i32 1
  store i64 %45, ptr %46, align 8
  %47 = getelementptr i64, ptr %6, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #9
  %50 = getelementptr i64, ptr %1, i32 2
  store i64 %49, ptr %50, align 8
  %51 = load i64, ptr %6, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #9
  %53 = getelementptr i64, ptr %1, i32 3
  store i64 %52, ptr %53, align 8
  %54 = getelementptr i8, ptr %6, i32 32
  %55 = getelementptr i8, ptr %1, i32 32
  %56 = getelementptr i8, ptr %6, i32 56
  %57 = load i64, ptr %56, align 8
  %58 = call i64 @llvm.bswap.i64(i64 %57) #9
  store i64 %58, ptr %55, align 8
  %59 = getelementptr i8, ptr %6, i32 48
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60) #9
  %62 = getelementptr i8, ptr %1, i32 40
  store i64 %61, ptr %62, align 8
  %63 = getelementptr i8, ptr %6, i32 40
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64) #9
  %66 = getelementptr i8, ptr %1, i32 48
  store i64 %65, ptr %66, align 8
  %67 = load i64, ptr %54, align 8
  %68 = call i64 @llvm.bswap.i64(i64 %67) #9
  %69 = getelementptr i8, ptr %1, i32 56
  store i64 %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %39, %36
  call void @kfree_sensitive(ptr noundef nonnull %14) #9
  br label %71

71:                                               ; preds = %70, %8
  %72 = phi i32 [ %37, %70 ], [ -12, %8 ]
  call void @kfree(ptr noundef nonnull %6) #9
  br label %73

73:                                               ; preds = %71, %2
  %74 = phi i32 [ %72, %71 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generate_ecdh_keys(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ecdh, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8
  %4 = call i32 @crypto_ecdh_key_len(ptr noundef nonnull %3) #9
  %5 = call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @kfree_sensitive(ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %22

8:                                                ; preds = %2
  %9 = call i32 @crypto_ecdh_encode_key(ptr noundef nonnull %5, i32 noundef %4, ptr noundef nonnull %3) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = load ptr, ptr %14, align 64
  %16 = call i32 %15(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %4) #9
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %9, %8 ], [ %16, %11 ]
  call void @kfree_sensitive(ptr noundef nonnull %5) #9
  call void @kfree_sensitive(ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @generate_ecdh_public_key(ptr noundef %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %20, %17, %7
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], [ -12, %7 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
