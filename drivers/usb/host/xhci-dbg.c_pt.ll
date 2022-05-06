; ModuleID = '/llk/IR/drivers/usb/host/xhci-dbg.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-dbg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_dbg_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_dbg_trace\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_dbg_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@__kstrtab_xhci_dbg_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_dbg_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_dbg_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_dbg_trace to i32), ptr @__kstrtab_xhci_dbg_trace, ptr @__kstrtabns_xhci_dbg_trace }, section "___ksymtab_gpl+xhci_dbg_trace", align 4
@.str = private unnamed_addr constant [17 x i8] c"enabled/disabled\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"addressed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_xhci_dbg_trace], section "llvm.metadata"
@switch.table.xhci_get_slot_state = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local nonnull ptr @xhci_get_slot_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 536870912
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = lshr i32 %5, 27
  %9 = getelementptr inbounds [4 x ptr], ptr @switch.table.xhci_get_slot_state, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %10, %7 ], [ @.str.4, %2 ]
  ret ptr %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_slot_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_dbg_trace(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  call void %1(ptr noundef nonnull %4) #4
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
