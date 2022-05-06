; ModuleID = '/llk/IR/arch/arm/mach-mmp/common.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_chip_id\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }

@mmp_chip_id = dso_local global i32 0, align 4
@__kstrtab_mmp_chip_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_chip_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_chip_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_chip_id to i32), ptr @__kstrtab_mmp_chip_id, ptr @__kstrtabns_mmp_chip_id }, section "___ksymtab+mmp_chip_id", align 4
@standard_io_desc = internal global [2 x %struct.map_desc] [%struct.map_desc { i32 -33554432, i32 868352, i32 2097152, i32 0 }, %struct.map_desc { i32 -31457280, i32 868864, i32 2097152, i32 0 }], section ".init.data", align 4
@mmp2_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -29360128, i32 917504, i32 1048576, i32 0 }], section ".init.data", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mmp_chip_id], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mmp_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @standard_io_desc, i32 noundef 2) #3
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -30921728 to ptr)) #3, !srcloc !8
  store i32 %1, ptr @mmp_chip_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mmp2_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @standard_io_desc, i32 noundef 2) #3
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -30921728 to ptr)) #3, !srcloc !8
  store i32 %1, ptr @mmp_chip_id, align 4
  tail call void @iotable_init(ptr noundef nonnull @mmp2_io_desc, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_restart(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  tail call void @soft_restart(i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_restart(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2871362}
