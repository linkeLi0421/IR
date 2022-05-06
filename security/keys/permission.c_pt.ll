; ModuleID = '/llk/IR/security/keys/permission.c_pt.bc'
source_filename = "../security/keys/permission.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_task_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22key_task_permission\22\09\09\09\09\09"
module asm "__kstrtabns_key_task_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22key_validate\22\09\09\09\09\09"
module asm "__kstrtabns_key_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.7, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.9 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.9 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"security/keys/permission.c\00", align 1
@__kstrtab_key_task_permission = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_task_permission = external dso_local constant [0 x i8], align 1
@__ksymtab_key_task_permission = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_task_permission to i32), ptr @__kstrtab_key_task_permission, ptr @__kstrtabns_key_task_permission }, section "___ksymtab+key_task_permission", align 4
@__kstrtab_key_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_key_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_validate to i32), ptr @__kstrtab_key_validate, ptr @__kstrtabns_key_validate }, section "___ksymtab+key_validate", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_key_task_permission, ptr @__ksymtab_key_validate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_task_permission(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  switch i32 %2, label %4 [
    i32 7, label %61
    i32 8, label %61
    i32 9, label %61
    i32 10, label %61
    i32 1, label %10
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
  ]

4:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #2
  br label %62

5:                                                ; preds = %3
  br label %10

6:                                                ; preds = %3
  br label %10

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  br label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %3
  %11 = phi i32 [ 32, %9 ], [ 16, %8 ], [ 8, %7 ], [ 4, %6 ], [ 2, %5 ], [ %2, %3 ]
  %12 = ptrtoint ptr %0 to i32
  %13 = and i32 %12, -2
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %15, align 8
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  br label %51

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 10
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 16128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %26, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = lshr i32 %30, 8
  br label %51

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 23
  %41 = load ptr, ptr %40, align 4
  %42 = insertvalue [1 x i32] undef, i32 %26, 0
  %43 = tail call i32 @groups_search(ptr noundef %41, [1 x i32] %42) #2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %29, align 8
  %47 = lshr i32 %46, 8
  br label %51

48:                                               ; preds = %39, %28, %24
  %49 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 10
  %50 = load i32, ptr %49, align 8
  br label %51

51:                                               ; preds = %48, %45, %37, %20
  %52 = phi i32 [ %22, %20 ], [ %30, %37 ], [ %46, %45 ], [ %50, %48 ]
  %53 = phi i32 [ %23, %20 ], [ %38, %37 ], [ %47, %45 ], [ %50, %48 ]
  %54 = and i32 %12, 1
  %55 = icmp eq i32 %54, 0
  %56 = lshr i32 %52, 24
  %57 = select i1 %55, i32 0, i32 %56
  %58 = or i32 %53, %57
  %59 = and i32 %58, %11
  %60 = icmp eq i32 %59, %11
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %3, %3, %3, %3
  br label %62

62:                                               ; preds = %61, %51, %4
  %63 = phi i32 [ -13, %4 ], [ 0, %61 ], [ -13, %51 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @groups_search(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @key_validate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  %5 = load volatile i64, ptr %4, align 8
  %6 = and i32 %3, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = and i32 %3, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @ktime_get_real_seconds() #2
  %15 = icmp slt i64 %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %16, %13, %8, %1
  %18 = phi i32 [ 0, %16 ], [ -126, %1 ], [ -128, %8 ], [ -127, %13 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

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
