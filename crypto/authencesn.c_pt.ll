; ModuleID = '/llk/IR/crypto/authencesn.c_pt.bc'
source_filename = "../crypto/authencesn.c"
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
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.113, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.112, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.112 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.113 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }

@__UNIQUE_ID_license323 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [55 x i8] c"author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [66 x i8] c"description=AEAD wrapper for IPsec with extended sequence numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace326 = internal constant [17 x i8] c"alias=authencesn\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto327 = internal constant [24 x i8] c"alias=crypto-authencesn\00", section ".modinfo", align 1
@crypto_authenc_esn_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_authenc_esn_create, [128 x i8] c"authencesn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"authencesn(%s,%s)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto327, ptr @__UNIQUE_ID_alias_userspace326, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_license323], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_authenc_esn_tmpl) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_authenc_esn_tmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %81

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 632) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #9
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_ahash(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -64
  %23 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 24
  %24 = getelementptr ptr, ptr %1, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call ptr @crypto_attr_alg_name(ptr noundef %25) #9
  %27 = load i32, ptr %3, align 4
  %28 = call i32 @crypto_grab_skcipher(ptr noundef %23, ptr noundef %12, ptr noundef %26, i32 noundef 0, i32 noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 32
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2
  %34 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %35 = getelementptr i8, ptr %21, i32 40
  %36 = getelementptr i8, ptr %32, i32 40
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %35, ptr noundef %36)
  %38 = icmp sgt i32 %37, 127
  br i1 %38, label %78, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %41 = getelementptr i8, ptr %21, i32 168
  %42 = getelementptr i8, ptr %32, i32 168
  %43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %41, ptr noundef %42)
  %44 = icmp sgt i32 %43, 127
  br i1 %44, label %78, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %32, i32 32
  %47 = load i32, ptr %46, align 32
  %48 = mul i32 %47, 10
  %49 = getelementptr i8, ptr %21, i32 32
  %50 = load i32, ptr %49, align 32
  %51 = add i32 %48, %50
  %52 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %51, ptr %52, align 32
  %53 = getelementptr i8, ptr %32, i32 20
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %21, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %32, i32 28
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %57
  %61 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 16, ptr %62, align 8
  %63 = getelementptr i8, ptr %32, i32 -36
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %64, ptr %65, align 8
  %66 = getelementptr i8, ptr %32, i32 -32
  %67 = load i32, ptr %66, align 32
  %68 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %67, ptr %68, align 32
  %69 = load i32, ptr %22, align 64
  %70 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_authenc_esn_init_tfm, ptr %71, align 16
  %72 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_authenc_esn_exit_tfm, ptr %72, align 4
  store ptr @crypto_authenc_esn_setkey, ptr %33, align 64
  %73 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_authenc_esn_setauthsize, ptr %73, align 4
  %74 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_authenc_esn_encrypt, ptr %74, align 8
  %75 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_authenc_esn_decrypt, ptr %75, align 4
  store ptr @crypto_authenc_esn_free, ptr %8, align 64
  %76 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %8) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %45, %39, %30, %19, %10
  %79 = phi i32 [ %17, %10 ], [ %28, %19 ], [ -36, %30 ], [ -36, %39 ], [ %76, %45 ]
  %80 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %80) #9
  call void @crypto_drop_spawn(ptr noundef %11) #9
  call void @kfree(ptr noundef nonnull %8) #9
  br label %81

81:                                               ; preds = %78, %45, %6, %2
  %82 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %79, %78 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %46

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %3, i32 476
  %12 = tail call ptr @crypto_spawn_tfm2(ptr noundef %11) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @crypto_get_default_null_skcipher() #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store ptr %12, ptr %19, align 4
  %20 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  store ptr %15, ptr %20, align 4
  %21 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -64
  %24 = load i32, ptr %23, align 64
  %25 = shl i32 %24, 1
  %26 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %25, %27
  %29 = xor i32 %27, -1
  %30 = and i32 %28, %29
  store i32 %30, ptr %5, align 4
  %31 = add i32 %30, 80
  %32 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 8
  %33 = load i32, ptr %32, align 32
  %34 = add i32 %33, 64
  %35 = load i32, ptr %12, align 64
  %36 = add i32 %35, 64
  %37 = tail call i32 @llvm.umax.i32(i32 %34, i32 %36)
  %38 = add i32 %31, %37
  %39 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  br label %46

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %12, ptr noundef %41) #9
  br label %42

42:                                               ; preds = %40, %10
  %43 = phi ptr [ %12, %10 ], [ %15, %40 ]
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %45) #9
  br label %46

46:                                               ; preds = %42, %17, %8
  %47 = phi i32 [ %9, %8 ], [ %44, %42 ], [ 0, %17 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %7) #9
  tail call void @crypto_put_default_null_skcipher() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.crypto_authenc_keys, align 4
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %9 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %13 = load i32, ptr %12, align 64
  %14 = and i32 %13, -1048321
  store i32 %14, ptr %12, align 64
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1048320
  %18 = or i32 %17, %14
  store i32 %18, ptr %12, align 64
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @crypto_ahash_setkey(ptr noundef %6, ptr noundef %19, i32 noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  %26 = load i32, ptr %25, align 64
  %27 = and i32 %26, -1048321
  store i32 %27, ptr %25, align 64
  %28 = load i32, ptr %15, align 64
  %29 = and i32 %28, 1048320
  %30 = or i32 %29, %27
  store i32 %30, ptr %25, align 64
  %31 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @crypto_skcipher_setkey(ptr noundef %8, ptr noundef %32, i32 noundef %34) #9
  br label %36

36:                                               ; preds = %24, %11, %3
  %37 = phi i32 [ -22, %3 ], [ %22, %11 ], [ %35, %24 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_authenc_esn_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 3
  %5 = select i1 %4, i32 -22, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_encrypt(ptr noundef %0) #2 {
  %2 = alloca [448 x i8], align 64
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %6 = getelementptr i8, ptr %4, i32 64
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %8 = load i32, ptr %6, align 4
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %4, i32 72
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @sg_init_table(ptr noundef %5, i32 noundef 2) #9
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @scatterwalk_ffwd(ptr noundef %5, ptr noundef %17, i32 noundef %13) #9
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %2, i8 0, i32 448, i1 false) #9, !annotation !8
  %25 = getelementptr i8, ptr %24, i32 76
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.crypto_skcipher, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 3
  store ptr %27, ptr %28, align 32
  %29 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 2
  store ptr %19, ptr %32, align 8
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 3
  store ptr %21, ptr %33, align 4
  store i32 %13, ptr %2, align 64
  %34 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  call void @sg_init_table(ptr noundef %37, i32 noundef 2) #9
  %38 = load ptr, ptr %20, align 8
  %39 = call ptr @scatterwalk_ffwd(ptr noundef %37, ptr noundef %38, i32 noundef %13) #9
  br label %40

40:                                               ; preds = %36, %1
  %41 = phi ptr [ %39, %36 ], [ %18, %1 ]
  %42 = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  %43 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 4, i32 3
  store ptr %42, ptr %43, align 16
  %44 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 4, i32 1
  store ptr @crypto_authenc_esn_encrypt_done, ptr %46, align 8
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 4, i32 2
  store ptr %0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 4, i32 4
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 32
  %51 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 2
  store ptr %18, ptr %51, align 8
  %52 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 3
  store ptr %41, ptr %52, align 4
  store i32 %15, ptr %9, align 64
  %53 = getelementptr inbounds %struct.skcipher_request, ptr %9, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  %54 = call i32 @crypto_skcipher_encrypt(ptr noundef %9) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, ptr %44, align 4
  %58 = call fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %0, i32 noundef %57)
  br label %59

59:                                               ; preds = %56, %40, %23
  %60 = phi i32 [ %58, %56 ], [ %34, %23 ], [ %54, %40 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_esn_decrypt(ptr noundef %0) #2 {
  %2 = alloca [448 x i8], align 64
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = getelementptr i8, ptr %5, i32 64
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = load i32, ptr %6, align 64
  %12 = getelementptr i8, ptr %5, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %8 to i32
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 10, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %14
  %20 = xor i32 %18, -1
  %21 = and i32 %19, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %16, i32 -64
  %28 = load i32, ptr %27, align 64
  %29 = getelementptr i8, ptr %22, i32 %28
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  %32 = sub i32 %26, %11
  %33 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  %36 = add i32 %32, %24
  br i1 %35, label %51, label %37

37:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %2, i8 0, i32 448, i1 false) #9, !annotation !8
  %38 = getelementptr i8, ptr %5, i32 76
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 3
  store ptr %40, ptr %41, align 32
  %42 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 2
  store ptr %34, ptr %45, align 8
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 3
  store ptr %31, ptr %46, align 4
  store i32 %36, ptr %2, align 64
  %47 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %37
  %50 = load ptr, ptr %33, align 4
  br label %51

51:                                               ; preds = %49, %1
  %52 = phi ptr [ %50, %49 ], [ %31, %1 ]
  call void @scatterwalk_map_and_copy(ptr noundef %29, ptr noundef %52, i32 noundef %36, i32 noundef %11, i32 noundef 0) #9
  %53 = icmp eq i32 %11, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 0, i32 noundef 8, i32 noundef 0) #9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 4, i32 noundef 4, i32 noundef 1) #9
  %55 = getelementptr inbounds i32, ptr %3, i32 1
  call void @scatterwalk_map_and_copy(ptr noundef %55, ptr noundef %31, i32 noundef %36, i32 noundef 4, i32 noundef 1) #9
  %56 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  call void @sg_init_table(ptr noundef %56, i32 noundef 2) #9
  %57 = call ptr @scatterwalk_ffwd(ptr noundef %56, ptr noundef %31, i32 noundef 4) #9
  %58 = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 10
  %59 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 3
  store ptr %58, ptr %59, align 16
  %60 = getelementptr inbounds %struct.ahash_request, ptr %10, i32 0, i32 2
  store ptr %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ahash_request, ptr %10, i32 0, i32 1
  store i32 %36, ptr %61, align 8
  %62 = getelementptr inbounds %struct.ahash_request, ptr %10, i32 0, i32 3
  store ptr %22, ptr %62, align 32
  %63 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 1
  store ptr @authenc_esn_verify_ahash_done, ptr %65, align 8
  %66 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 2
  store ptr %0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 4
  store i32 %64, ptr %67, align 4
  %68 = call i32 @crypto_ahash_digest(ptr noundef %10) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %54, %51
  %71 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = call fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %0, i32 noundef %72)
  br label %74

74:                                               ; preds = %70, %54, %37
  %75 = phi i32 [ %73, %70 ], [ %47, %37 ], [ %68, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %3) #9
  tail call void @crypto_drop_spawn(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_esn_encrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %4, i32 noundef 0)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %10 = icmp eq i32 %9, -115
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef %4, i32 noundef %9) #9
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_esn_genicv(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 -64
  %8 = getelementptr i8, ptr %6, i32 64
  %9 = getelementptr i8, ptr %6, i32 68
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %7, align 64
  %17 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %26 = getelementptr i8, ptr %25, i32 %15
  %27 = ptrtoint ptr %25 to i32
  %28 = add i32 %14, %27
  %29 = xor i32 %14, -1
  %30 = and i32 %28, %29
  %31 = inttoptr i32 %30 to ptr
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 0, i32 noundef 8, i32 noundef 0) #9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 4, i32 noundef 4, i32 noundef 1) #9
  %32 = getelementptr inbounds i32, ptr %4, i32 1
  %33 = add i32 %20, %18
  call void @scatterwalk_map_and_copy(ptr noundef %32, ptr noundef %22, i32 noundef %33, i32 noundef 4, i32 noundef 1) #9
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  call void @sg_init_table(ptr noundef %34, i32 noundef 2) #9
  %35 = call ptr @scatterwalk_ffwd(ptr noundef %34, ptr noundef %22, i32 noundef 4) #9
  %36 = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10
  %37 = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 3
  store ptr %36, ptr %37, align 16
  %38 = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 2
  store ptr %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 1
  store i32 %33, ptr %39, align 8
  %40 = getelementptr inbounds %struct.ahash_request, ptr %26, i32 0, i32 3
  store ptr %31, ptr %40, align 32
  %41 = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 1
  store ptr @authenc_esn_geniv_ahash_done, ptr %41, align 8
  %42 = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 2
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 4
  store i32 %1, ptr %43, align 4
  %44 = call i32 @crypto_ahash_digest(ptr noundef %26) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %24
  %47 = load ptr, ptr %5, align 16
  %48 = getelementptr i8, ptr %47, i32 -64
  %49 = getelementptr i8, ptr %47, i32 68
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.crypto_ahash, ptr %50, i32 0, i32 10, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.crypto_alg, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %27
  %56 = xor i32 %54, -1
  %57 = and i32 %55, %56
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %48, align 64
  %60 = load i32, ptr %17, align 8
  %61 = load i32, ptr %19, align 4
  %62 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %62, i32 noundef 4, i32 noundef 4, i32 noundef 0) #9
  %63 = getelementptr inbounds i32, ptr %3, i32 1
  %64 = add i32 %61, %60
  call void @scatterwalk_map_and_copy(ptr noundef %63, ptr noundef %62, i32 noundef %64, i32 noundef 4, i32 noundef 0) #9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %62, i32 noundef 0, i32 noundef 8, i32 noundef 1) #9
  call void @scatterwalk_map_and_copy(ptr noundef %58, ptr noundef %62, i32 noundef %64, i32 noundef %59, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %65

65:                                               ; preds = %46, %24, %2
  %66 = phi i32 [ 0, %2 ], [ 0, %46 ], [ %44, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @authenc_esn_geniv_ahash_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = getelementptr i8, ptr %9, i32 68
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %5, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 10, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %14
  %20 = xor i32 %18, -1
  %21 = and i32 %19, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %10, align 64
  %24 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 4, i32 noundef 4, i32 noundef 0) #9
  %30 = getelementptr inbounds i32, ptr %3, i32 1
  %31 = add i32 %27, %25
  call void @scatterwalk_map_and_copy(ptr noundef %30, ptr noundef %29, i32 noundef %31, i32 noundef 4, i32 noundef 0) #9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 0, i32 noundef 8, i32 noundef 1) #9
  call void @scatterwalk_map_and_copy(ptr noundef %22, ptr noundef %29, i32 noundef %31, i32 noundef %23, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %32

32:                                               ; preds = %7, %2
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef %5, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @authenc_esn_verify_ahash_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %4, i32 noundef 0)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %1, %2 ]
  %10 = icmp eq i32 %9, -115
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef %4, i32 noundef %9) #9
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_esn_decrypt_tail(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = load i32, ptr %6, align 64
  %8 = getelementptr i8, ptr %5, i32 64
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %10 = load i32, ptr %8, align 4
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = getelementptr i8, ptr %5, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_ahash, ptr %13, i32 0, i32 10, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %19, %7
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %15, i32 -64
  %26 = load i32, ptr %25, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = ptrtoint ptr %9 to i32
  %30 = add i32 %17, %29
  %31 = xor i32 %17, -1
  %32 = and i32 %30, %31
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr i8, ptr %33, i32 %26
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 4, i32 noundef 4, i32 noundef 0) #9
  %35 = getelementptr inbounds i32, ptr %3, i32 1
  %36 = add i32 %22, %20
  call void @scatterwalk_map_and_copy(ptr noundef %35, ptr noundef %24, i32 noundef %36, i32 noundef 4, i32 noundef 0) #9
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 0, i32 noundef 8, i32 noundef 1) #9
  %37 = call i32 @__crypto_memneq(ptr noundef %34, ptr noundef %33, i32 noundef %7) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %28, %2
  %40 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  call void @sg_init_table(ptr noundef %40, i32 noundef 2) #9
  %41 = call ptr @scatterwalk_ffwd(ptr noundef %40, ptr noundef %24, i32 noundef %22) #9
  %42 = getelementptr i8, ptr %5, i32 72
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.crypto_skcipher, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 4, i32 3
  store ptr %44, ptr %45, align 16
  %46 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 4, i32 1
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 4, i32 2
  store ptr %49, ptr %51, align 4
  %52 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 4, i32 4
  store i32 %1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 32
  %55 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 2
  store ptr %41, ptr %55, align 8
  %56 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 3
  store ptr %41, ptr %56, align 4
  store i32 %20, ptr %11, align 64
  %57 = getelementptr inbounds %struct.skcipher_request, ptr %11, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  %58 = call i32 @crypto_skcipher_decrypt(ptr noundef %11) #9
  br label %59

59:                                               ; preds = %39, %28
  %60 = phi i32 [ %58, %39 ], [ -74, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2148946287}
