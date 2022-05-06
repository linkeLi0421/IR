; ModuleID = '/llk/IR/sound/soc/soc-devres.c_pt.bc'
source_filename = "../sound/soc/soc-devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_dai\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_component\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_card:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_card\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_dmaengine_pcm_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"devm_dai_release\00", align 1
@__kstrtab_devm_snd_soc_register_dai = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_dai = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_dai = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_dai to i32), ptr @__kstrtab_devm_snd_soc_register_dai, ptr @__kstrtabns_devm_snd_soc_register_dai }, section "___ksymtab_gpl+devm_snd_soc_register_dai", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"devm_component_release\00", align 1
@__kstrtab_devm_snd_soc_register_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_component = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_component to i32), ptr @__kstrtab_devm_snd_soc_register_component, ptr @__kstrtabns_devm_snd_soc_register_component }, section "___ksymtab_gpl+devm_snd_soc_register_component", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"devm_card_release\00", align 1
@__kstrtab_devm_snd_soc_register_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_card = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_card to i32), ptr @__kstrtab_devm_snd_soc_register_card, ptr @__kstrtabns_devm_snd_soc_register_card }, section "___ksymtab_gpl+devm_snd_soc_register_card", align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"devm_dmaengine_pcm_release\00", align 1
@__kstrtab_devm_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_dmaengine_pcm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_dmaengine_pcm_register to i32), ptr @__kstrtab_devm_snd_dmaengine_pcm_register, ptr @__kstrtabns_devm_snd_dmaengine_pcm_register }, section "___ksymtab_gpl+devm_snd_dmaengine_pcm_register", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_devm_snd_dmaengine_pcm_register, ptr @__ksymtab_devm_snd_soc_register_card, ptr @__ksymtab_devm_snd_soc_register_component, ptr @__ksymtab_devm_snd_soc_register_dai], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_snd_soc_register_dai(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_dai_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @snd_soc_register_dai(ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #2
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store ptr %8, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #2
  br label %12

11:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #2
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi ptr [ null, %4 ], [ null, %11 ], [ %8, %10 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_dai_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @snd_soc_unregister_dai(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_register_dai(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_snd_soc_register_component(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_component_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @snd_soc_register_component(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store ptr %1, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #2
  br label %12

11:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #2
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi i32 [ -12, %4 ], [ %8, %11 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_component_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @snd_soc_unregister_component_by_driver(ptr noundef %0, ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_snd_soc_register_card(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_card_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @snd_soc_register_card(ptr noundef %1) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ -12, %2 ], [ %6, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_card_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @snd_soc_unregister_card(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_dmaengine_pcm_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store ptr %0, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #2
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #2
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi i32 [ -12, %3 ], [ %7, %10 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_dmaengine_pcm_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_dai(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

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
