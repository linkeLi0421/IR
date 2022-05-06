; ModuleID = '/llk/IR/certs/common.c_pt.bc'
source_filename = "../certs/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.1, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.2, %union.anon.5, ptr }
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
%union.anon.1 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.2 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.3, ptr, ptr, ptr }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@.str = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\013Problem loading in-kernel X.509 certificate (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\015Loaded X.509 cert '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\013Problem parsing in-kernel X.509 certificate list\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @load_certificate_list(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 %1
  %5 = icmp ugt ptr %4, %0
  br i1 %5, label %6, label %51

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %2 to i32
  %9 = or i32 %8, 1
  %10 = inttoptr i32 %9 to ptr
  br label %11

11:                                               ; preds = %46, %6
  %12 = phi ptr [ %0, %6 ], [ %47, %46 ]
  %13 = ptrtoint ptr %12 to i32
  %14 = sub i32 %7, %13
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = load i8, ptr %12, align 1
  %18 = icmp eq i8 %17, 48
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %12, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, -126
  br i1 %22, label %23, label %49

23:                                               ; preds = %19, %16
  %24 = getelementptr i8, ptr %12, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr i8, ptr %12, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %27, %30
  %32 = add nuw nsw i32 %31, 4
  %33 = icmp ugt i32 %32, %14
  br i1 %33, label %49, label %34

34:                                               ; preds = %23
  %35 = tail call ptr @key_create_or_update(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef null, ptr noundef %12, i32 noundef %32, i32 noundef 520290304, i32 noundef 14) #3
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %37 = ptrtoint ptr %35 to i32
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %37) #4
  br label %46

40:                                               ; preds = %34
  %41 = and i32 %37, -2
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.key, ptr %42, i32 0, i32 15, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %44) #4
  tail call void @key_put(ptr noundef %42) #3
  br label %46

46:                                               ; preds = %40, %38
  %47 = getelementptr i8, ptr %12, i32 %32
  %48 = icmp ult ptr %47, %4
  br i1 %48, label %11, label %51

49:                                               ; preds = %23, %19, %11
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #4
  br label %51

51:                                               ; preds = %49, %46, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
