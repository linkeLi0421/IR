; ModuleID = '/llk/IR/drivers/usb/gadget/usbstring.c_pt.bc'
source_filename = "../drivers/usb/gadget/usbstring.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_get_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_validate_langid:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_validate_langid\22\09\09\09\09\09"
module asm "__kstrtabns_usb_validate_langid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }

@__kstrtab_usb_gadget_get_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_get_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_get_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_get_string to i32), ptr @__kstrtab_usb_gadget_get_string, ptr @__kstrtabns_usb_gadget_get_string }, section "___ksymtab_gpl+usb_gadget_get_string", align 4
@__kstrtab_usb_validate_langid = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_validate_langid = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_validate_langid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_validate_langid to i32), ptr @__kstrtab_usb_validate_langid, ptr @__kstrtabns_usb_validate_langid }, section "___ksymtab_gpl+usb_validate_langid", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_usb_gadget_get_string, ptr @__ksymtab_usb_validate_langid], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_get_string(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  store i8 4, ptr %2, align 1
  %6 = getelementptr i8, ptr %2, i32 1
  store i8 3, ptr %6, align 1
  %7 = load i16, ptr %0, align 4
  %8 = trunc i16 %7 to i8
  %9 = getelementptr i8, ptr %2, i32 2
  store i8 %8, ptr %9, align 1
  %10 = load i16, ptr %0, align 4
  %11 = lshr i16 %10, 8
  %12 = trunc i16 %11 to i8
  %13 = getelementptr i8, ptr %2, i32 3
  store i8 %12, ptr %13, align 1
  br label %42

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.usb_gadget_strings, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %21

18:                                               ; preds = %26
  %19 = getelementptr %struct.usb_string, ptr %22, i32 1
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %23 = getelementptr inbounds %struct.usb_string, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %22, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %18

30:                                               ; preds = %26
  %31 = tail call i32 @strlen(ptr noundef nonnull %24)
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 126)
  %33 = getelementptr i8, ptr %2, i32 2
  %34 = tail call i32 @utf8s_to_utf16s(ptr noundef nonnull %24, i32 noundef %32, i32 noundef 1, ptr noundef %33, i32 noundef 126) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = trunc i32 %34 to i8
  %38 = shl i8 %37, 1
  %39 = add i8 %38, 2
  store i8 %39, ptr %2, align 1
  %40 = getelementptr i8, ptr %2, i32 1
  store i8 3, ptr %40, align 1
  %41 = zext i8 %39 to i32
  br label %42

42:                                               ; preds = %36, %30, %21, %18, %14, %5
  %43 = phi i32 [ 4, %5 ], [ %41, %36 ], [ -22, %30 ], [ -22, %14 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %43
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext %0) #3 {
  %2 = and i16 %0, 1023
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = zext i16 %2 to i32
  %6 = add nsw i32 %5, -255
  %7 = icmp ult i32 %6, -157
  %8 = or i32 %5, -1024
  %9 = icmp ult i32 %8, -768
  %10 = icmp ugt i16 %0, 1023
  %11 = and i1 %7, %9
  %12 = and i1 %11, %10
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i1 [ false, %1 ], [ %12, %4 ]
  ret i1 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
