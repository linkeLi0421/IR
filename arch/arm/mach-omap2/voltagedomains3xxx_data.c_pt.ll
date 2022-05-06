; ModuleID = '/llk/IR/arch/arm/mach-omap2/voltagedomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltagedomains3xxx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vfsm_instance = type { i32, i8, i8 }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }

@omap36xx_vddmpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_voltdm_mpu = internal global %struct.voltagedomain { ptr @.str.1, i8 1, %struct.list_head zeroinitializer, ptr @omap3_vc_mpu, ptr @omap3_vdd1_vfsm, ptr @omap3_vp_mpu, ptr null, ptr null, ptr null, ptr @omap3_prm_vcvp_read, ptr @omap3_prm_vcvp_write, ptr @omap3_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap36xx_vddcore_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_voltdm_core = internal global %struct.voltagedomain { ptr @.str.2, i8 1, %struct.list_head zeroinitializer, ptr @omap3_vc_core, ptr @omap3_vdd2_vfsm, ptr @omap3_vp_core, ptr null, ptr null, ptr null, ptr @omap3_prm_vcvp_read, ptr @omap3_prm_vcvp_write, ptr @omap3_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap34xx_vddmpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap34xx_vddcore_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_mpu_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap3_core_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap3_mpu_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap3_core_vc_data = external dso_local global %struct.omap_vc_param, align 4
@voltagedomains_am35xx = internal global [4 x ptr] [ptr @am35xx_voltdm_mpu, ptr @am35xx_voltdm_core, ptr @omap3_voltdm_wkup, ptr null], section ".init.data", align 4
@voltagedomains_omap3 = internal global [4 x ptr] [ptr @omap3_voltdm_mpu, ptr @omap3_voltdm_core, ptr @omap3_voltdm_wkup, ptr null], section ".init.data", align 4
@.str = private unnamed_addr constant [7 x i8] c"sys_ck\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mpu_iva\00", align 1
@omap3_vc_mpu = external dso_local global %struct.omap_vc_channel, align 4
@omap3_vdd1_vfsm = internal constant %struct.omap_vfsm_instance { i32 65535, i8 -112, i8 0 }, align 4
@omap3_vp_mpu = external dso_local global %struct.omap_vp_instance, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@omap3_vc_core = external dso_local global %struct.omap_vc_channel, align 4
@omap3_vdd2_vfsm = internal constant %struct.omap_vfsm_instance { i32 -65536, i8 -112, i8 0 }, align 4
@omap3_vp_core = external dso_local global %struct.omap_vp_instance, align 4
@am35xx_voltdm_mpu = internal global %struct.voltagedomain { ptr @.str.1, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@am35xx_voltdm_core = internal global %struct.voltagedomain { ptr @.str.2, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap3_voltdm_wkup = internal global %struct.voltagedomain { ptr @.str.3, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3xxx_voltagedomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #2
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 909115392
  %4 = select i1 %3, ptr @omap36xx_vddmpu_volt_data, ptr @omap34xx_vddmpu_volt_data
  %5 = select i1 %3, ptr @omap36xx_vddcore_volt_data, ptr @omap34xx_vddcore_volt_data
  store ptr %4, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 15), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 15), align 4
  store ptr @omap3_mpu_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 7), align 4
  store ptr @omap3_core_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 7), align 4
  store ptr @omap3_mpu_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 8), align 4
  store ptr @omap3_core_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 8), align 4
  %6 = tail call i32 @omap_rev() #2
  %7 = and i32 %6, -16777216
  %8 = icmp eq i32 %7, 889192448
  %9 = select i1 %8, ptr @voltagedomains_am35xx, ptr @voltagedomains_omap3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %0
  %13 = phi ptr [ %18, %12 ], [ %10, %0 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %0 ]
  %15 = getelementptr inbounds %struct.voltagedomain, ptr %13, i32 0, i32 12
  store ptr @.str, ptr %15, align 4
  %16 = add i32 %14, 1
  %17 = getelementptr ptr, ptr %9, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %0
  tail call void @voltdm_init(ptr noundef nonnull %9) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @voltdm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_prm_vcvp_read(i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_vcvp_write(i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_prm_vcvp_rmw(i32 noundef, i32 noundef, i8 noundef zeroext) #1

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
