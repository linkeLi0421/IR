; ModuleID = '/llk/IR/drivers/gpio/gpiolib-legacy.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-legacy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_free\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request_one:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request_one\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_free_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_free_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_free_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.gpio = type { i32, i32, ptr }

@__kstrtab_gpio_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_free to i32), ptr @__kstrtab_gpio_free, ptr @__kstrtabns_gpio_free }, section "___ksymtab_gpl+gpio_free", align 4
@__kstrtab_gpio_request_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request_one = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request_one to i32), ptr @__kstrtab_gpio_request_one, ptr @__kstrtabns_gpio_request_one }, section "___ksymtab_gpl+gpio_request_one", align 4
@__kstrtab_gpio_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request to i32), ptr @__kstrtab_gpio_request, ptr @__kstrtabns_gpio_request }, section "___ksymtab_gpl+gpio_request", align 4
@__kstrtab_gpio_request_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request_array to i32), ptr @__kstrtab_gpio_request_array, ptr @__kstrtabns_gpio_request_array }, section "___ksymtab_gpl+gpio_request_array", align 4
@__kstrtab_gpio_free_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_free_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_free_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_free_array to i32), ptr @__kstrtab_gpio_free_array, ptr @__kstrtabns_gpio_free_array }, section "___ksymtab_gpl+gpio_free_array", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_gpio_free, ptr @__ksymtab_gpio_free_array, ptr @__ksymtab_gpio_request, ptr @__ksymtab_gpio_request_array, ptr @__ksymtab_gpio_request_one], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpio_free(i32 noundef %0) #0 {
  %2 = tail call ptr @gpio_to_desc(i32 noundef %0) #2
  tail call void @gpiod_free(ptr noundef %2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpio_request_one(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @gpio_to_desc(i32 noundef %0) #2
  %5 = icmp eq ptr %4, null
  %6 = icmp ult i32 %0, 2048
  %7 = and i1 %6, %5
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @gpiod_request(ptr noundef %4, ptr noundef %2) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = and i32 %1, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gpio_desc, ptr %4, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 7, ptr noundef %15) #2
  br label %16

16:                                               ; preds = %14, %11
  %17 = and i32 %1, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gpio_desc, ptr %4, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %20) #2
  br label %21

21:                                               ; preds = %19, %16
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gpio_desc, ptr %4, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %25) #2
  br label %26

26:                                               ; preds = %24, %21
  %27 = and i32 %1, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @gpiod_direction_input(ptr noundef %4) #2
  br label %35

31:                                               ; preds = %26
  %32 = lshr i32 %1, 1
  %33 = and i32 %32, 1
  %34 = tail call i32 @gpiod_direction_output_raw(ptr noundef %4, i32 noundef %33) #2
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = and i32 %1, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %36, %35 ], [ -38, %38 ]
  tail call void @gpiod_free(ptr noundef %4) #2
  br label %43

43:                                               ; preds = %41, %38, %8, %3
  %44 = phi i32 [ %42, %41 ], [ %9, %8 ], [ 0, %38 ], [ -517, %3 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpio_request(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gpio_to_desc(i32 noundef %0) #2
  %4 = icmp eq ptr %3, null
  %5 = icmp ult i32 %0, 2048
  %6 = and i1 %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @gpiod_request(ptr noundef %3, ptr noundef %1) #2
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ -517, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpio_request_array(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %6 = phi ptr [ %18, %16 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio, ptr %6, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gpio_request_one(i32 noundef %7, i32 noundef %9, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %28, label %20

16:                                               ; preds = %4
  %17 = add nuw i32 %5, 1
  %18 = getelementptr %struct.gpio, ptr %6, i32 1
  %19 = icmp eq i32 %17, %1
  br i1 %19, label %28, label %4

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %23, %20 ], [ %5, %14 ]
  %22 = phi ptr [ %24, %20 ], [ %6, %14 ]
  %23 = add i32 %21, -1
  %24 = getelementptr %struct.gpio, ptr %22, i32 -1
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @gpio_to_desc(i32 noundef %25) #2
  tail call void @gpiod_free(ptr noundef %26) #2
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %16, %14, %2
  %29 = phi i32 [ %12, %14 ], [ 0, %2 ], [ %12, %20 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpio_free_array(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %7 = add i32 %5, -1
  %8 = getelementptr %struct.gpio, ptr %6, i32 1
  %9 = load i32, ptr %6, align 4
  %10 = tail call ptr @gpio_to_desc(i32 noundef %9) #2
  tail call void @gpiod_free(ptr noundef %10) #2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %2
  ret void
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
