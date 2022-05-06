; ModuleID = '/llk/IR/drivers/usb/phy/of.c_pt.bc'
source_filename = "../drivers/usb/phy/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_usb_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22of_usb_get_phy_mode\22\09\09\09\09\09"
module asm "__kstrtabns_of_usb_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@__kstrtab_of_usb_get_phy_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_usb_get_phy_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_of_usb_get_phy_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_usb_get_phy_mode to i32), ptr @__kstrtab_of_usb_get_phy_mode, ptr @__kstrtabns_of_usb_get_phy_mode }, section "___ksymtab_gpl+of_usb_get_phy_mode", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"utmi_wide\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_of_usb_get_phy_mode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_usb_get_phy_mode(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(10) @.str.3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(7) @.str.5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.6)
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 5, i32 0
  br label %25

25:                                               ; preds = %21, %18, %15, %12, %9, %5, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
