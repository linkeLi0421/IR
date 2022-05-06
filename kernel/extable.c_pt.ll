; ModuleID = '/llk/IR/kernel/extable.c_pt.bc'
source_filename = "../kernel/extable.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.exception_table_entry = type { i32, i32 }

@text_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @text_mutex, i64 12), ptr getelementptr (i8, ptr @text_mutex, i64 12) } }, align 4
@main_extable_sort_needed = dso_local local_unnamed_addr global i32 1, section ".init.data", align 4
@__stop___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@__start___ex_table = external dso_local global [0 x %struct.exception_table_entry], align 4
@.str = private unnamed_addr constant [25 x i8] c"\015Sorting __ex_table...\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sort_main_extable() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @main_extable_sort_needed, align 4
  %2 = icmp eq i32 %1, 0
  %3 = or i1 %2, icmp ule (ptr @__stop___ex_table, ptr @__start___ex_table)
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  tail call void @sort_extable(ptr noundef nonnull @__start___ex_table, ptr noundef nonnull @__stop___ex_table) #5
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_extable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @search_kernel_exception_table(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @search_extable(ptr noundef nonnull @__start___ex_table, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ex_table to i32), i32 ptrtoint (ptr @__start___ex_table to i32)), i32 8), i32 noundef %0) #5
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_extable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @search_exception_tables(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @search_extable(ptr noundef nonnull @__start___ex_table, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___ex_table to i32), i32 ptrtoint (ptr @__start___ex_table to i32)), i32 8), i32 noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @search_module_extables(i32 noundef %0) #5
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_module_extables(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core_kernel_text(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %3 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %4 = and i1 %2, %3
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, ptr @system_state, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %13 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %14 = and i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %8
  br label %16

16:                                               ; preds = %15, %11, %5, %1
  %17 = phi i32 [ 0, %15 ], [ 1, %5 ], [ 1, %11 ], [ 1, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kernel_text_address(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @kernel_text_address(i32 noundef %0)
  %3 = icmp ne i32 %2, 0
  %4 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %5 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %6 = and i1 %4, %5
  %7 = or i1 %6, %3
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_text_address(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %3 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %4 = and i1 %2, %3
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i32, ptr @system_state, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %13 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %14 = and i1 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %11, %8
  %16 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call zeroext i1 @is_module_text_address(i32 noundef %0) #5
  br label %21

19:                                               ; preds = %15
  tail call void @rcu_nmi_enter() #5
  %20 = tail call zeroext i1 @is_module_text_address(i32 noundef %0) #5
  tail call void @rcu_nmi_exit() #5
  br label %21

21:                                               ; preds = %19, %17, %11, %5, %1
  %22 = phi i1 [ %20, %19 ], [ true, %5 ], [ true, %11 ], [ true, %1 ], [ %18, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_module_text_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @func_ptr_is_kernel_text(ptr noundef %0) local_unnamed_addr #3 {
  %2 = ptrtoint ptr %0 to i32
  %3 = icmp uge ptr %0, @_stext
  %4 = icmp ult ptr %0, @_etext
  %5 = and i1 %3, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @in_gate_area_no_mm(i32 noundef %2) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32, ptr @system_state, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = icmp uge ptr %0, @_sinittext
  %14 = icmp ult ptr %0, @_einittext
  %15 = and i1 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %9
  %17 = tail call zeroext i1 @is_module_text_address(i32 noundef %2) #5
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %12, %6, %1
  %20 = phi i32 [ %18, %16 ], [ 1, %6 ], [ 1, %12 ], [ 1, %1 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area_no_mm(i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
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
