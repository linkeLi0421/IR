; ModuleID = '/llk/IR/net/nfc/hci/llc_nop.c_pt.bc'
source_filename = "../net/nfc/hci/llc_nop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfc_llc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.llc_nop = type { ptr, ptr, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@llc_nop_ops = internal constant %struct.nfc_llc_ops { ptr @llc_nop_init, ptr @llc_nop_deinit, ptr @llc_nop_start, ptr @llc_nop_stop, ptr @llc_nop_rcv_from_drv, ptr @llc_nop_xmit_from_hci }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_nop_register() local_unnamed_addr #0 {
  %1 = tail call i32 @nfc_llc_register(ptr noundef nonnull @.str, ptr noundef nonnull @llc_nop_ops) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @llc_nop_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef %7) #0 {
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.llc_nop, ptr %10, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.llc_nop, ptr %10, i32 0, i32 2
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.llc_nop, ptr %10, i32 0, i32 3
  store i32 %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.llc_nop, ptr %10, i32 0, i32 4
  store i32 %4, ptr %16, align 8
  %17 = getelementptr inbounds %struct.llc_nop, ptr %10, i32 0, i32 5
  store ptr %7, ptr %17, align 4
  br label %18

18:                                               ; preds = %12, %8
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_nop_deinit(ptr noundef %0) #0 {
  %2 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %2) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @llc_nop_start(ptr nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @llc_nop_stop(ptr nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_nop_rcv_from_drv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.llc_nop, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %6, ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llc_nop_xmit_from_hci(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.llc_nop, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 %5(ptr noundef %6, ptr noundef %1) #4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llc_get_data(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
