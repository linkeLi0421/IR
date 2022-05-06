; ModuleID = '/llk/IR/crypto/ghash-generic.c_pt.bc'
source_filename = "../crypto/ghash-generic.c"
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
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.be128 = type { i64, i64 }

@__UNIQUE_ID_license107 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [32 x i8] c"description=GHASH hash function\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace109 = internal constant [12 x i8] c"alias=ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto110 = internal constant [19 x i8] c"alias=crypto-ghash\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace111 = internal constant [20 x i8] c"alias=ghash-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto112 = internal constant [27 x i8] c"alias=crypto-ghash-generic\00", section ".modinfo", align 1
@ghash_alg = internal global %struct.shash_alg { ptr @ghash_init, ptr @ghash_update, ptr @ghash_final, ptr null, ptr null, ptr null, ptr null, ptr @ghash_setkey, ptr null, ptr null, i32 20, [20 x i8] undef, i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 4, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ghash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ghash-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr @ghash_exit_tfm, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias_crypto110, ptr @__UNIQUE_ID_alias_crypto112, ptr @__UNIQUE_ID_alias_userspace109, ptr @__UNIQUE_ID_alias_userspace111, ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_license107], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_shash(ptr noundef nonnull @ghash_alg) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_shash(ptr noundef nonnull @ghash_alg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ghash_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_update(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1
  %7 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2)
  %12 = sub i32 %8, %11
  store i32 %12, ptr %7, align 4
  %13 = sub i32 %2, %11
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = sub i32 16, %8
  %17 = getelementptr i8, ptr %4, i32 %16
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %25, %18 ], [ %17, %15 ]
  %20 = phi ptr [ %23, %18 ], [ %1, %15 ]
  %21 = phi i32 [ %22, %18 ], [ %11, %15 ]
  %22 = add i32 %21, -1
  %23 = getelementptr i8, ptr %20, i32 1
  %24 = load i8, ptr %20, align 1
  %25 = getelementptr i8, ptr %19, i32 1
  %26 = load i8, ptr %19, align 1
  %27 = xor i8 %26, %24
  store i8 %27, ptr %19, align 1
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %29, label %18

29:                                               ; preds = %18
  %30 = load i32, ptr %7, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i32 [ %12, %10 ], [ %30, %29 ]
  %33 = phi ptr [ %1, %10 ], [ %23, %29 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %6, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %4, ptr noundef %36) #8
  br label %37

37:                                               ; preds = %35, %31, %3
  %38 = phi i32 [ %2, %3 ], [ %13, %35 ], [ %13, %31 ]
  %39 = phi ptr [ %1, %3 ], [ %33, %35 ], [ %33, %31 ]
  %40 = icmp ugt i32 %38, 15
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  %43 = getelementptr %struct.shash_desc, ptr %0, i32 2
  %44 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi ptr [ %39, %41 ], [ %64, %45 ]
  %47 = phi i32 [ %38, %41 ], [ %65, %45 ]
  %48 = getelementptr i32, ptr %46, i32 1
  %49 = load i32, ptr %46, align 4
  %50 = load i32, ptr %4, align 4
  %51 = xor i32 %50, %49
  store i32 %51, ptr %4, align 4
  %52 = getelementptr i32, ptr %46, i32 2
  %53 = load i32, ptr %48, align 4
  %54 = load i32, ptr %42, align 4
  %55 = xor i32 %54, %53
  store i32 %55, ptr %42, align 4
  %56 = getelementptr i32, ptr %46, i32 3
  %57 = load i32, ptr %52, align 4
  %58 = load i32, ptr %43, align 4
  %59 = xor i32 %58, %57
  store i32 %59, ptr %43, align 4
  %60 = load i32, ptr %56, align 4
  %61 = load i32, ptr %44, align 4
  %62 = xor i32 %61, %60
  store i32 %62, ptr %44, align 4
  %63 = load ptr, ptr %6, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %4, ptr noundef %63) #8
  %64 = getelementptr i8, ptr %46, i32 16
  %65 = add i32 %47, -16
  %66 = icmp ugt i32 %65, 15
  br i1 %66, label %45, label %67

67:                                               ; preds = %45, %37
  %68 = phi i32 [ %38, %37 ], [ %65, %45 ]
  %69 = phi ptr [ %39, %37 ], [ %64, %45 ]
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %67
  %72 = sub nuw nsw i32 16, %68
  store i32 %72, ptr %7, align 4
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi ptr [ %69, %71 ], [ %78, %73 ]
  %75 = phi i32 [ %68, %71 ], [ %77, %73 ]
  %76 = phi ptr [ %4, %71 ], [ %80, %73 ]
  %77 = add i32 %75, -1
  %78 = getelementptr i8, ptr %74, i32 1
  %79 = load i8, ptr %74, align 1
  %80 = getelementptr i8, ptr %76, i32 1
  %81 = load i8, ptr %76, align 1
  %82 = xor i8 %81, %79
  store i8 %82, ptr %76, align 1
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %84, label %73

84:                                               ; preds = %73, %67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 1
  store i32 -1, ptr %4, align 4
  %10 = load ptr, ptr %9, align 4
  tail call void @gf128mul_4k_lle(ptr noundef %3, ptr noundef %10) #8
  br label %11

11:                                               ; preds = %7, %2
  store i32 0, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1, ptr noundef align 1 dereferenceable(16) %3, i32 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ghash_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca %struct.be128, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %6 = icmp eq i32 %2, 16
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @kfree_sensitive(ptr noundef nonnull %8) #8
  br label %11

11:                                               ; preds = %10, %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %12 = call ptr @gf128mul_init_4k_lle(ptr noundef nonnull %4) #8
  store ptr %12, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !8
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 -12, i32 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ -22, %3 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ghash_exit_tfm(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree_sensitive(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf128mul_4k_lle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf128mul_init_4k_lle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2148921004}
