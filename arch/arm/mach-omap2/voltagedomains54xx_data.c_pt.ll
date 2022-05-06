; ModuleID = '/llk/IR/arch/arm/mach-omap2/voltagedomains54xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltagedomains54xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vfsm_instance = type { i32, i8, i8 }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }

@voltagedomains_omap5 = internal global [5 x ptr] [ptr @omap5_voltdm_mpu, ptr @omap5_voltdm_mm, ptr @omap5_voltdm_core, ptr @omap5_voltdm_wkup, ptr null], section ".init.data", align 4
@.str = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@omap5_voltdm_mpu = internal global %struct.voltagedomain { ptr @.str.1, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_mpu, ptr @omap5_vdd_mpu_vfsm, ptr @omap4_vp_mpu, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap5_voltdm_mm = internal global %struct.voltagedomain { ptr @.str.2, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_iva, ptr @omap5_vdd_mm_vfsm, ptr @omap4_vp_iva, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap5_voltdm_core = internal global %struct.voltagedomain { ptr @.str.3, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_core, ptr @omap5_vdd_core_vfsm, ptr @omap4_vp_core, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap5_voltdm_wkup = internal global %struct.voltagedomain { ptr @.str.4, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap4_vc_mpu = external dso_local global %struct.omap_vc_channel, align 4
@omap5_vdd_mpu_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 56, i8 0 }, align 4
@omap4_vp_mpu = external dso_local global %struct.omap_vp_instance, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@omap4_vc_iva = external dso_local global %struct.omap_vc_channel, align 4
@omap5_vdd_mm_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 60, i8 0 }, align 4
@omap4_vp_iva = external dso_local global %struct.omap_vp_instance, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@omap4_vc_core = external dso_local global %struct.omap_vc_channel, align 4
@omap5_vdd_core_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 52, i8 0 }, align 4
@omap4_vp_core = external dso_local global %struct.omap_vp_instance, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"wkup\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap54xx_voltagedomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @voltagedomains_omap5, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = phi i32 [ %7, %3 ], [ 0, %0 ]
  %6 = getelementptr inbounds %struct.voltagedomain, ptr %4, i32 0, i32 12
  store ptr @.str, ptr %6, align 4
  %7 = add i32 %5, 1
  %8 = getelementptr [5 x ptr], ptr @voltagedomains_omap5, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3

11:                                               ; preds = %3, %0
  tail call void @voltdm_init(ptr noundef nonnull @voltagedomains_omap5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @voltdm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prm_vcvp_read(i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prm_vcvp_write(i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prm_vcvp_rmw(i32 noundef, i32 noundef, i8 noundef zeroext) #1

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
