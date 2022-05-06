; ModuleID = '/llk/IR/drivers/usb/gadget/epautoconf.c_pt.bc'
source_filename = "../drivers/usb/gadget/epautoconf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_ss:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_ss\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_ss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_release:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_release\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_autoconfig_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_autoconfig_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_autoconfig_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__kstrtab_usb_ep_autoconfig_ss = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_ss = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_ss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_ss to i32), ptr @__kstrtab_usb_ep_autoconfig_ss, ptr @__kstrtabns_usb_ep_autoconfig_ss }, section "___ksymtab_gpl+usb_ep_autoconfig_ss", align 4
@__kstrtab_usb_ep_autoconfig = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig to i32), ptr @__kstrtab_usb_ep_autoconfig, ptr @__kstrtabns_usb_ep_autoconfig }, section "___ksymtab_gpl+usb_ep_autoconfig", align 4
@__kstrtab_usb_ep_autoconfig_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_release = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_release to i32), ptr @__kstrtab_usb_ep_autoconfig_release, ptr @__kstrtabns_usb_ep_autoconfig_release }, section "___ksymtab_gpl+usb_ep_autoconfig_release", align 4
@__kstrtab_usb_ep_autoconfig_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_autoconfig_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_autoconfig_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_autoconfig_reset to i32), ptr @__kstrtab_usb_ep_autoconfig_reset, ptr @__kstrtabns_usb_ep_autoconfig_reset }, section "___ksymtab_gpl+usb_ep_autoconfig_reset", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_usb_ep_autoconfig, ptr @__ksymtab_usb_ep_autoconfig_release, ptr @__ksymtab_usb_ep_autoconfig_reset, ptr @__ksymtab_usb_ep_autoconfig_ss], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_ep_autoconfig_ss(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget_ops, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call ptr %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -12
  %20 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %0, ptr noundef %19, ptr noundef %1, ptr noundef %2) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %9
  %23 = phi ptr [ %10, %9 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 7
  %29 = load i56, ptr %28, align 2
  %30 = lshr i56 %29, 16
  %31 = trunc i56 %30 to i16
  store i16 %31, ptr %24, align 1
  br label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, -128
  store i8 %35, ptr %33, align 1
  %36 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -58
  %42 = icmp ult i32 %41, -10
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = tail call i32 @simple_strtoul(ptr noundef %38, ptr noundef null, i32 noundef 10) #5
  %45 = load i8, ptr %33, align 1
  %46 = trunc i32 %44 to i8
  br label %64

47:                                               ; preds = %32
  %48 = icmp eq i8 %35, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 14
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8
  %53 = icmp ugt i32 %52, 15
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = trunc i32 %52 to i8
  br label %64

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = icmp ugt i32 %59, 15
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load i8, ptr %33, align 1
  %63 = trunc i32 %59 to i8
  br label %64

64:                                               ; preds = %61, %54, %43
  %65 = phi i8 [ -128, %54 ], [ %63, %61 ], [ %46, %43 ]
  %66 = phi i8 [ %55, %54 ], [ %62, %61 ], [ %45, %43 ]
  %67 = or i8 %66, %65
  store i8 %67, ptr %33, align 1
  %68 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 8
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 9
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 10
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 5
  store i8 1, ptr %71, align 4
  br label %72

72:                                               ; preds = %64, %56, %49, %14
  %73 = phi ptr [ %23, %64 ], [ null, %49 ], [ null, %56 ], [ null, %14 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_ep_autoconfig(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 7
  %12 = load i56, ptr %11, align 2
  %13 = trunc i56 %12 to i32
  %14 = lshr i32 %13, 16
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 64)
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  store i16 %16, ptr %17, align 1
  br label %18

18:                                               ; preds = %10, %5, %2
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_ep_autoconfig_release(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 4
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_ep_autoconfig_reset(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = getelementptr i8, ptr %6, i32 12
  store i8 0, ptr %8, align 4
  store ptr null, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 14
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 13
  store i32 0, ptr %13, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
