; ModuleID = '/llk/IR/drivers/usb/gadget/functions.c_pt.bc'
source_filename = "../drivers/usb/gadget/functions.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_function_instance\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_function_instance\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_function_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_function:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_function\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_function_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_function_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_function_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }

@.str = private unnamed_addr constant [11 x i8] c"usbfunc:%s\00", align 1
@__kstrtab_usb_get_function_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_function_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_function_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_function_instance to i32), ptr @__kstrtab_usb_get_function_instance, ptr @__kstrtabns_usb_get_function_instance }, section "___ksymtab_gpl+usb_get_function_instance", align 4
@__kstrtab_usb_get_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_function to i32), ptr @__kstrtab_usb_get_function, ptr @__kstrtabns_usb_get_function }, section "___ksymtab_gpl+usb_get_function", align 4
@__kstrtab_usb_put_function_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_function_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_function_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_function_instance to i32), ptr @__kstrtab_usb_put_function_instance, ptr @__kstrtabns_usb_put_function_instance }, section "___ksymtab_gpl+usb_put_function_instance", align 4
@__kstrtab_usb_put_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_function = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_function to i32), ptr @__kstrtab_usb_put_function, ptr @__kstrtabns_usb_put_function }, section "___ksymtab_gpl+usb_put_function", align 4
@func_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @func_lock, i64 12), ptr getelementptr (i8, ptr @func_lock, i64 12) } }, align 4
@func_list = internal global %struct.list_head { ptr @func_list, ptr @func_list }, align 4
@__kstrtab_usb_function_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_register to i32), ptr @__kstrtab_usb_function_register, ptr @__kstrtabns_usb_function_register }, section "___ksymtab_gpl+usb_function_register", align 4
@__kstrtab_usb_function_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_function_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_function_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_function_unregister to i32), ptr @__kstrtab_usb_function_unregister, ptr @__kstrtabns_usb_function_unregister }, section "___ksymtab_gpl+usb_function_unregister", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_usb_function_register, ptr @__ksymtab_usb_function_unregister, ptr @__ksymtab_usb_get_function, ptr @__ksymtab_usb_get_function_instance, ptr @__ksymtab_usb_put_function, ptr @__ksymtab_usb_put_function_instance], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_function_instance(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @func_lock) #3
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @func_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @func_list
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %8) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 -8
  %13 = getelementptr i8, ptr %4, i32 -4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #3
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %4, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr %18() #3
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %22) #3
  br label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.usb_function_instance, ptr %19, i32 0, i32 2
  store ptr %12, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  br label %59

25:                                               ; preds = %21, %11, %2
  %26 = phi ptr [ %19, %21 ], [ inttoptr (i32 -16 to ptr), %11 ], [ inttoptr (i32 -2 to ptr), %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  %27 = icmp eq ptr %26, inttoptr (i32 -2 to ptr)
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %0) #3
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = inttoptr i32 %29 to ptr
  br label %59

33:                                               ; preds = %28
  tail call void @mutex_lock(ptr noundef nonnull @func_lock) #3
  br label %34

34:                                               ; preds = %38, %33
  %35 = phi ptr [ @func_list, %33 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @func_list
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -8
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %40) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %34

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %36, i32 -8
  %45 = getelementptr i8, ptr %36, i32 -4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call zeroext i1 @try_module_get(ptr noundef %46) #3
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %36, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr %50() #3
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr %45, align 4
  tail call void @module_put(ptr noundef %54) #3
  br label %57

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.usb_function_instance, ptr %51, i32 0, i32 2
  store ptr %44, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %53, %43, %34
  %58 = phi ptr [ %51, %53 ], [ %51, %55 ], [ inttoptr (i32 -16 to ptr), %43 ], [ inttoptr (i32 -2 to ptr), %34 ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  br label %59

59:                                               ; preds = %57, %31, %25, %23
  %60 = phi ptr [ %32, %31 ], [ %58, %57 ], [ %19, %23 ], [ %26, %25 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_function(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_function_instance, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_function_driver, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #3
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_function, ptr %6, i32 0, i32 24
  store ptr %0, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %1
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_function_instance(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_function_instance, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_function_driver, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_function_instance, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef nonnull %0) #3
  tail call void @module_put(ptr noundef %7) #3
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_function(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef nonnull %0) #3
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_function_register(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @func_lock) #3
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @func_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @func_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %2

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_function_driver, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @func_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @func_list, i32 0, i32 1), align 4
  store ptr @func_list, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_function_driver, ptr %0, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %13, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i32 [ 0, %12 ], [ -17, %6 ]
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_function_unregister(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @func_lock) #3
  %2 = getelementptr inbounds %struct.usb_function_driver, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.usb_function_driver, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @func_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
