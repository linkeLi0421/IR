; ModuleID = '/llk/IR/drivers/net/phy/mdio_devres.c_pt.bc'
source_filename = "../drivers/net/phy/mdio_devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mdiobus_alloc_size:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mdiobus_alloc_size\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mdiobus_alloc_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_mdiobus_register\22\09\09\09\09\09"
module asm "__kstrtabns___devm_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_mdiobus_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"devm_mdiobus_free\00", align 1
@__kstrtab_devm_mdiobus_alloc_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mdiobus_alloc_size = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mdiobus_alloc_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mdiobus_alloc_size to i32), ptr @__kstrtab_devm_mdiobus_alloc_size, ptr @__kstrtabns_devm_mdiobus_alloc_size }, section "___ksymtab+devm_mdiobus_alloc_size", align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/net/phy/mdio_devres.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"devm_mdiobus_unregister\00", align 1
@__kstrtab___devm_mdiobus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_mdiobus_register = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_mdiobus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_mdiobus_register to i32), ptr @__kstrtab___devm_mdiobus_register, ptr @__kstrtabns___devm_mdiobus_register }, section "___ksymtab+__devm_mdiobus_register", align 4
@__kstrtab_devm_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_mdiobus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_mdiobus_register to i32), ptr @__kstrtab_devm_of_mdiobus_register, ptr @__kstrtabns_devm_of_mdiobus_register }, section "___ksymtab+devm_of_mdiobus_register", align 4
@__UNIQUE_ID_file273 = internal constant [45 x i8] c"mdio_devres.file=drivers/net/phy/mdio_devres\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [24 x i8] c"mdio_devres.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__ksymtab___devm_mdiobus_register, ptr @__ksymtab_devm_mdiobus_alloc_size, ptr @__ksymtab_devm_of_mdiobus_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_mdiobus_alloc_size(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_free, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @mdiobus_alloc_size(i32 noundef %1) #3
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #3
  br label %11

9:                                                ; preds = %5
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #3
  %10 = load ptr, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %8, %2
  %12 = phi ptr [ %10, %9 ], [ null, %8 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_mdiobus_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @mdiobus_free(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__devm_mdiobus_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @devm_mdiobus_free, ptr noundef nonnull @mdiobus_devres_match, ptr noundef %1) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %15

7:                                                ; preds = %3
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @__mdiobus_register(ptr noundef %1, ptr noundef %2) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #3
  br label %15

14:                                               ; preds = %10
  store ptr %1, ptr %8, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #3
  br label %15

15:                                               ; preds = %14, %13, %7, %6
  %16 = phi i32 [ -22, %6 ], [ %11, %13 ], [ 0, %14 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mdiobus_devres_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_mdiobus_unregister(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_of_mdiobus_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @devm_mdiobus_free, ptr noundef nonnull @mdiobus_devres_match, ptr noundef %1) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef null) #3
  br label %15

7:                                                ; preds = %3
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @of_mdiobus_register(ptr noundef %1, ptr noundef %2) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #3
  br label %15

14:                                               ; preds = %10
  store ptr %1, ptr %8, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #3
  br label %15

15:                                               ; preds = %14, %13, %7, %6
  %16 = phi i32 [ -22, %6 ], [ %11, %13 ], [ 0, %14 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
