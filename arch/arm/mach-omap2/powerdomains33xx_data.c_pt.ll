; ModuleID = '/llk/IR/arch/arm/mach-omap2/powerdomains33xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains33xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@am33xx_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_am33xx = internal global [7 x ptr] [ptr @gfx_33xx_pwrdm, ptr @rtc_33xx_pwrdm, ptr @wkup_33xx_pwrdm, ptr @per_33xx_pwrdm, ptr @mpu_33xx_pwrdm, ptr @cefuse_33xx_pwrdm, ptr null], section ".init.data", align 4
@gfx_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 4352, i8 11, i8 3, i8 4, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 16, i32 4, [5 x i32] [i32 393216, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 64, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 48, i32 0, i32 0, i32 0, i32 0], [5 x i32] [i32 64, i32 0, i32 0, i32 0, i32 0], i32 0 }, align 4
@rtc_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 4096, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 4, i32 4, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@wkup_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 3328, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 4, i8 8, i32 8, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@per_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.1 }, i16 3072, i8 11, i8 3, i8 4, i8 3, [5 x i8] c"\03\03\03\00\00", [5 x i8] c"\08\08\08\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 12, i8 8, i32 8, [5 x i32] [i32 96, i32 100663296, i32 -1073741824, i32 0, i32 0], [5 x i32] [i32 128, i32 536870912, i32 134217728, i32 0, i32 0], [5 x i32] [i32 25165824, i32 393216, i32 6291456, i32 0, i32 0], [5 x i32] [i32 128, i32 536870912, i32 134217728, i32 0, i32 0], i32 0 }, align 4
@mpu_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str.6, %union.anon { ptr @.str.7 }, i16 3584, i8 11, i8 3, i8 4, i8 3, [5 x i8] c"\03\03\03\00\00", [5 x i8] c"\08\08\08\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 4, i32 4, [5 x i32] [i32 786432, i32 3145728, i32 196608, i32 0, i32 0], [5 x i32] [i32 4194304, i32 8388608, i32 16777216, i32 0, i32 0], [5 x i32] [i32 192, i32 768, i32 48, i32 0, i32 0], [5 x i32] [i32 4194304, i32 8388608, i32 16777216, i32 0, i32 0], i32 0 }, align 4
@cefuse_33xx_pwrdm = internal global %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.1 }, i16 4608, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 4, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rtc_pwrdm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"wkup_pwrdm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am33xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @am33xx_pwrdm_operations) #2
  %2 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_am33xx) #2
  %3 = tail call i32 @pwrdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
