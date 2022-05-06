; ModuleID = '/llk/IR/arch/arm/crypto/crc32-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/crc32-ce-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_feature = type { i16 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__mod_cpu__crc32_cpu_feature_device_table = dso_local local_unnamed_addr constant [3 x %struct.cpu_feature] [%struct.cpu_feature { i16 36 }, %struct.cpu_feature { i16 33 }, %struct.cpu_feature zeroinitializer], align 2
@__UNIQUE_ID_author162 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace164 = internal constant [12 x i8] c"alias=crc32\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto165 = internal constant [19 x i8] c"alias=crypto-crc32\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace166 = internal constant [13 x i8] c"alias=crc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto167 = internal constant [20 x i8] c"alias=crypto-crc32c\00", section ".modinfo", align 1
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@crc32_pmull_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @crc32_init, ptr @crc32_update, ptr @crc32_final, ptr null, ptr null, ptr null, ptr null, ptr @crc32_setkey, ptr null, ptr null, i32 4, [20 x i8] undef, i32 4, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 4, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crc32-arm-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @crc32_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @crc32_init, ptr @crc32c_update, ptr @crc32c_final, ptr null, ptr null, ptr null, ptr null, ptr @crc32_setkey, ptr null, ptr null, i32 4, [20 x i8] undef, i32 4, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 4, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crc32c-arm-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @crc32c_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@fallback_crc32 = internal unnamed_addr global ptr null, align 4
@fallback_crc32c = internal unnamed_addr global ptr null, align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias_crypto165, ptr @__UNIQUE_ID_alias_crypto167, ptr @__UNIQUE_ID_alias_userspace164, ptr @__UNIQUE_ID_alias_userspace166, ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_license163], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @elf_hwcap2, align 4
  %2 = and i32 %1, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  store ptr @crc32_pmull_update, ptr getelementptr inbounds ([2 x %struct.shash_alg], ptr @crc32_pmull_algs, i32 0, i32 0, i32 1), align 4
  store ptr @crc32c_pmull_update, ptr getelementptr inbounds ([2 x %struct.shash_alg], ptr @crc32_pmull_algs, i32 0, i32 1, i32 1), align 4
  %5 = and i32 %1, 16
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @crc32_le, ptr @crc32_armv8_le
  %8 = select i1 %6, ptr @__crc32c_le, ptr @crc32c_armv8_le
  store ptr %7, ptr @fallback_crc32, align 4
  store ptr %8, ptr @fallback_crc32c, align 4
  br label %12

9:                                                ; preds = %0
  %10 = and i32 %1, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %4
  %13 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @crc32_pmull_algs, i32 noundef 2) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ -19, %9 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @crc32_pmull_algs, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc32_pmull_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = ptrtoint ptr %1 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = sub nuw nsw i32 16, %18
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %2)
  %23 = load ptr, ptr @fallback_crc32, align 4
  %24 = load i32, ptr %4, align 4
  %25 = tail call i32 %23(i32 noundef %24, ptr noundef %1, i32 noundef %22) #9, !callees !8
  store i32 %25, ptr %4, align 4
  %26 = getelementptr i8, ptr %1, i32 %22
  %27 = sub i32 %2, %22
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %27, %20 ], [ %2, %16 ]
  %30 = phi ptr [ %26, %20 ], [ %1, %16 ]
  %31 = icmp ugt i32 %29, 63
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = and i32 %29, -16
  tail call void @kernel_neon_begin() #9
  %34 = load i32, ptr %4, align 4
  %35 = tail call i32 @crc32_pmull_le(ptr noundef %30, i32 noundef %33, i32 noundef %34) #9
  store i32 %35, ptr %4, align 4
  tail call void @kernel_neon_end() #9
  %36 = getelementptr i8, ptr %30, i32 %33
  %37 = and i32 %29, 15
  br label %38

38:                                               ; preds = %32, %28, %3
  %39 = phi i32 [ %37, %32 ], [ %29, %28 ], [ %2, %3 ]
  %40 = phi ptr [ %36, %32 ], [ %30, %28 ], [ %1, %3 ]
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @fallback_crc32, align 4
  %44 = load i32, ptr %4, align 4
  %45 = tail call i32 %43(i32 noundef %44, ptr noundef %40, i32 noundef %39) #9, !callees !8
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %42, %38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc32c_pmull_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = ptrtoint ptr %1 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = sub nuw nsw i32 16, %18
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %2)
  %23 = load ptr, ptr @fallback_crc32c, align 4
  %24 = load i32, ptr %4, align 4
  %25 = tail call i32 %23(i32 noundef %24, ptr noundef %1, i32 noundef %22) #9, !callees !9
  store i32 %25, ptr %4, align 4
  %26 = getelementptr i8, ptr %1, i32 %22
  %27 = sub i32 %2, %22
  br label %28

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %27, %20 ], [ %2, %16 ]
  %30 = phi ptr [ %26, %20 ], [ %1, %16 ]
  %31 = icmp ugt i32 %29, 63
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = and i32 %29, -16
  tail call void @kernel_neon_begin() #9
  %34 = load i32, ptr %4, align 4
  %35 = tail call i32 @crc32c_pmull_le(ptr noundef %30, i32 noundef %33, i32 noundef %34) #9
  store i32 %35, ptr %4, align 4
  tail call void @kernel_neon_end() #9
  %36 = getelementptr i8, ptr %30, i32 %33
  %37 = and i32 %29, 15
  br label %38

38:                                               ; preds = %32, %28, %3
  %39 = phi i32 [ %37, %32 ], [ %29, %28 ], [ %2, %3 ]
  %40 = phi ptr [ %36, %32 ], [ %30, %28 ], [ %1, %3 ]
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @fallback_crc32c, align 4
  %44 = load i32, ptr %4, align 4
  %45 = tail call i32 %43(i32 noundef %44, ptr noundef %40, i32 noundef %39) #9, !callees !9
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %42, %38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32_armv8_le(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c_armv8_le(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32_pmull_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crc32_init(ptr nocapture noundef %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 1
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc32_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @crc32_armv8_le(i32 noundef %5, ptr noundef %1, i32 noundef %2) #9
  store i32 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crc32_final(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crc32_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crc32_cra_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc32c_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @crc32c_armv8_le(i32 noundef %5, ptr noundef %1, i32 noundef %2) #9
  store i32 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @crc32c_final(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, -1
  store i32 %5, ptr %1, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crc32c_cra_init(ptr nocapture noundef writeonly %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 -1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c_pmull_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{ptr @crc32_armv8_le, ptr @crc32_le}
!9 = !{ptr @__crc32c_le, ptr @crc32c_armv8_le}
