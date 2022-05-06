; ModuleID = '/llk/IR/crypto/seqiv.c_pt.bc'
source_filename = "../crypto/seqiv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.68, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }

@__UNIQUE_ID_license233 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [41 x i8] c"description=Sequence Number IV Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace235 = internal constant [12 x i8] c"alias=seqiv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto236 = internal constant [19 x i8] c"alias=crypto-seqiv\00", section ".modinfo", align 1
@seqiv_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @seqiv_aead_create, [128 x i8] c"seqiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto236, ptr @__UNIQUE_ID_alias_userspace235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license233], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @seqiv_tmpl) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @seqiv_tmpl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seqiv_aead_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @aead_geniv_alloc(ptr noundef %0, ptr noundef %1) #6
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 24
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @seqiv_aead_encrypt, ptr %12, align 8
  %13 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @seqiv_aead_decrypt, ptr %13, align 4
  %14 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @aead_init_geniv, ptr %14, align 16
  %15 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @aead_exit_geniv, ptr %15, align 4
  %16 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 20, ptr %16, align 8
  %17 = tail call i32 @aead_register_instance(ptr noundef %0, ptr noundef %3) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %7
  %20 = phi i32 [ -22, %7 ], [ %17, %11 ]
  %21 = load ptr, ptr %3, align 64
  tail call void %21(ptr noundef %3) #6
  br label %22

22:                                               ; preds = %19, %11, %5
  %23 = phi i32 [ %6, %5 ], [ %20, %19 ], [ 0, %11 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aead_geniv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seqiv_aead_encrypt(ptr noundef %0) #2 {
  %2 = alloca [448 x i8], align 64
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %93, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %4, i32 68
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %12, ptr %13, align 16
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 32
  %20 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %2, i8 0, i32 448, i1 false), !annotation !8
  %26 = getelementptr i8, ptr %4, i32 72
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 3
  store ptr %28, ptr %29, align 32
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 4
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %7
  %37 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 2
  store ptr %21, ptr %37, align 8
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 3
  store ptr %23, ptr %38, align 4
  store i32 %36, ptr %2, align 64
  %39 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %2) #6
  %40 = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #6
  br i1 %40, label %41, label %93

41:                                               ; preds = %25, %9
  %42 = ptrtoint ptr %19 to i32
  %43 = getelementptr i8, ptr %4, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, %42
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49, !prof !9

49:                                               ; preds = %41
  %50 = load ptr, ptr %18, align 32
  %51 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 2592, i32 3264
  %56 = call ptr @kmemdup(ptr noundef %50, i32 noundef 8, i32 noundef %55) #6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %93, label %58

58:                                               ; preds = %49, %41
  %59 = phi ptr [ %15, %41 ], [ @seqiv_aead_encrypt_complete, %49 ]
  %60 = phi ptr [ %17, %41 ], [ %0, %49 ]
  %61 = phi ptr [ %19, %41 ], [ %56, %49 ]
  %62 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %59, ptr %64, align 8
  %65 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store ptr %60, ptr %65, align 4
  %66 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %63, ptr %66, align 4
  %67 = load ptr, ptr %22, align 8
  %68 = load i32, ptr %6, align 4
  %69 = add i32 %68, -8
  %70 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store ptr %67, ptr %70, align 4
  %71 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  store ptr %67, ptr %71, align 8
  %72 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 %69, ptr %72, align 4
  %73 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  store ptr %61, ptr %73, align 32
  %74 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, 8
  %77 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 %76, ptr %77, align 8
  %78 = getelementptr i8, ptr %4, i32 76
  %79 = getelementptr i8, ptr %4, i32 80
  %80 = load i32, ptr %78, align 4
  %81 = getelementptr i32, ptr %61, i32 1
  %82 = load i32, ptr %61, align 4
  %83 = xor i32 %82, %80
  store i32 %83, ptr %61, align 4
  %84 = load i32, ptr %79, align 4
  %85 = load i32, ptr %81, align 4
  %86 = xor i32 %85, %84
  store i32 %86, ptr %81, align 4
  %87 = load ptr, ptr %22, align 8
  %88 = load i32, ptr %74, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %61, ptr noundef %87, i32 noundef %88, i32 noundef 8, i32 noundef 1) #6
  %89 = call i32 @crypto_aead_encrypt(ptr noundef %5) #6
  %90 = load ptr, ptr %18, align 32
  %91 = icmp eq ptr %61, %90
  br i1 %91, label %93, label %92, !prof !9

92:                                               ; preds = %58
  call fastcc void @seqiv_aead_encrypt_complete2(ptr noundef %0, i32 noundef %89)
  br label %93

93:                                               ; preds = %92, %58, %49, %25, %1
  %94 = phi i32 [ %39, %25 ], [ -22, %1 ], [ -12, %49 ], [ %89, %92 ], [ %89, %58 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seqiv_aead_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 64
  %8 = add i32 %7, 8
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %12 = getelementptr i8, ptr %3, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %14, ptr %15, align 16
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %17, ptr %22, align 8
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store ptr %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  %29 = add i32 %6, -8
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 32
  %32 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store ptr %26, ptr %32, align 4
  %33 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  store ptr %28, ptr %33, align 8
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  store ptr %31, ptr %35, align 32
  %36 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 8
  %39 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 %38, ptr %39, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %31, ptr noundef %26, i32 noundef %37, i32 noundef 8, i32 noundef 0) #6
  %40 = tail call i32 @crypto_aead_decrypt(ptr noundef %11) #6
  br label %41

41:                                               ; preds = %10, %1
  %42 = phi i32 [ %40, %10 ], [ -22, %1 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_init_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aead_exit_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @seqiv_aead_encrypt_complete(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %16 [
    i32 -115, label %19
    i32 0, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 32
  %10 = getelementptr inbounds %struct.aead_request, ptr %4, i32 1, i32 3
  %11 = load ptr, ptr %10, align 32
  %12 = getelementptr i8, ptr %7, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -40
  %15 = load i32, ptr %14, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %11, i32 %15, i1 false) #6
  br label %16

16:                                               ; preds = %5, %2
  %17 = getelementptr inbounds %struct.aead_request, ptr %4, i32 1, i32 3
  %18 = load ptr, ptr %17, align 32
  tail call void @kfree_sensitive(ptr noundef %18) #6
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef %4, i32 noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @seqiv_aead_encrypt_complete2(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %14 [
    i32 -115, label %17
    i32 0, label %3
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 32
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 32
  %10 = getelementptr i8, ptr %5, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -40
  %13 = load i32, ptr %12, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %9, i32 %13, i1 false)
  br label %14

14:                                               ; preds = %3, %2
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 32
  tail call void @kfree_sensitive(ptr noundef %16) #6
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
