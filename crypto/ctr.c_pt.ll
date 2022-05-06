; ModuleID = '/llk/IR/crypto/ctr.c_pt.bc'
source_filename = "../crypto/ctr.c"
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
%struct.skcipher_instance = type { ptr, [60 x i8], %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.8, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.7, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.7 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_walk = type { %union.anon.10, %union.anon.10, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.anon.22 = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_rfc3686_req_ctx = type { [16 x i8], [48 x i8], %struct.skcipher_request }

@__UNIQUE_ID_license106 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [47 x i8] c"description=CTR block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace108 = internal constant [14 x i8] c"alias=rfc3686\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto109 = internal constant [21 x i8] c"alias=crypto-rfc3686\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace110 = internal constant [10 x i8] c"alias=ctr\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto111 = internal constant [17 x i8] c"alias=crypto-ctr\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns112 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@crypto_ctr_tmpls = internal global [2 x %struct.crypto_template] [%struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_ctr_create, [128 x i8] c"ctr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_rfc3686_create, [128 x i8] c"rfc3686\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"rfc3686(%s)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias_crypto109, ptr @__UNIQUE_ID_alias_crypto111, ptr @__UNIQUE_ID_alias_userspace108, ptr @__UNIQUE_ID_alias_userspace110, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_import_ns112, ptr @__UNIQUE_ID_license106], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_templates(ptr noundef nonnull @crypto_ctr_tmpls, i32 noundef 2) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_templates(ptr noundef nonnull @crypto_ctr_tmpls, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ctr_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %0, ptr noundef %1) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 1, i32 1, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 3
  %13 = and i32 %11, 3
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %17, align 4
  %18 = load i32, ptr %10, align 4
  %19 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %18, ptr %19, align 32
  %20 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_ctr_crypt, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_ctr_crypt, ptr %21, align 8
  %22 = tail call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef %3) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16, %7
  %25 = phi i32 [ -22, %7 ], [ %22, %16 ]
  %26 = load ptr, ptr %3, align 64
  tail call void %26(ptr noundef %3) #7
  br label %27

27:                                               ; preds = %24, %16, %5
  %28 = phi i32 [ %6, %5 ], [ %25, %24 ], [ 0, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 604) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #7
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_skcipher(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -36
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %21, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2
  %31 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %32 = getelementptr i8, ptr %21, i32 40
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %32)
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %67, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %37 = getelementptr i8, ptr %21, i32 168
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %37)
  %39 = icmp sgt i32 %38, 127
  br i1 %39, label %67, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %21, i32 32
  %42 = load i32, ptr %41, align 32
  %43 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %42, ptr %43, align 32
  %44 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr i8, ptr %21, i32 28
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 8, ptr %48, align 4
  %49 = getelementptr i8, ptr %21, i32 -32
  %50 = load i32, ptr %49, align 32
  %51 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %50, ptr %51, align 32
  %52 = getelementptr i8, ptr %21, i32 -44
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 4
  %55 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store i32 %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %21, i32 -40
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 4
  %59 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %58, ptr %59, align 8
  store ptr @crypto_rfc3686_setkey, ptr %30, align 64
  %60 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_rfc3686_crypt, ptr %60, align 4
  %61 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_rfc3686_crypt, ptr %61, align 8
  %62 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %62, align 8
  %63 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_rfc3686_init_tfm, ptr %63, align 4
  %64 = getelementptr inbounds %struct.skcipher_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_rfc3686_exit_tfm, ptr %64, align 16
  store ptr @crypto_rfc3686_free, ptr %8, align 64
  %65 = call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef nonnull %8) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %40, %35, %29, %25, %19, %10
  %68 = phi i32 [ %17, %10 ], [ -22, %19 ], [ -22, %25 ], [ -36, %29 ], [ -36, %35 ], [ %65, %40 ]
  call void @crypto_drop_spawn(ptr noundef %11) #7
  call void @kfree(ptr noundef nonnull %8) #7
  br label %69

69:                                               ; preds = %67, %40, %6, %2
  %70 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %68, %67 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ctr_crypt(ptr noundef %0) #2 {
  %2 = alloca [31 x i8], align 1
  %3 = alloca [31 x i8], align 1
  %4 = alloca %struct.skcipher_walk, align 4
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false), !annotation !8
  %13 = call i32 @skcipher_walk_virt(ptr noundef nonnull %4, ptr noundef %0, i1 noundef zeroext false) #7
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %12
  br i1 %16, label %62, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.anon.22, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 10
  %21 = ptrtoint ptr %3 to i32
  br label %22

22:                                               ; preds = %57, %17
  %23 = phi i32 [ %15, %17 ], [ %60, %57 ]
  %24 = load ptr, ptr %18, align 4
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %24, %25
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.crypto_alg, ptr %27, i32 0, i32 11, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %27, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  br i1 %26, label %32, label %47

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %27, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %3, i8 0, i32 31, i1 false) #7, !annotation !8
  %36 = add i32 %34, %21
  %37 = xor i32 %34, -1
  %38 = and i32 %36, %37
  %39 = inttoptr i32 %38 to ptr
  br label %40

40:                                               ; preds = %40, %32
  %41 = phi i32 [ %23, %32 ], [ %44, %40 ]
  %42 = phi ptr [ %24, %32 ], [ %43, %40 ]
  call void %29(ptr noundef %8, ptr noundef %39, ptr noundef %35) #7
  call void @__crypto_xor(ptr noundef %42, ptr noundef %42, ptr noundef %39, i32 noundef %31) #7
  call void @crypto_inc(ptr noundef %35, i32 noundef %31) #7
  %43 = getelementptr i8, ptr %42, i32 %31
  %44 = sub i32 %41, %31
  %45 = icmp ult i32 %44, %31
  br i1 %45, label %46, label %40

46:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %3) #7
  br label %57

47:                                               ; preds = %22
  %48 = load ptr, ptr %20, align 4
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi ptr [ %24, %47 ], [ %53, %49 ]
  %51 = phi ptr [ %25, %47 ], [ %54, %49 ]
  %52 = phi i32 [ %23, %47 ], [ %55, %49 ]
  call void %29(ptr noundef %8, ptr noundef %51, ptr noundef %48) #7
  call void @__crypto_xor(ptr noundef %51, ptr noundef %51, ptr noundef %50, i32 noundef %31) #7
  call void @crypto_inc(ptr noundef %48, i32 noundef %31) #7
  %53 = getelementptr i8, ptr %50, i32 %31
  %54 = getelementptr i8, ptr %51, i32 %31
  %55 = sub i32 %52, %31
  %56 = icmp ult i32 %55, %31
  br i1 %56, label %57, label %49

57:                                               ; preds = %49, %46
  %58 = phi i32 [ %44, %46 ], [ %55, %49 ]
  %59 = call i32 @skcipher_walk_done(ptr noundef nonnull %4, i32 noundef %58) #7
  %60 = load i32, ptr %14, align 4
  %61 = icmp ult i32 %60, %12
  br i1 %61, label %62, label %22

62:                                               ; preds = %57, %1
  %63 = phi i32 [ %13, %1 ], [ %59, %57 ]
  %64 = phi i32 [ %15, %1 ], [ %60, %57 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr inbounds %struct.crypto_alg, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.crypto_alg, ptr %67, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 10
  %73 = load ptr, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %2, i8 0, i32 31, i1 false) #7, !annotation !8
  %74 = ptrtoint ptr %2 to i32
  %75 = add i32 %71, %74
  %76 = xor i32 %71, -1
  %77 = and i32 %75, %76
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.anon.22, ptr %4, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %8, ptr noundef %78, ptr noundef %73) #7
  call void @__crypto_xor(ptr noundef %82, ptr noundef %78, ptr noundef %80, i32 noundef %64) #7
  call void @crypto_inc(ptr noundef %73, i32 noundef %69) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #7
  %83 = call i32 @skcipher_walk_done(ptr noundef nonnull %4, i32 noundef 0) #7
  br label %84

84:                                               ; preds = %66, %62
  %85 = phi i32 [ %83, %66 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #7
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %9 = add i32 %2, -4
  %10 = getelementptr i8, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 64
  %14 = and i32 %13, -1048321
  store i32 %14, ptr %12, align 64
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1048320
  %18 = or i32 %17, %14
  store i32 %18, ptr %12, align 64
  %19 = tail call i32 @crypto_skcipher_setkey(ptr noundef %7, ptr noundef %1, i32 noundef %9) #7
  br label %20

20:                                               ; preds = %5, %3
  %21 = phi i32 [ %19, %5 ], [ -22, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_crypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  %12 = add i32 %9, %11
  %13 = xor i32 %9, -1
  %14 = and i32 %12, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2
  %17 = getelementptr i8, ptr %3, i32 68
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %15, align 1
  %19 = getelementptr i8, ptr %15, i32 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i64, ptr %21, align 1
  store i64 %22, ptr %19, align 1
  %23 = getelementptr i8, ptr %15, i32 12
  store i32 16777216, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 4, i32 3
  store ptr %24, ptr %25, align 16
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 4, i32 1
  store ptr %29, ptr %32, align 8
  %33 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 4, i32 2
  store ptr %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 4, i32 4
  store i32 %27, ptr %34, align 4
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %0, align 64
  %40 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 2
  store ptr %36, ptr %40, align 8
  %41 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 3
  store ptr %38, ptr %41, align 4
  store i32 %39, ptr %16, align 64
  %42 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, ptr %15, i32 0, i32 2, i32 1
  store ptr %15, ptr %42, align 4
  %43 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %16) #7
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rfc3686_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #7
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 128
  %15 = and i32 %14, -64
  %16 = load i32, ptr %5, align 64
  %17 = add i32 %15, %16
  store i32 %17, ptr %0, align 64
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc3686_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rfc3686_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_templates(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
