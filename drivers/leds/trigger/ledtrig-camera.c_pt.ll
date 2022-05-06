; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-camera.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-camera.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_flash_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_flash_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_flash_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_torch_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_torch_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_torch_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@ledtrig_flash = internal global ptr null, align 4
@__kstrtab_ledtrig_flash_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_flash_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_flash_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_flash_ctrl to i32), ptr @__kstrtab_ledtrig_flash_ctrl, ptr @__kstrtabns_ledtrig_flash_ctrl }, section "___ksymtab_gpl+ledtrig_flash_ctrl", align 4
@ledtrig_torch = internal global ptr null, align 4
@__kstrtab_ledtrig_torch_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_torch_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_torch_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_torch_ctrl to i32), ptr @__kstrtab_ledtrig_torch_ctrl, ptr @__kstrtabns_ledtrig_torch_ctrl }, section "___ksymtab_gpl+ledtrig_torch_ctrl", align 4
@__initcall__kmod_ledtrig_camera__162_42_ledtrig_camera_init6 = internal global ptr @ledtrig_camera_init, section ".initcall6.init", align 4
@__exitcall_ledtrig_camera_exit = internal global ptr @ledtrig_camera_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description163 = internal constant [70 x i8] c"ledtrig_camera.description=LED Trigger for Camera Flash/Torch Control\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [31 x i8] c"ledtrig_camera.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [56 x i8] c"ledtrig_camera.file=drivers/leds/trigger/ledtrig-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [30 x i8] c"ledtrig_camera.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"torch\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_ledtrig_camera_exit, ptr @__initcall__kmod_ledtrig_camera__162_42_ledtrig_camera_init6, ptr @__ksymtab_ledtrig_flash_ctrl, ptr @__ksymtab_ledtrig_torch_ctrl, ptr @ledtrig_camera_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ledtrig_flash_ctrl(i1 noundef zeroext %0) #0 {
  %2 = select i1 %0, i32 255, i32 0
  %3 = load ptr, ptr @ledtrig_flash, align 4
  tail call void @led_trigger_event(ptr noundef %3, i32 noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ledtrig_torch_ctrl(i1 noundef zeroext %0) #0 {
  %2 = select i1 %0, i32 255, i32 0
  %3 = load ptr, ptr @ledtrig_torch, align 4
  tail call void @led_trigger_event(ptr noundef %3, i32 noundef %2) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ledtrig_camera_init() #2 section ".init.text" {
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef nonnull @ledtrig_flash) #3
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull @ledtrig_torch) #3
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ledtrig_camera_exit() #2 section ".exit.text" {
  %1 = load ptr, ptr @ledtrig_torch, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %1) #3
  %2 = load ptr, ptr @ledtrig_flash, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
