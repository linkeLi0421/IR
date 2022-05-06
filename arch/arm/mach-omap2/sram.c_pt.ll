; ModuleID = '/llk/IR/arch/arm/mach-omap2/sram.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@omap_sram_skip = internal unnamed_addr global i32 0, align 4
@omap_sram_start = internal unnamed_addr global i32 0, align 4
@omap_sram_size = internal unnamed_addr global i32 0, align 4

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_sram_ddr_init(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_sram_reprogram_sdrc(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_set_prcm(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_sram_restore_context() local_unnamed_addr #1 {
  tail call void @omap_sram_reset() #4
  tail call void @omap_push_sram_idle() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_sram_reset() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_push_sram_idle() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_sram_init() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @omap_detect_sram() #5
  tail call fastcc void @omap2_map_sram() #5
  %1 = tail call i32 @omap_rev() #4
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @omap_sram_reset() #4
  tail call void @omap_push_sram_idle() #4
  br label %5

5:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_detect_sram() unnamed_addr #3 section ".init.text" {
  store i32 0, ptr @omap_sram_skip, align 4
  %1 = tail call i32 @omap_type() #4
  %2 = icmp eq i32 %1, 3
  %3 = tail call i32 @omap_rev() #4
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 52
  br i1 %2, label %6, label %8

6:                                                ; preds = %0
  br i1 %5, label %7, label %20

7:                                                ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141880 to ptr), i32 65535) #4, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141872 to ptr), i32 65535) #4, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141864 to ptr), i32 65535) #4, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -134141824 to ptr), i32 0) #4, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -67108792 to ptr), i32 -1) #4, !srcloc !11
  br label %20

8:                                                ; preds = %0
  br i1 %5, label %9, label %19

9:                                                ; preds = %8
  store i32 1075871744, ptr @omap_sram_start, align 4
  %10 = tail call i32 @omap_type() #4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @omap_type() #4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %9
  store i32 28672, ptr @omap_sram_size, align 4
  %16 = load i32, ptr @omap_sram_skip, align 4
  %17 = add i32 %16, 16384
  store i32 %17, ptr @omap_sram_skip, align 4
  br label %25

18:                                               ; preds = %12
  store i32 32768, ptr @omap_sram_size, align 4
  br label %25

19:                                               ; preds = %8
  store i32 1075902464, ptr @omap_sram_start, align 4
  store i32 2048, ptr @omap_sram_size, align 4
  br label %25

20:                                               ; preds = %7, %6
  %21 = tail call i32 @omap_rev() #4
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 52
  store i32 1075838976, ptr @omap_sram_start, align 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 65536, ptr @omap_sram_size, align 4
  br label %25

25:                                               ; preds = %24, %20, %19, %18, %15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap2_map_sram() unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @omap_rev() #4
  %2 = and i32 %1, 255
  %3 = icmp ne i32 %2, 52
  %4 = zext i1 %3 to i32
  %5 = load i32, ptr @omap_sram_start, align 4
  %6 = load i32, ptr @omap_sram_size, align 4
  %7 = load i32, ptr @omap_sram_skip, align 4
  tail call void @omap_map_sram(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_map_sram(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
!8 = !{i64 2153591173, i64 2153591664, i64 2153591210, i64 2153591266, i64 2153591300, i64 2153591324, i64 2153591365, i64 2153591386, i64 2153591414, i64 2153591448}
!9 = !{i64 2153592240, i64 2153592731, i64 2153592277, i64 2153592333, i64 2153592367, i64 2153592391, i64 2153592432, i64 2153592453, i64 2153592481, i64 2153592515}
!10 = !{i64 2153593285, i64 2153593776, i64 2153593322, i64 2153593378, i64 2153593412, i64 2153593436, i64 2153593477, i64 2153593498, i64 2153593526, i64 2153593560}
!11 = !{i64 2879909}
