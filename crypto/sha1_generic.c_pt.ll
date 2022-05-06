; ModuleID = '/llk/IR/crypto/sha1_generic.c_pt.bc'
source_filename = "../crypto/sha1_generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha1_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha1_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha1_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha1_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha1_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha1_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha1_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha1_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha1_finup:\09\09\09\09\09"
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
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }

@sha1_zero_message_hash = dso_local constant [20 x i8] c"\DA9\A3\EE^kK\0D2U\BF\EF\95`\18\90\AF\D8\07\09", align 1
@__kstrtab_sha1_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha1_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha1_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha1_zero_message_hash to i32), ptr @__kstrtab_sha1_zero_message_hash, ptr @__kstrtabns_sha1_zero_message_hash }, section "___ksymtab_gpl+sha1_zero_message_hash", align 4
@__kstrtab_crypto_sha1_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha1_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha1_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha1_update to i32), ptr @__kstrtab_crypto_sha1_update, ptr @__kstrtabns_crypto_sha1_update }, section "___ksymtab+crypto_sha1_update", align 4
@__kstrtab_crypto_sha1_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha1_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha1_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha1_finup to i32), ptr @__kstrtab_crypto_sha1_finup, ptr @__kstrtabns_crypto_sha1_finup }, section "___ksymtab+crypto_sha1_finup", align 4
@__UNIQUE_ID_license220 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [39 x i8] c"description=SHA1 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace222 = internal constant [11 x i8] c"alias=sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [18 x i8] c"alias=crypto-sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [19 x i8] c"alias=sha1-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [26 x i8] c"alias=crypto-sha1-generic\00", section ".modinfo", align 1
@alg = internal global %struct.shash_alg { ptr @sha1_base_init, ptr @crypto_sha1_update, ptr @sha1_final, ptr @crypto_sha1_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 96, [20 x i8] undef, i32 20, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_license220, ptr @__ksymtab_crypto_sha1_finup, ptr @__ksymtab_crypto_sha1_update, ptr @__ksymtab_sha1_zero_message_hash], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha1_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [16 x i32], align 4
  %5 = alloca [16 x i32], align 4
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 4
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 63
  %11 = zext i32 %2 to i64
  %12 = add i64 %8, %11
  store i64 %12, ptr %7, align 8
  %13 = add i32 %10, %2
  %14 = icmp ugt i32 %13, 63
  br i1 %14, label %15, label %39, !prof !8

15:                                               ; preds = %3
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = sub nuw nsw i32 64, %10
  %19 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %20 = getelementptr i8, ptr %19, i32 %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %18, i1 false) #8
  %21 = getelementptr i8, ptr %1, i32 %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #8, !annotation !9
  call void @sha1_transform(ptr noundef %6, ptr noundef %19, ptr noundef nonnull %5) #8
  %22 = sub i32 %2, %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %23

23:                                               ; preds = %17, %15
  %24 = phi i32 [ %22, %17 ], [ %2, %15 ]
  %25 = phi ptr [ %21, %17 ], [ %1, %15 ]
  %26 = and i32 %24, 63
  %27 = icmp ult i32 %24, 64
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = lshr i32 %24, 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #8, !annotation !9
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ %33, %30 ], [ %29, %28 ]
  %32 = phi ptr [ %34, %30 ], [ %25, %28 ]
  %33 = add nsw i32 %31, -1
  call void @sha1_transform(ptr noundef %6, ptr noundef %32, ptr noundef nonnull %4) #8
  %34 = getelementptr i8, ptr %32, i32 64
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %30

36:                                               ; preds = %30
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  %37 = and i32 %24, -64
  %38 = getelementptr i8, ptr %25, i32 %37
  br label %39

39:                                               ; preds = %36, %23, %3
  %40 = phi i32 [ %2, %3 ], [ %26, %36 ], [ %26, %23 ]
  %41 = phi i32 [ %10, %3 ], [ 0, %36 ], [ 0, %23 ]
  %42 = phi ptr [ %1, %3 ], [ %38, %36 ], [ %25, %23 ]
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %46 = getelementptr i8, ptr %45, i32 %41
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %42, i32 %40, i1 false) #8
  br label %47

47:                                               ; preds = %44, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha1_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [16 x i32], align 4
  %6 = alloca [16 x i32], align 4
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 63
  %12 = zext i32 %2 to i64
  %13 = add i64 %9, %12
  store i64 %13, ptr %8, align 8
  %14 = add i32 %11, %2
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %16, label %40, !prof !8

16:                                               ; preds = %4
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 64, %11
  %20 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %21 = getelementptr i8, ptr %20, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %1, i32 %19, i1 false) #8
  %22 = getelementptr i8, ptr %1, i32 %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #8, !annotation !9
  call void @sha1_transform(ptr noundef %7, ptr noundef %20, ptr noundef nonnull %6) #8
  %23 = sub i32 %2, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %6) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %2, %16 ]
  %26 = phi ptr [ %22, %18 ], [ %1, %16 ]
  %27 = and i32 %25, 63
  %28 = icmp ult i32 %25, 64
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = lshr i32 %25, 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #8, !annotation !9
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ %34, %31 ], [ %30, %29 ]
  %33 = phi ptr [ %35, %31 ], [ %26, %29 ]
  %34 = add nsw i32 %32, -1
  call void @sha1_transform(ptr noundef %7, ptr noundef %33, ptr noundef nonnull %5) #8
  %35 = getelementptr i8, ptr %33, i32 64
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %31

37:                                               ; preds = %31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %38 = and i32 %25, -64
  %39 = getelementptr i8, ptr %26, i32 %38
  br label %40

40:                                               ; preds = %37, %24, %4
  %41 = phi i32 [ %2, %4 ], [ %27, %37 ], [ %27, %24 ]
  %42 = phi i32 [ %11, %4 ], [ 0, %37 ], [ 0, %24 ]
  %43 = phi ptr [ %1, %4 ], [ %39, %37 ], [ %26, %24 ]
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %47 = getelementptr i8, ptr %46, i32 %42
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %43, i32 %41, i1 false) #8
  br label %48

48:                                               ; preds = %45, %40
  %49 = call i32 @sha1_final(ptr noundef %0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha1_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [16 x i32], align 4
  %4 = alloca [16 x i32], align 4
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 4
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 63
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr %struct.sha1_state, ptr %5, i32 0, i32 2, i32 %10
  store i8 -128, ptr %12, align 1
  %13 = icmp ugt i32 %10, 55
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %6, i32 %11
  %16 = xor i32 %10, 63
  tail call void @llvm.memset.p0.i32(ptr align 1 %15, i8 0, i32 %16, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #8, !annotation !9
  call void @sha1_transform(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i32 [ 0, %14 ], [ %11, %2 ]
  %19 = getelementptr %struct.shash_desc, ptr %0, i32 12
  %20 = getelementptr i8, ptr %6, i32 %18
  %21 = sub nuw nsw i32 56, %18
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %21, i1 false) #8
  %22 = load i64, ptr %7, align 8
  %23 = shl i64 %22, 3
  %24 = call i64 @llvm.bswap.i64(i64 %23) #8
  store i64 %24, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #8, !annotation !9
  call void @sha1_transform(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #8, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  %25 = load i32, ptr %5, align 4
  %26 = getelementptr i32, ptr %1, i32 1
  %27 = call i32 @llvm.bswap.i32(i32 %25) #8
  store i32 %27, ptr %1, align 1
  %28 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i32, ptr %1, i32 2
  %31 = call i32 @llvm.bswap.i32(i32 %29) #8
  store i32 %31, ptr %26, align 1
  %32 = getelementptr %struct.shash_desc, ptr %0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i32, ptr %1, i32 3
  %35 = call i32 @llvm.bswap.i32(i32 %33) #8
  store i32 %35, ptr %30, align 1
  %36 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i32, ptr %1, i32 4
  %39 = call i32 @llvm.bswap.i32(i32 %37) #8
  store i32 %39, ptr %34, align 1
  %40 = getelementptr %struct.shash_desc, ptr %0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #8
  store i32 %42, ptr %38, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %5, i8 0, i32 96, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr %5) #8, !srcloc !10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha1_base_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 1732584193, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 -271733879, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 -1732584194, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 271733878, ptr %5, align 4
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i32 -1009589776, ptr %6, align 8
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 4
  store i64 0, ptr %7, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148924612}
