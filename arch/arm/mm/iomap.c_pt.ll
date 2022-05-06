; ModuleID = '/llk/IR/arch/arm/mm/iomap.c_pt.bc'
source_filename = "../arch/arm/mm/iomap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vga_base:\09\09\09\09\09"
module asm "\09.asciz \09\22vga_base\22\09\09\09\09\09"
module asm "__kstrtabns_vga_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioport_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ioport_map\22\09\09\09\09\09"
module asm "__kstrtabns_ioport_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioport_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ioport_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_ioport_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_min_io:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_min_io\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_min_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_min_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_min_mem\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_min_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iounmap\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@vga_base = dso_local global i32 0, align 4
@__kstrtab_vga_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_vga_base = external dso_local constant [0 x i8], align 1
@__ksymtab_vga_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vga_base to i32), ptr @__kstrtab_vga_base, ptr @__kstrtabns_vga_base }, section "___ksymtab+vga_base", align 4
@__kstrtab_ioport_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioport_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ioport_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioport_map to i32), ptr @__kstrtab_ioport_map, ptr @__kstrtabns_ioport_map }, section "___ksymtab+ioport_map", align 4
@__kstrtab_ioport_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioport_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ioport_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioport_unmap to i32), ptr @__kstrtab_ioport_unmap, ptr @__kstrtabns_ioport_unmap }, section "___ksymtab+ioport_unmap", align 4
@pcibios_min_io = dso_local global i32 4096, align 4
@__kstrtab_pcibios_min_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_min_io = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_min_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_min_io to i32), ptr @__kstrtab_pcibios_min_io, ptr @__kstrtabns_pcibios_min_io }, section "___ksymtab+pcibios_min_io", align 4
@pcibios_min_mem = dso_local global i32 16777216, align 4
@__kstrtab_pcibios_min_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_min_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_min_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_min_mem to i32), ptr @__kstrtab_pcibios_min_mem, ptr @__kstrtabns_pcibios_min_mem }, section "___ksymtab+pcibios_min_mem", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_pci_iounmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iounmap = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iounmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iounmap to i32), ptr @__kstrtab_pci_iounmap, ptr @__kstrtabns_pci_iounmap }, section "___ksymtab+pci_iounmap", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ioport_map, ptr @__ksymtab_ioport_unmap, ptr @__ksymtab_pci_iounmap, ptr @__ksymtab_pcibios_min_io, ptr @__ksymtab_pcibios_min_mem, ptr @__ksymtab_vga_base], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ioport_map(i32 noundef %0, i32 %1) #0 {
  %3 = and i32 %0, 1048575
  %4 = or i32 %3, -18874368
  %5 = inttoptr i32 %4 to ptr
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ioport_unmap(ptr nocapture %0) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_iounmap(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = ptrtoint ptr %1 to i32
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  %8 = icmp ule i32 %7, %3
  %9 = icmp ult ptr %1, inttoptr (i32 -8388608 to ptr)
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @iounmap(ptr noundef %1) #3
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
