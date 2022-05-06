; ModuleID = '/llk/IR/crypto/hmac.c_pt.bc'
source_filename = "../crypto/hmac.c"
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
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@__UNIQUE_ID_license233 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [32 x i8] c"description=HMAC hash algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace235 = internal constant [11 x i8] c"alias=hmac\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto236 = internal constant [18 x i8] c"alias=crypto-hmac\00", section ".modinfo", align 1
@hmac_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @hmac_create, [128 x i8] c"hmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto236, ptr @__UNIQUE_ID_alias_userspace235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license233], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @hmac_tmpl) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @hmac_tmpl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 14, ptr noundef nonnull %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %76

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 668) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #7
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_shash(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 1, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -128
  %23 = call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %22) #7
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %21, i32 16
  %26 = load i32, ptr %25, align 16
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr i8, ptr %21, i32 -64
  %31 = load i32, ptr %30, align 64
  %32 = getelementptr i8, ptr %21, i32 -60
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %21, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %31, %35
  %37 = icmp ult i32 %33, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %74, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 4
  %41 = call i32 @crypto_inst_setname(ptr noundef %12, ptr noundef %40, ptr noundef %21) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %21, i32 32
  %45 = load i32, ptr %44, align 32
  %46 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2
  %47 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %45, ptr %47, align 32
  %48 = load i32, ptr %34, align 4
  %49 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %21, i32 28
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %50, align 4
  %54 = add i32 %53, %33
  %55 = xor i32 %53, -1
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 64
  store i32 %31, ptr %57, align 64
  %58 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 68
  store i32 %56, ptr %58, align 4
  %59 = shl i32 %56, 1
  %60 = add i32 %59, 63
  %61 = and i32 %60, -64
  %62 = or i32 %61, 4
  %63 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 %62, ptr %63, align 8
  store ptr @hmac_init, ptr %46, align 64
  %64 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @hmac_update, ptr %64, align 4
  %65 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @hmac_final, ptr %65, align 8
  %66 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @hmac_finup, ptr %66, align 4
  %67 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @hmac_export, ptr %67, align 4
  %68 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store ptr @hmac_import, ptr %68, align 8
  %69 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store ptr @hmac_setkey, ptr %69, align 4
  %70 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store ptr @hmac_init_tfm, ptr %70, align 32
  %71 = getelementptr inbounds %struct.shash_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 36
  store ptr @hmac_exit_tfm, ptr %71, align 4
  store ptr @shash_free_singlespawn_instance, ptr %8, align 64
  %72 = call i32 @shash_register_instance(ptr noundef %0, ptr noundef nonnull %8) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %43, %39, %29, %24, %10
  %75 = phi i32 [ %17, %10 ], [ -22, %24 ], [ -22, %29 ], [ %41, %39 ], [ %72, %43 ]
  call void @shash_free_singlespawn_instance(ptr noundef nonnull %8) #7
  br label %76

76:                                               ; preds = %74, %43, %6, %2
  %77 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %75, %74 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_init(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 1
  %4 = ptrtoint ptr %3 to i32
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %4
  %10 = xor i32 %8, -1
  %11 = and i32 %9, %10
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %14 = getelementptr i8, ptr %6, i32 -60
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 1
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = ptrtoint ptr %17 to i32
  %19 = add i32 %18, 63
  %20 = and i32 %19, -64
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %21, align 64
  store ptr %22, ptr %13, align 8
  %23 = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 64
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.crypto_shash, ptr %22, i32 0, i32 2, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 -104
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 %31(ptr noundef %13, ptr noundef %12) #7
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i32 [ %32, %27 ], [ -126, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = tail call i32 @crypto_shash_update(ptr noundef %4, ptr noundef %1, i32 noundef %2) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_final(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = load i32, ptr %6, align 64
  %8 = getelementptr i8, ptr %5, i32 -60
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %13 = tail call i32 @crypto_shash_final(ptr noundef %12, ptr noundef %1) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load ptr, ptr %12, align 8
  %17 = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 64
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 1
  %23 = ptrtoint ptr %22 to i32
  %24 = add i32 %11, %23
  %25 = xor i32 %11, -1
  %26 = and i32 %24, %25
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr i8, ptr %27, i32 %9
  %29 = getelementptr inbounds %struct.crypto_shash, ptr %16, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -104
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 %32(ptr noundef %12, ptr noundef %28) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = tail call i32 @crypto_shash_finup(ptr noundef %12, ptr noundef %1, i32 noundef %7, ptr noundef %1) #7
  br label %37

37:                                               ; preds = %35, %21, %15, %2
  %38 = phi i32 [ %13, %2 ], [ %36, %35 ], [ %33, %21 ], [ -126, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -64
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr i8, ptr %7, i32 -60
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %15 = tail call i32 @crypto_shash_finup(ptr noundef %14, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load ptr, ptr %14, align 8
  %19 = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 64
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1
  %25 = ptrtoint ptr %24 to i32
  %26 = add i32 %13, %25
  %27 = xor i32 %13, -1
  %28 = and i32 %26, %27
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr i8, ptr %29, i32 %11
  %31 = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 -104
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 %34(ptr noundef %14, ptr noundef %30) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = tail call i32 @crypto_shash_finup(ptr noundef %14, ptr noundef %3, i32 noundef %9, ptr noundef %3) #7
  br label %39

39:                                               ; preds = %37, %23, %17, %4
  %40 = phi i32 [ %15, %4 ], [ %38, %37 ], [ %35, %23 ], [ -126, %17 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_export(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -108
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, ptr noundef %1) #7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_import(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 1
  %6 = ptrtoint ptr %5 to i32
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %6
  %12 = xor i32 %10, -1
  %13 = and i32 %11, %12
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr i8, ptr %8, i32 -60
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 1
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %19, 63
  %21 = and i32 %20, -64
  %22 = inttoptr i32 %21 to ptr
  %23 = load ptr, ptr %22, align 64
  store ptr %23, ptr %3, align 8
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 64
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.crypto_shash, ptr %23, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -104
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 %32(ptr noundef %3, ptr noundef %1) #7
  br label %34

34:                                               ; preds = %28, %2
  %35 = phi i32 [ %33, %28 ], [ -126, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [376 x i8], align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr i8, ptr %6, i32 -60
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = xor i32 %16, -1
  %19 = and i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr i8, ptr %20, i32 %12
  %22 = getelementptr i8, ptr %21, i32 %12
  %23 = ptrtoint ptr %22 to i32
  %24 = add i32 %23, 63
  %25 = and i32 %24, -64
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 64
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(376) %4, i8 0, i32 376, i1 false), !annotation !8
  store ptr %27, ptr %4, align 8
  %28 = icmp ult i32 %8, %2
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = call i32 @crypto_shash_digest(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2, ptr noundef %20) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %95

32:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %2, i1 false)
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %10, %29 ], [ %2, %32 ]
  %35 = getelementptr i8, ptr %20, i32 %34
  %36 = sub i32 %8, %34
  call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %36, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %20, i32 %8, i1 false)
  %37 = icmp eq i32 %8, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %46, %38 ], [ 0, %33 ]
  %40 = getelementptr i8, ptr %20, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = xor i8 %41, 54
  store i8 %42, ptr %40, align 1
  %43 = getelementptr i8, ptr %21, i32 %39
  %44 = load i8, ptr %43, align 1
  %45 = xor i8 %44, 92
  store i8 %45, ptr %43, align 1
  %46 = add nuw i32 %39, 1
  %47 = icmp eq i32 %46, %8
  br i1 %47, label %48, label %38

48:                                               ; preds = %38, %33
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 64
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.crypto_shash, ptr %49, i32 0, i32 2, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 -128
  %58 = load ptr, ptr %57, align 64
  %59 = call i32 %58(ptr noundef nonnull %4) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %54
  %62 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %20, i32 noundef %8) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.crypto_shash, ptr %65, i32 0, i32 2, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 -108
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef nonnull %4, ptr noundef %20) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.crypto_shash, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 64
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.crypto_shash, ptr %73, i32 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 -128
  %82 = load ptr, ptr %81, align 64
  %83 = call i32 %82(ptr noundef nonnull %4) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %21, i32 noundef %8) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.crypto_shash, ptr %89, i32 0, i32 2, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 -108
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef nonnull %4, ptr noundef %21) #7
  br label %95

95:                                               ; preds = %88, %85, %78, %72, %64, %61, %54, %48, %29
  %96 = phi i32 [ %30, %29 ], [ %59, %54 ], [ %62, %61 ], [ %70, %64 ], [ %83, %78 ], [ %94, %88 ], [ %86, %85 ], [ -126, %48 ], [ -126, %72 ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %4) #7
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hmac_init_tfm(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 -60
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %9 to i32
  br label %28

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %6, %15
  %17 = xor i32 %6, -1
  %18 = and i32 %16, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = shl i32 %8, 1
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = ptrtoint ptr %21 to i32
  %23 = add i32 %22, 63
  %24 = and i32 %23, -64
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %9, align 64
  %27 = add i32 %26, 8
  store i32 %27, ptr %0, align 64
  store ptr %9, ptr %25, align 64
  br label %28

28:                                               ; preds = %13, %11
  %29 = phi i32 [ %12, %11 ], [ 0, %13 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hmac_exit_tfm(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %3 = ptrtoint ptr %2 to i32
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %3
  %9 = xor i32 %7, -1
  %10 = and i32 %8, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr i8, ptr %5, i32 -60
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 1
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %16, 63
  %18 = and i32 %17, -64
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.crypto_shash, ptr %20, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %20, ptr noundef %21) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shash_free_singlespawn_instance(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
