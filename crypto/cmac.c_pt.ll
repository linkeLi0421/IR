; ModuleID = '/llk/IR/crypto/cmac.c_pt.bc'
source_filename = "../crypto/cmac.c"
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
%struct.shash_instance = type { ptr, [60 x i8], %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { [128 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.8, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.7, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.7 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@__UNIQUE_ID_license104 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description105 = internal constant [38 x i8] c"description=CMAC keyed hash algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace106 = internal constant [11 x i8] c"alias=cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto107 = internal constant [18 x i8] c"alias=crypto-cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns108 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@crypto_cmac_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @cmac_create, [128 x i8] c"cmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto107, ptr @__UNIQUE_ID_alias_userspace106, ptr @__UNIQUE_ID_description105, ptr @__UNIQUE_ID_import_ns108, ptr @__UNIQUE_ID_license104], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cmac_tmpl) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cmac_tmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cmac_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 14, ptr noundef nonnull %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %60

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 668) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #9
  %16 = load i32, ptr %3, align 4
  %17 = or i32 %16, 15
  %18 = call i32 @crypto_grab_spawn(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 1, i32 noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1, i32 1, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %58 [
    i32 16, label %25
    i32 8, label %25
  ]

25:                                               ; preds = %20, %20
  %26 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 4
  %27 = call i32 @crypto_inst_setname(ptr noundef %12, ptr noundef %26, ptr noundef %22) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 6
  %35 = load i32, ptr %34, align 32
  %36 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %35, ptr %36, align 32
  %37 = load i32, ptr %23, align 4
  %38 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %23, align 4
  %40 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 64
  store i32 %39, ptr %40, align 64
  %41 = add i32 %31, 64
  %42 = and i32 %41, -64
  %43 = load i32, ptr %23, align 4
  %44 = shl i32 %43, 1
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 40
  store i32 %45, ptr %46, align 8
  %47 = load i32, ptr %23, align 4
  %48 = shl i32 %47, 1
  %49 = add i32 %48, %42
  %50 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  store ptr @cmac_init_tfm, ptr %51, align 64
  %52 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  store ptr @cmac_exit_tfm, ptr %52, align 4
  store ptr @crypto_cmac_digest_init, ptr %32, align 64
  %53 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_cmac_digest_update, ptr %53, align 4
  %54 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_cmac_digest_final, ptr %54, align 8
  %55 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store ptr @crypto_cmac_digest_setkey, ptr %55, align 4
  store ptr @shash_free_singlespawn_instance, ptr %8, align 64
  %56 = call i32 @shash_register_instance(ptr noundef %0, ptr noundef nonnull %8) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %29, %25, %20, %10
  %59 = phi i32 [ %18, %10 ], [ %27, %25 ], [ %56, %29 ], [ -22, %20 ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %8) #9
  br label %60

60:                                               ; preds = %58, %29, %6, %2
  %61 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %59, %58 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %61
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
define internal i32 @cmac_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_instance, ptr %3, i32 0, i32 4
  %5 = tail call ptr @crypto_spawn_tfm(ptr noundef %4, i32 noundef 1, i32 noundef 15) #9
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
define internal void @cmac_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crypto_cmac_digest_init(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 1, i32 1
  %11 = ptrtoint ptr %10 to i32
  %12 = add i32 %6, %11
  %13 = xor i32 %6, -1
  %14 = and i32 %12, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr i8, ptr %15, i32 %9
  store i32 0, ptr %7, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %16, i8 0, i32 %9, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 1
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 1, i32 1
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %8, %15
  %17 = xor i32 %8, -1
  %18 = and i32 %16, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr i8, ptr %19, i32 %13
  %21 = load i32, ptr %10, align 4
  %22 = add i32 %21, %2
  %23 = icmp ugt i32 %22, %13
  %24 = getelementptr i8, ptr %19, i32 %21
  br i1 %23, label %28, label %25

25:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %1, i32 %2, i1 false)
  %26 = load i32, ptr %10, align 4
  %27 = add i32 %26, %2
  br label %46

28:                                               ; preds = %3
  %29 = sub i32 %13, %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %1, i32 %29, i1 false)
  %30 = load i32, ptr %10, align 4
  %31 = sub i32 %13, %30
  %32 = sub i32 %2, %31
  %33 = getelementptr i8, ptr %1, i32 %31
  tail call void @__crypto_xor(ptr noundef %20, ptr noundef %20, ptr noundef %19, i32 noundef %13) #9
  tail call void @crypto_cipher_encrypt_one(ptr noundef %11, ptr noundef %20, ptr noundef %20) #9
  store i32 0, ptr %10, align 4
  %34 = icmp ugt i32 %32, %13
  br i1 %34, label %35, label %41

35:                                               ; preds = %35, %28
  %36 = phi ptr [ %38, %35 ], [ %33, %28 ]
  %37 = phi i32 [ %39, %35 ], [ %32, %28 ]
  tail call void @__crypto_xor(ptr noundef %20, ptr noundef %20, ptr noundef %36, i32 noundef %13) #9
  tail call void @crypto_cipher_encrypt_one(ptr noundef %11, ptr noundef %20, ptr noundef %20) #9
  %38 = getelementptr i8, ptr %36, i32 %13
  %39 = sub i32 %37, %13
  %40 = icmp ugt i32 %39, %13
  br i1 %40, label %35, label %41

41:                                               ; preds = %35, %28
  %42 = phi i32 [ %32, %28 ], [ %39, %35 ]
  %43 = phi ptr [ %33, %28 ], [ %38, %35 ]
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %43, i32 %42, i1 false)
  br label %46

46:                                               ; preds = %45, %25
  %47 = phi i32 [ %42, %45 ], [ %27, %25 ]
  store i32 %47, ptr %10, align 4
  br label %48

48:                                               ; preds = %46, %41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_final(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  %9 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 1, i32 1
  %14 = ptrtoint ptr %13 to i32
  %15 = add i32 %7, %14
  %16 = xor i32 %7, -1
  %17 = and i32 %15, %16
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = getelementptr i8, ptr %18, i32 %19
  store i8 -128, ptr %22, align 1
  %23 = load i32, ptr %9, align 4
  %24 = xor i32 %23, -1
  %25 = add i32 %12, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %22, i32 1
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %25, i1 false)
  br label %29

29:                                               ; preds = %27, %21, %2
  %30 = phi i32 [ 0, %2 ], [ %12, %27 ], [ %12, %21 ]
  %31 = getelementptr i8, ptr %18, i32 %12
  %32 = or i32 %7, 7
  %33 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1, i32 1
  %34 = ptrtoint ptr %33 to i32
  %35 = add i32 %32, %34
  %36 = xor i32 %32, -1
  %37 = and i32 %35, %36
  %38 = inttoptr i32 %37 to ptr
  tail call void @__crypto_xor(ptr noundef %31, ptr noundef %31, ptr noundef %18, i32 noundef %12) #9
  %39 = getelementptr i8, ptr %38, i32 %30
  tail call void @__crypto_xor(ptr noundef %31, ptr noundef %31, ptr noundef %39, i32 noundef %12) #9
  tail call void @crypto_cipher_encrypt_one(ptr noundef %10, ptr noundef %1, ptr noundef %31) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cmac_digest_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1, i32 1
  %12 = ptrtoint ptr %11 to i32
  %13 = or i32 %7, 7
  %14 = add i32 %13, %12
  %15 = xor i32 %13, -1
  %16 = and i32 %14, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @crypto_cipher_setkey(ptr noundef %18, ptr noundef %1, i32 noundef %2) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr align 8 %17, i8 0, i32 %10, i1 false)
  %22 = load ptr, ptr %8, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %22, ptr noundef %17, ptr noundef %17) #9
  switch i32 %10, label %60 [
    i32 16, label %23
    i32 8, label %43
  ]

23:                                               ; preds = %21
  %24 = getelementptr i64, ptr %17, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = load i64, ptr %17, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %29 = icmp slt i64 %28, 0
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %26, i64 1)
  %31 = shl i64 %26, 1
  %32 = select i1 %29, i64 135, i64 0
  %33 = xor i64 %32, %31
  %34 = tail call i64 @llvm.bswap.i64(i64 %30)
  store i64 %34, ptr %17, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %33)
  store i64 %35, ptr %24, align 8
  %36 = icmp slt i64 %30, 0
  %37 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %31, i64 1)
  %38 = shl i64 %33, 1
  %39 = select i1 %36, i64 135, i64 0
  %40 = xor i64 %39, %38
  %41 = tail call i64 @llvm.bswap.i64(i64 %37)
  %42 = getelementptr i64, ptr %17, i32 2
  store i64 %41, ptr %42, align 8
  br label %55

43:                                               ; preds = %21
  %44 = load i64, ptr %17, align 8
  %45 = tail call i64 @llvm.bswap.i64(i64 %44)
  %46 = icmp slt i64 %45, 0
  %47 = shl i64 %45, 1
  %48 = select i1 %46, i64 27, i64 0
  %49 = xor i64 %48, %47
  %50 = tail call i64 @llvm.bswap.i64(i64 %49)
  store i64 %50, ptr %17, align 8
  %51 = icmp slt i64 %49, 0
  %52 = shl i64 %49, 1
  %53 = select i1 %51, i64 27, i64 0
  %54 = xor i64 %53, %52
  br label %55

55:                                               ; preds = %43, %23
  %56 = phi i64 [ %54, %43 ], [ %40, %23 ]
  %57 = phi i32 [ 1, %43 ], [ 3, %23 ]
  %58 = tail call i64 @llvm.bswap.i64(i64 %56)
  %59 = getelementptr i64, ptr %17, i32 %57
  store i64 %58, ptr %59, align 8
  br label %60

60:                                               ; preds = %55, %21, %3
  ret i32 %19
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
