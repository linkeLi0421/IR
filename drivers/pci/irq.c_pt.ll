; ModuleID = '/llk/IR/drivers/pci/irq.c_pt.bc'
source_filename = "../drivers/pci/irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }

@__kstrtab_pci_request_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_irq to i32), ptr @__kstrtab_pci_request_irq, ptr @__kstrtabns_pci_request_irq }, section "___ksymtab+pci_request_irq", align 4
@__kstrtab_pci_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_irq to i32), ptr @__kstrtab_pci_free_irq, ptr @__kstrtabns_pci_free_irq }, section "___ksymtab+pci_free_irq", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_pci_free_irq, ptr @__ksymtab_pci_request_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ...) #0 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, i32 8320, i32 128
  call void @llvm.va_start(ptr nonnull %7)
  %10 = load i32, ptr %7, align 4
  %11 = insertvalue [1 x i32] poison, i32 %10, 0
  %12 = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %5, [1 x i32] %11) #4
  call void @llvm.va_end(ptr nonnull %7)
  %13 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef %1) #4
  %14 = call i32 @request_threaded_irq(i32 noundef %13, ptr noundef %2, ptr noundef %3, i32 noundef %9, ptr noundef %12, ptr noundef %4) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  call void @kfree(ptr noundef %12) #4
  br label %17

17:                                               ; preds = %16, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_free_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @pci_irq_vector(ptr noundef %0, i32 noundef %1) #4
  %5 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %2) #4
  tail call void @kfree(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
