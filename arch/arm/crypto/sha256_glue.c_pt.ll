; ModuleID = '/llk/IR/arch/arm/crypto/sha256_glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha256_glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_arm_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_arm_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_arm_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_arm_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_arm_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_arm_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__kstrtab_crypto_sha256_arm_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_arm_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_arm_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_arm_update to i32), ptr @__kstrtab_crypto_sha256_arm_update, ptr @__kstrtabns_crypto_sha256_arm_update }, section "___ksymtab+crypto_sha256_arm_update", align 4
@__kstrtab_crypto_sha256_arm_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_arm_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_arm_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_arm_finup to i32), ptr @__kstrtab_crypto_sha256_arm_finup, ptr @__kstrtabns_crypto_sha256_arm_finup }, section "___ksymtab+crypto_sha256_arm_finup", align 4
@__UNIQUE_ID_license221 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description222 = internal constant [63 x i8] c"description=SHA256 Secure Hash Algorithm (ARM), including NEON\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace223 = internal constant [13 x i8] c"alias=sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto224 = internal constant [20 x i8] c"alias=crypto-sha256\00", section ".modinfo", align 1
@algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_arm_update, ptr @crypto_sha256_arm_final, ptr @crypto_sha256_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-asm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_arm_update, ptr @crypto_sha256_arm_final, ptr @crypto_sha256_arm_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-asm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@sha256_neon_algs = external dso_local global [2 x %struct.shash_alg], align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias_crypto224, ptr @__UNIQUE_ID_alias_userspace223, ptr @__UNIQUE_ID_description222, ptr @__UNIQUE_ID_license221, ptr @__ksymtab_crypto_sha256_arm_finup, ptr @__ksymtab_crypto_sha256_arm_update], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_arm_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 63
  %9 = zext i32 %2 to i64
  %10 = add i64 %6, %9
  store i64 %10, ptr %5, align 8
  %11 = add i32 %8, %2
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %30, !prof !8

13:                                               ; preds = %3
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = sub nuw nsw i32 64, %8
  %17 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %18 = getelementptr i8, ptr %17, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %1, i32 %16, i1 false) #7
  %19 = getelementptr i8, ptr %1, i32 %16
  %20 = sub i32 %2, %16
  tail call void @sha256_block_data_order(ptr noundef %4, ptr noundef %17, i32 noundef 1) #7
  br label %21

21:                                               ; preds = %15, %13
  %22 = phi i32 [ %20, %15 ], [ %2, %13 ]
  %23 = phi ptr [ %19, %15 ], [ %1, %13 ]
  %24 = and i32 %22, 63
  %25 = icmp ult i32 %22, 64
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %22, 6
  tail call void @sha256_block_data_order(ptr noundef %4, ptr noundef %23, i32 noundef %27) #7
  %28 = and i32 %22, -64
  %29 = getelementptr i8, ptr %23, i32 %28
  br label %30

30:                                               ; preds = %26, %21, %3
  %31 = phi i32 [ %2, %3 ], [ %24, %26 ], [ %24, %21 ]
  %32 = phi i32 [ %8, %3 ], [ 0, %26 ], [ 0, %21 ]
  %33 = phi ptr [ %1, %3 ], [ %29, %26 ], [ %23, %21 ]
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %37 = getelementptr i8, ptr %36, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %33, i32 %31, i1 false) #7
  br label %38

38:                                               ; preds = %35, %30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_block_data_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_arm_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 63
  %10 = zext i32 %2 to i64
  %11 = add i64 %7, %10
  store i64 %11, ptr %6, align 8
  %12 = add i32 %9, %2
  %13 = icmp ugt i32 %12, 63
  br i1 %13, label %14, label %31, !prof !8

14:                                               ; preds = %4
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = sub nuw nsw i32 64, %9
  %18 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %19 = getelementptr i8, ptr %18, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %1, i32 %17, i1 false) #7
  %20 = getelementptr i8, ptr %1, i32 %17
  %21 = sub i32 %2, %17
  tail call void @sha256_block_data_order(ptr noundef %5, ptr noundef %18, i32 noundef 1) #7
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %21, %16 ], [ %2, %14 ]
  %24 = phi ptr [ %20, %16 ], [ %1, %14 ]
  %25 = and i32 %23, 63
  %26 = icmp ult i32 %23, 64
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = lshr i32 %23, 6
  tail call void @sha256_block_data_order(ptr noundef %5, ptr noundef %24, i32 noundef %28) #7
  %29 = and i32 %23, -64
  %30 = getelementptr i8, ptr %24, i32 %29
  br label %31

31:                                               ; preds = %27, %22, %4
  %32 = phi i32 [ %2, %4 ], [ %25, %27 ], [ %25, %22 ]
  %33 = phi i32 [ %9, %4 ], [ 0, %27 ], [ 0, %22 ]
  %34 = phi ptr [ %1, %4 ], [ %30, %27 ], [ %24, %22 ]
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %38 = getelementptr i8, ptr %37, i32 %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %34, i32 %32, i1 false) #7
  br label %39

39:                                               ; preds = %36, %31
  %40 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %41 = load i64, ptr %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 63
  %44 = add nuw nsw i32 %43, 1
  %45 = getelementptr %struct.sha256_state, ptr %5, i32 0, i32 2, i32 %43
  store i8 -128, ptr %45, align 1
  %46 = icmp ugt i32 %43, 55
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %40, i32 %44
  %49 = xor i32 %43, 63
  tail call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %49, i1 false) #7
  tail call void @sha256_block_data_order(ptr noundef %5, ptr noundef %40, i32 noundef 1) #7
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i32 [ 0, %47 ], [ %44, %39 ]
  %52 = getelementptr %struct.shash_desc, ptr %0, i32 13
  %53 = getelementptr i8, ptr %40, i32 %51
  %54 = sub nuw nsw i32 56, %51
  tail call void @llvm.memset.p0.i32(ptr align 1 %53, i8 0, i32 %54, i1 false) #7
  %55 = load i64, ptr %6, align 8
  %56 = shl i64 %55, 3
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #7
  store i64 %57, ptr %52, align 8
  tail call void @sha256_block_data_order(ptr noundef %5, ptr noundef %40, i32 noundef 1) #7
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds %struct.crypto_shash, ptr %58, i32 0, i32 2, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -64
  %62 = load i32, ptr %61, align 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %64, %50
  %65 = phi i32 [ %72, %64 ], [ 0, %50 ]
  %66 = phi ptr [ %70, %64 ], [ %3, %50 ]
  %67 = phi i32 [ %73, %64 ], [ %62, %50 ]
  %68 = getelementptr [8 x i32], ptr %5, i32 0, i32 %65
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i32, ptr %66, i32 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  store i32 %71, ptr %66, align 1
  %72 = add i32 %65, 1
  %73 = add i32 %67, -4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %64

75:                                               ; preds = %64, %50
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(104) %5, i8 0, i32 104, i1 false) #7
  tail call void asm sideeffect "", "r,~{memory}"(ptr %5) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_sha256_arm_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 63
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr %struct.sha256_state, ptr %3, i32 0, i32 2, i32 %8
  store i8 -128, ptr %10, align 1
  %11 = icmp ugt i32 %8, 55
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 %9
  %14 = xor i32 %8, 63
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %14, i1 false) #7
  tail call void @sha256_block_data_order(ptr noundef %3, ptr noundef %4, i32 noundef 1) #7
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ 0, %12 ], [ %9, %2 ]
  %17 = getelementptr %struct.shash_desc, ptr %0, i32 13
  %18 = getelementptr i8, ptr %4, i32 %16
  %19 = sub nuw nsw i32 56, %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %19, i1 false) #7
  %20 = load i64, ptr %5, align 8
  %21 = shl i64 %20, 3
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #7
  store i64 %22, ptr %17, align 8
  tail call void @sha256_block_data_order(ptr noundef %3, ptr noundef %4, i32 noundef 1) #7
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.crypto_shash, ptr %23, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 -64
  %27 = load i32, ptr %26, align 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %29, %15
  %30 = phi i32 [ %37, %29 ], [ 0, %15 ]
  %31 = phi ptr [ %35, %29 ], [ %1, %15 ]
  %32 = phi i32 [ %38, %29 ], [ %27, %15 ]
  %33 = getelementptr [8 x i32], ptr %3, i32 0, i32 %30
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i32, ptr %31, i32 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  store i32 %36, ptr %31, align 1
  %37 = add i32 %30, 1
  %38 = add i32 %32, -4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %29

40:                                               ; preds = %29, %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(104) %3, i8 0, i32 104, i1 false) #7
  tail call void asm sideeffect "", "r,~{memory}"(ptr %3) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @algs, i32 noundef 2) #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @elf_hwcap, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha256_neon_algs, i32 noundef 2) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #7
  br label %11

11:                                               ; preds = %10, %7, %3, %0
  %12 = phi i32 [ %1, %0 ], [ %8, %10 ], [ %8, %7 ], [ %1, %3 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @algs, i32 noundef 2) #7
  %1 = load i32, ptr @elf_hwcap, align 4
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha256_neon_algs, i32 noundef 2) #7
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 1779033703, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 -1150833019, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 1013904242, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 -1521486534, ptr %5, align 4
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i32 1359893119, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 3, i32 1
  store i32 -1694144372, ptr %7, align 4
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i32 528734635, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 4, i32 1
  store i32 1541459225, ptr %9, align 4
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  store i64 0, ptr %10, align 8
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 -1056596264, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 914150663, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 812702999, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 -150054599, ptr %5, align 4
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i32 -4191439, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 3, i32 1
  store i32 1750603025, ptr %7, align 4
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i32 1694076839, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 4, i32 1
  store i32 -1090891868, ptr %9, align 4
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  store i64 0, ptr %10, align 8
  ret i32 0
}

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
!9 = !{i64 2148925432}
