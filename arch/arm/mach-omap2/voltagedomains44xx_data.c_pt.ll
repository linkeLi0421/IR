; ModuleID = '/llk/IR/arch/arm/mach-omap2/voltagedomains44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltagedomains44xx_data.c"
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

@omap443x_vdd_mpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_mpu = internal global %struct.voltagedomain { ptr @.str.1, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_mpu, ptr @omap4_vdd_mpu_vfsm, ptr @omap4_vp_mpu, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap443x_vdd_iva_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_iva = internal global %struct.voltagedomain { ptr @.str.2, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_iva, ptr @omap4_vdd_iva_vfsm, ptr @omap4_vp_iva, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap443x_vdd_core_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_core = internal global %struct.voltagedomain { ptr @.str.3, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_core, ptr @omap4_vdd_core_vfsm, ptr @omap4_vp_core, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@omap446x_vdd_mpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap446x_vdd_iva_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap446x_vdd_core_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_mpu_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_iva_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_core_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_mpu_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap4_iva_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap4_core_vc_data = external dso_local global %struct.omap_vc_param, align 4
@voltagedomains_omap4 = internal global [5 x ptr] [ptr @omap4_voltdm_mpu, ptr @omap4_voltdm_iva, ptr @omap4_voltdm_core, ptr @omap4_voltdm_wkup, ptr null], section ".init.data", align 4
@.str = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@omap4_vc_mpu = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_mpu_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 56, i8 44 }, align 4
@omap4_vp_mpu = external dso_local global %struct.omap_vp_instance, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@omap4_vc_iva = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_iva_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 60, i8 48 }, align 4
@omap4_vp_iva = external dso_local global %struct.omap_vp_instance, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@omap4_vc_core = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_core_vfsm = internal constant %struct.omap_vfsm_instance { i32 0, i8 52, i8 40 }, align 4
@omap4_vp_core = external dso_local global %struct.omap_vp_instance, align 4
@omap4_voltdm_wkup = internal global %struct.voltagedomain { ptr @.str.4, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap44xx_voltagedomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #2
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 1143996416
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #2
  %6 = and i32 %5, -1048576
  %7 = icmp eq i32 %6, 1147142144
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %0
  %9 = phi ptr [ @omap443x_vdd_mpu_volt_data, %0 ], [ @omap446x_vdd_mpu_volt_data, %4 ]
  %10 = phi ptr [ @omap443x_vdd_iva_volt_data, %0 ], [ @omap446x_vdd_iva_volt_data, %4 ]
  %11 = phi ptr [ @omap443x_vdd_core_volt_data, %0 ], [ @omap446x_vdd_core_volt_data, %4 ]
  store ptr %9, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 15), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 15), align 4
  store ptr %11, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 15), align 4
  br label %12

12:                                               ; preds = %8, %4
  store ptr @omap4_mpu_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 7), align 4
  store ptr @omap4_iva_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 7), align 4
  store ptr @omap4_core_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 7), align 4
  store ptr @omap4_mpu_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 8), align 4
  store ptr @omap4_iva_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 8), align 4
  store ptr @omap4_core_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 8), align 4
  %13 = load ptr, ptr @voltagedomains_omap4, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %21, %15 ], [ %13, %12 ]
  %17 = phi i32 [ %19, %15 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.voltagedomain, ptr %16, i32 0, i32 12
  store ptr @.str, ptr %18, align 4
  %19 = add i32 %17, 1
  %20 = getelementptr [5 x ptr], ptr @voltagedomains_omap4, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %12
  tail call void @voltdm_init(ptr noundef nonnull @voltagedomains_omap4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @voltdm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

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
