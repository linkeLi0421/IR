; ModuleID = '/llk/IR/sound/soc/samsung/dmaengine.c_pt.bc'
source_filename = "../sound/soc/samsung/dmaengine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_samsung_asoc_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22samsung_asoc_dma_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_samsung_asoc_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }

@__kstrtab_samsung_asoc_dma_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_samsung_asoc_dma_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_samsung_asoc_dma_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @samsung_asoc_dma_platform_register to i32), ptr @__kstrtab_samsung_asoc_dma_platform_register, ptr @__kstrtabns_samsung_asoc_dma_platform_register }, section "___ksymtab_gpl+samsung_asoc_dma_platform_register", align 4
@__UNIQUE_ID_author232 = internal constant [39 x i8] c"author=Mark Brown <broonie@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [42 x i8] c"description=Samsung dmaengine ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_samsung_asoc_dma_platform_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #2
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  store ptr @snd_dmaengine_pcm_prepare_slave_config, ptr %6, align 4
  %9 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 3
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 4
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 5
  store ptr %2, ptr %11, align 4
  %12 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 5, i32 1
  store ptr %3, ptr %12, align 4
  %13 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1) #2
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i32 [ %13, %8 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
