; ModuleID = '/llk/IR/arch/arm/crypto/sha512-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha512-glue.c"
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
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__UNIQUE_ID_description104 = internal constant [60 x i8] c"description=Accelerated SHA-384/SHA-512 secure hash for ARM\00", section ".modinfo", align 1
@__UNIQUE_ID_author105 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license106 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace107 = internal constant [13 x i8] c"alias=sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto108 = internal constant [20 x i8] c"alias=crypto-sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace109 = internal constant [13 x i8] c"alias=sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto110 = internal constant [20 x i8] c"alias=crypto-sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace111 = internal constant [17 x i8] c"alias=sha384-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto112 = internal constant [24 x i8] c"alias=crypto-sha384-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace113 = internal constant [17 x i8] c"alias=sha512-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto114 = internal constant [24 x i8] c"alias=crypto-sha512-arm\00", section ".modinfo", align 1
@sha512_arm_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha384_base_init, ptr @sha512_arm_update, ptr @sha512_arm_final, ptr @sha512_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha512_base_init, ptr @sha512_arm_update, ptr @sha512_arm_final, ptr @sha512_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@sha512_neon_algs = external dso_local global [2 x %struct.shash_alg], align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto108, ptr @__UNIQUE_ID_alias_crypto110, ptr @__UNIQUE_ID_alias_crypto112, ptr @__UNIQUE_ID_alias_crypto114, ptr @__UNIQUE_ID_alias_userspace107, ptr @__UNIQUE_ID_alias_userspace109, ptr @__UNIQUE_ID_alias_userspace111, ptr @__UNIQUE_ID_alias_userspace113, ptr @__UNIQUE_ID_author105, ptr @__UNIQUE_ID_description104, ptr @__UNIQUE_ID_license106], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sha512_arm_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 127
  %9 = zext i32 %2 to i64
  %10 = add i64 %6, %9
  store i64 %10, ptr %5, align 8
  %11 = icmp ult i64 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = add i32 %8, %2
  %18 = icmp ugt i32 %17, 127
  br i1 %18, label %19, label %36, !prof !8

19:                                               ; preds = %16
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = sub nuw nsw i32 128, %8
  %23 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %24 = getelementptr i8, ptr %23, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %1, i32 %22, i1 false) #7
  %25 = getelementptr i8, ptr %1, i32 %22
  %26 = sub i32 %2, %22
  tail call void @sha512_block_data_order(ptr noundef %4, ptr noundef %23, i32 noundef 1) #7
  br label %27

27:                                               ; preds = %21, %19
  %28 = phi i32 [ %26, %21 ], [ %2, %19 ]
  %29 = phi ptr [ %25, %21 ], [ %1, %19 ]
  %30 = and i32 %28, 127
  %31 = icmp ult i32 %28, 128
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = lshr i32 %28, 7
  tail call void @sha512_block_data_order(ptr noundef %4, ptr noundef %29, i32 noundef %33) #7
  %34 = and i32 %28, -128
  %35 = getelementptr i8, ptr %29, i32 %34
  br label %36

36:                                               ; preds = %32, %27, %16
  %37 = phi i32 [ %2, %16 ], [ %30, %32 ], [ %30, %27 ]
  %38 = phi i32 [ %8, %16 ], [ 0, %32 ], [ 0, %27 ]
  %39 = phi ptr [ %1, %16 ], [ %35, %32 ], [ %29, %27 ]
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %43 = getelementptr i8, ptr %42, i32 %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %39, i32 %37, i1 false) #7
  br label %44

44:                                               ; preds = %41, %36
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha512_block_data_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sha512_arm_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 127
  %10 = zext i32 %2 to i64
  %11 = add i64 %7, %10
  store i64 %11, ptr %6, align 8
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %4
  %18 = add i32 %9, %2
  %19 = icmp ugt i32 %18, 127
  br i1 %19, label %20, label %37, !prof !8

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = sub nuw nsw i32 128, %9
  %24 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %25 = getelementptr i8, ptr %24, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %1, i32 %23, i1 false) #7
  %26 = getelementptr i8, ptr %1, i32 %23
  %27 = sub i32 %2, %23
  tail call void @sha512_block_data_order(ptr noundef %5, ptr noundef %24, i32 noundef 1) #7
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %27, %22 ], [ %2, %20 ]
  %30 = phi ptr [ %26, %22 ], [ %1, %20 ]
  %31 = and i32 %29, 127
  %32 = icmp ult i32 %29, 128
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = lshr i32 %29, 7
  tail call void @sha512_block_data_order(ptr noundef %5, ptr noundef %30, i32 noundef %34) #7
  %35 = and i32 %29, -128
  %36 = getelementptr i8, ptr %30, i32 %35
  br label %37

37:                                               ; preds = %33, %28, %17
  %38 = phi i32 [ %2, %17 ], [ %31, %33 ], [ %31, %28 ]
  %39 = phi i32 [ %9, %17 ], [ 0, %33 ], [ 0, %28 ]
  %40 = phi ptr [ %1, %17 ], [ %36, %33 ], [ %30, %28 ]
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %44 = getelementptr i8, ptr %43, i32 %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %40, i32 %38, i1 false) #7
  br label %45

45:                                               ; preds = %42, %37
  %46 = tail call i32 @sha512_arm_final(ptr noundef %0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha512_arm_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 127
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr %struct.sha512_state, ptr %3, i32 0, i32 2, i32 %8
  store i8 -128, ptr %10, align 1
  %11 = icmp ugt i32 %8, 111
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 %9
  %14 = xor i32 %8, 127
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %14, i1 false) #7
  tail call void @sha512_block_data_order(ptr noundef %3, ptr noundef %4, i32 noundef 1) #7
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ 0, %12 ], [ %9, %2 ]
  %17 = getelementptr %struct.shash_desc, ptr %0, i32 25
  %18 = getelementptr i8, ptr %4, i32 %16
  %19 = sub nuw nsw i32 112, %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %19, i1 false) #7
  %20 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %5, align 8
  %23 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %22, i64 3) #7
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #7
  store i64 %24, ptr %17, align 8
  %25 = shl i64 %22, 3
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #7
  %27 = getelementptr %struct.shash_desc, ptr %0, i32 26
  store i64 %26, ptr %27, align 8
  tail call void @sha512_block_data_order(ptr noundef %3, ptr noundef %4, i32 noundef 1) #7
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -64
  %32 = load i32, ptr %31, align 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %34, %15
  %35 = phi i32 [ %42, %34 ], [ 0, %15 ]
  %36 = phi ptr [ %40, %34 ], [ %1, %15 ]
  %37 = phi i32 [ %43, %34 ], [ %32, %15 ]
  %38 = getelementptr [8 x i64], ptr %3, i32 0, i32 %35
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr i64, ptr %36, i32 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %39) #7
  store i64 %41, ptr %36, align 1
  %42 = add i32 %35, 1
  %43 = add i32 %37, -8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %34

45:                                               ; preds = %34, %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(208) %3, i8 0, i32 208, i1 false) #7
  tail call void asm sideeffect "", "r,~{memory}"(ptr %3) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32, ptr @elf_hwcap, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_neon_algs, i32 noundef 2) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #7
  br label %11

11:                                               ; preds = %10, %7, %3, %0
  %12 = phi i32 [ %8, %10 ], [ %1, %0 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_arm_algs, i32 noundef 2) #7
  %1 = load i32, ptr @elf_hwcap, align 4
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_neon_algs, i32 noundef 2) #7
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i64 -3766243637369397544, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i64 7105036623409894663, ptr %3, align 8
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i64 -7973340178411365097, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i64 1526699215303891257, ptr %5, align 8
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 5
  store i64 7436329637833083697, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 6
  store i64 -8163818279084223215, ptr %7, align 8
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 7
  store i64 -2662702644619276377, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 8
  store i64 5167115440072839076, ptr %9, align 8
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i64 7640891576956012808, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i64 -4942790177534073029, ptr %3, align 8
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i64 4354685564936845355, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i64 -6534734903238641935, ptr %5, align 8
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 5
  store i64 5840696475078001361, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 6
  store i64 -7276294671716946913, ptr %7, align 8
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 7
  store i64 2270897969802886507, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 8
  store i64 6620516959819538809, ptr %9, align 8
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148925186}
