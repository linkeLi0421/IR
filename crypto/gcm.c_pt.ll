; ModuleID = '/llk/IR/crypto/gcm.c_pt.bc'
source_filename = "../crypto/gcm.c"
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
%struct.lock_class_key = type {}
%struct.anon = type { [16 x i8], %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.69, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.68, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.68 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.69 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.anon.71 = type { %struct.be128, [16 x i8], %struct.crypto_wait, [1 x %struct.scatterlist], [56 x i8], %struct.skcipher_request }
%struct.be128 = type { i64, i64 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_gcm_req_priv_ctx = type { [16 x i8], [16 x i8], [16 x i8], [3 x %struct.scatterlist], [3 x %struct.scatterlist], %struct.scatterlist, %struct.crypto_gcm_ghash_ctx, [56 x i8], %union.anon.72 }
%struct.crypto_gcm_ghash_ctx = type { i32, ptr, ptr }
%union.anon.72 = type { %struct.ahash_request }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.59, %struct.atomic_t }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }

@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [32 x i8] c"description=Galois/Counter Mode\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [35 x i8] c"author=Mikko Herranen <mh1@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace238 = internal constant [15 x i8] c"alias=gcm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto239 = internal constant [22 x i8] c"alias=crypto-gcm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace240 = internal constant [14 x i8] c"alias=rfc4106\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto241 = internal constant [21 x i8] c"alias=crypto-rfc4106\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace242 = internal constant [14 x i8] c"alias=rfc4543\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto243 = internal constant [21 x i8] c"alias=crypto-rfc4543\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [10 x i8] c"alias=gcm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [17 x i8] c"alias=crypto-gcm\00", section ".modinfo", align 1
@gcm_zeroes = internal unnamed_addr global ptr null, align 4
@crypto_gcm_tmpls = internal global [4 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_gcm_base_create, [128 x i8] c"gcm_base\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_gcm_create, [128 x i8] c"gcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_rfc4106_create, [128 x i8] c"rfc4106\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_rfc4543_create, [128 x i8] c"rfc4543\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [6 x i8] c"ghash\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctr(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gcm(%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gcm_base(%s,%s)\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ctr(%s)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rfc4106(%s)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rfc4543(%s)\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto239, ptr @__UNIQUE_ID_alias_crypto241, ptr @__UNIQUE_ID_alias_crypto243, ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_userspace238, ptr @__UNIQUE_ID_alias_userspace240, ptr @__UNIQUE_ID_alias_userspace242, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license235], section "llvm.metadata"
@switch.table.crypto_gcm_setauthsize = private unnamed_addr constant [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 36) #12
  store ptr %2, ptr @gcm_zeroes, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  tail call void @sg_init_one(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 16) #13
  %6 = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_gcm_tmpls, i32 noundef 4) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @gcm_zeroes, align 4
  tail call void @kfree(ptr noundef %9) #13
  br label %10

10:                                               ; preds = %8, %4, %0
  %11 = phi i32 [ -12, %0 ], [ %6, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = load ptr, ptr @gcm_zeroes, align 4
  tail call void @kfree(ptr noundef %1) #13
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_gcm_tmpls, i32 noundef 4) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_base_create(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr ptr, ptr %1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @crypto_attr_alg_name(ptr noundef %4) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  br label %18

9:                                                ; preds = %2
  %10 = getelementptr ptr, ptr %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @crypto_attr_alg_name(ptr noundef %11) #13
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %18

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @crypto_gcm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %12)
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = phi i32 [ %8, %7 ], [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_create(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %4 = getelementptr ptr, ptr %1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @crypto_attr_alg_name(ptr noundef %5) #13
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i32
  br label %15

10:                                               ; preds = %2
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %6)
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call fastcc i32 @crypto_gcm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull @.str)
  br label %15

15:                                               ; preds = %13, %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %13 ], [ -36, %10 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_create(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 604) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #13
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_aead(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -40
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2
  %31 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %32 = getelementptr i8, ptr %21, i32 40
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %32)
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %63, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %37 = getelementptr i8, ptr %21, i32 168
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %37)
  %39 = icmp sgt i32 %38, 127
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %21, i32 32
  %42 = load i32, ptr %41, align 32
  %43 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %42, ptr %43, align 32
  %44 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr i8, ptr %21, i32 28
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %48, align 8
  %49 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 8, ptr %49, align 8
  %50 = getelementptr i8, ptr %21, i32 -32
  %51 = load i32, ptr %50, align 32
  %52 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %51, ptr %52, align 32
  %53 = getelementptr i8, ptr %21, i32 -36
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_rfc4106_init_tfm, ptr %56, align 16
  %57 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_rfc4106_exit_tfm, ptr %57, align 4
  store ptr @crypto_rfc4106_setkey, ptr %30, align 64
  %58 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_rfc4106_setauthsize, ptr %58, align 4
  %59 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_rfc4106_encrypt, ptr %59, align 8
  %60 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_rfc4106_decrypt, ptr %60, align 4
  store ptr @crypto_rfc4106_free, ptr %8, align 64
  %61 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %8) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %40, %35, %29, %25, %19, %10
  %64 = phi i32 [ %17, %10 ], [ -22, %19 ], [ -22, %25 ], [ -36, %29 ], [ -36, %35 ], [ %61, %40 ]
  call void @crypto_drop_spawn(ptr noundef %11) #13
  call void @kfree(ptr noundef nonnull %8) #13
  br label %65

65:                                               ; preds = %63, %40, %6, %2
  %66 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %64, %63 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_create(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 604) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #13
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_aead(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -40
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2
  %31 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %32 = getelementptr i8, ptr %21, i32 40
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %32)
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %63, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %37 = getelementptr i8, ptr %21, i32 168
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %37)
  %39 = icmp sgt i32 %38, 127
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %21, i32 32
  %42 = load i32, ptr %41, align 32
  %43 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %42, ptr %43, align 32
  %44 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr i8, ptr %21, i32 28
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 12, ptr %48, align 8
  %49 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 8, ptr %49, align 8
  %50 = getelementptr i8, ptr %21, i32 -32
  %51 = load i32, ptr %50, align 32
  %52 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %51, ptr %52, align 32
  %53 = getelementptr i8, ptr %21, i32 -36
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_rfc4543_init_tfm, ptr %56, align 16
  %57 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_rfc4543_exit_tfm, ptr %57, align 4
  store ptr @crypto_rfc4543_setkey, ptr %30, align 64
  %58 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_rfc4543_setauthsize, ptr %58, align 4
  %59 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_rfc4543_encrypt, ptr %59, align 8
  %60 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_rfc4543_decrypt, ptr %60, align 4
  store ptr @crypto_rfc4543_free, ptr %8, align 64
  %61 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %8) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %40, %35, %29, %25, %19, %10
  %64 = phi i32 [ %17, %10 ], [ -22, %19 ], [ -22, %25 ], [ -36, %29 ], [ -36, %35 ], [ %61, %40 ]
  call void @crypto_drop_spawn(ptr noundef %11) #13
  call void @kfree(ptr noundef nonnull %8) #13
  br label %65

65:                                               ; preds = %63, %40, %6, %2
  %66 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %64, %63 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_gcm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %89

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 632) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %89, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1
  %14 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 24
  %15 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1
  %16 = load i32, ptr %5, align 4
  %17 = call i32 @crypto_grab_ahash(ptr noundef %14, ptr noundef %15, ptr noundef %3, i32 noundef 0, i32 noundef %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 32
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 40
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(6) @.str)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 -64
  %27 = load i32, ptr %26, align 64
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %87

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4
  %31 = call i32 @crypto_grab_skcipher(ptr noundef %13, ptr noundef %15, ptr noundef %2, i32 noundef 0, i32 noundef %30) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 40
  %37 = call i32 @strncmp(ptr noundef %36, ptr noundef nonnull dereferenceable(5) @.str.1, i32 noundef 4)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %35, i32 -36
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %35, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2
  %49 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %50 = getelementptr i8, ptr %35, i32 44
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %50)
  %52 = icmp sgt i32 %51, 127
  br i1 %52, label %87, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %55 = getelementptr i8, ptr %35, i32 168
  %56 = getelementptr i8, ptr %21, i32 168
  %57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %54, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %55, ptr noundef %56)
  %58 = icmp sgt i32 %57, 127
  br i1 %58, label %87, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %21, i32 32
  %61 = load i32, ptr %60, align 32
  %62 = getelementptr i8, ptr %35, i32 32
  %63 = load i32, ptr %62, align 32
  %64 = add i32 %63, %61
  %65 = sdiv i32 %64, 2
  %66 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %65, ptr %66, align 32
  %67 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %67, align 4
  %68 = getelementptr i8, ptr %21, i32 28
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %35, i32 28
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, %69
  %73 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %74, align 8
  %75 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 12, ptr %75, align 8
  %76 = getelementptr i8, ptr %35, i32 -32
  %77 = load i32, ptr %76, align 32
  %78 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %77, ptr %78, align 32
  %79 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 16, ptr %79, align 4
  %80 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_gcm_init_tfm, ptr %80, align 16
  %81 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_gcm_exit_tfm, ptr %81, align 4
  store ptr @crypto_gcm_setkey, ptr %48, align 64
  %82 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_gcm_setauthsize, ptr %82, align 4
  %83 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_gcm_encrypt, ptr %83, align 8
  %84 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_gcm_decrypt, ptr %84, align 4
  store ptr @crypto_gcm_free, ptr %10, align 64
  %85 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %10) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %59, %53, %47, %43, %39, %33, %29, %25, %19, %12
  %88 = phi i32 [ %17, %12 ], [ -22, %19 ], [ -22, %25 ], [ %31, %29 ], [ -22, %33 ], [ -22, %39 ], [ -22, %43 ], [ -36, %47 ], [ -36, %53 ], [ %85, %59 ]
  call void @crypto_drop_spawn(ptr noundef %13) #13
  call void @crypto_drop_spawn(ptr noundef %14) #13
  call void @kfree(ptr noundef nonnull %10) #13
  br label %89

89:                                               ; preds = %87, %59, %8, %4
  %90 = phi i32 [ %6, %4 ], [ -12, %8 ], [ %88, %87 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_init_tfm(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr i8, ptr %3, i32 476
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %5) #13
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %32

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %3, i32 448
  %12 = tail call ptr @crypto_spawn_tfm2(ptr noundef %11) #13
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  store ptr %12, ptr %4, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %6, ptr %15, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 256
  %20 = and i32 %19, -64
  %21 = load i32, ptr %12, align 64
  %22 = add i32 %21, 64
  %23 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 8
  %24 = load i32, ptr %23, align 32
  %25 = add i32 %24, 64
  %26 = tail call i32 @llvm.umax.i32(i32 %22, i32 %25)
  %27 = add i32 %26, %20
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  br label %32

29:                                               ; preds = %10
  %30 = ptrtoint ptr %12 to i32
  %31 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %31) #13
  br label %32

32:                                               ; preds = %29, %14, %8
  %33 = phi i32 [ %9, %8 ], [ %30, %29 ], [ 0, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_gcm_exit_tfm(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %5) #13
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, -1048321
  store i32 %10, ptr %8, align 64
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 64
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %10
  store i32 %14, ptr %8, align 64
  %15 = tail call i32 @crypto_skcipher_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %2) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load i32, ptr %7, align 64
  %19 = add i32 %18, 192
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 2
  store i32 0, ptr %23, align 32
  %24 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #13
  %25 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 3
  tail call void @sg_init_one(ptr noundef %25, ptr noundef nonnull %20, i32 noundef 16) #13
  %26 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5
  %27 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 4, i32 3
  store ptr %8, ptr %27, align 32
  %28 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 4, i32 1
  store ptr @crypto_req_done, ptr %28, align 8
  %29 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 4, i32 2
  store ptr %23, ptr %29, align 4
  %30 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 4, i32 4
  store i32 1536, ptr %30, align 4
  %31 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 1
  %32 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 2
  store ptr %25, ptr %32, align 8
  %33 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 3
  store ptr %25, ptr %33, align 4
  store i32 16, ptr %26, align 64
  %34 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 5, i32 1
  store ptr %31, ptr %34, align 4
  %35 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %26) #13
  switch i32 %35, label %39 [
    i32 -115, label %36
    i32 -16, label %36
  ]

36:                                               ; preds = %22, %22
  tail call void @wait_for_completion(ptr noundef %23) #13
  store i32 0, ptr %23, align 32
  %37 = getelementptr inbounds %struct.anon.71, ptr %20, i32 0, i32 2, i32 1
  %38 = load i32, ptr %37, align 16
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi i32 [ %35, %22 ], [ %38, %36 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %44 = load i32, ptr %43, align 64
  %45 = and i32 %44, -1048321
  store i32 %45, ptr %43, align 64
  %46 = load i32, ptr %11, align 64
  %47 = and i32 %46, 1048320
  %48 = or i32 %47, %45
  store i32 %48, ptr %43, align 64
  %49 = tail call i32 @crypto_ahash_setkey(ptr noundef %6, ptr noundef nonnull %20, i32 noundef 16) #13
  br label %50

50:                                               ; preds = %42, %39
  %51 = phi i32 [ %40, %39 ], [ %49, %42 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %20) #13
  br label %52

52:                                               ; preds = %50, %17, %3
  %53 = phi i32 [ %51, %50 ], [ %15, %3 ], [ -12, %17 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_gcm_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = add i32 %1, -4
  %4 = icmp ult i32 %3, 13
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i32], ptr @switch.table.crypto_gcm_setauthsize, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ -22, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_encrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %7, %9
  %11 = xor i32 %7, -1
  %12 = and i32 %10, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  tail call fastcc void @crypto_gcm_init_common(ptr noundef %0)
  %17 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %2, align 16
  %20 = getelementptr i8, ptr %19, i32 64
  %21 = getelementptr i8, ptr %19, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %9
  %26 = xor i32 %24, -1
  %27 = and i32 %25, %26
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, %33
  %35 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 3
  %36 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 4
  %37 = select i1 %34, ptr %35, ptr %36
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.crypto_skcipher, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 8, i32 0, i32 3
  store ptr %39, ptr %40, align 16
  %41 = add i32 %18, 16
  %42 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %35, ptr %42, align 8
  %43 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %37, ptr %43, align 4
  store i32 %41, ptr %29, align 64
  %44 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  store ptr %28, ptr %44, align 4
  %45 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 8, i32 0, i32 1
  store ptr @gcm_encrypt_done, ptr %45, align 8
  %46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 8, i32 0, i32 2
  store ptr %0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 8, i32 0, i32 4
  store i32 %16, ptr %47, align 4
  %48 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %14) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %1
  %51 = load ptr, ptr %2, align 16
  %52 = getelementptr i8, ptr %51, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.crypto_alg, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %9
  %57 = xor i32 %55, -1
  %58 = and i32 %56, %57
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %30, align 4
  %62 = load ptr, ptr %32, align 8
  %63 = icmp eq ptr %61, %62
  %64 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %59, i32 0, i32 3
  %65 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %59, i32 0, i32 4
  %66 = select i1 %63, ptr %64, ptr %65
  %67 = tail call ptr @sg_next(ptr noundef %66) #13
  %68 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %59, i32 0, i32 6, i32 1
  store ptr %67, ptr %68, align 4
  %69 = load i32, ptr %17, align 4
  store i32 %69, ptr %60, align 4
  %70 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %59, i32 0, i32 6, i32 2
  store ptr @gcm_enc_copy_hash, ptr %70, align 4
  %71 = load ptr, ptr %2, align 16
  %72 = getelementptr i8, ptr %71, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.crypto_alg, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %9
  %77 = xor i32 %75, -1
  %78 = and i32 %76, %77
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr i8, ptr %71, i32 68
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.crypto_ahash, ptr %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %79, i32 0, i32 8, i32 0, i32 0, i32 3
  store ptr %82, ptr %83, align 16
  %84 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %79, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_init_done, ptr %84, align 8
  %85 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %79, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %79, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %16, ptr %86, align 4
  %87 = load i32, ptr %82, align 64
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %50
  %91 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %79, i32 0, i32 8
  %92 = load ptr, ptr %81, align 64
  %93 = tail call i32 %92(ptr noundef %91) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %0, i32 noundef %16) #13
  br label %97

97:                                               ; preds = %95, %90, %50, %1
  %98 = phi i32 [ %48, %1 ], [ %96, %95 ], [ %93, %90 ], [ -126, %50 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_gcm_decrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = getelementptr i8, ptr %3, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = xor i32 %8, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %4, align 64
  %17 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %16
  tail call fastcc void @crypto_gcm_init_common(ptr noundef %0)
  %22 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 3
  %23 = tail call ptr @sg_next(ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6, i32 1
  store ptr %23, ptr %24, align 4
  store i32 %21, ptr %15, align 4
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6, i32 2
  store ptr @gcm_dec_hash_continue, ptr %25, align 4
  %26 = load ptr, ptr %2, align 16
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %10
  %32 = xor i32 %30, -1
  %33 = and i32 %31, %32
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr i8, ptr %26, i32 68
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.crypto_ahash, ptr %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %34, i32 0, i32 8, i32 0, i32 0, i32 3
  store ptr %37, ptr %38, align 16
  %39 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %34, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_init_done, ptr %39, align 8
  %40 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %34, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %34, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %20, ptr %41, align 4
  %42 = load i32, ptr %37, align 64
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %34, i32 0, i32 8
  %47 = load ptr, ptr %36, align 64
  %48 = tail call i32 %47(ptr noundef %46) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %0, i32 noundef %20) #13
  br label %52

52:                                               ; preds = %50, %45, %1
  %53 = phi i32 [ %51, %50 ], [ %48, %45 ], [ -126, %1 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_gcm_free(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crypto_gcm_init_common(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %7, %9
  %11 = xor i32 %7, -1
  %12 = and i32 %10, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 16 dereferenceable(16) %14, i8 0, i32 16, i1 false)
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(12) %13, ptr noundef align 1 dereferenceable(12) %16, i32 12, i1 false)
  %17 = getelementptr i8, ptr %13, i32 12
  store i32 16777216, ptr %17, align 1
  %18 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3
  tail call void @sg_init_table(ptr noundef %18, i32 noundef 3) #13
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %21 = add i32 %20, 1073741824
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

28:                                               ; preds = %1
  %29 = and i32 %20, 4095
  %30 = load i32, ptr %18, align 4
  %31 = and i32 %30, 3
  %32 = or i32 %31, %24
  store i32 %32, ptr %18, align 4
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3, i32 0, i32 1
  store i32 %29, ptr %33, align 4
  %34 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3, i32 0, i32 2
  store i32 16, ptr %34, align 4
  %35 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3, i32 1
  %36 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = tail call ptr @scatterwalk_ffwd(ptr noundef %35, ptr noundef %37, i32 noundef %39) #13
  %41 = icmp eq ptr %40, %35
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3, i32 1, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 3, i32 1, i32 2
  store i32 0, ptr %44, align 4
  %45 = ptrtoint ptr %40 to i32
  %46 = and i32 %45, -4
  %47 = or i32 %46, 1
  store i32 %47, ptr %35, align 4
  br label %48

48:                                               ; preds = %42, %28
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4
  tail call void @sg_init_table(ptr noundef %54, i32 noundef 3) #13
  %55 = load ptr, ptr @mem_map, align 4
  %56 = getelementptr %struct.page, ptr %55, i32 %22
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

61:                                               ; preds = %53
  %62 = load i32, ptr %54, align 4
  %63 = and i32 %62, 3
  %64 = or i32 %63, %57
  store i32 %64, ptr %54, align 4
  %65 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4, i32 0, i32 1
  store i32 %29, ptr %65, align 4
  %66 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4, i32 0, i32 2
  store i32 16, ptr %66, align 4
  %67 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4, i32 1
  %68 = load ptr, ptr %50, align 8
  %69 = load i32, ptr %38, align 8
  %70 = tail call ptr @scatterwalk_ffwd(ptr noundef %67, ptr noundef %68, i32 noundef %69) #13
  %71 = icmp eq ptr %70, %67
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4, i32 1, i32 1
  store i32 0, ptr %73, align 4
  %74 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %13, i32 0, i32 4, i32 1, i32 2
  store i32 0, ptr %74, align 4
  %75 = ptrtoint ptr %70 to i32
  %76 = and i32 %75, -4
  %77 = or i32 %76, 1
  store i32 %77, ptr %67, align 4
  br label %78

78:                                               ; preds = %72, %61, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_encrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %12, %14
  %16 = xor i32 %12, -1
  %17 = and i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %21, %23
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 3
  %26 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 4
  %27 = select i1 %24, ptr %25, ptr %26
  %28 = tail call ptr @sg_next(ptr noundef %27) #13
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 6, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %19, align 4
  %32 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 6, i32 2
  store ptr @gcm_enc_copy_hash, ptr %32, align 4
  %33 = load ptr, ptr %7, align 16
  %34 = getelementptr i8, ptr %33, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.crypto_alg, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %14
  %39 = xor i32 %37, -1
  %40 = and i32 %38, %39
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr i8, ptr %33, i32 68
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.crypto_ahash, ptr %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %41, i32 0, i32 8, i32 0, i32 0, i32 3
  store ptr %44, ptr %45, align 16
  %46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %41, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_init_done, ptr %46, align 8
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %41, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %41, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 0, ptr %48, align 4
  %49 = load i32, ptr %44, align 64
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %6
  %53 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %41, i32 0, i32 8
  %54 = load ptr, ptr %43, align 64
  %55 = tail call i32 %54(ptr noundef %53) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %4, i32 noundef 0) #13
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i32 [ %58, %57 ], [ %55, %52 ]
  %61 = icmp eq i32 %60, -115
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %6, %2
  %63 = phi i32 [ %1, %2 ], [ %60, %59 ], [ -126, %6 ]
  %64 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef %4, i32 noundef %63) #13
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_enc_copy_hash(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = xor i32 %8, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr i8, ptr %4, i32 -64
  %16 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 1
  %17 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2
  %18 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2, i32 4
  %19 = load i32, ptr %17, align 4
  %20 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 1, i32 4
  %21 = load i32, ptr %16, align 4
  %22 = xor i32 %21, %19
  store i32 %22, ptr %16, align 4
  %23 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2, i32 8
  %24 = load i32, ptr %18, align 4
  %25 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 1, i32 8
  %26 = load i32, ptr %20, align 4
  %27 = xor i32 %26, %24
  store i32 %27, ptr %20, align 4
  %28 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2, i32 12
  %29 = load i32, ptr %23, align 4
  %30 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 1, i32 12
  %31 = load i32, ptr %25, align 4
  %32 = xor i32 %31, %29
  store i32 %32, ptr %25, align 4
  %33 = load i32, ptr %28, align 4
  %34 = load i32, ptr %30, align 4
  %35 = xor i32 %34, %33
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = load i32, ptr %15, align 64
  tail call void @scatterwalk_map_and_copy(ptr noundef %16, ptr noundef %37, i32 noundef %42, i32 noundef %43, i32 noundef 1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_init_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gcm_hash_init_continue(ptr noundef %4, i32 noundef 0)
  %8 = icmp eq i32 %7, -115
  br i1 %8, label %13, label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef %4, i32 noundef %10) #13
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_init_continue(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %14, %16
  %18 = xor i32 %14, -1
  %19 = and i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_assoc_done, ptr %22, align 8
  %23 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 2
  store ptr %8, ptr %25, align 4
  %26 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 1
  store i32 %4, ptr %26, align 8
  %27 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 3
  store ptr null, ptr %27, align 32
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %20, i32 0, i32 8, i32 0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 -60
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %21) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %6
  %35 = load i32, ptr %3, align 8
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = sub nuw nsw i32 16, %36
  %40 = load ptr, ptr @gcm_zeroes, align 4
  %41 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %9, align 16
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %16
  %48 = xor i32 %46, -1
  %49 = and i32 %47, %48
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_assoc_remain_done, ptr %52, align 8
  %53 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 2
  store ptr %41, ptr %55, align 4
  %56 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 1
  store i32 %39, ptr %56, align 8
  %57 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 3
  store ptr null, ptr %57, align 32
  %58 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 8, i32 0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 16
  %60 = getelementptr i8, ptr %59, i32 -60
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %51) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %38, %34
  %65 = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %0, i32 noundef %1) #13
  br label %68

66:                                               ; preds = %2
  %67 = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %0, i32 noundef %1)
  br label %68

68:                                               ; preds = %66, %64, %38, %6
  %69 = phi i32 [ %67, %66 ], [ %32, %6 ], [ %62, %38 ], [ %65, %64 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_assoc_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %6
  %12 = sub nuw nsw i32 16, %9
  %13 = load ptr, ptr @gcm_zeroes, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.crypto_alg, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  %23 = add i32 %20, %22
  %24 = xor i32 %20, -1
  %25 = and i32 %23, %24
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_assoc_remain_done, ptr %28, align 8
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 2
  store ptr %14, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 1
  store i32 %12, ptr %32, align 8
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 3
  store ptr null, ptr %33, align 32
  %34 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %26, i32 0, i32 8, i32 0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr i8, ptr %35, i32 -60
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %27) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %11, %6
  %41 = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %4, i32 noundef 0) #13
  br label %42

42:                                               ; preds = %40, %11
  %43 = phi i32 [ %38, %11 ], [ %41, %40 ]
  %44 = icmp eq i32 %43, -115
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %2
  %46 = phi i32 [ %1, %2 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef %4, i32 noundef %46) #13
  br label %49

49:                                               ; preds = %45, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = xor i32 %8, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8
  %22 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_crypt_done, ptr %22, align 8
  %23 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 2
  store ptr %20, ptr %25, align 4
  %26 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i32 %16, ptr %26, align 8
  %27 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 3
  store ptr null, ptr %27, align 32
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 -60
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %21) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %18
  %35 = tail call fastcc i32 @gcm_hash_crypt_continue(ptr noundef %0, i32 noundef %1)
  br label %67

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8
  %38 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = shl i32 %39, 3
  %41 = zext i32 %40 to i64
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #13
  %43 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2
  store i64 %42, ptr %43, align 32
  %44 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2, i32 8
  store i64 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %45, ptr noundef %43, i32 noundef 16) #13
  %46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_len_done, ptr %46, align 8
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 2
  store ptr %45, ptr %49, align 4
  %50 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i32 16, ptr %50, align 8
  %51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 3
  store ptr %43, ptr %51, align 32
  %52 = tail call i32 @crypto_ahash_finup(ptr noundef %37) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %36
  %55 = load ptr, ptr %3, align 16
  %56 = getelementptr i8, ptr %55, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.crypto_alg, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %10
  %61 = xor i32 %59, -1
  %62 = and i32 %60, %61
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %63, i32 0, i32 6, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %0, i32 noundef %1) #13
  br label %67

67:                                               ; preds = %54, %36, %34, %18
  %68 = phi i32 [ %35, %34 ], [ %32, %18 ], [ %66, %54 ], [ %52, %36 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_assoc_remain_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gcm_hash_assoc_remain_continue(ptr noundef %4, i32 noundef 0)
  %8 = icmp eq i32 %7, -115
  br i1 %8, label %13, label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef %4, i32 noundef %10) #13
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_crypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gcm_hash_crypt_continue(ptr noundef %4, i32 noundef 0)
  %8 = icmp eq i32 %7, -115
  br i1 %8, label %13, label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %1, %2 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef %4, i32 noundef %10) #13
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gcm_hash_crypt_continue(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = xor i32 %8, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %2
  %20 = sub nuw nsw i32 16, %17
  %21 = load ptr, ptr @gcm_zeroes, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_crypt_remain_done, ptr %24, align 8
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 2
  store ptr %22, ptr %27, align 4
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i32 %20, ptr %28, align 8
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 3
  store ptr null, ptr %29, align 32
  %30 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 -60
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %23) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %19
  %37 = load ptr, ptr %3, align 16
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.crypto_alg, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %10
  %43 = xor i32 %41, -1
  %44 = and i32 %42, %43
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 6
  %48 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 8
  %50 = shl i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #13
  %53 = load i32, ptr %47, align 4
  %54 = shl i32 %53, 3
  %55 = zext i32 %54 to i64
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #13
  %57 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 2
  store i64 %52, ptr %57, align 32
  %58 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 2, i32 8
  store i64 %56, ptr %58, align 8
  %59 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %59, ptr noundef %57, i32 noundef 16) #13
  %60 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_len_done, ptr %60, align 8
  %61 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 2
  store ptr %59, ptr %63, align 4
  %64 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 1
  store i32 16, ptr %64, align 8
  %65 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %45, i32 0, i32 8, i32 0, i32 3
  store ptr %57, ptr %65, align 32
  %66 = tail call i32 @crypto_ahash_finup(ptr noundef %46) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %102

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8
  %70 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 8
  %72 = shl i32 %71, 3
  %73 = zext i32 %72 to i64
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #13
  %75 = shl i32 %16, 3
  %76 = zext i32 %75 to i64
  %77 = tail call i64 @llvm.bswap.i64(i64 %76) #13
  %78 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2
  store i64 %74, ptr %78, align 32
  %79 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 2, i32 8
  store i64 %77, ptr %79, align 8
  %80 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %80, ptr noundef %78, i32 noundef 16) #13
  %81 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_len_done, ptr %81, align 8
  %82 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 %1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 2
  store ptr %80, ptr %84, align 4
  %85 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 1
  store i32 16, ptr %85, align 8
  %86 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 3
  store ptr %78, ptr %86, align 32
  %87 = tail call i32 @crypto_ahash_finup(ptr noundef %69) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %68, %36
  %90 = load ptr, ptr %3, align 16
  %91 = getelementptr i8, ptr %90, i32 12
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.crypto_alg, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %10
  %96 = xor i32 %94, -1
  %97 = and i32 %95, %96
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %98, i32 0, i32 6, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 %100(ptr noundef %0, i32 noundef %1) #13
  br label %102

102:                                              ; preds = %89, %68, %36, %19
  %103 = phi i32 [ %34, %19 ], [ %66, %36 ], [ %87, %68 ], [ %101, %89 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_crypt_remain_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %12, %14
  %16 = xor i32 %12, -1
  %17 = and i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 6
  %21 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 3
  %24 = zext i32 %23 to i64
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #13
  %26 = load i32, ptr %20, align 4
  %27 = shl i32 %26, 3
  %28 = zext i32 %27 to i64
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #13
  %30 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2
  store i64 %25, ptr %30, align 32
  %31 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2, i32 8
  store i64 %29, ptr %31, align 8
  %32 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %32, ptr noundef %30, i32 noundef 16) #13
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr @gcm_hash_len_done, ptr %33, align 8
  %34 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 4
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 2
  store ptr %32, ptr %36, align 4
  %37 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 1
  store i32 16, ptr %37, align 8
  %38 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 8, i32 0, i32 3
  store ptr %30, ptr %38, align 32
  %39 = tail call i32 @crypto_ahash_finup(ptr noundef %19) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %6
  %42 = load ptr, ptr %7, align 16
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %14
  %48 = xor i32 %46, -1
  %49 = and i32 %47, %48
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %50, i32 0, i32 6, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %4, i32 noundef 0) #13
  br label %54

54:                                               ; preds = %41, %6
  %55 = phi i32 [ %53, %41 ], [ %39, %6 ]
  %56 = icmp eq i32 %55, -115
  br i1 %56, label %61, label %57

57:                                               ; preds = %54, %2
  %58 = phi i32 [ %1, %2 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef %4, i32 noundef %58) #13
  br label %61

61:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_hash_len_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %12, %14
  %16 = xor i32 %12, -1
  %17 = and i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 6, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %4, i32 noundef 0) #13
  %22 = icmp eq i32 %21, -115
  br i1 %22, label %27, label %23

23:                                               ; preds = %6, %2
  %24 = phi i32 [ %1, %2 ], [ %21, %6 ]
  %25 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef %4, i32 noundef %24) #13
  br label %27

27:                                               ; preds = %23, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_dec_hash_continue(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = xor i32 %8, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %4, i32 64
  %19 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %20, %22
  %24 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 3
  %25 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 4
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 3
  store ptr %28, ptr %29, align 16
  %30 = add i32 %17, 16
  %31 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %24, ptr %31, align 8
  %32 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 2
  store ptr %26, ptr %32, align 4
  store i32 %30, ptr %15, align 64
  %33 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  store ptr %14, ptr %33, align 4
  %34 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 1
  store ptr @gcm_decrypt_done, ptr %34, align 8
  %35 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 2
  store ptr %0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %14, i32 0, i32 8, i32 0, i32 4
  store i32 %1, ptr %36, align 4
  %37 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %15) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %2
  %40 = load ptr, ptr %3, align 16
  %41 = getelementptr i8, ptr %40, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %10
  %46 = xor i32 %44, -1
  %47 = and i32 %45, %46
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr i8, ptr %40, i32 -64
  %50 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 1
  %51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %49, align 64
  %53 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %54, %52
  %56 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 2, i32 4
  %57 = load i32, ptr %51, align 4
  %58 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 1, i32 4
  %59 = load i32, ptr %50, align 4
  %60 = xor i32 %59, %57
  store i32 %60, ptr %50, align 4
  %61 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 2, i32 8
  %62 = load i32, ptr %56, align 4
  %63 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 1, i32 8
  %64 = load i32, ptr %58, align 4
  %65 = xor i32 %64, %62
  store i32 %65, ptr %58, align 4
  %66 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 2, i32 12
  %67 = load i32, ptr %61, align 4
  %68 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %48, i32 0, i32 1, i32 12
  %69 = load i32, ptr %63, align 4
  %70 = xor i32 %69, %67
  store i32 %70, ptr %63, align 4
  %71 = load i32, ptr %66, align 4
  %72 = load i32, ptr %68, align 4
  %73 = xor i32 %72, %71
  store i32 %73, ptr %68, align 4
  %74 = load ptr, ptr %19, align 4
  %75 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %55, %76
  tail call void @scatterwalk_map_and_copy(ptr noundef %51, ptr noundef %74, i32 noundef %77, i32 noundef %52, i32 noundef 0) #13
  %78 = tail call i32 @__crypto_memneq(ptr noundef %51, ptr noundef %50, i32 noundef %52) #13
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 0, i32 -74
  br label %81

81:                                               ; preds = %39, %2
  %82 = phi i32 [ %80, %39 ], [ %37, %2 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gcm_decrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %12, %14
  %16 = xor i32 %12, -1
  %17 = and i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr i8, ptr %8, i32 -64
  %20 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %19, align 64
  %23 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %24, %22
  %26 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2, i32 4
  %27 = load i32, ptr %21, align 4
  %28 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 1, i32 4
  %29 = load i32, ptr %20, align 4
  %30 = xor i32 %29, %27
  store i32 %30, ptr %20, align 4
  %31 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2, i32 8
  %32 = load i32, ptr %26, align 4
  %33 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 1, i32 8
  %34 = load i32, ptr %28, align 4
  %35 = xor i32 %34, %32
  store i32 %35, ptr %28, align 4
  %36 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 2, i32 12
  %37 = load i32, ptr %31, align 4
  %38 = getelementptr %struct.crypto_gcm_req_priv_ctx, ptr %18, i32 0, i32 1, i32 12
  %39 = load i32, ptr %33, align 4
  %40 = xor i32 %39, %37
  store i32 %40, ptr %33, align 4
  %41 = load i32, ptr %36, align 4
  %42 = load i32, ptr %38, align 4
  %43 = xor i32 %42, %41
  store i32 %43, ptr %38, align 4
  %44 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %25, %47
  tail call void @scatterwalk_map_and_copy(ptr noundef %21, ptr noundef %45, i32 noundef %48, i32 noundef %22, i32 noundef 0) #13
  %49 = tail call i32 @__crypto_memneq(ptr noundef %21, ptr noundef %20, i32 noundef %22) #13
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 0, i32 -74
  br label %52

52:                                               ; preds = %6, %2
  %53 = phi i32 [ %1, %2 ], [ %51, %6 ]
  %54 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef %4, i32 noundef %53) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_init_tfm(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -64
  %16 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 255
  %19 = and i32 %18, -64
  %20 = add i32 %19, %15
  %21 = or i32 %20, 24
  %22 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %9, %7
  %24 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4106_exit_tfm(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %2, -4
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %10 = getelementptr i8, ptr %1, i32 %8
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 64
  %14 = and i32 %13, -1048321
  store i32 %14, ptr %12, align 64
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1048320
  %18 = or i32 %17, %14
  store i32 %18, ptr %12, align 64
  %19 = tail call i32 @crypto_aead_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %8) #13
  br label %20

20:                                               ; preds = %5, %3
  %21 = phi i32 [ %19, %5 ], [ -22, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  switch i32 %1, label %7 [
    i32 8, label %3
    i32 12, label %3
    i32 16, label %3
  ]

3:                                                ; preds = %2, %2, %2
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_aead_setauthsize(ptr noundef %5, i32 noundef %1) #13
  br label %7

7:                                                ; preds = %3, %2
  %8 = phi i32 [ %6, %3 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_encrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @crypto_rfc4106_crypt(ptr noundef %0)
  %9 = tail call i32 @crypto_aead_encrypt(ptr noundef %8) #13
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4106_decrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @crypto_rfc4106_crypt(ptr noundef %0)
  %9 = tail call i32 @crypto_aead_decrypt(ptr noundef %8) #13
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4106_free(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @crypto_rfc4106_crypt(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.aead_request, ptr %0, i32 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %11
  %17 = xor i32 %15, -1
  %18 = and i32 %16, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -8
  tail call void @scatterwalk_map_and_copy(ptr noundef %20, ptr noundef %22, i32 noundef 0, i32 noundef %25, i32 noundef 0) #13
  %26 = getelementptr i8, ptr %4, i32 68
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %19, align 1
  %28 = getelementptr i8, ptr %19, i32 4
  %29 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 32
  %31 = load i64, ptr %30, align 1
  store i64 %31, ptr %28, align 1
  tail call void @sg_init_table(ptr noundef %2, i32 noundef 3) #13
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %20 to i32
  %34 = add i32 %33, 1073741824
  %35 = lshr i32 %34, 12
  %36 = getelementptr %struct.page, ptr %32, i32 %35
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

41:                                               ; preds = %1
  %42 = load i32, ptr %23, align 8
  %43 = add i32 %42, -8
  %44 = and i32 %33, 4095
  %45 = load i32, ptr %2, align 4
  %46 = and i32 %45, 3
  %47 = or i32 %46, %37
  store i32 %47, ptr %2, align 4
  %48 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 %44, ptr %48, align 4
  %49 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store i32 %43, ptr %49, align 4
  %50 = getelementptr %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  %51 = load ptr, ptr %21, align 4
  %52 = tail call ptr @scatterwalk_ffwd(ptr noundef %50, ptr noundef %51, i32 noundef %42) #13
  %53 = icmp eq ptr %52, %50
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = getelementptr %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %55, align 4
  %56 = getelementptr %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 0, ptr %56, align 4
  %57 = ptrtoint ptr %52 to i32
  %58 = and i32 %57, -4
  %59 = or i32 %58, 1
  store i32 %59, ptr %50, align 4
  br label %60

60:                                               ; preds = %54, %41
  %61 = load ptr, ptr %21, align 4
  %62 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 16
  tail call void @sg_init_table(ptr noundef %66, i32 noundef 3) #13
  %67 = load ptr, ptr @mem_map, align 4
  %68 = getelementptr %struct.page, ptr %67, i32 %35
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !10
  unreachable

73:                                               ; preds = %65
  %74 = load i32, ptr %23, align 8
  %75 = add i32 %74, -8
  %76 = load i32, ptr %66, align 4
  %77 = and i32 %76, 3
  %78 = or i32 %77, %69
  store i32 %78, ptr %66, align 4
  %79 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2
  store i32 %44, ptr %79, align 4
  %80 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 0, i32 1
  store i32 %75, ptr %80, align 4
  %81 = getelementptr %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %82 = load ptr, ptr %62, align 8
  %83 = tail call ptr @scatterwalk_ffwd(ptr noundef %81, ptr noundef %82, i32 noundef %74) #13
  %84 = icmp eq ptr %83, %81
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = getelementptr %struct.aead_request, ptr %0, i32 2, i32 0, i32 4
  store i32 0, ptr %86, align 4
  %87 = getelementptr %struct.aead_request, ptr %0, i32 2, i32 1
  store i32 0, ptr %87, align 4
  %88 = ptrtoint ptr %83 to i32
  %89 = and i32 %88, -4
  %90 = or i32 %89, 1
  store i32 %90, ptr %81, align 4
  br label %91

91:                                               ; preds = %85, %73, %60
  %92 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3
  %93 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  %94 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 0, i32 3
  store ptr %93, ptr %94, align 16
  %95 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 0, i32 1
  store ptr %98, ptr %101, align 8
  %102 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 0, i32 2
  store ptr %100, ptr %102, align 4
  %103 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 0, i32 4
  store i32 %96, ptr %103, align 4
  %104 = load ptr, ptr %21, align 4
  %105 = load ptr, ptr %62, align 8
  %106 = icmp eq ptr %104, %105
  %107 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 16
  %108 = select i1 %106, ptr %2, ptr %107
  %109 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 4
  store ptr %2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 5
  store ptr %108, ptr %112, align 8
  %113 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 2
  store i32 %110, ptr %113, align 4
  %114 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 3
  store ptr %19, ptr %114, align 32
  %115 = load i32, ptr %23, align 8
  %116 = add i32 %115, -8
  %117 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 1
  store i32 %116, ptr %117, align 8
  ret ptr %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_init_tfm(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #13
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %30

10:                                               ; preds = %1
  %11 = tail call ptr @crypto_get_default_null_skcipher() #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  store ptr %6, ptr %5, align 4
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -64
  %20 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 127
  %23 = and i32 %22, -64
  %24 = add i32 %23, %19
  %25 = or i32 %24, 12
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  br label %30

27:                                               ; preds = %10
  %28 = ptrtoint ptr %11 to i32
  %29 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %27, %13, %8
  %31 = phi i32 [ %9, %8 ], [ %28, %27 ], [ 0, %13 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4543_exit_tfm(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #13
  tail call void @crypto_put_default_null_skcipher() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %2, -4
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  %10 = getelementptr i8, ptr %1, i32 %8
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 64
  %14 = and i32 %13, -1048321
  store i32 %14, ptr %12, align 64
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1048320
  %18 = or i32 %17, %14
  store i32 %18, ptr %12, align 64
  %19 = tail call i32 @crypto_aead_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %8) #13
  br label %20

20:                                               ; preds = %5, %3
  %21 = phi i32 [ %19, %5 ], [ -22, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @crypto_aead_setauthsize(ptr noundef %6, i32 noundef 16) #13
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_encrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @crypto_rfc4543_crypt(ptr noundef %0, i1 noundef zeroext true)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4543_decrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @crypto_rfc4543_crypt(ptr noundef %0, i1 noundef zeroext false)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4543_free(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_rfc4543_crypt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #5 {
  %3 = alloca [448 x i8], align 64
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = getelementptr i8, ptr %5, i32 64
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %6, align 64
  %10 = getelementptr %struct.aead_request, ptr %0, i32 2
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.crypto_aead, ptr %11, i32 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = xor i32 %19, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = select i1 %1, i32 0, i32 %9
  br label %50

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = select i1 %1, i32 0, i32 %9
  %37 = sub i32 %33, %36
  %38 = add i32 %37, %35
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %3, i8 0, i32 448, i1 false) #13, !annotation !8
  %39 = getelementptr i8, ptr %5, i32 68
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.crypto_skcipher, ptr %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  store ptr %41, ptr %42, align 32
  %43 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 2
  store ptr %25, ptr %46, align 8
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 3
  store ptr %27, ptr %47, align 4
  store i32 %38, ptr %3, align 64
  %48 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %31, %29
  %51 = phi i32 [ %30, %29 ], [ %36, %31 ]
  %52 = getelementptr i8, ptr %5, i32 72
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %23, align 1
  %54 = getelementptr i8, ptr %23, i32 4
  %55 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 32
  %57 = load i64, ptr %56, align 1
  store i64 %57, ptr %54, align 1
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.crypto_aead, ptr %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %59, ptr %60, align 16
  %61 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %64, ptr %67, align 8
  %68 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store ptr %66, ptr %68, align 4
  %69 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %62, ptr %69, align 4
  %70 = load ptr, ptr %24, align 4
  %71 = load ptr, ptr %26, align 8
  %72 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store ptr %70, ptr %72, align 4
  %73 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  store ptr %71, ptr %73, align 8
  %74 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 %51, ptr %74, align 4
  %75 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  store ptr %23, ptr %75, align 32
  %76 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %77, %51
  %81 = add i32 %80, %79
  %82 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 %81, ptr %82, align 8
  br i1 %1, label %83, label %85

83:                                               ; preds = %50
  %84 = call i32 @crypto_aead_encrypt(ptr noundef %8) #13
  br label %87

85:                                               ; preds = %50
  %86 = call i32 @crypto_aead_decrypt(ptr noundef %8) #13
  br label %87

87:                                               ; preds = %85, %83, %31
  %88 = phi i32 [ %48, %31 ], [ %84, %83 ], [ %86, %85 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{i64 2152671431, i64 2152671923, i64 2152671468, i64 2152671524, i64 2152671558, i64 2152671582, i64 2152671623, i64 2152671644, i64 2152671672, i64 2152671706}
