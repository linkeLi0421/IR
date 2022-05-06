; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/rcar3.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/rcar3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.renesas_usbhs_platform_info = type { %struct.renesas_usbhs_platform_callback, %struct.renesas_usbhs_driver_param }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@usbhs_rcar_gen3_plat_info = dso_local local_unnamed_addr constant %struct.renesas_usbhs_platform_info { %struct.renesas_usbhs_platform_callback { ptr null, ptr null, ptr @usbhs_rcar3_power_ctrl, ptr null, ptr @usbhs_get_id_as_gadget, ptr null, ptr null, ptr null }, %struct.renesas_usbhs_driver_param { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 49 } }, align 4
@usbhs_rcar_gen3_with_pll_plat_info = dso_local local_unnamed_addr constant %struct.renesas_usbhs_platform_info { %struct.renesas_usbhs_platform_callback { ptr null, ptr null, ptr @usbhs_rcar3_power_and_pll_ctrl, ptr null, ptr @usbhs_get_id_as_gadget, ptr null, ptr null, ptr null }, %struct.renesas_usbhs_driver_param { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 49 } }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_rcar3_power_ctrl(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @usbhs_pdev_to_priv(ptr noundef %0) #2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 388
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1073) #2, !srcloc !9
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @usbhs_bset(ptr noundef %4, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #2
  tail call void @usleep_range_state(i32 noundef 45, i32 noundef 90, i32 noundef 2) #2
  br label %10

9:                                                ; preds = %3
  tail call void @usbhs_bset(ptr noundef %4, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 0) #2
  br label %10

10:                                               ; preds = %9, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_get_id_as_gadget(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_rcar3_power_and_pll_ctrl(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @usbhs_pdev_to_priv(ptr noundef %0) #2
  %5 = icmp eq i32 %2, 0
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #2
  br i1 %5, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 388
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1073) #2, !srcloc !9
  tail call void @usbhs_bset(ptr noundef %4, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #2
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 1000, %8 ], [ %19, %11 ]
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 392
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #2
  %17 = and i32 %15, 256
  %18 = icmp ne i32 %17, 0
  %19 = add nsw i32 %12, -1
  %20 = icmp eq i32 %12, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11

22:                                               ; preds = %11
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 4) #2, !srcloc !9
  br label %28

25:                                               ; preds = %3
  tail call void @usbhs_bset(ptr noundef %4, i32 noundef 258, i16 noundef zeroext 16384, i16 noundef zeroext 0) #2
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #2, !srcloc !9
  br label %28

28:                                               ; preds = %25, %22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 2149925220}
!9 = !{i64 2384127}
!10 = !{i64 2384545}
!11 = !{i64 2149923998}
