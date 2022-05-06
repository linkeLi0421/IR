; ModuleID = '/llk/IR/crypto/xts.c_pt.bc'
source_filename = "../crypto/xts.c"
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
%struct.skcipher_instance = type { ptr, [60 x i8], %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.68, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xts_instance_ctx = type { %struct.crypto_skcipher_spawn, [128 x i8] }
%struct.crypto_skcipher_spawn = type { %struct.crypto_spawn }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.69, ptr, i32, i8, i8 }
%union.anon.69 = type { ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.le128 = type { i64, i64 }
%struct.u128 = type { i64, i64 }
%struct.skcipher_walk = type { %union.anon.70, %union.anon.70, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.72 = type { ptr, ptr }

@__UNIQUE_ID_license233 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [34 x i8] c"description=XTS block cipher mode\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace235 = internal constant [10 x i8] c"alias=xts\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto236 = internal constant [17 x i8] c"alias=crypto-xts\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns237 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@xts_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @xts_create, [128 x i8] c"xts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"ecb(%s)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"xts\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ecb(\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xts(%s)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto236, ptr @__UNIQUE_ID_alias_userspace235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_import_ns237, ptr @__UNIQUE_ID_license233], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @xts_tmpl) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @xts_tmpl) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %2
  %7 = getelementptr ptr, ptr %1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @crypto_attr_alg_name(ptr noundef %8) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %9 to i32
  br label %93

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 732) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1
  %19 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @crypto_grab_skcipher(ptr noundef %18, ptr noundef %19, ptr noundef %9, i32 noundef 0, i32 noundef %20) #11
  %22 = icmp eq i32 %21, -2
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1, i32 1, i32 24
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %24, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %9)
  %26 = icmp sgt i32 %25, 127
  br i1 %26, label %91, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = call i32 @crypto_grab_skcipher(ptr noundef %18, ptr noundef %19, ptr noundef %24, i32 noundef 0, i32 noundef %28) #11
  br label %30

30:                                               ; preds = %27, %17
  %31 = phi i32 [ %29, %27 ], [ %21, %17 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1, i32 1, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %91

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %35, i32 -36
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %39
  %44 = call i32 @crypto_inst_setname(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %35) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %35, i32 40
  %48 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(5) @.str.2, i32 noundef 4)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1, i32 1, i32 24
  %52 = getelementptr i8, ptr %35, i32 44
  %53 = call i32 @strlcpy(ptr noundef %51, ptr noundef %52, i32 noundef 128) #11
  %54 = add i32 %53, -128
  %55 = icmp ult i32 %54, -126
  br i1 %55, label %91, label %56

56:                                               ; preds = %50
  %57 = add nsw i32 %53, -1
  %58 = getelementptr %struct.xts_instance_ctx, ptr %18, i32 0, i32 1, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 41
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  store i8 0, ptr %58, align 1
  %62 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %62, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %51)
  %64 = icmp sgt i32 %63, 127
  br i1 %64, label %91, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %35, i32 32
  %67 = load i32, ptr %66, align 32
  %68 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2
  %69 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %67, ptr %69, align 32
  %70 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 16, ptr %70, align 4
  %71 = getelementptr i8, ptr %35, i32 28
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 7
  %74 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 16, ptr %75, align 4
  %76 = getelementptr i8, ptr %35, i32 -44
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 1
  %79 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 20
  store i32 %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %35, i32 -40
  %81 = load i32, ptr %80, align 8
  %82 = shl i32 %81, 1
  %83 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %84, align 8
  %85 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @xts_init_tfm, ptr %85, align 4
  %86 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @xts_exit_tfm, ptr %86, align 16
  store ptr @xts_setkey, ptr %68, align 64
  %87 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @xts_encrypt, ptr %87, align 4
  %88 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @xts_decrypt, ptr %88, align 8
  store ptr @xts_free_instance, ptr %15, align 64
  %89 = call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef nonnull %15) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %65, %61, %56, %50, %46, %43, %39, %33, %30, %23
  %92 = phi i32 [ -36, %23 ], [ %31, %30 ], [ -22, %33 ], [ -22, %39 ], [ %44, %43 ], [ -22, %46 ], [ %89, %65 ], [ -22, %56 ], [ -22, %50 ], [ -36, %61 ]
  call void @crypto_drop_spawn(ptr noundef %18) #11
  call void @kfree(ptr noundef nonnull %15) #11
  br label %93

93:                                               ; preds = %91, %65, %13, %11, %2
  %94 = phi i32 [ %12, %11 ], [ %4, %2 ], [ -12, %13 ], [ %92, %91 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_inst_setname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #11
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %22

10:                                               ; preds = %1
  store ptr %6, ptr %5, align 4
  %11 = getelementptr i8, ptr %3, i32 476
  %12 = tail call ptr @crypto_alloc_base(ptr noundef %11, i32 noundef 1, i32 noundef 15) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %15, ptr noundef %16) #11
  %17 = ptrtoint ptr %12 to i32
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr %12, ptr %19, align 4
  %20 = load i32, ptr %6, align 64
  %21 = add i32 %20, 128
  store i32 %21, ptr %0, align 64
  br label %22

22:                                               ; preds = %18, %14, %8
  %23 = phi i32 [ %9, %8 ], [ %17, %14 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = lshr i32 %2, 1
  br i1 %11, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %1, i32 %12
  %15 = tail call i32 @__crypto_memneq(ptr noundef %1, ptr noundef %14, i32 noundef %12) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %13, %7
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 64
  %21 = and i32 %20, -1048321
  store i32 %21, ptr %19, align 64
  %22 = load i32, ptr %8, align 64
  %23 = and i32 %22, 1048320
  %24 = or i32 %23, %21
  store i32 %24, ptr %19, align 64
  %25 = getelementptr i8, ptr %1, i32 %12
  %26 = tail call i32 @crypto_cipher_setkey(ptr noundef %19, ptr noundef %25, i32 noundef %12) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 64
  %32 = and i32 %31, -1048321
  store i32 %32, ptr %30, align 64
  %33 = load i32, ptr %8, align 64
  %34 = and i32 %33, 1048320
  %35 = or i32 %34, %32
  store i32 %35, ptr %30, align 64
  %36 = tail call i32 @crypto_skcipher_setkey(ptr noundef %29, ptr noundef %1, i32 noundef %12) #11
  br label %37

37:                                               ; preds = %28, %17, %13, %3
  %38 = phi i32 [ %36, %28 ], [ %26, %17 ], [ -22, %3 ], [ -22, %13 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %3 = load i32, ptr %0, align 64
  %4 = icmp ult i32 %3, 16
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %11, ptr %12, align 16
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr @xts_encrypt_done, ptr %15, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %3, -16
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %19, ptr %22, align 4
  store i32 %20, ptr %2, align 64
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr i8, ptr %8, i32 68
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %25, ptr noundef %6, ptr noundef %27) #11
  %28 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %5
  %31 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %2) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, ptr %0, align 64
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !9

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @xts_cts_final(ptr noundef %0, ptr noundef nonnull @crypto_skcipher_encrypt)
  br label %42

42:                                               ; preds = %40, %36, %33, %30, %5, %1
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ], [ %34, %33 ], [ -22, %1 ], [ %31, %30 ], [ %28, %5 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %3 = load i32, ptr %0, align 64
  %4 = icmp ult i32 %3, 16
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %11, ptr %12, align 16
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr @xts_decrypt_done, ptr %15, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %3, -16
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %19, ptr %22, align 4
  store i32 %20, ptr %2, align 64
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr i8, ptr %8, i32 68
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @crypto_cipher_encrypt_one(ptr noundef %25, ptr noundef %6, ptr noundef %27) #11
  %28 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %5
  %31 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %2) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, ptr %0, align 64
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !9

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @xts_cts_final(ptr noundef %0, ptr noundef nonnull @crypto_skcipher_decrypt)
  br label %42

42:                                               ; preds = %40, %36, %33, %30, %5, %1
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ], [ %34, %33 ], [ -22, %1 ], [ %31, %30 ], [ %28, %5 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_free_instance(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_encrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 2, i32 4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -513
  store i32 %9, ptr %7, align 4
  %10 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i32, ptr %4, align 64
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !9

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @xts_cts_final(ptr noundef %4, ptr noundef nonnull @crypto_skcipher_encrypt)
  %18 = icmp eq i32 %17, -115
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %12, %6, %2
  %20 = phi i32 [ %1, %2 ], [ %10, %6 ], [ %17, %16 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef %21, i32 noundef %20) #11
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xts_cts_final(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [2 x %struct.le128], align 8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = load i32, ptr %0, align 64
  %8 = and i32 %7, -16
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %11 = and i32 %7, 15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %8, -16
  %16 = tail call ptr @scatterwalk_ffwd(ptr noundef %12, ptr noundef %14, i32 noundef %15) #11
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4
  store ptr %16, ptr %17, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %16, i32 noundef 0, i32 noundef 16, i32 noundef 0) #11
  %18 = getelementptr inbounds [2 x %struct.le128], ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %20, i32 noundef %8, i32 noundef %11, i32 noundef 0) #11
  %21 = load i64, ptr %9, align 8
  %22 = load i64, ptr %3, align 8
  %23 = xor i64 %22, %21
  store i64 %23, ptr %3, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.u128, ptr %3, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = xor i64 %27, %25
  store i64 %28, ptr %26, align 8
  %29 = load ptr, ptr %17, align 16
  %30 = or i32 %11, 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 0, i32 noundef %30, i32 noundef 1) #11
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %32, ptr %33, align 16
  %34 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr @xts_cts_done, ptr %36, align 8
  %37 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %35, ptr %38, align 4
  %39 = load ptr, ptr %17, align 16
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %39, ptr %41, align 4
  store i32 16, ptr %10, align 64
  %42 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr null, ptr %42, align 4
  %43 = call i32 %1(ptr noundef %10) #11, !callees !10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load ptr, ptr %17, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %46, i32 noundef 0, i32 noundef 16, i32 noundef 0) #11
  %47 = load i64, ptr %9, align 8
  %48 = load i64, ptr %3, align 8
  %49 = xor i64 %48, %47
  store i64 %49, ptr %3, align 8
  %50 = load i64, ptr %24, align 8
  %51 = load i64, ptr %26, align 8
  %52 = xor i64 %51, %50
  store i64 %52, ptr %26, align 8
  %53 = load ptr, ptr %17, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %53, i32 noundef 0, i32 noundef 16, i32 noundef 1) #11
  br label %54

54:                                               ; preds = %45, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xts_xor_tweak(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.skcipher_walk, align 4
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = load i32, ptr %0, align 64
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false), !annotation !8
  %11 = load i64, ptr %5, align 64
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  %13 = load i64, ptr %12, align 8
  br i1 %1, label %14, label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %7, ptr %16, align 16
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi ptr [ %15, %14 ], [ %0, %3 ]
  %19 = call i32 @skcipher_walk_virt(ptr noundef nonnull %4, ptr noundef %18, i1 noundef zeroext false) #11
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %96, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.skcipher_walk, ptr %4, i32 0, i32 5
  br label %27

27:                                               ; preds = %92, %23
  %28 = phi i32 [ %21, %23 ], [ %94, %92 ]
  %29 = phi i64 [ %13, %23 ], [ %87, %92 ]
  %30 = phi i64 [ %11, %23 ], [ %89, %92 ]
  %31 = load ptr, ptr %24, align 4
  %32 = load ptr, ptr %25, align 4
  br label %33

33:                                               ; preds = %76, %27
  %34 = phi i64 [ %30, %27 ], [ %89, %76 ]
  %35 = phi i64 [ %29, %27 ], [ %87, %76 ]
  %36 = phi i32 [ %28, %27 ], [ %90, %76 ]
  %37 = phi ptr [ %31, %27 ], [ %78, %76 ]
  %38 = phi ptr [ %32, %27 ], [ %77, %76 ]
  br i1 %10, label %76, label %39, !prof !9

39:                                               ; preds = %33
  %40 = load i32, ptr %26, align 4
  %41 = load i32, ptr %20, align 4
  %42 = add i32 %40, %36
  %43 = sub i32 %42, %41
  %44 = icmp ult i32 %43, 32
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  br i1 %2, label %60, label %46

46:                                               ; preds = %45
  br i1 %1, label %47, label %48

47:                                               ; preds = %46
  store i64 %34, ptr %5, align 64
  store i64 %35, ptr %12, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = icmp slt i64 %35, 0
  %50 = select i1 %49, i64 135, i64 0
  %51 = call i64 @llvm.fshl.i64(i64 %35, i64 %34, i64 1) #11
  %52 = shl i64 %34, 1
  %53 = xor i64 %50, %52
  %54 = load i64, ptr %37, align 8
  %55 = xor i64 %53, %54
  store i64 %55, ptr %38, align 8
  %56 = getelementptr inbounds %struct.u128, ptr %37, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  %58 = xor i64 %57, %51
  %59 = getelementptr inbounds %struct.u128, ptr %38, i32 0, i32 1
  store i64 %58, ptr %59, align 8
  br label %73

60:                                               ; preds = %45
  %61 = load i64, ptr %37, align 8
  %62 = xor i64 %61, %34
  store i64 %62, ptr %38, align 8
  %63 = getelementptr inbounds %struct.u128, ptr %37, i32 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = xor i64 %64, %35
  %66 = getelementptr inbounds %struct.u128, ptr %38, i32 0, i32 1
  store i64 %65, ptr %66, align 8
  br i1 %1, label %67, label %73

67:                                               ; preds = %60
  %68 = icmp slt i64 %35, 0
  %69 = select i1 %68, i64 135, i64 0
  %70 = call i64 @llvm.fshl.i64(i64 %35, i64 %34, i64 1) #11
  store i64 %70, ptr %12, align 8
  %71 = shl i64 %34, 1
  %72 = xor i64 %69, %71
  store i64 %72, ptr %5, align 8
  br label %73

73:                                               ; preds = %67, %60, %48
  %74 = add i32 %36, -16
  %75 = call i32 @skcipher_walk_done(ptr noundef nonnull %4, i32 noundef %74) #11
  br label %96

76:                                               ; preds = %39, %33
  %77 = getelementptr %struct.le128, ptr %38, i32 1
  %78 = getelementptr %struct.le128, ptr %37, i32 1
  %79 = load i64, ptr %37, align 8
  %80 = xor i64 %79, %34
  store i64 %80, ptr %38, align 8
  %81 = getelementptr inbounds %struct.u128, ptr %37, i32 0, i32 1
  %82 = load i64, ptr %81, align 8
  %83 = xor i64 %82, %35
  %84 = getelementptr inbounds %struct.u128, ptr %38, i32 0, i32 1
  store i64 %83, ptr %84, align 8
  %85 = icmp slt i64 %35, 0
  %86 = select i1 %85, i64 135, i64 0
  %87 = call i64 @llvm.fshl.i64(i64 %35, i64 %34, i64 1) #11
  %88 = shl i64 %34, 1
  %89 = xor i64 %86, %88
  %90 = add i32 %36, -16
  %91 = icmp ugt i32 %90, 15
  br i1 %91, label %33, label %92

92:                                               ; preds = %76
  %93 = call i32 @skcipher_walk_done(ptr noundef nonnull %4, i32 noundef %90) #11
  %94 = load i32, ptr %20, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %27

96:                                               ; preds = %92, %73, %17
  %97 = phi i32 [ 0, %73 ], [ %19, %17 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #11
  ret i32 %97
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_cts_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.le128, align 8
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 6
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 1, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %10, i32 noundef 0, i32 noundef 16, i32 noundef 0) #11
  %11 = load i64, ptr %8, align 8
  %12 = load i64, ptr %3, align 8
  %13 = xor i64 %12, %11
  store i64 %13, ptr %3, align 8
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 1, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.u128, ptr %3, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %15
  store i64 %18, ptr %16, align 8
  %19 = load ptr, ptr %9, align 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %3, ptr noundef %19, i32 noundef 0, i32 noundef 16, i32 noundef 1) #11
  br label %20

20:                                               ; preds = %7, %2
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  call void %23(ptr noundef %21, i32 noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_decrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 2, i32 4, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -513
  store i32 %9, ptr %7, align 4
  %10 = tail call fastcc i32 @xts_xor_tweak(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext false) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i32, ptr %4, align 64
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !9

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @xts_cts_final(ptr noundef %4, ptr noundef nonnull @crypto_skcipher_decrypt)
  %18 = icmp eq i32 %17, -115
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %12, %6, %2
  %20 = phi i32 [ %1, %2 ], [ %10, %6 ], [ %17, %16 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef %21, i32 noundef %20) #11
  br label %24

24:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{ptr @crypto_skcipher_decrypt, ptr @crypto_skcipher_encrypt}
