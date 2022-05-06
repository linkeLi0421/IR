; ModuleID = '/llk/IR/crypto/echainiv.c_pt.bc'
source_filename = "../crypto/echainiv.c"
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
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.68, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }

@__UNIQUE_ID_license233 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [41 x i8] c"description=Encrypted Chain IV Generator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace235 = internal constant [15 x i8] c"alias=echainiv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto236 = internal constant [22 x i8] c"alias=crypto-echainiv\00", section ".modinfo", align 1
@echainiv_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @echainiv_aead_create, [128 x i8] c"echainiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias_crypto236, ptr @__UNIQUE_ID_alias_userspace235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license233], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_template(ptr noundef nonnull @echainiv_tmpl) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_template(ptr noundef nonnull @echainiv_tmpl) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @echainiv_aead_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @aead_geniv_alloc(ptr noundef %0, ptr noundef %1) #6
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 24
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 7
  %11 = icmp ne i32 %10, 0
  %12 = icmp eq i32 %9, 0
  %13 = or i1 %12, %11
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @echainiv_encrypt, ptr %15, align 8
  %16 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @echainiv_decrypt, ptr %16, align 4
  %17 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @aead_init_geniv, ptr %17, align 16
  %18 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @aead_exit_geniv, ptr %18, align 4
  %19 = getelementptr inbounds %struct.aead_instance, ptr %3, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  %20 = add i32 %9, 12
  store i32 %20, ptr %19, align 8
  %21 = tail call i32 @aead_register_instance(ptr noundef %0, ptr noundef %3) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14, %7
  %24 = phi i32 [ -22, %7 ], [ %21, %14 ]
  %25 = load ptr, ptr %3, align 64
  tail call void %25(ptr noundef %3) #6
  br label %26

26:                                               ; preds = %23, %14, %5
  %27 = phi i32 [ %6, %5 ], [ %24, %23 ], [ 0, %14 ]
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aead_geniv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @echainiv_encrypt(ptr noundef %0) #2 {
  %2 = alloca [448 x i8], align 64
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %6 = getelementptr i8, ptr %4, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %81, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %4, i32 68
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_aead, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %16, ptr %17, align 16
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 32
  %20 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %44, label %25

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %2, i8 0, i32 448, i1 false), !annotation !8
  %26 = getelementptr i8, ptr %4, i32 72
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 3
  store ptr %28, ptr %29, align 32
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 4, i32 4
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %11
  %37 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 2
  store ptr %21, ptr %37, align 8
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %2, i32 0, i32 3
  store ptr %23, ptr %38, align 4
  store i32 %36, ptr %2, align 64
  %39 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %2) #6
  %40 = icmp eq i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #6
  br i1 %40, label %41, label %81

41:                                               ; preds = %25
  %42 = load ptr, ptr %22, align 8
  %43 = load i32, ptr %10, align 4
  br label %44

44:                                               ; preds = %41, %13
  %45 = phi i32 [ %43, %41 ], [ %11, %13 ]
  %46 = phi ptr [ %42, %41 ], [ %21, %13 ]
  %47 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store ptr %52, ptr %54, align 4
  %55 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %48, ptr %55, align 4
  %56 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store ptr %46, ptr %56, align 4
  %57 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  store ptr %46, ptr %57, align 8
  %58 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 %45, ptr %58, align 4
  %59 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  store ptr %19, ptr %59, align 32
  %60 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 %61, ptr %62, align 8
  %63 = getelementptr i8, ptr %19, i32 %9
  %64 = getelementptr i8, ptr %63, i32 -8
  %65 = load i64, ptr %64, align 1
  %66 = call i64 @llvm.bswap.i64(i64 %65)
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %9, i1 false)
  %67 = load ptr, ptr %22, align 8
  %68 = load i32, ptr %60, align 8
  call void @scatterwalk_map_and_copy(ptr noundef %19, ptr noundef %67, i32 noundef %68, i32 noundef %9, i32 noundef 1) #6
  %69 = getelementptr i8, ptr %19, i32 -8
  br label %70

70:                                               ; preds = %70, %44
  %71 = phi i32 [ %9, %44 ], [ %77, %70 ]
  %72 = getelementptr i8, ptr %14, i32 %71
  %73 = load i64, ptr %72, align 1
  %74 = or i64 %73, 1
  %75 = mul i64 %74, %66
  %76 = getelementptr i8, ptr %69, i32 %71
  store i64 %75, ptr %76, align 1
  %77 = add i32 %71, -8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %70

79:                                               ; preds = %70
  %80 = call i32 @crypto_aead_encrypt(ptr noundef %5) #6
  br label %81

81:                                               ; preds = %79, %25, %1
  %82 = phi i32 [ %80, %79 ], [ %39, %25 ], [ -22, %1 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @echainiv_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %13 = getelementptr i8, ptr %3, i32 68
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %15, ptr %16, align 16
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %18, ptr %23, align 8
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store ptr %20, ptr %24, align 4
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = sub i32 %9, %7
  %31 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 32
  %33 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store ptr %27, ptr %33, align 4
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  store ptr %29, ptr %34, align 8
  %35 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store i32 %30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  store ptr %32, ptr %36, align 32
  %37 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %7
  %40 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 %39, ptr %40, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %32, ptr noundef %27, i32 noundef %38, i32 noundef %7, i32 noundef 0) #6
  %41 = tail call i32 @crypto_aead_decrypt(ptr noundef %12) #6
  br label %42

42:                                               ; preds = %11, %1
  %43 = phi i32 [ %41, %11 ], [ -22, %1 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_init_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aead_exit_geniv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
