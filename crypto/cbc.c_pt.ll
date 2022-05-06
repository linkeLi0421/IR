; ModuleID = '/llk/IR/crypto/cbc.c_pt.bc'
source_filename = "../crypto/cbc.c"
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
%struct.anon.22 = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@__UNIQUE_ID_license104 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description105 = internal constant [47 x i8] c"description=CBC block cipher mode of operation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace106 = internal constant [10 x i8] c"alias=cbc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto107 = internal constant [17 x i8] c"alias=crypto-cbc\00", section ".modinfo", align 1
@crypto_cbc_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @crypto_cbc_create, [128 x i8] c"cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto107, ptr @__UNIQUE_ID_alias_userspace106, ptr @__UNIQUE_ID_description105, ptr @__UNIQUE_ID_license104], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_cbc_tmpl) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_cbc_tmpl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbc_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @skcipher_alloc_instance_simple(ptr noundef %0, ptr noundef %1) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 1, i32 1, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #7, !range !8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @crypto_cbc_encrypt, ptr %15, align 4
  %16 = getelementptr inbounds %struct.skcipher_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @crypto_cbc_decrypt, ptr %16, align 8
  %17 = tail call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef %3) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %7
  %20 = phi i32 [ %17, %14 ], [ -22, %7 ]
  %21 = load ptr, ptr %3, align 64
  tail call void %21(ptr noundef %3) #7
  br label %22

22:                                               ; preds = %19, %14, %5
  %23 = phi i32 [ %6, %5 ], [ %20, %19 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skcipher_alloc_instance_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbc_encrypt(ptr noundef %0) #2 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !9
  %5 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #7
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.anon.22, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %12 = getelementptr i8, ptr %4, i32 12
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  %14 = getelementptr i8, ptr %4, i32 64
  br label %15

15:                                               ; preds = %46, %9
  %16 = phi i32 [ %7, %9 ], [ %49, %46 ]
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = icmp eq ptr %17, %18
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 11, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  br i1 %19, label %29, label %38

29:                                               ; preds = %29, %15
  %30 = phi i32 [ %34, %29 ], [ %16, %15 ]
  %31 = phi ptr [ %33, %29 ], [ %17, %15 ]
  %32 = phi ptr [ %31, %29 ], [ %23, %15 ]
  call void @__crypto_xor(ptr noundef %31, ptr noundef %31, ptr noundef %32, i32 noundef %22) #7
  call void %28(ptr noundef %24, ptr noundef %31, ptr noundef %31) #7
  %33 = getelementptr i8, ptr %31, i32 %22
  %34 = sub i32 %30, %22
  %35 = icmp ult i32 %34, %22
  br i1 %35, label %36, label %29

36:                                               ; preds = %29
  %37 = load ptr, ptr %13, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %31, i32 %22, i1 false) #7
  br label %46

38:                                               ; preds = %38, %15
  %39 = phi i32 [ %44, %38 ], [ %16, %15 ]
  %40 = phi ptr [ %42, %38 ], [ %17, %15 ]
  %41 = phi ptr [ %43, %38 ], [ %18, %15 ]
  call void @__crypto_xor(ptr noundef %23, ptr noundef %23, ptr noundef %40, i32 noundef %22) #7
  call void %28(ptr noundef %24, ptr noundef %41, ptr noundef %23) #7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %41, i32 %22, i1 false) #7
  %42 = getelementptr i8, ptr %40, i32 %22
  %43 = getelementptr i8, ptr %41, i32 %22
  %44 = sub i32 %39, %22
  %45 = icmp ult i32 %44, %22
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %36
  %47 = phi i32 [ %34, %36 ], [ %44, %38 ]
  %48 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %47) #7
  %49 = load i32, ptr %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %15

51:                                               ; preds = %46, %1
  %52 = phi i32 [ %5, %1 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #7
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_cbc_decrypt(ptr noundef %0) #2 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.skcipher_walk, align 4
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false), !annotation !9
  %6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext false) #7
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.anon.22, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 1, i32 0, i32 1
  %13 = getelementptr i8, ptr %5, i32 12
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 10
  %15 = getelementptr i8, ptr %5, i32 64
  br label %16

16:                                               ; preds = %69, %10
  %17 = phi i32 [ %8, %10 ], [ %72, %69 ]
  %18 = load ptr, ptr %11, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %18, %19
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  br i1 %20, label %24, label %51

24:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_alg, ptr %27, i32 0, i32 11, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = sub i32 0, %23
  %31 = and i32 %17, %30
  %32 = sub i32 %31, %23
  %33 = getelementptr i8, ptr %18, i32 %32
  %34 = icmp ugt i32 %23, 15
  %35 = sub i32 16, %23
  %36 = select i1 %34, i32 0, i32 %35
  %37 = getelementptr i8, ptr %2, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %36, i1 false) #7
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %2, ptr align 1 %33, i32 %23, i1 false) #7
  call void %29(ptr noundef %25, ptr noundef %33, ptr noundef %33) #7
  %38 = sub i32 %17, %23
  %39 = icmp ult i32 %38, %23
  br i1 %39, label %46, label %40

40:                                               ; preds = %40, %24
  %41 = phi i32 [ %44, %40 ], [ %38, %24 ]
  %42 = phi ptr [ %43, %40 ], [ %33, %24 ]
  %43 = getelementptr i8, ptr %42, i32 %30
  call void @__crypto_xor(ptr noundef %42, ptr noundef %42, ptr noundef %43, i32 noundef %23) #7
  call void %29(ptr noundef %25, ptr noundef %43, ptr noundef %43) #7
  %44 = sub i32 %41, %23
  %45 = icmp ult i32 %44, %23
  br i1 %45, label %46, label %40

46:                                               ; preds = %40, %24
  %47 = phi ptr [ %33, %24 ], [ %43, %40 ]
  %48 = phi i32 [ %38, %24 ], [ %44, %40 ]
  %49 = load ptr, ptr %14, align 4
  call void @__crypto_xor(ptr noundef %47, ptr noundef %47, ptr noundef %49, i32 noundef %23) #7
  %50 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr nonnull align 1 %2, i32 %23, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %69

51:                                               ; preds = %16
  %52 = load ptr, ptr %14, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr inbounds %struct.crypto_tfm, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.crypto_alg, ptr %55, i32 0, i32 11, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %58, %51
  %59 = phi i32 [ %17, %51 ], [ %65, %58 ]
  %60 = phi ptr [ %18, %51 ], [ %63, %58 ]
  %61 = phi ptr [ %19, %51 ], [ %64, %58 ]
  %62 = phi ptr [ %52, %51 ], [ %60, %58 ]
  call void %57(ptr noundef %53, ptr noundef %61, ptr noundef %60) #7
  call void @__crypto_xor(ptr noundef %61, ptr noundef %61, ptr noundef %62, i32 noundef %23) #7
  %63 = getelementptr i8, ptr %60, i32 %23
  %64 = getelementptr i8, ptr %61, i32 %23
  %65 = sub i32 %59, %23
  %66 = icmp ult i32 %65, %23
  br i1 %66, label %67, label %58

67:                                               ; preds = %58
  %68 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %60, i32 %23, i1 false) #7
  br label %69

69:                                               ; preds = %67, %46
  %70 = phi i32 [ %48, %46 ], [ %65, %67 ]
  %71 = call i32 @skcipher_walk_done(ptr noundef nonnull %3, i32 noundef %70) #7
  %72 = load i32, ptr %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %16

74:                                               ; preds = %69, %1
  %75 = phi i32 [ %6, %1 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #7
  ret i32 %75
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
