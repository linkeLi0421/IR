; ModuleID = '/llk/IR/arch/arm/mach-omap2/sdrc.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sdrc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_sdrc_params = type { i32, i32, i32, i32, i32 }

@sms_context.0 = internal unnamed_addr global i32 0, align 4
@sdrc_init_params_cs0 = internal unnamed_addr global ptr null, align 4
@sdrc_init_params_cs1 = internal unnamed_addr global ptr null, align 4
@omap2_sdrc_base = dso_local local_unnamed_addr global ptr null, align 4
@omap2_sms_base = dso_local local_unnamed_addr global ptr null, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_sms_save_context() local_unnamed_addr #0 {
  %1 = load ptr, ptr @omap2_sms_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  store i32 %3, ptr @sms_context.0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_sms_restore_context() local_unnamed_addr #0 {
  %1 = load i32, ptr @sms_context.0, align 4
  %2 = load ptr, ptr @omap2_sms_base, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #4, !srcloc !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_sdrc_get_params(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @sdrc_init_params_cs0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @sdrc_init_params_cs1, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %8, %0
  %11 = or i1 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = icmp ne ptr %7, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %7, %12 ], [ %19, %15 ]
  %17 = phi ptr [ %4, %12 ], [ %18, %15 ]
  %18 = getelementptr %struct.omap_sdrc_params, ptr %17, i32 1
  %19 = getelementptr %struct.omap_sdrc_params, ptr %16, i32 %14
  %20 = load i32, ptr %18, align 4
  %21 = icmp eq i32 %20, 0
  %22 = icmp eq i32 %20, %0
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %15

24:                                               ; preds = %15, %6
  %25 = phi ptr [ %4, %6 ], [ %18, %15 ]
  %26 = phi ptr [ %7, %6 ], [ %19, %15 ]
  %27 = phi i1 [ %9, %6 ], [ %21, %15 ]
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store ptr %25, ptr %1, align 4
  store ptr %26, ptr %2, align 4
  br label %29

29:                                               ; preds = %28, %24, %3
  %30 = phi i32 [ 0, %28 ], [ -1, %3 ], [ -1, %24 ]
  ret i32 %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2_set_globals_sdrc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 section ".init.text" {
  store ptr %0, ptr @omap2_sdrc_base, align 4
  store ptr %1, ptr @omap2_sms_base, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap2_sdrc_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 section ".init.text" {
  %3 = load ptr, ptr @omap2_sms_base, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  %6 = and i32 %5, -25
  %7 = or i32 %6, 16
  %8 = load ptr, ptr @omap2_sms_base, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !9
  %10 = load ptr, ptr @omap2_sdrc_base, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  %13 = and i32 %12, -25
  %14 = or i32 %13, 16
  %15 = load ptr, ptr @omap2_sdrc_base, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !9
  store ptr %0, ptr @sdrc_init_params_cs0, align 4
  store ptr %1, ptr @sdrc_init_params_cs1, align 4
  %17 = load ptr, ptr @omap2_sdrc_base, align 4
  %18 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 9) #4, !srcloc !9
  %19 = load ptr, ptr @omap2_sms_base, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  store i32 %21, ptr @sms_context.0, align 4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3647827}
!9 = !{i64 3647409}
