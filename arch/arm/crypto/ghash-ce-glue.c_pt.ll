; ModuleID = '/llk/IR/arch/arm/crypto/ghash-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/ghash-ce-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.be128 = type { i64, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ghash_key = type { %struct.be128, [0 x [2 x i64]] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }

@__UNIQUE_ID_description158 = internal constant [62 x i8] c"description=GHASH hash function using ARMv8 Crypto Extensions\00", section ".modinfo", align 1
@__UNIQUE_ID_author159 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license160 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace161 = internal constant [12 x i8] c"alias=ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto162 = internal constant [19 x i8] c"alias=crypto-ghash\00", section ".modinfo", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@ghash_alg = internal global %struct.shash_alg { ptr @ghash_init, ptr @ghash_update, ptr @ghash_final, ptr null, ptr null, ptr null, ptr null, ptr @ghash_setkey, ptr null, ptr null, i32 40, [20 x i8] undef, i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 32, i32 0, i32 299, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-ce-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@use_p64 = internal global %struct.static_key_false zeroinitializer, section ".data..ro_after_init", align 4
@ghash_async_alg = internal global %struct.ahash_alg { ptr @ghash_async_init, ptr @ghash_async_update, ptr @ghash_async_final, ptr null, ptr @ghash_async_digest, ptr @ghash_async_export, ptr @ghash_async_import, ptr @ghash_async_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 40, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @ghash_async_init_tfm, ptr @ghash_async_exit_tfm, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@__this_module = external dso_local global %struct.module, align 64
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ghash-ce-sync\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto162, ptr @__UNIQUE_ID_alias_userspace161, ptr @__UNIQUE_ID_author159, ptr @__UNIQUE_ID_description158, ptr @__UNIQUE_ID_license160], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @elf_hwcap, align 4
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @elf_hwcap2, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.shash_alg, ptr @ghash_alg, i32 0, i32 15, i32 4), align 8
  %10 = add i32 %9, 48
  store i32 %10, ptr getelementptr inbounds (%struct.shash_alg, ptr @ghash_alg, i32 0, i32 15, i32 4), align 8
  %11 = load i8, ptr @static_key_initialized, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @use_p64) #9
  br label %14

14:                                               ; preds = %13, %8
  %15 = load volatile i32, ptr @use_p64, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load volatile i32, ptr @use_p64, align 4
  %19 = icmp ne i32 %18, 1
  %20 = load i1, ptr @static_key_enable.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %25, !prof !9

23:                                               ; preds = %17
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #9
  br label %25

24:                                               ; preds = %14
  store volatile i32 1, ptr @use_p64, align 4
  br label %25

25:                                               ; preds = %24, %23, %17, %4
  %26 = tail call i32 @crypto_register_shash(ptr noundef nonnull @ghash_alg) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @ghash_async_alg) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #9
  br label %32

32:                                               ; preds = %31, %28, %25, %0
  %33 = phi i32 [ %29, %31 ], [ -19, %0 ], [ %26, %25 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @ghash_async_alg) #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ghash_init(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 15
  %8 = add i32 %6, %2
  store i32 %8, ptr %5, align 8
  %9 = add i32 %7, %2
  %10 = icmp ugt i32 %9, 15
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.crypto_shash, ptr %12, i32 1
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = sub nuw nsw i32 16, %7
  %17 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %18 = getelementptr i8, ptr %17, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %1, i32 %16, i1 false)
  %19 = getelementptr i8, ptr %1, i32 %16
  %20 = sub i32 %2, %16
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i32 [ %20, %15 ], [ %2, %11 ]
  %23 = phi ptr [ %19, %15 ], [ %1, %11 ]
  %24 = lshr i32 %22, 4
  %25 = and i32 %22, 15
  %26 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %27 = select i1 %14, ptr null, ptr %26
  tail call fastcc void @ghash_do_update(i32 noundef %24, ptr noundef %4, ptr noundef %23, ptr noundef %13, ptr noundef %27)
  %28 = and i32 %22, -16
  %29 = getelementptr i8, ptr %23, i32 %28
  br label %30

30:                                               ; preds = %21, %3
  %31 = phi i32 [ %25, %21 ], [ %2, %3 ]
  %32 = phi i32 [ 0, %21 ], [ %7, %3 ]
  %33 = phi ptr [ %29, %21 ], [ %1, %3 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %37 = getelementptr i8, ptr %36, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %33, i32 %31, i1 false)
  br label %38

38:                                               ; preds = %35, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 1
  %11 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %12 = getelementptr i8, ptr %11, i32 %6
  %13 = sub nuw nsw i32 16, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 0, i32 %13, i1 false)
  tail call fastcc void @ghash_do_update(i32 noundef 1, ptr noundef %3, ptr noundef %11, ptr noundef %10, ptr noundef null)
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr %struct.shash_desc, ptr %0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #9
  store i64 %17, ptr %1, align 1
  %18 = load i64, ptr %3, align 8
  %19 = getelementptr i8, ptr %1, i32 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %18) #9
  store i64 %20, ptr %19, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca %struct.be128, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %6 = icmp eq i32 %2, 16
  br i1 %6, label %7, label %81

7:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %5, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 12
  %9 = load i64, ptr %5, align 8
  %10 = lshr i64 %9, 7
  %11 = and i64 %10, 1
  %12 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  %15 = shl i64 %14, 1
  %16 = or i64 %15, %11
  store i64 %16, ptr %8, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %9) #9
  %18 = shl i64 %17, 1
  %19 = lshr i64 %13, 7
  %20 = and i64 %19, 1
  %21 = or i64 %20, %18
  %22 = icmp eq i64 %11, 0
  %23 = xor i64 %21, -4467570830351532032
  %24 = select i1 %22, i64 %21, i64 %23
  %25 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 20
  store i64 %24, ptr %25, align 8
  %26 = load volatile i32, ptr @use_p64, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %81, !prof !10

28:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @gf128mul_lle(ptr noundef nonnull %4, ptr noundef %5) #9
  %29 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 28
  %30 = load i64, ptr %4, align 8
  %31 = lshr i64 %30, 7
  %32 = and i64 %31, 1
  %33 = getelementptr inbounds %struct.be128, ptr %4, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #9
  %36 = shl i64 %35, 1
  %37 = or i64 %36, %32
  store i64 %37, ptr %29, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %30) #9
  %39 = shl i64 %38, 1
  %40 = lshr i64 %34, 7
  %41 = and i64 %40, 1
  %42 = or i64 %41, %39
  %43 = icmp eq i64 %32, 0
  %44 = xor i64 %42, -4467570830351532032
  %45 = select i1 %43, i64 %42, i64 %44
  %46 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 36
  store i64 %45, ptr %46, align 8
  call void @gf128mul_lle(ptr noundef nonnull %4, ptr noundef %5) #9
  %47 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 44
  %48 = load i64, ptr %4, align 8
  %49 = lshr i64 %48, 7
  %50 = and i64 %49, 1
  %51 = load i64, ptr %33, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #9
  %53 = shl i64 %52, 1
  %54 = or i64 %53, %50
  store i64 %54, ptr %47, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %48) #9
  %56 = shl i64 %55, 1
  %57 = lshr i64 %51, 7
  %58 = and i64 %57, 1
  %59 = or i64 %58, %56
  %60 = icmp eq i64 %50, 0
  %61 = xor i64 %59, -4467570830351532032
  %62 = select i1 %60, i64 %59, i64 %61
  %63 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 1, i32 52
  store i64 %62, ptr %63, align 8
  call void @gf128mul_lle(ptr noundef nonnull %4, ptr noundef %5) #9
  %64 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 2
  %65 = load i64, ptr %4, align 8
  %66 = lshr i64 %65, 7
  %67 = and i64 %66, 1
  %68 = load i64, ptr %33, align 8
  %69 = call i64 @llvm.bswap.i64(i64 %68) #9
  %70 = shl i64 %69, 1
  %71 = or i64 %70, %67
  store i64 %71, ptr %64, align 8
  %72 = call i64 @llvm.bswap.i64(i64 %65) #9
  %73 = shl i64 %72, 1
  %74 = lshr i64 %68, 7
  %75 = and i64 %74, 1
  %76 = or i64 %75, %73
  %77 = icmp eq i64 %67, 0
  %78 = xor i64 %76, -4467570830351532032
  %79 = select i1 %77, i64 %76, i64 %78
  %80 = getelementptr %struct.crypto_shash, ptr %0, i32 1, i32 2, i32 2
  store i64 %79, ptr %80, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %81

81:                                               ; preds = %28, %7, %3
  %82 = phi i32 [ -22, %3 ], [ 0, %28 ], [ 0, %7 ]
  ret i32 %82
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ghash_do_update(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
  %6 = alloca %struct.be128, align 8
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 983040
  %13 = or i32 %12, %10
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 65280
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !10

18:                                               ; preds = %5
  tail call void @kernel_neon_begin() #9
  %19 = load volatile i32, ptr @use_p64, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = getelementptr inbounds %struct.ghash_key, ptr %3, i32 0, i32 1
  br i1 %20, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void @pmull_ghash_update_p64(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %21, ptr noundef %4) #9
  br label %24

23:                                               ; preds = %18
  tail call void @pmull_ghash_update_p8(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %21, ptr noundef %4) #9
  br label %24

24:                                               ; preds = %23, %22
  tail call void @kernel_neon_end() #9
  br label %87

25:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %26 = getelementptr i64, ptr %1, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %27)
  %29 = getelementptr inbounds %struct.be128, ptr %6, i32 0, i32 1
  %30 = load i64, ptr %1, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %32 = getelementptr inbounds i32, ptr %6, i32 1
  %33 = getelementptr inbounds i32, ptr %6, i32 3
  %34 = icmp eq ptr %4, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = select i1 %34, ptr %2, ptr %4
  %38 = getelementptr i32, ptr %37, i32 1
  %39 = load i32, ptr %37, align 4
  %40 = trunc i64 %28 to i32
  %41 = xor i32 %39, %40
  store i32 %41, ptr %6, align 8
  %42 = getelementptr i32, ptr %37, i32 2
  %43 = load i32, ptr %38, align 4
  %44 = lshr i64 %28, 32
  %45 = trunc i64 %44 to i32
  %46 = xor i32 %43, %45
  store i32 %46, ptr %32, align 4
  %47 = getelementptr i32, ptr %37, i32 3
  %48 = load i32, ptr %42, align 4
  %49 = trunc i64 %31 to i32
  %50 = xor i32 %48, %49
  store i32 %50, ptr %29, align 8
  %51 = load i32, ptr %47, align 4
  %52 = lshr i64 %31, 32
  %53 = trunc i64 %52 to i32
  %54 = xor i32 %51, %53
  store i32 %54, ptr %33, align 4
  call void @gf128mul_lle(ptr noundef nonnull %6, ptr noundef %3) #9
  %55 = add i32 %0, -1
  %56 = add i32 %55, %36
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %25
  %59 = select i1 %34, i32 16, i32 0
  %60 = getelementptr i8, ptr %2, i32 %59
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %60, %58 ], [ %64, %61 ]
  %63 = phi i32 [ %56, %58 ], [ %80, %61 ]
  %64 = getelementptr i8, ptr %62, i32 16
  %65 = getelementptr i32, ptr %62, i32 1
  %66 = load i32, ptr %62, align 4
  %67 = load i32, ptr %6, align 8
  %68 = xor i32 %67, %66
  store i32 %68, ptr %6, align 8
  %69 = getelementptr i32, ptr %62, i32 2
  %70 = load i32, ptr %65, align 4
  %71 = load i32, ptr %32, align 4
  %72 = xor i32 %71, %70
  store i32 %72, ptr %32, align 4
  %73 = getelementptr i32, ptr %62, i32 3
  %74 = load i32, ptr %69, align 4
  %75 = load i32, ptr %29, align 8
  %76 = xor i32 %75, %74
  store i32 %76, ptr %29, align 8
  %77 = load i32, ptr %73, align 4
  %78 = load i32, ptr %33, align 4
  %79 = xor i32 %78, %77
  store i32 %79, ptr %33, align 4
  call void @gf128mul_lle(ptr noundef nonnull %6, ptr noundef %3) #9
  %80 = add i32 %63, -1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %61, !llvm.loop !11

82:                                               ; preds = %61, %25
  %83 = load i64, ptr %29, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83)
  store i64 %84, ptr %1, align 8
  %85 = load i64, ptr %6, align 8
  %86 = call i64 @llvm.bswap.i64(i64 %85)
  store i64 %86, ptr %26, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %87

87:                                               ; preds = %82, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmull_ghash_update_p64(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmull_ghash_update_p8(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_lle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_init(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %4, align 4
  %7 = tail call ptr @cryptd_shash_desc(ptr noundef %5) #9
  %8 = tail call ptr @cryptd_ahash_child(ptr noundef %6) #9
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -128
  %17 = load ptr, ptr %16, align 64
  %18 = tail call i32 %17(ptr noundef %7) #9
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i32 [ %18, %13 ], [ -126, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_update(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 983040
  %13 = or i32 %12, %10
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 65280
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load volatile i32, ptr %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %6) #9
  br i1 %22, label %23, label %29

23:                                               ; preds = %21, %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %2, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %24 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %24, ptr %25, align 16
  %26 = getelementptr %struct.crypto_ahash, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %2) #9
  br label %32

29:                                               ; preds = %21, %18
  %30 = tail call ptr @cryptd_shash_desc(ptr noundef %2) #9
  %31 = tail call i32 @shash_ahash_update(ptr noundef %0, ptr noundef %30) #9
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %28, %23 ], [ %31, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_final(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 983040
  %13 = or i32 %12, %10
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 65280
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load volatile i32, ptr %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %6) #9
  br i1 %22, label %23, label %27

23:                                               ; preds = %21, %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %2, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %24 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %24, ptr %25, align 16
  %26 = tail call i32 @crypto_ahash_final(ptr noundef %2) #9
  br label %32

27:                                               ; preds = %21, %18
  %28 = tail call ptr @cryptd_shash_desc(ptr noundef %2) #9
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 32
  %31 = tail call i32 @crypto_shash_final(ptr noundef %28, ptr noundef %30) #9
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %26, %23 ], [ %31, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_digest(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %4, align 4
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 983040
  %13 = or i32 %12, %10
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 65280
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load volatile i32, ptr %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call zeroext i1 @cryptd_ahash_queued(ptr noundef %6) #9
  br i1 %22, label %23, label %27

23:                                               ; preds = %21, %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %5, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %24 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %24, ptr %25, align 16
  %26 = tail call i32 @crypto_ahash_digest(ptr noundef %5) #9
  br label %31

27:                                               ; preds = %21, %18
  %28 = tail call ptr @cryptd_shash_desc(ptr noundef %5) #9
  %29 = tail call ptr @cryptd_ahash_child(ptr noundef %6) #9
  store ptr %29, ptr %28, align 8
  %30 = tail call i32 @shash_ahash_digest(ptr noundef %0, ptr noundef %28) #9
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_export(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = tail call ptr @cryptd_shash_desc(ptr noundef %3) #9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -108
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %4, ptr noundef %1) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_import(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call ptr @cryptd_shash_desc(ptr noundef %3) #9
  %8 = load ptr, ptr %6, align 4
  %9 = tail call ptr @cryptd_ahash_child(ptr noundef %8) #9
  store ptr %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 64
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -104
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %18(ptr noundef %7, ptr noundef %1) #9
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i32 [ %19, %14 ], [ -126, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, -1048321
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1048320
  %12 = or i32 %11, %8
  store i32 %12, ptr %6, align 64
  %13 = tail call i32 @crypto_ahash_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_async_init_tfm(ptr nocapture noundef writeonly %0) #4 {
  %2 = tail call ptr @cryptd_alloc_ahash(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_ahash, ptr %2, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  %10 = add i32 %9, 64
  %11 = getelementptr i8, ptr %0, i32 -32
  store i32 %10, ptr %11, align 32
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ %5, %4 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ghash_async_exit_tfm(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @cryptd_free_ahash(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_shash_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_ahash_child(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cryptd_ahash_queued(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_digest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryptd_free_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
