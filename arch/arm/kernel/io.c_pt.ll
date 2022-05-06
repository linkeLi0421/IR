; ModuleID = '/llk/IR/arch/arm/kernel/io.c_pt.bc'
source_filename = "../arch/arm/kernel/io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_io_modify_relaxed:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_io_modify_relaxed\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_io_modify_relaxed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_io_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_io_modify\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_io_modify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__memcpy_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22_memcpy_fromio\22\09\09\09\09\09"
module asm "__kstrtabns__memcpy_fromio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22_memcpy_toio\22\09\09\09\09\09"
module asm "__kstrtabns__memcpy_toio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__memset_io:\09\09\09\09\09"
module asm "\09.asciz \09\22_memset_io\22\09\09\09\09\09"
module asm "__kstrtabns__memset_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__io_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@__kstrtab_atomic_io_modify_relaxed = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_io_modify_relaxed = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_io_modify_relaxed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_io_modify_relaxed to i32), ptr @__kstrtab_atomic_io_modify_relaxed, ptr @__kstrtabns_atomic_io_modify_relaxed }, section "___ksymtab+atomic_io_modify_relaxed", align 4
@__kstrtab_atomic_io_modify = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_io_modify = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_io_modify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_io_modify to i32), ptr @__kstrtab_atomic_io_modify, ptr @__kstrtabns_atomic_io_modify }, section "___ksymtab+atomic_io_modify", align 4
@__kstrtab__memcpy_fromio = external dso_local constant [0 x i8], align 1
@__kstrtabns__memcpy_fromio = external dso_local constant [0 x i8], align 1
@__ksymtab__memcpy_fromio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_memcpy_fromio to i32), ptr @__kstrtab__memcpy_fromio, ptr @__kstrtabns__memcpy_fromio }, section "___ksymtab+_memcpy_fromio", align 4
@__kstrtab__memcpy_toio = external dso_local constant [0 x i8], align 1
@__kstrtabns__memcpy_toio = external dso_local constant [0 x i8], align 1
@__ksymtab__memcpy_toio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_memcpy_toio to i32), ptr @__kstrtab__memcpy_toio, ptr @__kstrtabns__memcpy_toio }, section "___ksymtab+_memcpy_toio", align 4
@__kstrtab__memset_io = external dso_local constant [0 x i8], align 1
@__kstrtabns__memset_io = external dso_local constant [0 x i8], align 1
@__ksymtab__memset_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_memset_io to i32), ptr @__kstrtab__memset_io, ptr @__kstrtabns__memset_io }, section "___ksymtab+_memset_io", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab__memcpy_fromio, ptr @__ksymtab__memcpy_toio, ptr @__ksymtab__memset_io, ptr @__ksymtab_atomic_io_modify, ptr @__ksymtab_atomic_io_modify_relaxed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atomic_io_modify_relaxed(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @__io_lock) #2
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  %6 = xor i32 %1, -1
  %7 = and i32 %5, %6
  %8 = and i32 %2, %1
  %9 = or i32 %7, %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @__io_lock, i32 noundef %4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atomic_io_modify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @__io_lock) #2
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  %6 = xor i32 %1, -1
  %7 = and i32 %5, %6
  %8 = and i32 %2, %1
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %9) #2, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @__io_lock, i32 noundef %4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_memcpy_fromio(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %12, %5 ], [ %1, %3 ]
  %7 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %8 = phi ptr [ %11, %5 ], [ %0, %3 ]
  %9 = add i32 %7, -1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #2, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  store i8 %10, ptr %8, align 1
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = getelementptr i8, ptr %6, i32 1
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_memcpy_toio(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %11, %5 ], [ %1, %3 ]
  %7 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %8 = phi ptr [ %12, %5 ], [ %0, %3 ]
  %9 = add i32 %7, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %10 = load i8, ptr %6, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %10) #2, !srcloc !14
  %11 = getelementptr i8, ptr %6, i32 1
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_memset_io(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = trunc i32 %1 to i8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %2, %5 ], [ %10, %7 ]
  %9 = phi ptr [ %0, %5 ], [ %11, %7 ]
  %10 = add i32 %8, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %6) #2, !srcloc !14
  %11 = getelementptr i8, ptr %9, i32 1
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %3
  ret void
}

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
!8 = !{i64 361224}
!9 = !{i64 360806}
!10 = !{i64 2149038538}
!11 = !{i64 361004}
!12 = !{i64 2149040297}
!13 = !{i64 2149041645}
!14 = !{i64 360609}
!15 = !{i64 2149042988}
