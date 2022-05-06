; ModuleID = '/llk/IR/crypto/asymmetric_keys/signature.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/signature.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_signature_free:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_signature_free\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_signature_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_query_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22query_asymmetric_key\22\09\09\09\09\09"
module asm "__kstrtabns_query_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_encrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22encrypt_blob\22\09\09\09\09\09"
module asm "__kstrtabns_encrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_decrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22decrypt_blob\22\09\09\09\09\09"
module asm "__kstrtabns_decrypt_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_create_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22create_signature\22\09\09\09\09\09"
module asm "__kstrtabns_create_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22verify_signature\22\09\09\09\09\09"
module asm "__kstrtabns_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.1, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.2, %union.anon.58, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.2 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.3, ptr, ptr, ptr }
%union.anon.3 = type { i32 }
%union.anon.58 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.60, i8 }
%union.anon.60 = type { i32 }

@__kstrtab_public_key_signature_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_signature_free = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_signature_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_signature_free to i32), ptr @__kstrtab_public_key_signature_free, ptr @__kstrtabns_public_key_signature_free }, section "___ksymtab_gpl+public_key_signature_free", align 4
@key_type_asymmetric = external dso_local global %struct.key_type, align 4
@__kstrtab_query_asymmetric_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_query_asymmetric_key = external dso_local constant [0 x i8], align 1
@__ksymtab_query_asymmetric_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @query_asymmetric_key to i32), ptr @__kstrtab_query_asymmetric_key, ptr @__kstrtabns_query_asymmetric_key }, section "___ksymtab_gpl+query_asymmetric_key", align 4
@__kstrtab_encrypt_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_encrypt_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_encrypt_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @encrypt_blob to i32), ptr @__kstrtab_encrypt_blob, ptr @__kstrtabns_encrypt_blob }, section "___ksymtab_gpl+encrypt_blob", align 4
@__kstrtab_decrypt_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_decrypt_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_decrypt_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @decrypt_blob to i32), ptr @__kstrtab_decrypt_blob, ptr @__kstrtabns_decrypt_blob }, section "___ksymtab_gpl+decrypt_blob", align 4
@__kstrtab_create_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_create_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_create_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @create_signature to i32), ptr @__kstrtab_create_signature, ptr @__kstrtabns_create_signature }, section "___ksymtab_gpl+create_signature", align 4
@__kstrtab_verify_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_verify_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_verify_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @verify_signature to i32), ptr @__kstrtab_verify_signature, ptr @__kstrtabns_verify_signature }, section "___ksymtab_gpl+verify_signature", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_create_signature, ptr @__ksymtab_decrypt_blob, ptr @__ksymtab_encrypt_blob, ptr @__ksymtab_public_key_signature_free, ptr @__ksymtab_query_asymmetric_key, ptr @__ksymtab_verify_signature], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @public_key_signature_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #2
  %5 = getelementptr [3 x ptr], ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #2
  %7 = getelementptr [3 x ptr], ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #2
  %9 = getelementptr inbounds %struct.public_key_signature, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #2
  %11 = getelementptr inbounds %struct.public_key_signature, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #2
  tail call void @kfree(ptr noundef nonnull %0) #2
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @query_asymmetric_key(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @key_type_asymmetric
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr %struct.key, ptr %3, i32 0, i32 16, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %9, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0, ptr noundef %1) #2
  br label %21

21:                                               ; preds = %19, %15, %11, %7, %2
  %22 = phi i32 [ %20, %19 ], [ -22, %2 ], [ -22, %11 ], [ -22, %7 ], [ -524, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @encrypt_blob(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 6
  store i8 0, ptr %4, align 4
  %5 = tail call i32 @asymmetric_key_eds_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asymmetric_key_eds_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @decrypt_blob(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 6
  store i8 1, ptr %4, align 4
  %5 = tail call i32 @asymmetric_key_eds_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @create_signature(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 6
  store i8 2, ptr %4, align 4
  %5 = tail call i32 @asymmetric_key_eds_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @verify_signature(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @key_type_asymmetric
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %8, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0, ptr noundef %1) #2
  br label %20

20:                                               ; preds = %18, %14, %10, %6, %2
  %21 = phi i32 [ %19, %18 ], [ -22, %2 ], [ -22, %10 ], [ -22, %6 ], [ -524, %14 ]
  ret i32 %21
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
