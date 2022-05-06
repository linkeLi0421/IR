; ModuleID = '/llk/IR/arch/arm/crypto/sha256_neon_glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha256_neon_glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__this_module = external dso_local global %struct.module, align 64
@sha256_neon_algs = dso_local local_unnamed_addr global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_neon_update, ptr @crypto_sha256_neon_final, ptr @crypto_sha256_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_neon_update, ptr @crypto_sha256_neon_final, ptr @crypto_sha256_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %0) #0 {
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = tail call ptr @llvm.thread.pointer() #7
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
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 63
  %20 = zext i32 %2 to i64
  %21 = add nuw nsw i64 %19, %20
  %22 = icmp ult i64 %21, 64
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %3
  %24 = tail call i32 @crypto_sha256_arm_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7
  br label %58

25:                                               ; preds = %16
  tail call void @kernel_neon_begin() #7
  %26 = load i64, ptr %17, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 63
  %29 = add i64 %26, %20
  store i64 %29, ptr %17, align 8
  %30 = add i32 %28, %2
  %31 = icmp ugt i32 %30, 63
  br i1 %31, label %32, label %49, !prof !8

32:                                               ; preds = %25
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = sub nuw nsw i32 64, %28
  %36 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %37 = getelementptr i8, ptr %36, i32 %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %1, i32 %35, i1 false) #7
  %38 = getelementptr i8, ptr %1, i32 %35
  %39 = sub i32 %2, %35
  tail call void @sha256_block_data_order_neon(ptr noundef %4, ptr noundef %36, i32 noundef 1) #7
  br label %40

40:                                               ; preds = %34, %32
  %41 = phi i32 [ %39, %34 ], [ %2, %32 ]
  %42 = phi ptr [ %38, %34 ], [ %1, %32 ]
  %43 = and i32 %41, 63
  %44 = icmp ult i32 %41, 64
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = lshr i32 %41, 6
  tail call void @sha256_block_data_order_neon(ptr noundef %4, ptr noundef %42, i32 noundef %46) #7
  %47 = and i32 %41, -64
  %48 = getelementptr i8, ptr %42, i32 %47
  br label %49

49:                                               ; preds = %45, %40, %25
  %50 = phi i32 [ %2, %25 ], [ %43, %45 ], [ %43, %40 ]
  %51 = phi i32 [ %28, %25 ], [ 0, %45 ], [ 0, %40 ]
  %52 = phi ptr [ %1, %25 ], [ %48, %45 ], [ %42, %40 ]
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %56 = getelementptr i8, ptr %55, i32 %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %52, i32 %50, i1 false) #7
  br label %57

57:                                               ; preds = %54, %49
  tail call void @kernel_neon_end() #7
  br label %58

58:                                               ; preds = %57, %23
  %59 = phi i32 [ %24, %23 ], [ 0, %57 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_final(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @crypto_sha256_neon_finup(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_sha256_neon_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = tail call ptr @llvm.thread.pointer() #7
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
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = tail call i32 @crypto_sha256_arm_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %95

18:                                               ; preds = %4
  tail call void @kernel_neon_begin() #7
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 63
  %26 = zext i32 %2 to i64
  %27 = add i64 %23, %26
  store i64 %27, ptr %22, align 8
  %28 = add i32 %25, %2
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %50, !prof !8

30:                                               ; preds = %20
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i32 64, %25
  %34 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %35 = getelementptr i8, ptr %34, i32 %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %1, i32 %33, i1 false) #7
  %36 = getelementptr i8, ptr %1, i32 %33
  %37 = sub i32 %2, %33
  tail call void @sha256_block_data_order_neon(ptr noundef %21, ptr noundef %34, i32 noundef 1) #7
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi i32 [ %37, %32 ], [ %2, %30 ]
  %40 = phi ptr [ %36, %32 ], [ %1, %30 ]
  %41 = and i32 %39, 63
  %42 = icmp ult i32 %39, 64
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = lshr i32 %39, 6
  tail call void @sha256_block_data_order_neon(ptr noundef %21, ptr noundef %40, i32 noundef %44) #7
  %45 = and i32 %39, -64
  %46 = getelementptr i8, ptr %40, i32 %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi ptr [ %46, %43 ], [ %40, %38 ]
  %49 = icmp eq i32 %41, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47, %20
  %51 = phi ptr [ %48, %47 ], [ %1, %20 ]
  %52 = phi i32 [ 0, %47 ], [ %25, %20 ]
  %53 = phi i32 [ %41, %47 ], [ %2, %20 ]
  %54 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %55 = getelementptr i8, ptr %54, i32 %52
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %51, i32 %53, i1 false) #7
  br label %56

56:                                               ; preds = %50, %47, %18
  %57 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %58 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 6
  %59 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 63
  %63 = add nuw nsw i32 %62, 1
  %64 = getelementptr %struct.sha256_state, ptr %57, i32 0, i32 2, i32 %62
  store i8 -128, ptr %64, align 1
  %65 = icmp ugt i32 %62, 55
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = getelementptr i8, ptr %58, i32 %63
  %68 = xor i32 %62, 63
  tail call void @llvm.memset.p0.i32(ptr align 1 %67, i8 0, i32 %68, i1 false) #7
  tail call void @sha256_block_data_order_neon(ptr noundef %57, ptr noundef %58, i32 noundef 1) #7
  br label %69

69:                                               ; preds = %66, %56
  %70 = phi i32 [ 0, %66 ], [ %63, %56 ]
  %71 = getelementptr %struct.shash_desc, ptr %0, i32 13
  %72 = getelementptr i8, ptr %58, i32 %70
  %73 = sub nuw nsw i32 56, %70
  tail call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %73, i1 false) #7
  %74 = load i64, ptr %59, align 8
  %75 = shl i64 %74, 3
  %76 = tail call i64 @llvm.bswap.i64(i64 %75) #7
  store i64 %76, ptr %71, align 8
  tail call void @sha256_block_data_order_neon(ptr noundef %57, ptr noundef %58, i32 noundef 1) #7
  tail call void @kernel_neon_end() #7
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.crypto_shash, ptr %77, i32 0, i32 2, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 -64
  %81 = load i32, ptr %80, align 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %83, %69
  %84 = phi i32 [ %91, %83 ], [ 0, %69 ]
  %85 = phi ptr [ %89, %83 ], [ %3, %69 ]
  %86 = phi i32 [ %92, %83 ], [ %81, %69 ]
  %87 = getelementptr [8 x i32], ptr %57, i32 0, i32 %84
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i32, ptr %85, i32 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  store i32 %90, ptr %85, align 1
  %91 = add i32 %84, 1
  %92 = add i32 %86, -4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %83

94:                                               ; preds = %83, %69
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(104) %57, i8 0, i32 104, i1 false) #7
  tail call void asm sideeffect "", "r,~{memory}"(ptr %57) #7, !srcloc !9
  br label %95

95:                                               ; preds = %94, %16
  %96 = phi i32 [ 0, %94 ], [ %17, %16 ]
  ret i32 %96
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %0) #0 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sha256_arm_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_block_data_order_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_sha256_arm_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2148924784}
