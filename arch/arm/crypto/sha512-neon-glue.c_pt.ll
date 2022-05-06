; ModuleID = '/llk/IR/arch/arm/crypto/sha512-neon-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/sha512-neon-glue.c"
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
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__UNIQUE_ID_alias_userspace158 = internal constant [18 x i8] c"alias=sha384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto159 = internal constant [25 x i8] c"alias=crypto-sha384-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace160 = internal constant [18 x i8] c"alias=sha512-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto161 = internal constant [25 x i8] c"alias=crypto-sha512-neon\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@sha512_neon_algs = dso_local local_unnamed_addr global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha384_base_init, ptr @sha512_neon_update, ptr @sha512_neon_final, ptr @sha512_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha512_base_init, ptr @sha512_neon_update, ptr @sha512_neon_final, ptr @sha512_neon_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto159, ptr @__UNIQUE_ID_alias_crypto161, ptr @__UNIQUE_ID_alias_userspace158, ptr @__UNIQUE_ID_alias_userspace160], section "llvm.metadata"

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %0) #0 {
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha512_neon_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
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
  %17 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 127
  %20 = zext i32 %2 to i64
  %21 = add nuw nsw i64 %19, %20
  %22 = icmp ult i64 %21, 128
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %3
  %24 = tail call i32 @sha512_arm_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7
  br label %64

25:                                               ; preds = %16
  tail call void @kernel_neon_begin() #7
  %26 = load i64, ptr %17, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 127
  %29 = add i64 %26, %20
  store i64 %29, ptr %17, align 8
  %30 = icmp ult i64 %29, %20
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = add i32 %28, %2
  %37 = icmp ugt i32 %36, 127
  br i1 %37, label %38, label %55, !prof !8

38:                                               ; preds = %35
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = sub nuw nsw i32 128, %28
  %42 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %43 = getelementptr i8, ptr %42, i32 %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %1, i32 %41, i1 false) #7
  %44 = getelementptr i8, ptr %1, i32 %41
  %45 = sub i32 %2, %41
  tail call void @sha512_block_data_order_neon(ptr noundef %4, ptr noundef %42, i32 noundef 1) #7
  br label %46

46:                                               ; preds = %40, %38
  %47 = phi i32 [ %45, %40 ], [ %2, %38 ]
  %48 = phi ptr [ %44, %40 ], [ %1, %38 ]
  %49 = and i32 %47, 127
  %50 = icmp ult i32 %47, 128
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = lshr i32 %47, 7
  tail call void @sha512_block_data_order_neon(ptr noundef %4, ptr noundef %48, i32 noundef %52) #7
  %53 = and i32 %47, -128
  %54 = getelementptr i8, ptr %48, i32 %53
  br label %55

55:                                               ; preds = %51, %46, %35
  %56 = phi i32 [ %2, %35 ], [ %49, %51 ], [ %49, %46 ]
  %57 = phi i32 [ %28, %35 ], [ 0, %51 ], [ 0, %46 ]
  %58 = phi ptr [ %1, %35 ], [ %54, %51 ], [ %48, %46 ]
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %62 = getelementptr i8, ptr %61, i32 %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %58, i32 %56, i1 false) #7
  br label %63

63:                                               ; preds = %60, %55
  tail call void @kernel_neon_end() #7
  br label %64

64:                                               ; preds = %63, %23
  %65 = phi i32 [ %24, %23 ], [ 0, %63 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha512_neon_final(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @sha512_neon_finup(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha512_neon_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
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
  %17 = tail call i32 @sha512_arm_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %106

18:                                               ; preds = %4
  tail call void @kernel_neon_begin() #7
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 127
  %26 = zext i32 %2 to i64
  %27 = add i64 %23, %26
  store i64 %27, ptr %22, align 8
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %29, %20
  %34 = add i32 %25, %2
  %35 = icmp ugt i32 %34, 127
  br i1 %35, label %36, label %56, !prof !8

36:                                               ; preds = %33
  %37 = icmp eq i32 %25, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = sub nuw nsw i32 128, %25
  %40 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %41 = getelementptr i8, ptr %40, i32 %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %1, i32 %39, i1 false) #7
  %42 = getelementptr i8, ptr %1, i32 %39
  %43 = sub i32 %2, %39
  tail call void @sha512_block_data_order_neon(ptr noundef %21, ptr noundef %40, i32 noundef 1) #7
  br label %44

44:                                               ; preds = %38, %36
  %45 = phi i32 [ %43, %38 ], [ %2, %36 ]
  %46 = phi ptr [ %42, %38 ], [ %1, %36 ]
  %47 = and i32 %45, 127
  %48 = icmp ult i32 %45, 128
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = lshr i32 %45, 7
  tail call void @sha512_block_data_order_neon(ptr noundef %21, ptr noundef %46, i32 noundef %50) #7
  %51 = and i32 %45, -128
  %52 = getelementptr i8, ptr %46, i32 %51
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi ptr [ %52, %49 ], [ %46, %44 ]
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %33
  %57 = phi ptr [ %54, %53 ], [ %1, %33 ]
  %58 = phi i32 [ 0, %53 ], [ %25, %33 ]
  %59 = phi i32 [ %47, %53 ], [ %2, %33 ]
  %60 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %61 = getelementptr i8, ptr %60, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %57, i32 %59, i1 false) #7
  br label %62

62:                                               ; preds = %56, %53, %18
  %63 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %64 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %65 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 127
  %69 = add nuw nsw i32 %68, 1
  %70 = getelementptr %struct.sha512_state, ptr %63, i32 0, i32 2, i32 %68
  store i8 -128, ptr %70, align 1
  %71 = icmp ugt i32 %68, 111
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %64, i32 %69
  %74 = xor i32 %68, 127
  tail call void @llvm.memset.p0.i32(ptr align 1 %73, i8 0, i32 %74, i1 false) #7
  tail call void @sha512_block_data_order_neon(ptr noundef %63, ptr noundef %64, i32 noundef 1) #7
  br label %75

75:                                               ; preds = %72, %62
  %76 = phi i32 [ 0, %72 ], [ %69, %62 ]
  %77 = getelementptr %struct.shash_desc, ptr %0, i32 25
  %78 = getelementptr i8, ptr %64, i32 %76
  %79 = sub nuw nsw i32 112, %76
  tail call void @llvm.memset.p0.i32(ptr align 1 %78, i8 0, i32 %79, i1 false) #7
  %80 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %65, align 8
  %83 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %82, i64 3) #7
  %84 = tail call i64 @llvm.bswap.i64(i64 %83) #7
  store i64 %84, ptr %77, align 8
  %85 = shl i64 %82, 3
  %86 = tail call i64 @llvm.bswap.i64(i64 %85) #7
  %87 = getelementptr %struct.shash_desc, ptr %0, i32 26
  store i64 %86, ptr %87, align 8
  tail call void @sha512_block_data_order_neon(ptr noundef %63, ptr noundef %64, i32 noundef 1) #7
  tail call void @kernel_neon_end() #7
  %88 = load ptr, ptr %0, align 8
  %89 = getelementptr inbounds %struct.crypto_shash, ptr %88, i32 0, i32 2, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 -64
  %92 = load i32, ptr %91, align 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %94, %75
  %95 = phi i32 [ %102, %94 ], [ 0, %75 ]
  %96 = phi ptr [ %100, %94 ], [ %3, %75 ]
  %97 = phi i32 [ %103, %94 ], [ %92, %75 ]
  %98 = getelementptr [8 x i64], ptr %63, i32 0, i32 %95
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr i64, ptr %96, i32 1
  %101 = tail call i64 @llvm.bswap.i64(i64 %99) #7
  store i64 %101, ptr %96, align 1
  %102 = add i32 %95, 1
  %103 = add i32 %97, -8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %94

105:                                              ; preds = %94, %75
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(208) %63, i8 0, i32 208, i1 false) #7
  tail call void asm sideeffect "", "r,~{memory}"(ptr %63) #7, !srcloc !9
  br label %106

106:                                              ; preds = %105, %16
  %107 = phi i32 [ 0, %105 ], [ %17, %16 ]
  ret i32 %107
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %0) #0 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sha512_arm_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha512_block_data_order_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sha512_arm_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

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
!9 = !{i64 2148924624}
