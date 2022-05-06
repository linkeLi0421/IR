; ModuleID = '/llk/IR/crypto/ecb.c_pt.bc'
source_filename = "../crypto/ecb.c"
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
%struct.skcipher_instance = type { ptr, [60 x i8], %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.8, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.7, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.7 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.skcipher_walk = type { %union.anon.10, %union.anon.10, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.anon.22 = type { ptr, ptr }

@__UNIQUE_ID_license104 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description105 = internal constant [47 x i8] c"description=ECB block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace106 = internal constant [10 x i8] c"alias=ecb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto107 = internal constant [17 x i8] c"alias=crypto-ecb\00", section ".modinfo", align 1
@crypto_ecb_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_ecb_create, [128 x i8] c"ecb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto107, ptr @__UNIQUE_ID_alias_userspace106, ptr @__UNIQUE_ID_description105, ptr @__UNIQUE_ID_license104], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_ecb_tmpl) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_ecb_tmpl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ecb_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_ecb_encrypt, ptr %9, align 4
  %10 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_ecb_decrypt, ptr %10, align 8
  %11 = tail call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef %3) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %3, align 64
  tail call void %14(ptr noundef %3) #5
  br label %15

15:                                               ; preds = %13, %7, %5
  %16 = phi i32 [ %6, %5 ], [ %11, %13 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ecb_encrypt(ptr noundef %0) #2 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 11, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false) #5, !annotation !8
  %13 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #5
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  br label %20

20:                                               ; preds = %32, %17
  %21 = phi i32 [ %15, %17 ], [ %34, %32 ]
  %22 = load ptr, ptr %18, align 4
  %23 = load ptr, ptr %19, align 4
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ %21, %20 ], [ %30, %24 ]
  %26 = phi ptr [ %22, %20 ], [ %28, %24 ]
  %27 = phi ptr [ %23, %20 ], [ %29, %24 ]
  call void %10(ptr noundef %6, ptr noundef %27, ptr noundef %26) #5
  %28 = getelementptr i8, ptr %26, i32 %12
  %29 = getelementptr i8, ptr %27, i32 %12
  %30 = sub i32 %25, %12
  %31 = icmp ult i32 %30, %12
  br i1 %31, label %32, label %24

32:                                               ; preds = %24
  %33 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %30) #5
  %34 = load i32, ptr %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %20

36:                                               ; preds = %32, %1
  %37 = phi i32 [ %13, %1 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_ecb_decrypt(ptr noundef %0) #2 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 11, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false) #5, !annotation !8
  %13 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #5
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  br label %20

20:                                               ; preds = %32, %17
  %21 = phi i32 [ %15, %17 ], [ %34, %32 ]
  %22 = load ptr, ptr %18, align 4
  %23 = load ptr, ptr %19, align 4
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ %21, %20 ], [ %30, %24 ]
  %26 = phi ptr [ %22, %20 ], [ %28, %24 ]
  %27 = phi ptr [ %23, %20 ], [ %29, %24 ]
  call void %10(ptr noundef %6, ptr noundef %27, ptr noundef %26) #5
  %28 = getelementptr i8, ptr %26, i32 %12
  %29 = getelementptr i8, ptr %27, i32 %12
  %30 = sub i32 %25, %12
  %31 = icmp ult i32 %30, %12
  br i1 %31, label %32, label %24

32:                                               ; preds = %24
  %33 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %30) #5
  %34 = load i32, ptr %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %20

36:                                               ; preds = %32, %1
  %37 = phi i32 [ %13, %1 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
