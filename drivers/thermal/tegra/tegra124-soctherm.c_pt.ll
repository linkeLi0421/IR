; ModuleID = '/llk/IR/drivers/thermal/tegra/tegra124-soctherm.c_pt.bc'
source_filename = "../drivers/thermal/tegra/tegra124-soctherm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_tsensor = type { ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tegra_soctherm_fuse = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_soctherm_soc = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr }
%struct.tegra_tsensor_configuration = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_tsensor_group = type { ptr, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@tegra124_tsensors = internal constant [8 x %struct.tegra_tsensor] [%struct.tegra_tsensor { ptr @.str, i32 192, ptr @tegra124_tsensor_config, i32 152, i32 1135400, i32 -6266900, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.1, i32 224, ptr @tegra124_tsensor_config, i32 132, i32 1122220, i32 -5700700, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.2, i32 256, ptr @tegra124_tsensor_config, i32 136, i32 1127000, i32 -6768200, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.3, i32 288, ptr @tegra124_tsensor_config, i32 300, i32 1110900, i32 -6232000, ptr @tegra124_tsensor_group_cpu }, %struct.tegra_tsensor { ptr @.str.4, i32 320, ptr @tegra124_tsensor_config, i32 344, i32 1122300, i32 -5936400, ptr @tegra124_tsensor_group_mem }, %struct.tegra_tsensor { ptr @.str.5, i32 352, ptr @tegra124_tsensor_config, i32 348, i32 1145700, i32 -7124600, ptr @tegra124_tsensor_group_mem }, %struct.tegra_tsensor { ptr @.str.6, i32 384, ptr @tegra124_tsensor_config, i32 340, i32 1120100, i32 -6000500, ptr @tegra124_tsensor_group_gpu }, %struct.tegra_tsensor { ptr @.str.7, i32 416, ptr @tegra124_tsensor_config, i32 352, i32 1106500, i32 -6729300, ptr @tegra124_tsensor_group_pll }], align 4
@tegra124_tsensor_groups = internal global [4 x ptr] [ptr @tegra124_tsensor_group_cpu, ptr @tegra124_tsensor_group_gpu, ptr @tegra124_tsensor_group_pll, ptr @tegra124_tsensor_group_mem], align 4
@tegra124_soctherm_fuse = internal constant %struct.tegra_soctherm_fuse { i32 1023, i32 0, i32 2096128, i32 10, i32 65011712, i32 21, i32 508 }, align 4
@tegra124_soctherm = dso_local local_unnamed_addr constant %struct.tegra_soctherm_soc { ptr @tegra124_tsensors, i32 8, ptr @tegra124_tsensor_groups, i32 4, ptr @tegra124_soctherm_fuse, i32 1000, i32 8, i8 0, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@tegra124_tsensor_config = internal constant %struct.tegra_tsensor_configuration { i32 16300, i32 1, i32 1, i32 0, i32 0, i32 120, i32 480 }, align 4
@tegra124_tsensor_group_cpu = internal constant %struct.tegra_tsensor_group { ptr @.str.8, i8 0, i16 456, i32 -65536, i32 8, i32 8, i32 61440, i32 10, i32 16711680, i32 33554432, i32 268435456, i32 65280, i32 768, i16 0, i32 33423360, i32 130560 }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cpu1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cpu2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpu3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mem0\00", align 1
@tegra124_tsensor_group_mem = internal constant %struct.tegra_tsensor_group { ptr @.str.9, i8 1, i16 460, i32 -65536, i32 8, i32 8, i32 240, i32 0, i32 255, i32 134217728, i32 268435456, i32 16711680, i32 50331648, i16 8, i32 33423360, i32 130560 }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mem1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@tegra124_tsensor_group_gpu = internal constant %struct.tegra_tsensor_group { ptr @.str.6, i8 2, i16 456, i32 65535, i32 8, i32 8, i32 3840, i32 5, i32 65280, i32 67108864, i32 268435456, i32 16711680, i32 196608, i16 4, i32 33423360, i32 130560 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pllx\00", align 1
@tegra124_tsensor_group_pll = internal constant %struct.tegra_tsensor_group { ptr @.str.10, i8 3, i16 460, i32 65535, i32 8, i32 8, i32 15, i32 0, i32 0, i32 16777216, i32 268435456, i32 255, i32 3, i16 12, i32 33423360, i32 130560 }, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pll\00", align 1

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
