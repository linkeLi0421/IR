; ModuleID = '/llk/IR/crypto/ccm.c_pt.bc'
source_filename = "../crypto/ccm.c"
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
%struct.shash_instance = type { ptr, [60 x i8], %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.68, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_ccm_req_priv_ctx = type { [16 x i8], [16 x i8], [16 x i8], i32, [3 x %struct.scatterlist], [3 x %struct.scatterlist], [20 x i8], %union.anon.72 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.anon.72 = type { %struct.ahash_request }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@__UNIQUE_ID_license237 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [33 x i8] c"description=Counter with CBC MAC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace239 = internal constant [15 x i8] c"alias=ccm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto240 = internal constant [22 x i8] c"alias=crypto-ccm_base\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace241 = internal constant [14 x i8] c"alias=rfc4309\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto242 = internal constant [21 x i8] c"alias=crypto-rfc4309\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [10 x i8] c"alias=ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [17 x i8] c"alias=crypto-ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace245 = internal constant [13 x i8] c"alias=cbcmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto246 = internal constant [20 x i8] c"alias=crypto-cbcmac\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns247 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@crypto_ccm_tmpls = internal global [4 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @cbcmac_create, [128 x i8] c"cbcmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_ccm_base_create, [128 x i8] c"ccm_base\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_ccm_create, [128 x i8] c"ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_rfc4309_create, [128 x i8] c"rfc4309\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [8 x i8] c"cbcmac(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctr(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ccm(%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ccm_base(%s,%s)\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ctr(%s)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cbcmac(%s)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rfc4309(%s)\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto240, ptr @__UNIQUE_ID_alias_crypto242, ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_crypto246, ptr @__UNIQUE_ID_alias_userspace239, ptr @__UNIQUE_ID_alias_userspace241, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_alias_userspace245, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_import_ns247, ptr @__UNIQUE_ID_license237], section "llvm.metadata"
@switch.table.crypto_ccm_setauthsize = private unnamed_addr constant [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_ccm_tmpls, i32 noundef 4) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_ccm_tmpls, i32 noundef 4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbcmac_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 14, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 668) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #12
  %16 = load i32, ptr %3, align 4
  %17 = or i32 %16, 15
  %18 = call i32 @crypto_grab_spawn(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 1, i32 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1, i32 1, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 4
  %24 = call i32 @crypto_inst_setname(ptr noundef %12, ptr noundef %23, ptr noundef %22) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 6
  %28 = load i32, ptr %27, align 32
  %29 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %28, ptr %30, align 32
  %31 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 64
  store i32 %33, ptr %34, align 64
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 4
  %38 = xor i32 %36, -1
  %39 = and i32 %37, %38
  %40 = load i32, ptr %32, align 4
  %41 = add i32 %39, %40
  %42 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 40
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 4, ptr %43, align 8
  %44 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  store ptr @cbcmac_init_tfm, ptr %44, align 64
  %45 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  store ptr @cbcmac_exit_tfm, ptr %45, align 4
  store ptr @crypto_cbcmac_digest_init, ptr %29, align 64
  %46 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_cbcmac_digest_update, ptr %46, align 4
  %47 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_cbcmac_digest_final, ptr %47, align 8
  %48 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store ptr @crypto_cbcmac_digest_setkey, ptr %48, align 4
  store ptr @shash_free_singlespawn_instance, ptr %8, align 64
  %49 = call i32 @shash_register_instance(ptr noundef %0, ptr noundef nonnull %8) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %26, %20, %10
  %52 = phi i32 [ %18, %10 ], [ %24, %20 ], [ %49, %26 ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %8) #12
  br label %53

53:                                               ; preds = %51, %26, %6, %2
  %54 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %52, %51 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_base_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr ptr, ptr %1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @crypto_attr_alg_name(ptr noundef %4) #12
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  br label %18

9:                                                ; preds = %2
  %10 = getelementptr ptr, ptr %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @crypto_attr_alg_name(ptr noundef %11) #12
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %18

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @crypto_ccm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %12)
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = phi i32 [ %8, %7 ], [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  %5 = getelementptr ptr, ptr %1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @crypto_attr_alg_name(ptr noundef %6) #12
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  br label %19

11:                                               ; preds = %2
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %7)
  %13 = icmp sgt i32 %12, 127
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %7)
  %16 = icmp sgt i32 %15, 127
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call fastcc i32 @crypto_ccm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %19

19:                                               ; preds = %17, %14, %11, %9
  %20 = phi i32 [ %10, %9 ], [ %18, %17 ], [ -36, %11 ], [ -36, %14 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 604) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #12
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_aead(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -40
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2
  %31 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %32 = getelementptr i8, ptr %21, i32 40
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %32)
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %61, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %37 = getelementptr i8, ptr %21, i32 168
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %37)
  %39 = icmp sgt i32 %38, 127
  br i1 %39, label %61, label %40

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
  %48 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 8, ptr %48, align 8
  %49 = getelementptr i8, ptr %21, i32 -32
  %50 = load i32, ptr %49, align 32
  %51 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %50, ptr %51, align 32
  %52 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 16, ptr %52, align 4
  %53 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %53, align 8
  %54 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_rfc4309_init_tfm, ptr %54, align 16
  %55 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_rfc4309_exit_tfm, ptr %55, align 4
  store ptr @crypto_rfc4309_setkey, ptr %30, align 64
  %56 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_rfc4309_setauthsize, ptr %56, align 4
  %57 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_rfc4309_encrypt, ptr %57, align 8
  %58 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_rfc4309_decrypt, ptr %58, align 4
  store ptr @crypto_rfc4309_free, ptr %8, align 64
  %59 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %8) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %40, %35, %29, %25, %19, %10
  %62 = phi i32 [ %17, %10 ], [ -22, %19 ], [ -22, %25 ], [ -36, %29 ], [ -36, %35 ], [ %59, %40 ]
  call void @crypto_drop_spawn(ptr noundef %11) #12
  call void @kfree(ptr noundef nonnull %8) #12
  br label %63

63:                                               ; preds = %61, %40, %6, %2
  %64 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %62, %61 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbcmac_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_instance, ptr %3, i32 0, i32 4
  %5 = tail call ptr @crypto_spawn_tfm(ptr noundef %4, i32 noundef 1, i32 noundef 15) #12
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
define internal void @cbcmac_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crypto_cbcmac_digest_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = load i32, ptr %6, align 64
  %8 = load i32, ptr %3, align 64
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = sub i32 0, %7
  %11 = getelementptr i8, ptr %9, i32 %10
  store i32 0, ptr %2, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %7, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 1
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = load i32, ptr %4, align 64
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = sub i32 0, %11
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %6, align 4
  br label %19

19:                                               ; preds = %32, %17
  %20 = phi i32 [ %33, %32 ], [ %18, %17 ]
  %21 = phi ptr [ %29, %32 ], [ %1, %17 ]
  %22 = phi i32 [ %28, %32 ], [ %2, %17 ]
  %23 = sub i32 %11, %20
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 %23)
  %25 = getelementptr i8, ptr %15, i32 %20
  tail call void @__crypto_xor(ptr noundef %25, ptr noundef %25, ptr noundef %21, i32 noundef %24) #12
  %26 = load i32, ptr %6, align 4
  %27 = add i32 %26, %24
  store i32 %27, ptr %6, align 4
  %28 = sub i32 %22, %24
  %29 = getelementptr i8, ptr %21, i32 %24
  %30 = icmp eq i32 %27, %11
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  tail call void @crypto_cipher_encrypt_one(ptr noundef %7, ptr noundef %15, ptr noundef %15) #12
  store i32 0, ptr %6, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = phi i32 [ 0, %31 ], [ %27, %19 ]
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %35, label %19

35:                                               ; preds = %32, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -64
  %8 = load i32, ptr %7, align 64
  %9 = load i32, ptr %3, align 64
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = sub i32 0, %8
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %17, ptr noundef %12, ptr noundef %12) #12
  br label %18

18:                                               ; preds = %15, %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %12, i32 %8, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbcmac_digest_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_cipher_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #12
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_create_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %94

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 632) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %94, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1
  %14 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 24
  %15 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1
  %16 = load i32, ptr %5, align 4
  %17 = or i32 %16, 128
  %18 = call i32 @crypto_grab_ahash(ptr noundef %14, ptr noundef %15, ptr noundef %3, i32 noundef 0, i32 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 40
  %24 = call i32 @strncmp(ptr noundef %23, ptr noundef nonnull dereferenceable(8) @.str, i32 noundef 7)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %22, i32 -64
  %28 = load i32, ptr %27, align 64
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  %31 = load i32, ptr %5, align 4
  %32 = call i32 @crypto_grab_skcipher(ptr noundef %13, ptr noundef %15, ptr noundef %2, i32 noundef 0, i32 noundef %31) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 40
  %38 = call i32 @strncmp(ptr noundef %37, ptr noundef nonnull dereferenceable(5) @.str.1, i32 noundef 4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %36, i32 -36
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %36, i32 20
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %36, i32 44
  %50 = getelementptr i8, ptr %22, i32 47
  %51 = call i32 @strcmp(ptr noundef %49, ptr noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2
  %55 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %55, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %49)
  %57 = icmp sgt i32 %56, 127
  br i1 %57, label %92, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %60 = getelementptr i8, ptr %36, i32 168
  %61 = getelementptr i8, ptr %22, i32 168
  %62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %59, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %60, ptr noundef %61)
  %63 = icmp sgt i32 %62, 127
  br i1 %63, label %92, label %64

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %22, i32 32
  %66 = load i32, ptr %65, align 32
  %67 = getelementptr i8, ptr %36, i32 32
  %68 = load i32, ptr %67, align 32
  %69 = add i32 %68, %66
  %70 = sdiv i32 %69, 2
  %71 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %70, ptr %71, align 32
  %72 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %72, align 4
  %73 = getelementptr i8, ptr %22, i32 28
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %36, i32 28
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, %74
  %78 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 16, ptr %79, align 8
  %80 = getelementptr i8, ptr %36, i32 -32
  %81 = load i32, ptr %80, align 32
  %82 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %81, ptr %82, align 32
  %83 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 16, ptr %83, align 4
  %84 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %84, align 8
  %85 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_ccm_init_tfm, ptr %85, align 16
  %86 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_ccm_exit_tfm, ptr %86, align 4
  store ptr @crypto_ccm_setkey, ptr %54, align 64
  %87 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_ccm_setauthsize, ptr %87, align 4
  %88 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_ccm_encrypt, ptr %88, align 8
  %89 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_ccm_decrypt, ptr %89, align 4
  store ptr @crypto_ccm_free, ptr %10, align 64
  %90 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %10) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %64, %58, %53, %48, %44, %40, %34, %30, %26, %20, %12
  %93 = phi i32 [ %18, %12 ], [ -22, %20 ], [ -22, %26 ], [ %32, %30 ], [ -22, %34 ], [ -22, %40 ], [ -22, %44 ], [ -22, %48 ], [ -36, %53 ], [ -36, %58 ], [ %90, %64 ]
  call void @crypto_drop_spawn(ptr noundef %14) #12
  call void @crypto_drop_spawn(ptr noundef %13) #12
  call void @kfree(ptr noundef nonnull %10) #12
  br label %94

94:                                               ; preds = %92, %64, %8, %4
  %95 = phi i32 [ %6, %4 ], [ -12, %8 ], [ %93, %92 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr i8, ptr %3, i32 476
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %5) #12
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %3, i32 448
  %12 = tail call ptr @crypto_spawn_tfm2(ptr noundef %11) #12
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  store ptr %6, ptr %4, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %12, ptr %15, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 256
  %20 = and i32 %19, -64
  %21 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 8
  %22 = load i32, ptr %21, align 32
  %23 = load i32, ptr %12, align 64
  %24 = tail call i32 @llvm.umax.i32(i32 %22, i32 %23)
  %25 = add i32 %24, %20
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  br label %30

27:                                               ; preds = %10
  %28 = ptrtoint ptr %12 to i32
  %29 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %29) #12
  br label %30

30:                                               ; preds = %27, %14, %8
  %31 = phi i32 [ %9, %8 ], [ %28, %27 ], [ 0, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ccm_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, -1048321
  store i32 %10, ptr %8, align 64
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 64
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %10
  store i32 %14, ptr %8, align 64
  %15 = tail call i32 @crypto_skcipher_setkey(ptr noundef %6, ptr noundef %1, i32 noundef %2) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %19 = load i32, ptr %18, align 64
  %20 = and i32 %19, -1048321
  store i32 %20, ptr %18, align 64
  %21 = load i32, ptr %11, align 64
  %22 = and i32 %21, 1048320
  %23 = or i32 %22, %20
  store i32 %23, ptr %18, align 64
  %24 = tail call i32 @crypto_ahash_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %2) #12
  br label %25

25:                                               ; preds = %17, %3
  %26 = phi i32 [ %24, %17 ], [ %15, %3 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_ccm_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #10 {
  %3 = add i32 %1, -4
  %4 = icmp ult i32 %3, 13
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i32], ptr @switch.table.crypto_ccm_setauthsize, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ -22, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_encrypt(ptr noundef %0) #2 {
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
  %15 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 32
  %20 = tail call fastcc i32 @crypto_ccm_init_crypt(ptr noundef %0, ptr noundef %14)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4
  %24 = tail call ptr @sg_next(ptr noundef %23) #12
  %25 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %0, ptr noundef %24, i32 noundef %17)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %29, %31
  %33 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5
  %34 = select i1 %32, ptr %23, ptr %33
  %35 = getelementptr i8, ptr %3, i32 68
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.crypto_skcipher, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 3
  store ptr %37, ptr %38, align 16
  %39 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 3
  %40 = load i32, ptr %39, align 16
  %41 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 1
  store ptr @crypto_ccm_encrypt_done, ptr %41, align 8
  %42 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 2
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 4
  store i32 %40, ptr %43, align 4
  %44 = add i32 %17, 16
  %45 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 1
  store ptr %23, ptr %45, align 8
  %46 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 2
  store ptr %34, ptr %46, align 4
  store i32 %44, ptr %15, align 64
  %47 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  store ptr %19, ptr %47, align 4
  %48 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %15) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = tail call ptr @sg_next(ptr noundef %34) #12
  %52 = load i32, ptr %4, align 64
  tail call void @scatterwalk_map_and_copy(ptr noundef %14, ptr noundef %51, i32 noundef %17, i32 noundef %52, i32 noundef 1) #12
  br label %53

53:                                               ; preds = %50, %27, %22, %1
  %54 = phi i32 [ 0, %50 ], [ %20, %1 ], [ %25, %22 ], [ %48, %27 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ccm_decrypt(ptr noundef %0) #2 {
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
  %15 = load i32, ptr %4, align 64
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 2
  %19 = sub i32 %17, %15
  %20 = tail call fastcc i32 @crypto_ccm_init_crypt(ptr noundef %0, ptr noundef %18)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 1
  %24 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7
  %25 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4
  %26 = tail call ptr @sg_next(ptr noundef %25) #12
  tail call void @scatterwalk_map_and_copy(ptr noundef %18, ptr noundef %26, i32 noundef %19, i32 noundef %15, i32 noundef 0) #12
  %27 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %28, %30
  %32 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5
  %33 = select i1 %31, ptr %25, ptr %32
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %23, ptr noundef align 1 dereferenceable(16) %35, i32 16, i1 false)
  %36 = getelementptr i8, ptr %3, i32 68
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.crypto_skcipher, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 3
  store ptr %38, ptr %39, align 16
  %40 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 3
  %41 = load i32, ptr %40, align 16
  %42 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 1
  store ptr @crypto_ccm_decrypt_done, ptr %42, align 8
  %43 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 2
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 4
  store i32 %41, ptr %44, align 4
  %45 = add i32 %19, 16
  %46 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 1
  store ptr %25, ptr %46, align 8
  %47 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 2
  store ptr %33, ptr %47, align 4
  store i32 %45, ptr %24, align 64
  %48 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  store ptr %23, ptr %48, align 4
  %49 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %24) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %22
  %52 = tail call ptr @sg_next(ptr noundef %33) #12
  %53 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %0, ptr noundef %52, i32 noundef %19)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = tail call i32 @__crypto_memneq(ptr noundef %18, ptr noundef %14, i32 noundef %15) #12
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 0, i32 -74
  br label %59

59:                                               ; preds = %55, %51, %22, %1
  %60 = phi i32 [ %20, %1 ], [ %49, %22 ], [ %53, %51 ], [ %58, %55 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ccm_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %3) #12
  tail call void @crypto_drop_spawn(ptr noundef %2) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_init_crypt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
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
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 32
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -1
  %19 = icmp ult i8 %18, 7
  br i1 %19, label %20, label %90

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 3
  store i32 %22, ptr %23, align 16
  %24 = getelementptr i8, ptr %16, i32 15
  %25 = load i8, ptr %16, align 1
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 0, %26
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = add nuw nsw i32 %26, 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %28, i8 0, i32 %29, i1 false)
  %30 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4
  tail call void @sg_init_table(ptr noundef %30, i32 noundef 3) #12
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %1 to i32
  %33 = add i32 %32, 1073741824
  %34 = lshr i32 %33, 12
  %35 = getelementptr %struct.page, ptr %31, i32 %34
  %36 = ptrtoint ptr %35 to i32
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

40:                                               ; preds = %20
  %41 = and i32 %32, 4095
  %42 = load i32, ptr %30, align 4
  %43 = and i32 %42, 3
  %44 = or i32 %43, %36
  store i32 %44, ptr %30, align 4
  %45 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4, i32 0, i32 1
  store i32 %41, ptr %45, align 4
  %46 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4, i32 0, i32 2
  store i32 16, ptr %46, align 4
  %47 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4, i32 1
  %48 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = tail call ptr @scatterwalk_ffwd(ptr noundef %47, ptr noundef %49, i32 noundef %51) #12
  %53 = icmp eq ptr %52, %47
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4, i32 1, i32 1
  store i32 0, ptr %55, align 4
  %56 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 4, i32 1, i32 2
  store i32 0, ptr %56, align 4
  %57 = ptrtoint ptr %52 to i32
  %58 = and i32 %57, -4
  %59 = or i32 %58, 1
  store i32 %59, ptr %47, align 4
  br label %60

60:                                               ; preds = %54, %40
  %61 = load ptr, ptr %48, align 4
  %62 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %90, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5
  tail call void @sg_init_table(ptr noundef %66, i32 noundef 3) #12
  %67 = load ptr, ptr @mem_map, align 4
  %68 = getelementptr %struct.page, ptr %67, i32 %34
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

73:                                               ; preds = %65
  %74 = load i32, ptr %66, align 4
  %75 = and i32 %74, 3
  %76 = or i32 %75, %69
  store i32 %76, ptr %66, align 4
  %77 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5, i32 0, i32 1
  store i32 %41, ptr %77, align 4
  %78 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5, i32 0, i32 2
  store i32 16, ptr %78, align 4
  %79 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5, i32 1
  %80 = load ptr, ptr %62, align 8
  %81 = load i32, ptr %50, align 8
  %82 = tail call ptr @scatterwalk_ffwd(ptr noundef %79, ptr noundef %80, i32 noundef %81) #12
  %83 = icmp eq ptr %82, %79
  br i1 %83, label %90, label %84

84:                                               ; preds = %73
  %85 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5, i32 1, i32 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %14, i32 0, i32 5, i32 1, i32 2
  store i32 0, ptr %86, align 4
  %87 = ptrtoint ptr %82 to i32
  %88 = and i32 %87, -4
  %89 = or i32 %88, 1
  store i32 %89, ptr %79, align 4
  br label %90

90:                                               ; preds = %84, %73, %60, %2
  %91 = phi i32 [ -22, %2 ], [ 0, %73 ], [ 0, %84 ], [ 0, %60 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_ccm_auth(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.scatterlist], align 4
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  %14 = add i32 %11, %13
  %15 = xor i32 %11, -1
  %16 = and i32 %14, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr i8, ptr %7, i32 -64
  %19 = getelementptr i8, ptr %7, i32 64
  %20 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !8
  %23 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 1
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 32
  %26 = load i8, ptr %25, align 1
  %27 = load i32, ptr %18, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %17, ptr noundef align 1 dereferenceable(16) %25, i32 16, i1 false) #12
  %28 = load i8, ptr %17, align 1
  %29 = trunc i32 %27 to i8
  %30 = shl i8 %29, 2
  %31 = add i8 %30, -8
  %32 = and i8 %31, -8
  %33 = or i8 %32, %28
  store i8 %33, ptr %17, align 1
  %34 = load i32, ptr %21, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = or i8 %33, 64
  store i8 %37, ptr %17, align 1
  br label %38

38:                                               ; preds = %36, %3
  %39 = zext i8 %26 to i32
  %40 = add nuw nsw i32 %39, 1
  %41 = xor i32 %39, -1
  %42 = getelementptr i8, ptr %23, i32 %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %42, i8 0, i32 %40, i1 false) #12
  %43 = icmp ugt i8 %26, 2
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = shl nuw nsw i32 %40, 3
  %46 = shl nuw nsw i32 1, %45
  %47 = icmp ult i32 %46, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %169

49:                                               ; preds = %44, %38
  %50 = phi i32 [ %40, %44 ], [ 4, %38 ]
  %51 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  store i32 %51, ptr %4, align 4
  %52 = sub nsw i32 0, %50
  %53 = getelementptr i8, ptr %23, i32 %52
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  %55 = getelementptr i8, ptr %54, i32 %52
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %55, i32 %50, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @sg_init_table(ptr noundef nonnull %5, i32 noundef 3) #12
  %56 = load ptr, ptr @mem_map, align 4
  %57 = add i32 %16, 1073741824
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %56, i32 %58
  %60 = ptrtoint ptr %59 to i32
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !9

63:                                               ; preds = %49
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

64:                                               ; preds = %49
  %65 = and i32 %16, 4095
  %66 = load i32, ptr %5, align 4
  %67 = and i32 %66, 3
  %68 = or i32 %67, %60
  store i32 %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  store i32 %65, ptr %69, align 4
  %70 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2
  store i32 16, ptr %70, align 4
  %71 = icmp eq i32 %22, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %64
  %73 = icmp ult i32 %22, 65280
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = trunc i32 %22 to i16
  %76 = call i16 @llvm.bswap.i16(i16 %75) #12
  store i16 %76, ptr %23, align 2
  br label %80

77:                                               ; preds = %72
  store i16 -257, ptr %23, align 2
  %78 = call i32 @llvm.bswap.i32(i32 %22) #12
  %79 = getelementptr %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 1, i32 2
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i32 [ 2, %74 ], [ 6, %77 ]
  %82 = load ptr, ptr @mem_map, align 4
  %83 = ptrtoint ptr %23 to i32
  %84 = add i32 %83, 1073741824
  %85 = lshr i32 %84, 12
  %86 = getelementptr %struct.page, ptr %82, i32 %85
  %87 = ptrtoint ptr %86 to i32
  %88 = and i32 %87, 3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !9

90:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

91:                                               ; preds = %80
  %92 = getelementptr inbounds [3 x %struct.scatterlist], ptr %5, i32 0, i32 1
  %93 = and i32 %83, 4095
  %94 = load i32, ptr %92, align 4
  %95 = and i32 %94, 3
  %96 = or i32 %95, %87
  store i32 %96, ptr %92, align 4
  %97 = getelementptr inbounds [3 x %struct.scatterlist], ptr %5, i32 0, i32 1, i32 1
  store i32 %93, ptr %97, align 4
  %98 = getelementptr inbounds [3 x %struct.scatterlist], ptr %5, i32 0, i32 1, i32 2
  store i32 %81, ptr %98, align 4
  br label %99

99:                                               ; preds = %91, %64
  %100 = phi i32 [ 2, %91 ], [ 1, %64 ]
  %101 = phi i32 [ %81, %91 ], [ 0, %64 ]
  %102 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 %100
  %105 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 %100, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 %100, i32 2
  store i32 0, ptr %106, align 4
  %107 = ptrtoint ptr %103 to i32
  %108 = and i32 %107, -4
  %109 = or i32 %108, 1
  store i32 %109, ptr %104, align 4
  %110 = load ptr, ptr %19, align 4
  %111 = getelementptr inbounds %struct.crypto_ahash, ptr %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 0, i32 3
  store ptr %111, ptr %112, align 16
  %113 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 3
  %114 = load i32, ptr %113, align 16
  %115 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 0, i32 1
  store ptr null, ptr %115, align 8
  %116 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 0, i32 2
  store ptr null, ptr %116, align 4
  %117 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 0, i32 4
  store i32 %114, ptr %117, align 4
  %118 = add i32 %101, %22
  %119 = add i32 %118, 16
  %120 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 2
  store ptr %5, ptr %120, align 4
  %121 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 1
  store i32 %119, ptr %121, align 8
  %122 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %17, i32 0, i32 7, i32 0, i32 3
  store ptr null, ptr %122, align 32
  %123 = load i32, ptr %111, align 64
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %169

126:                                              ; preds = %99
  %127 = load ptr, ptr %110, align 64
  %128 = call i32 %127(ptr noundef %20) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %169

130:                                              ; preds = %126
  %131 = load ptr, ptr %112, align 16
  %132 = getelementptr i8, ptr %131, i32 -60
  %133 = load ptr, ptr %132, align 4
  %134 = call i32 %133(ptr noundef %20) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %130
  %137 = and i32 %118, 15
  %138 = sub nuw nsw i32 16, %137
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %165, label %140

140:                                              ; preds = %136
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %138, i1 false)
  call void @sg_init_table(ptr noundef nonnull %5, i32 noundef 2) #12
  %141 = load ptr, ptr @mem_map, align 4
  %142 = ptrtoint ptr %23 to i32
  %143 = add i32 %142, 1073741824
  %144 = lshr i32 %143, 12
  %145 = getelementptr %struct.page, ptr %141, i32 %144
  %146 = ptrtoint ptr %145 to i32
  %147 = and i32 %146, 3
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149, !prof !9

149:                                              ; preds = %140
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

150:                                              ; preds = %140
  %151 = and i32 %142, 4095
  %152 = load i32, ptr %5, align 4
  %153 = and i32 %152, 3
  %154 = or i32 %153, %146
  store i32 %154, ptr %5, align 4
  store i32 %151, ptr %69, align 4
  store i32 %138, ptr %70, align 4
  %155 = icmp eq ptr %1, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 1
  %158 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 1, i32 1
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 1, i32 2
  store i32 0, ptr %159, align 4
  %160 = ptrtoint ptr %1 to i32
  %161 = and i32 %160, -4
  %162 = or i32 %161, 1
  store i32 %162, ptr %157, align 4
  br label %163

163:                                              ; preds = %156, %150
  %164 = add i32 %138, %2
  br label %165

165:                                              ; preds = %163, %136
  %166 = phi i32 [ %164, %163 ], [ %2, %136 ]
  %167 = phi ptr [ %5, %163 ], [ %1, %136 ]
  store ptr %167, ptr %120, align 4
  store i32 %166, ptr %121, align 8
  store ptr %17, ptr %122, align 32
  %168 = call i32 @crypto_ahash_finup(ptr noundef %20) #12
  br label %169

169:                                              ; preds = %165, %130, %126, %99, %48
  %170 = phi i32 [ -75, %48 ], [ %128, %126 ], [ %134, %130 ], [ %168, %165 ], [ -126, %99 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #12
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ccm_encrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %28

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
  %20 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = load i32, ptr %19, align 64
  tail call void @scatterwalk_map_and_copy(ptr noundef %18, ptr noundef %21, i32 noundef %26, i32 noundef %27, i32 noundef 1) #12
  br label %28

28:                                               ; preds = %6, %2
  %29 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef %4, i32 noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_ccm_decrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  %13 = add i32 %10, %12
  %14 = xor i32 %10, -1
  %15 = and i32 %13, %14
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr i8, ptr %6, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %16, i32 0, i32 3
  store i32 0, ptr %21, align 16
  %22 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %23, %25
  %27 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %16, i32 0, i32 4
  %28 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %16, i32 0, i32 5
  %29 = select i1 %26, ptr %27, ptr %28
  %30 = tail call ptr @sg_next(ptr noundef %29) #12
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = sub i32 %20, %18
  %34 = tail call fastcc i32 @crypto_ccm_auth(ptr noundef %4, ptr noundef %30, i32 noundef %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, ptr %16, i32 0, i32 2
  %38 = tail call i32 @__crypto_memneq(ptr noundef %37, ptr noundef %16, i32 noundef %18) #12
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -74
  br label %41

41:                                               ; preds = %36, %32, %2
  %42 = phi i32 [ %1, %2 ], [ %34, %32 ], [ %40, %36 ]
  %43 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef %4, i32 noundef %42) #12
  ret void
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
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #12
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
  %21 = or i32 %20, 32
  %22 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %9, %7
  %24 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4309_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 3
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %2, -3
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %10 = getelementptr i8, ptr %1, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %9, ptr noundef align 1 dereferenceable(3) %10, i32 3, i1 false)
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %12 = load i32, ptr %11, align 64
  %13 = and i32 %12, -1048321
  store i32 %13, ptr %11, align 64
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 64
  %16 = and i32 %15, 1048320
  %17 = or i32 %16, %13
  store i32 %17, ptr %11, align 64
  %18 = tail call i32 @crypto_aead_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %8) #12
  br label %19

19:                                               ; preds = %5, %3
  %20 = phi i32 [ %18, %5 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %7 [
    i32 8, label %3
    i32 12, label %3
    i32 16, label %3
  ]

3:                                                ; preds = %2, %2, %2
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_aead_setauthsize(ptr noundef %5, i32 noundef %1) #12
  br label %7

7:                                                ; preds = %3, %2
  %8 = phi i32 [ %6, %3 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %7 [
    i32 16, label %4
    i32 20, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = tail call fastcc ptr @crypto_rfc4309_crypt(ptr noundef %0)
  %6 = tail call i32 @crypto_aead_encrypt(ptr noundef %5) #12
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc4309_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %7 [
    i32 16, label %4
    i32 20, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = tail call fastcc ptr @crypto_rfc4309_crypt(ptr noundef %0)
  %6 = tail call i32 @crypto_aead_decrypt(ptr noundef %5) #12
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc4309_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @crypto_rfc4309_crypt(ptr noundef %0) unnamed_addr #2 {
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
  store i8 3, ptr %19, align 1
  %20 = getelementptr i8, ptr %19, i32 1
  %21 = getelementptr i8, ptr %4, i32 68
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %20, ptr noundef align 4 dereferenceable(3) %21, i32 3, i1 false)
  %22 = getelementptr i8, ptr %19, i32 4
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 32
  %25 = load i64, ptr %24, align 1
  store i64 %25, ptr %22, align 1
  %26 = getelementptr i8, ptr %19, i32 16
  %27 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, -8
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %28, i32 noundef 0, i32 noundef %31, i32 noundef 0) #12
  tail call void @sg_init_table(ptr noundef %2, i32 noundef 3) #12
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %26 to i32
  %34 = add i32 %33, 1073741824
  %35 = lshr i32 %34, 12
  %36 = getelementptr %struct.page, ptr %32, i32 %35
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

41:                                               ; preds = %1
  %42 = load i32, ptr %29, align 8
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
  %51 = load ptr, ptr %27, align 4
  %52 = tail call ptr @scatterwalk_ffwd(ptr noundef %50, ptr noundef %51, i32 noundef %42) #12
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
  %61 = load ptr, ptr %27, align 4
  %62 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 16
  tail call void @sg_init_table(ptr noundef %66, i32 noundef 3) #12
  %67 = load ptr, ptr @mem_map, align 4
  %68 = getelementptr %struct.page, ptr %67, i32 %35
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

73:                                               ; preds = %65
  %74 = load i32, ptr %29, align 8
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
  %83 = tail call ptr @scatterwalk_ffwd(ptr noundef %81, ptr noundef %82, i32 noundef %74) #12
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
  %104 = load ptr, ptr %27, align 4
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
  %115 = load i32, ptr %29, align 8
  %116 = add i32 %115, -8
  %117 = getelementptr inbounds %struct.aead_request, ptr %0, i32 3, i32 1
  store i32 %116, ptr %117, align 8
  ret ptr %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!10 = !{i64 2152649703, i64 2152650195, i64 2152649740, i64 2152649796, i64 2152649830, i64 2152649854, i64 2152649895, i64 2152649916, i64 2152649944, i64 2152649978}
