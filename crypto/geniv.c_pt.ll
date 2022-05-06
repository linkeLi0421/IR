; ModuleID = '/llk/IR/crypto/geniv.c_pt.bc'
source_filename = "../crypto/geniv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_geniv_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_geniv_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_aead_geniv_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_init_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_init_geniv\22\09\09\09\09\09"
module asm "__kstrtabns_aead_init_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_exit_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_exit_geniv\22\09\09\09\09\09"
module asm "__kstrtabns_aead_exit_geniv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.113, [52 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.112, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.112 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.113 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@__kstrtab_aead_geniv_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_geniv_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_geniv_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_geniv_alloc to i32), ptr @__kstrtab_aead_geniv_alloc, ptr @__kstrtabns_aead_geniv_alloc }, section "___ksymtab_gpl+aead_geniv_alloc", align 4
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_aead_init_geniv = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_init_geniv = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_init_geniv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_init_geniv to i32), ptr @__kstrtab_aead_init_geniv, ptr @__kstrtabns_aead_init_geniv }, section "___ksymtab_gpl+aead_init_geniv", align 4
@__kstrtab_aead_exit_geniv = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_exit_geniv = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_exit_geniv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_exit_geniv to i32), ptr @__kstrtab_aead_exit_geniv, ptr @__kstrtabns_aead_exit_geniv }, section "___ksymtab_gpl+aead_exit_geniv", align 4
@__UNIQUE_ID_file320 = internal constant [24 x i8] c"geniv.file=crypto/geniv\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [18 x i8] c"geniv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [43 x i8] c"geniv.description=Shared IV generator code\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__ksymtab_aead_exit_geniv, ptr @__ksymtab_aead_geniv_alloc, ptr @__ksymtab_aead_init_geniv], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @aead_geniv_alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  br label %58

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 604) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1
  %14 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1
  %15 = getelementptr ptr, ptr %1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call ptr @crypto_attr_alg_name(ptr noundef %16) #5
  %18 = load i32, ptr %3, align 4
  %19 = call i32 @crypto_grab_aead(ptr noundef %13, ptr noundef %14, ptr noundef %17, i32 noundef 0, i32 noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 1, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 -40
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr i8, ptr %23, i32 -36
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %25, 8
  br i1 %28, label %55, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2
  %31 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %32 = getelementptr inbounds %struct.crypto_template, ptr %0, i32 0, i32 4
  %33 = getelementptr i8, ptr %23, i32 40
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %32, ptr noundef %33)
  %35 = icmp sgt i32 %34, 127
  br i1 %35, label %55, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %38 = getelementptr i8, ptr %23, i32 168
  %39 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %32, ptr noundef %38)
  %40 = icmp sgt i32 %39, 127
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %23, i32 32
  %43 = load i32, ptr %42, align 32
  %44 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %43, ptr %44, align 32
  %45 = getelementptr i8, ptr %23, i32 20
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %23, i32 28
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 12, ptr %51, align 8
  store ptr @aead_geniv_setkey, ptr %30, align 64
  %52 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @aead_geniv_setauthsize, ptr %52, align 4
  %53 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %25, ptr %53, align 8
  %54 = getelementptr inbounds %struct.aead_instance, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %27, ptr %54, align 4
  store ptr @aead_geniv_free, ptr %10, align 64
  br label %58

55:                                               ; preds = %36, %29, %21, %12
  %56 = phi i32 [ %19, %12 ], [ -22, %21 ], [ -36, %29 ], [ -36, %36 ]
  call void @crypto_drop_spawn(ptr noundef %13) #5
  call void @kfree(ptr noundef nonnull %10) #5
  %57 = inttoptr i32 %56 to ptr
  br label %58

58:                                               ; preds = %55, %41, %8, %6
  %59 = phi ptr [ %7, %6 ], [ %57, %55 ], [ %10, %41 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret ptr %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_geniv_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_aead_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_geniv_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @crypto_aead_setauthsize(ptr noundef %4, i32 noundef %1) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_geniv_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aead_init_geniv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %2, align 4
  %5 = tail call i32 @crypto_get_default_rng() #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load ptr, ptr @crypto_default_rng, align 4
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -64
  %16 = load ptr, ptr %15, align 64
  %17 = tail call i32 %16(ptr noundef %8, ptr noundef null, i32 noundef 0, ptr noundef %9, i32 noundef %12) #5
  tail call void @crypto_put_default_rng() #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %7
  %20 = tail call ptr @crypto_get_default_null_skcipher() #5
  %21 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store ptr %20, ptr %21, align 4
  %22 = ptrtoint ptr %20 to i32
  %23 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %4, i32 448
  %26 = tail call ptr @crypto_spawn_tfm2(ptr noundef %25) #5
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %26, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 64
  %33 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %36, %28, %19, %7, %1
  %35 = phi i32 [ %5, %1 ], [ %17, %7 ], [ %22, %19 ], [ %37, %36 ], [ 0, %28 ]
  ret i32 %35

36:                                               ; preds = %24
  %37 = ptrtoint ptr %26 to i32
  tail call void @crypto_put_default_null_skcipher() #5
  br label %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @aead_exit_geniv(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #5
  tail call void @crypto_put_default_null_skcipher() #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
