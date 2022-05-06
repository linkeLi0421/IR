; ModuleID = '/llk/IR/crypto/authenc.c_pt.bc'
source_filename = "../crypto/authenc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_authenc_extractkeys:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_authenc_extractkeys\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_authenc_extractkeys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.rtattr = type { i16, i16 }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
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
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }

@__kstrtab_crypto_authenc_extractkeys = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_authenc_extractkeys = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_authenc_extractkeys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_authenc_extractkeys to i32), ptr @__kstrtab_crypto_authenc_extractkeys, ptr @__kstrtabns_crypto_authenc_extractkeys }, section "___ksymtab_gpl+crypto_authenc_extractkeys", align 4
@__UNIQUE_ID_license324 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [42 x i8] c"description=Simple AEAD wrapper for IPsec\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace326 = internal constant [14 x i8] c"alias=authenc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto327 = internal constant [21 x i8] c"alias=crypto-authenc\00", section ".modinfo", align 1
@crypto_authenc_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_authenc_create, [128 x i8] c"authenc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"authenc(%s,%s)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto327, ptr @__UNIQUE_ID_alias_userspace326, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_license324, ptr @__ksymtab_crypto_authenc_extractkeys], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_authenc_extractkeys(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 3
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2
  %7 = icmp ult i16 %6, 4
  %8 = zext i16 %6 to i32
  %9 = icmp ugt i32 %8, %2
  %10 = or i1 %7, %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtattr, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 1
  %15 = icmp eq i16 %6, 8
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %0, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = load i16, ptr %1, align 2
  %23 = zext i16 %22 to i32
  %24 = sub i32 %2, %23
  %25 = icmp ult i32 %24, %20
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = getelementptr i8, ptr %1, i32 %23
  %28 = sub i32 %24, %20
  %29 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %0, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  store ptr %27, ptr %0, align 4
  %30 = getelementptr i8, ptr %27, i32 %28
  %31 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %0, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %17, %11, %5, %3
  %33 = phi i32 [ 0, %26 ], [ -22, %5 ], [ -22, %3 ], [ -22, %11 ], [ -22, %17 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_authenc_tmpl) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_authenc_tmpl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_create(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %87

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 636) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1
  %13 = getelementptr ptr, ptr %1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @crypto_attr_alg_name(ptr noundef %14) #9
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @crypto_grab_ahash(ptr noundef %11, ptr noundef %12, ptr noundef %15, i32 noundef 0, i32 noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %84

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
  br i1 %29, label %30, label %84

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 32
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %22, align 64
  %34 = getelementptr i8, ptr %21, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  %37 = shl i32 %36, 1
  %38 = xor i32 %35, -1
  %39 = and i32 %37, %38
  %40 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 52
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2
  %42 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %43 = getelementptr i8, ptr %21, i32 40
  %44 = getelementptr i8, ptr %32, i32 40
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %42, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %43, ptr noundef %44)
  %46 = icmp sgt i32 %45, 127
  br i1 %46, label %84, label %47

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %49 = getelementptr i8, ptr %21, i32 168
  %50 = getelementptr i8, ptr %32, i32 168
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %48, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %49, ptr noundef %50)
  %52 = icmp sgt i32 %51, 127
  br i1 %52, label %84, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %32, i32 32
  %55 = load i32, ptr %54, align 32
  %56 = mul i32 %55, 10
  %57 = getelementptr i8, ptr %21, i32 32
  %58 = load i32, ptr %57, align 32
  %59 = add i32 %56, %58
  %60 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %59, ptr %60, align 32
  %61 = getelementptr i8, ptr %32, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %34, align 4
  %65 = getelementptr i8, ptr %32, i32 28
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %64
  %68 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 12, ptr %69, align 8
  %70 = getelementptr i8, ptr %32, i32 -36
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %71, ptr %72, align 8
  %73 = getelementptr i8, ptr %32, i32 -32
  %74 = load i32, ptr %73, align 32
  %75 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %74, ptr %75, align 32
  %76 = load i32, ptr %22, align 64
  %77 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @crypto_authenc_init_tfm, ptr %78, align 16
  %79 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @crypto_authenc_exit_tfm, ptr %79, align 4
  store ptr @crypto_authenc_setkey, ptr %41, align 64
  %80 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_authenc_encrypt, ptr %80, align 8
  %81 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @crypto_authenc_decrypt, ptr %81, align 4
  store ptr @crypto_authenc_free, ptr %8, align 64
  %82 = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %8) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %53, %47, %30, %19, %10
  %85 = phi i32 [ %17, %10 ], [ %28, %19 ], [ -36, %30 ], [ -36, %47 ], [ %82, %53 ]
  %86 = getelementptr inbounds %struct.aead_instance, ptr %8, i32 1, i32 1, i32 24
  call void @crypto_drop_spawn(ptr noundef %86) #9
  call void @crypto_drop_spawn(ptr noundef %11) #9
  call void @kfree(ptr noundef nonnull %8) #9
  br label %87

87:                                               ; preds = %84, %53, %6, %2
  %88 = phi i32 [ %4, %2 ], [ -12, %6 ], [ %85, %84 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_init_tfm(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %6 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %37

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %3, i32 476
  %12 = tail call ptr @crypto_spawn_tfm2(ptr noundef %11) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @crypto_get_default_null_skcipher() #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  store ptr %6, ptr %5, align 4
  %18 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store ptr %15, ptr %19, align 4
  %20 = getelementptr i8, ptr %3, i32 504
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 80
  %23 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 8
  %24 = load i32, ptr %23, align 32
  %25 = add i32 %24, 64
  %26 = load i32, ptr %12, align 64
  %27 = add i32 %26, 64
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = add i32 %22, %28
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %37

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %12, ptr noundef %32) #9
  br label %33

33:                                               ; preds = %31, %10
  %34 = phi ptr [ %12, %10 ], [ %15, %31 ]
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %36) #9
  br label %37

37:                                               ; preds = %33, %17, %8
  %38 = phi i32 [ %9, %8 ], [ %35, %33 ], [ 0, %17 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_exit_tfm(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %7) #9
  tail call void @crypto_put_default_null_skcipher() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = alloca %struct.crypto_authenc_keys, align 4
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %9 = icmp ugt i32 %2, 3
  br i1 %9, label %10, label %49

10:                                               ; preds = %3
  %11 = load i16, ptr %1, align 2
  %12 = icmp ult i16 %11, 4
  %13 = zext i16 %11 to i32
  %14 = icmp ugt i32 %13, %2
  %15 = or i1 %12, %14
  br i1 %15, label %49, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtattr, ptr %1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 1
  %20 = icmp eq i16 %11, 8
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = sub i32 %2, %13
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %1, i32 %13
  %30 = sub i32 %26, %25
  %31 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %32 = load i32, ptr %31, align 64
  %33 = and i32 %32, -1048321
  store i32 %33, ptr %31, align 64
  %34 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 64
  %36 = and i32 %35, 1048320
  %37 = or i32 %36, %33
  store i32 %37, ptr %31, align 64
  %38 = tail call i32 @crypto_ahash_setkey(ptr noundef %6, ptr noundef %29, i32 noundef %30) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = getelementptr i8, ptr %29, i32 %30
  %42 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  %43 = load i32, ptr %42, align 64
  %44 = and i32 %43, -1048321
  store i32 %44, ptr %42, align 64
  %45 = load i32, ptr %34, align 64
  %46 = and i32 %45, 1048320
  %47 = or i32 %46, %44
  store i32 %47, ptr %42, align 64
  %48 = tail call i32 @crypto_skcipher_setkey(ptr noundef %8, ptr noundef %41, i32 noundef %25) #9
  br label %49

49:                                               ; preds = %40, %28, %22, %16, %10, %3
  %50 = phi i32 [ %38, %28 ], [ %48, %40 ], [ -22, %10 ], [ -22, %3 ], [ -22, %16 ], [ -22, %22 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_encrypt(ptr noundef %0) #5 {
  %2 = alloca [448 x i8], align 64
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %8 = getelementptr i8, ptr %4, i32 68
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %13 = getelementptr i8, ptr %6, i32 504
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = tail call ptr @scatterwalk_ffwd(ptr noundef %7, ptr noundef %17, i32 noundef %19) #9
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %44, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %2, i8 0, i32 448, i1 false) #9, !annotation !8
  %27 = getelementptr i8, ptr %26, i32 72
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.crypto_skcipher, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 3
  store ptr %29, ptr %30, align 32
  %31 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 4
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %18, align 8
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 2
  store ptr %21, ptr %35, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 3
  store ptr %23, ptr %36, align 4
  store i32 %34, ptr %2, align 64
  %37 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  %41 = load ptr, ptr %22, align 8
  %42 = load i32, ptr %18, align 8
  %43 = call ptr @scatterwalk_ffwd(ptr noundef %40, ptr noundef %41, i32 noundef %42) #9
  br label %44

44:                                               ; preds = %39, %1
  %45 = phi ptr [ %43, %39 ], [ %20, %1 ]
  %46 = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 4, i32 3
  store ptr %46, ptr %47, align 16
  %48 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 4, i32 1
  store ptr @crypto_authenc_encrypt_done, ptr %50, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 4, i32 2
  store ptr %0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 4, i32 4
  store i32 %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 32
  %55 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 2
  store ptr %20, ptr %55, align 8
  %56 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 3
  store ptr %45, ptr %56, align 4
  store i32 %11, ptr %15, align 64
  %57 = getelementptr inbounds %struct.skcipher_request, ptr %15, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  %58 = call i32 @crypto_skcipher_encrypt(ptr noundef %15) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %44
  %61 = load i32, ptr %48, align 4
  %62 = load ptr, ptr %3, align 16
  %63 = getelementptr i8, ptr %62, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %62, i32 64
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %64, i32 504
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %12, i32 %68
  %70 = ptrtoint ptr %12 to i32
  %71 = getelementptr inbounds %struct.crypto_ahash, ptr %66, i32 0, i32 10, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.crypto_alg, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 1
  %76 = add i32 %75, %70
  %77 = xor i32 %74, -1
  %78 = and i32 %76, %77
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.crypto_ahash, ptr %66, i32 0, i32 10
  %81 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 3
  store ptr %80, ptr %81, align 16
  %82 = load ptr, ptr %22, align 8
  %83 = load i32, ptr %18, align 8
  %84 = load i32, ptr %10, align 4
  %85 = add i32 %84, %83
  %86 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 2
  store ptr %82, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 1
  store i32 %85, ptr %87, align 8
  %88 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 3
  store ptr %79, ptr %88, align 32
  %89 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 1
  store ptr @authenc_geniv_ahash_done, ptr %89, align 8
  %90 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 2
  store ptr %0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 4
  store i32 %61, ptr %91, align 4
  %92 = call i32 @crypto_ahash_digest(ptr noundef %69) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %60
  %95 = getelementptr i8, ptr %62, i32 -64
  %96 = load ptr, ptr %22, align 8
  %97 = load i32, ptr %18, align 8
  %98 = load i32, ptr %10, align 4
  %99 = add i32 %98, %97
  %100 = load i32, ptr %95, align 64
  call void @scatterwalk_map_and_copy(ptr noundef %79, ptr noundef %96, i32 noundef %99, i32 noundef %100, i32 noundef 1) #9
  br label %101

101:                                              ; preds = %94, %60, %44, %25
  %102 = phi i32 [ %37, %25 ], [ %58, %44 ], [ %92, %60 ], [ 0, %94 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_authenc_decrypt(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = load i32, ptr %4, align 64
  %6 = getelementptr i8, ptr %3, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 64
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %11 = getelementptr i8, ptr %7, i32 504
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = ptrtoint ptr %10 to i32
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %9, i32 0, i32 10, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 1
  %20 = add i32 %19, %14
  %21 = xor i32 %18, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.crypto_ahash, ptr %9, i32 0, i32 10
  %25 = getelementptr inbounds %struct.crypto_async_request, ptr %13, i32 0, i32 3
  store ptr %24, ptr %25, align 16
  %26 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %5
  %33 = add i32 %32, %31
  %34 = getelementptr inbounds %struct.ahash_request, ptr %13, i32 0, i32 2
  store ptr %27, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %13, i32 0, i32 1
  store i32 %33, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ahash_request, ptr %13, i32 0, i32 3
  store ptr %23, ptr %36, align 32
  %37 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.crypto_async_request, ptr %13, i32 0, i32 1
  store ptr @authenc_verify_ahash_done, ptr %39, align 8
  %40 = getelementptr inbounds %struct.crypto_async_request, ptr %13, i32 0, i32 2
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_async_request, ptr %13, i32 0, i32 4
  store i32 %38, ptr %41, align 4
  %42 = tail call i32 @crypto_ahash_digest(ptr noundef %13) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %0)
  br label %46

46:                                               ; preds = %44, %1
  %47 = phi i32 [ %45, %44 ], [ %42, %1 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_free(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1, i32 1, i32 24
  tail call void @crypto_drop_spawn(ptr noundef %3) #9
  tail call void @crypto_drop_spawn(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_authenc_encrypt_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 64
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_request, ptr %4, i32 2, i32 0, i32 3
  %14 = getelementptr i8, ptr %10, i32 504
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = ptrtoint ptr %13 to i32
  %18 = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 10, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_alg, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 1
  %23 = add i32 %22, %17
  %24 = xor i32 %21, -1
  %25 = and i32 %23, %24
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 10
  %28 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 3
  store ptr %27, ptr %28, align 16
  %29 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 2
  store ptr %30, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 1
  store i32 %35, ptr %37, align 8
  %38 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 3
  store ptr %26, ptr %38, align 32
  %39 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 1
  store ptr @authenc_geniv_ahash_done, ptr %39, align 8
  %40 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 2
  store ptr %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = tail call i32 @crypto_ahash_digest(ptr noundef %16) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %6
  %45 = getelementptr i8, ptr %8, i32 -64
  %46 = load ptr, ptr %29, align 8
  %47 = load i32, ptr %31, align 8
  %48 = load i32, ptr %33, align 4
  %49 = add i32 %48, %47
  %50 = load i32, ptr %45, align 64
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %46, i32 noundef %49, i32 noundef %50, i32 noundef 1) #9
  br label %54

51:                                               ; preds = %6, %2
  %52 = phi i32 [ %1, %2 ], [ %42, %6 ]
  %53 = icmp eq i32 %52, -115
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ 0, %44 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef %4, i32 noundef %55) #9
  br label %58

58:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @authenc_geniv_ahash_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 -64
  %12 = getelementptr inbounds %struct.aead_request, ptr %4, i32 2, i32 0, i32 3
  %13 = getelementptr i8, ptr %10, i32 504
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.ahash_request, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 32
  %18 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.aead_request, ptr %4, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = load i32, ptr %11, align 64
  tail call void @scatterwalk_map_and_copy(ptr noundef %17, ptr noundef %19, i32 noundef %24, i32 noundef %25, i32 noundef 1) #9
  br label %26

26:                                               ; preds = %6, %2
  %27 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef %4, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @authenc_verify_ahash_done(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %4)
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crypto_authenc_decrypt_tail(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = getelementptr i8, ptr %3, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  %8 = getelementptr i8, ptr %6, i32 504
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = load i32, ptr %4, align 64
  %12 = getelementptr inbounds %struct.ahash_request, ptr %10, i32 0, i32 3
  %13 = load ptr, ptr %12, align 32
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %11, i32 noundef 0) #9
  %19 = load ptr, ptr %12, align 32
  %20 = tail call i32 @__crypto_memneq(ptr noundef %14, ptr noundef %19, i32 noundef %11) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @scatterwalk_ffwd(ptr noundef %23, ptr noundef %24, i32 noundef %26) #9
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  %34 = load i32, ptr %25, align 8
  %35 = tail call ptr @scatterwalk_ffwd(ptr noundef %33, ptr noundef %30, i32 noundef %34) #9
  br label %36

36:                                               ; preds = %32, %22
  %37 = phi ptr [ %35, %32 ], [ %27, %22 ]
  %38 = getelementptr i8, ptr %3, i32 68
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  store ptr %40, ptr %12, align 16
  %41 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  store ptr %44, ptr %17, align 8
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %10, i32 0, i32 4, i32 2
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.skcipher_request, ptr %10, i32 0, i32 4, i32 4
  store i32 %42, ptr %48, align 4
  %49 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %50, %11
  %52 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 32
  %54 = getelementptr inbounds %struct.skcipher_request, ptr %10, i32 0, i32 2
  store ptr %27, ptr %54, align 8
  %55 = getelementptr inbounds %struct.skcipher_request, ptr %10, i32 0, i32 3
  store ptr %37, ptr %55, align 4
  store i32 %51, ptr %10, align 64
  %56 = getelementptr inbounds %struct.skcipher_request, ptr %10, i32 0, i32 1
  store ptr %53, ptr %56, align 4
  %57 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %10) #9
  br label %58

58:                                               ; preds = %36, %1
  %59 = phi i32 [ %57, %36 ], [ -74, %1 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 2148945179}
