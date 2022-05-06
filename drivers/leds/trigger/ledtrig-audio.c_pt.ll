; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-audio.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-audio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_audio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_audio_get\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_audio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_audio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_audio_set\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_audio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }

@audio_state = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@__kstrtab_ledtrig_audio_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_audio_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_audio_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_audio_get to i32), ptr @__kstrtab_ledtrig_audio_get, ptr @__kstrtabns_ledtrig_audio_get }, section "___ksymtab_gpl+ledtrig_audio_get", align 4
@ledtrig_audio = internal global [2 x %struct.led_trigger] [%struct.led_trigger { ptr @.str, ptr @ledtrig_audio_mute_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, %struct.led_trigger { ptr @.str.1, ptr @ledtrig_audio_micmute_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }], align 4
@__kstrtab_ledtrig_audio_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_audio_set = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_audio_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_audio_set to i32), ptr @__kstrtab_ledtrig_audio_set, ptr @__kstrtabns_ledtrig_audio_set }, section "___ksymtab_gpl+ledtrig_audio_set", align 4
@__UNIQUE_ID_description162 = internal constant [47 x i8] c"description=LED trigger for audio mute control\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"audio-mute\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"audio-micmute\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_license163, ptr @__ksymtab_ledtrig_audio_get, ptr @__ksymtab_ledtrig_audio_set], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ledtrig_audio_get(i32 noundef %0) #0 {
  %2 = getelementptr [2 x i32], ptr @audio_state, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ledtrig_audio_set(i32 noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr [2 x i32], ptr @audio_state, i32 0, i32 %0
  store i32 %1, ptr %3, align 4
  %4 = getelementptr [2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 %0
  tail call void @led_trigger_event(ptr noundef %4, i32 noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @led_trigger_register(ptr noundef nonnull @ledtrig_audio) #4
  %2 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 1)) #4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @led_trigger_unregister(ptr noundef nonnull @ledtrig_audio) #4
  tail call void @led_trigger_unregister(ptr noundef getelementptr inbounds ([2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 1)) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ledtrig_audio_mute_activate(ptr noundef %0) #1 {
  %2 = load i32, ptr @audio_state, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %0, i32 noundef %2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ledtrig_audio_micmute_activate(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @audio_state, i32 0, i32 1), align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %0, i32 noundef %2) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
