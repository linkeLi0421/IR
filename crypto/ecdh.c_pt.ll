; ModuleID = '/llk/IR/crypto/ecdh.c_pt.bc'
source_filename = "../crypto/ecdh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.crypto_alg }
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
%struct.ecdh = type { ptr, i16 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }

@__UNIQUE_ID_alias_userspace222 = internal constant [11 x i8] c"alias=ecdh\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [18 x i8] c"alias=crypto-ecdh\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [35 x i8] c"description=ECDH generic algorithm\00", section ".modinfo", align 1
@ecdh_nist_p192 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p192_init_tfm, ptr null, i32 0, [36 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p192-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@ecdh_nist_p192_registered = internal unnamed_addr global i8 0, align 1
@ecdh_nist_p256 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p256_init_tfm, ptr null, i32 0, [36 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@ecdh_nist_p384 = internal global %struct.kpp_alg { ptr @ecdh_set_secret, ptr @ecdh_compute_value, ptr @ecdh_compute_value, ptr @ecdh_max_size, ptr @ecdh_nist_p384_init_tfm, ptr null, i32 0, [36 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 72, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecdh-nist-p384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecdh-nist-p384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_license224], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p192) #9
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr @ecdh_nist_p192_registered, align 1
  %4 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p256) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call i32 @crypto_register_kpp(ptr noundef nonnull @ecdh_nist_p384) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p256) #9
  br label %10

10:                                               ; preds = %9, %0
  %11 = phi i32 [ %4, %0 ], [ %7, %9 ]
  %12 = load i8, ptr @ecdh_nist_p192_registered, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p192) #9
  br label %15

15:                                               ; preds = %14, %10, %6
  %16 = phi i32 [ 0, %6 ], [ %11, %14 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  %1 = load i8, ptr @ecdh_nist_p192_registered, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p192) #9
  br label %4

4:                                                ; preds = %3, %0
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p256) #9
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @ecdh_nist_p384) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecdh_set_secret(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ecdh, align 8
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  %6 = call i32 @crypto_ecdh_decode_key(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ecdh, ptr %4, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 3
  %15 = icmp ult i32 %14, %11
  br i1 %15, label %33, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %4, align 8
  %18 = icmp ne ptr %17, null
  %19 = icmp ne i16 %10, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 8
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %24 = call i32 @ecc_gen_privkey(i32 noundef %22, i32 noundef %13, ptr noundef %23) #9
  br label %33

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %26, ptr nonnull align 1 %17, i32 %11, i1 false)
  %27 = load i32, ptr %5, align 8
  %28 = call i32 @ecc_is_key_valid(i32 noundef %27, i32 noundef %13, ptr noundef %26, i32 noundef %11) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i16, ptr %9, align 4
  %32 = zext i16 %31 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %32, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr %26) #9, !srcloc !10
  br label %33

33:                                               ; preds = %30, %25, %21, %8, %3
  %34 = phi i32 [ -22, %30 ], [ %24, %21 ], [ -22, %8 ], [ -22, %3 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecdh_compute_value(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 3
  %8 = shl i32 %6, 4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.kpp_request, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %58, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.kpp_request, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 32
  %21 = icmp eq i32 %8, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8
  %24 = zext i32 %8 to i64
  %25 = tail call i32 @sg_nents_for_len(ptr noundef %23, i64 noundef %24) #9
  %26 = tail call i32 @sg_copy_to_buffer(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %9, i32 noundef %8) #9
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load i32, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 2
  %32 = tail call i32 @crypto_ecdh_shared_secret(i32 noundef %29, i32 noundef %30, ptr noundef %31, ptr noundef nonnull %9, ptr noundef nonnull %16) #9
  br label %38

33:                                               ; preds = %11
  %34 = load i32, ptr %4, align 8
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 1, i32 2
  %37 = tail call i32 @ecc_make_pub_key(i32 noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef nonnull %9) #9
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi ptr [ %16, %28 ], [ null, %33 ]
  %40 = phi ptr [ %16, %28 ], [ %9, %33 ]
  %41 = phi i32 [ %7, %28 ], [ %8, %33 ]
  %42 = phi i32 [ %32, %28 ], [ %37, %33 ]
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.kpp_request, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %41, i32 %46)
  %48 = getelementptr inbounds %struct.kpp_request, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = zext i32 %47 to i64
  %51 = tail call i32 @sg_nents_for_len(ptr noundef %49, i64 noundef %50) #9
  %52 = tail call i32 @sg_copy_from_buffer(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %40, i32 noundef %47) #9
  %53 = icmp eq i32 %52, %47
  %54 = select i1 %53, i32 %42, i32 -22
  br label %55

55:                                               ; preds = %44, %38, %22, %18
  %56 = phi ptr [ %16, %18 ], [ %16, %22 ], [ %39, %38 ], [ %39, %44 ]
  %57 = phi i32 [ -22, %18 ], [ -22, %22 ], [ %42, %38 ], [ %54, %44 ]
  tail call void @kfree_sensitive(ptr noundef %56) #9
  br label %58

58:                                               ; preds = %55, %15
  %59 = phi i32 [ %57, %55 ], [ -12, %15 ]
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %60

60:                                               ; preds = %58, %1
  %61 = phi i32 [ %59, %58 ], [ -12, %1 ]
  ret i32 %61
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ecdh_max_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p192_init_tfm(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 3, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_decode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_gen_privkey(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_is_key_valid(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ecdh_shared_secret(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_make_pub_key(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p256_init_tfm(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 4, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ecdh_nist_p384_init_tfm(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 3, ptr %2, align 8
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store i32 6, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148719503}
