; ModuleID = '/llk/IR/drivers/clk/qcom/clk-regmap.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_is_enabled_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_enable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_disable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_register_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_register_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_register_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@__kstrtab_clk_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_is_enabled_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_is_enabled_regmap to i32), ptr @__kstrtab_clk_is_enabled_regmap, ptr @__kstrtabns_clk_is_enabled_regmap }, section "___ksymtab_gpl+clk_is_enabled_regmap", align 4
@__kstrtab_clk_enable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_enable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_enable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_enable_regmap to i32), ptr @__kstrtab_clk_enable_regmap, ptr @__kstrtabns_clk_enable_regmap }, section "___ksymtab_gpl+clk_enable_regmap", align 4
@__kstrtab_clk_disable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_disable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_disable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_disable_regmap to i32), ptr @__kstrtab_clk_disable_regmap, ptr @__kstrtabns_clk_disable_regmap }, section "___ksymtab_gpl+clk_disable_regmap", align 4
@__kstrtab_devm_clk_register_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_register_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_register_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_register_regmap to i32), ptr @__kstrtab_devm_clk_register_regmap, ptr @__kstrtabns_devm_clk_register_regmap }, section "___ksymtab_gpl+devm_clk_register_regmap", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_disable_regmap, ptr @__ksymtab_clk_enable_regmap, ptr @__ksymtab_clk_is_enabled_regmap, ptr @__ksymtab_devm_clk_register_regmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_is_enabled_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  br i1 %12, label %20, label %17

17:                                               ; preds = %9
  %18 = icmp eq i32 %16, 0
  %19 = zext i1 %18 to i32
  br label %23

20:                                               ; preds = %9
  %21 = icmp ne i32 %16, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %20, %17, %1
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_enable_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = select i1 %4, i32 %6, i32 0
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %6, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_disable_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = select i1 %4, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %6, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_register_regmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @dev_get_regmap(ptr noundef nonnull %0, ptr noundef null) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %4
  %12 = phi ptr [ %0, %4 ], [ %9, %7 ]
  %13 = tail call ptr @dev_get_regmap(ptr noundef nonnull %12, ptr noundef null) #3
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %1, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %7, %2
  %16 = tail call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %1) #3
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
