; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod_common_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_common_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_dss_dispc_dev_attr = type { i8, i8 }

@omap_hwmod_sysc_type1 = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 12, i8 8, i8 3, i8 2, i8 1, i8 0, i8 0, i8 0 }, align 1
@omap_hwmod_sysc_type2 = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 4, i8 0, i8 2, i8 0, i8 0, i8 0, i8 16, i8 0 }, align 1
@omap_hwmod_sysc_type3 = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@omap2_3_dss_dispc_dev_attr = dso_local local_unnamed_addr global %struct.omap_dss_dispc_dev_attr { i8 2, i8 0 }, align 1
@omap34xx_sr_sysc_fields = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 0, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@omap36xx_sr_sysc_fields = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 0, i8 0, i8 24, i8 26, i8 0, i8 0, i8 0, i8 0 }, align 1
@omap3_sham_sysc_fields = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 0, i8 0, i8 4, i8 0, i8 1, i8 0, i8 0, i8 0 }, align 1
@omap3xxx_aes_sysc_fields = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 0, i8 0, i8 6, i8 0, i8 1, i8 0, i8 0, i8 0 }, align 1
@omap_hwmod_sysc_type_mcasp = dso_local local_unnamed_addr global %struct.sysc_regbits zeroinitializer, align 1
@omap_hwmod_sysc_type_usb_host_fs = dso_local local_unnamed_addr global %struct.sysc_regbits { i8 4, i8 0, i8 2, i8 0, i8 1, i8 0, i8 0, i8 0 }, align 1

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
