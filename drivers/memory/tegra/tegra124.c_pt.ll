; ModuleID = '/llk/IR/drivers/memory/tegra/tegra124.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra124.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_mc_client = type { i32, ptr, %union.anon, i32, %struct.anon }
%union.anon = type { i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32 }
%struct.tegra_smmu_soc = type { ptr, i32, ptr, i32, ptr, i32, i8, i8, i32, i32 }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_smmu_swgroup = type { ptr, i32, i32 }
%struct.tegra_smmu_group_soc = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.icc_node_data = type { ptr, i32 }

@tegra124_mc_clients = internal constant [67 x %struct.tegra_mc_client] [%struct.tegra_mc_client { i32 0, ptr @.str, %union.anon zeroinitializer, i32 0, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 844, i32 0, i32 255, i32 0 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 1, ptr @.str.1, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 1 }, %struct.anon.1 { i32 744, i32 0, i32 255, i32 194 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 2, ptr @.str.2, %union.anon { i32 2 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 2 }, %struct.anon.1 { i32 756, i32 0, i32 255, i32 198 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 3, ptr @.str.3, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 3 }, %struct.anon.1 { i32 744, i32 16, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 4, ptr @.str.4, %union.anon { i32 2 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 4 }, %struct.anon.1 { i32 756, i32 16, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 5, ptr @.str.5, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 5 }, %struct.anon.1 { i32 748, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 6, ptr @.str.6, %union.anon { i32 2 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 6 }, %struct.anon.1 { i32 760, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 14, ptr @.str.7, %union.anon { i32 3 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 14 }, %struct.anon.1 { i32 736, i32 0, i32 255, i32 19 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 15, ptr @.str.8, %union.anon { i32 4 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 15 }, %struct.anon.1 { i32 740, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 16, ptr @.str.9, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 16 }, %struct.anon.1 { i32 752, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 17, ptr @.str.10, %union.anon { i32 2 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 17 }, %struct.anon.1 { i32 764, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 21, ptr @.str.11, %union.anon { i32 5 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 21 }, %struct.anon.1 { i32 792, i32 0, i32 255, i32 36 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 22, ptr @.str.12, %union.anon { i32 6 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 22 }, %struct.anon.1 { i32 784, i32 0, i32 255, i32 30 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 23, ptr @.str.13, %union.anon { i32 6 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 23 }, %struct.anon.1 { i32 784, i32 16, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 28, ptr @.str.14, %union.anon { i32 7 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 28 }, %struct.anon.1 { i32 808, i32 0, i32 255, i32 35 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 29, ptr @.str.15, %union.anon { i32 8 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 29 }, %struct.anon.1 { i32 836, i32 0, i32 255, i32 73 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 30, ptr @.str.16, %union.anon { i32 8 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 30 }, %struct.anon.1 { i32 836, i32 16, i32 255, i32 26 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 31, ptr @.str.17, %union.anon { i32 9 }, i32 0, %struct.anon { %struct.anon.0 { i32 552, i32 31 }, %struct.anon.1 { i32 848, i32 0, i32 255, i32 101 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 34, ptr @.str.18, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 2 }, %struct.anon.1 { i32 852, i32 0, i32 255, i32 79 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 35, ptr @.str.19, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 3 }, %struct.anon.1 { i32 852, i32 16, i32 255, i32 61 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 36, ptr @.str.20, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 4 }, %struct.anon.1 { i32 856, i32 0, i32 255, i32 102 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 37, ptr @.str.21, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 5 }, %struct.anon.1 { i32 856, i32 16, i32 255, i32 165 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 38, ptr @.str.22, %union.anon { i32 11 }, i32 0, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 804, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 39, ptr @.str.23, %union.anon { i32 12 }, i32 0, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 800, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 43, ptr @.str.24, %union.anon { i32 7 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 11 }, %struct.anon.1 { i32 808, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 49, ptr @.str.25, %union.anon { i32 3 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 17 }, %struct.anon.1 { i32 736, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 50, ptr @.str.26, %union.anon { i32 4 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 18 }, %struct.anon.1 { i32 740, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 53, ptr @.str.27, %union.anon { i32 5 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 21 }, %struct.anon.1 { i32 792, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 54, ptr @.str.28, %union.anon { i32 6 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 22 }, %struct.anon.1 { i32 788, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 56, ptr @.str.29, %union.anon { i32 11 }, i32 0, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 804, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 57, ptr @.str.30, %union.anon { i32 12 }, i32 0, %struct.anon { %struct.anon.0 zeroinitializer, %struct.anon.1 { i32 800, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 59, ptr @.str.31, %union.anon { i32 8 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 27 }, %struct.anon.1 { i32 840, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 60, ptr @.str.32, %union.anon { i32 8 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 28 }, %struct.anon.1 { i32 840, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 61, ptr @.str.33, %union.anon { i32 9 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 29 }, %struct.anon.1 { i32 848, i32 16, i32 255, i32 101 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 62, ptr @.str.34, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 30 }, %struct.anon.1 { i32 860, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 63, ptr @.str.35, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 556, i32 31 }, %struct.anon.1 { i32 860, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 64, ptr @.str.36, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 0 }, %struct.anon.1 { i32 864, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 65, ptr @.str.37, %union.anon { i32 10 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 1 }, %struct.anon.1 { i32 864, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 68, ptr @.str.38, %union.anon { i32 13 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 4 }, %struct.anon.1 { i32 880, i32 0, i32 255, i32 24 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 70, ptr @.str.39, %union.anon { i32 13 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 6 }, %struct.anon.1 { i32 884, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 71, ptr @.str.40, %union.anon { i32 13 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 7 }, %struct.anon.1 { i32 884, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 74, ptr @.str.41, %union.anon { i32 14 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 10 }, %struct.anon.1 { i32 892, i32 0, i32 255, i32 57 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 75, ptr @.str.42, %union.anon { i32 14 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 11 }, %struct.anon.1 { i32 892, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 76, ptr @.str.43, %union.anon { i32 15 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 12 }, %struct.anon.1 { i32 896, i32 0, i32 255, i32 57 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 77, ptr @.str.44, %union.anon { i32 15 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 13 }, %struct.anon.1 { i32 896, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 78, ptr @.str.45, %union.anon { i32 16 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 14 }, %struct.anon.1 { i32 900, i32 0, i32 255, i32 24 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 80, ptr @.str.46, %union.anon { i32 16 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 16 }, %struct.anon.1 { i32 904, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 81, ptr @.str.47, %union.anon { i32 16 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 17 }, %struct.anon.1 { i32 904, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 84, ptr @.str.48, %union.anon { i32 17 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 20 }, %struct.anon.1 { i32 912, i32 0, i32 255, i32 155 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 85, ptr @.str.49, %union.anon { i32 17 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 21 }, %struct.anon.1 { i32 912, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 86, ptr @.str.50, %union.anon { i32 18 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 22 }, %struct.anon.1 { i32 932, i32 0, i32 255, i32 4 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 87, ptr @.str.51, %union.anon { i32 18 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 23 }, %struct.anon.1 { i32 932, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 88, ptr @.str.52, %union.anon { i32 19 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 24 }, %struct.anon.1 { i32 968, i32 0, i32 255, i32 26 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 89, ptr @.str.53, %union.anon { i32 19 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 25 }, %struct.anon.1 { i32 968, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 90, ptr @.str.54, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 560, i32 26 }, %struct.anon.1 { i32 752, i32 16, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 96, ptr @.str.55, %union.anon { i32 20 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 0 }, %struct.anon.1 { i32 952, i32 0, i32 255, i32 73 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 97, ptr @.str.56, %union.anon { i32 21 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 1 }, %struct.anon.1 { i32 956, i32 0, i32 255, i32 73 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 98, ptr @.str.57, %union.anon { i32 22 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 2 }, %struct.anon.1 { i32 960, i32 0, i32 255, i32 73 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 99, ptr @.str.58, %union.anon { i32 23 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 3 }, %struct.anon.1 { i32 964, i32 0, i32 255, i32 73 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 100, ptr @.str.59, %union.anon { i32 20 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 4 }, %struct.anon.1 { i32 952, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 101, ptr @.str.60, %union.anon { i32 21 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 5 }, %struct.anon.1 { i32 956, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 102, ptr @.str.61, %union.anon { i32 22 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 6 }, %struct.anon.1 { i32 960, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 103, ptr @.str.62, %union.anon { i32 23 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 7 }, %struct.anon.1 { i32 964, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 108, ptr @.str.63, %union.anon { i32 24 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 12 }, %struct.anon.1 { i32 916, i32 0, i32 255, i32 26 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 109, ptr @.str.64, %union.anon { i32 24 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 13 }, %struct.anon.1 { i32 916, i32 16, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 114, ptr @.str.65, %union.anon { i32 25 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 18 }, %struct.anon.1 { i32 920, i32 0, i32 255, i32 128 }, %struct.anon.2 zeroinitializer } }, %struct.tegra_mc_client { i32 115, ptr @.str.66, %union.anon { i32 1 }, i32 0, %struct.anon { %struct.anon.0 { i32 564, i32 19 }, %struct.anon.1 { i32 968, i32 0, i32 255, i32 80 }, %struct.anon.2 zeroinitializer } }], align 4
@tegra124_mc_emem_regs = internal constant [19 x i32] [i32 144, i32 148, i32 152, i32 156, i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 184, i32 188, i32 192, i32 196, i32 208, i32 212, i32 216, i32 220, i32 224], align 4
@tegra124_smmu_soc = internal constant %struct.tegra_smmu_soc { ptr @tegra124_mc_clients, i32 67, ptr @tegra124_swgroups, i32 23, ptr @tegra124_groups, i32 1, i8 1, i8 1, i32 32, i32 128 }, align 4
@tegra_mc_reset_ops_common = external dso_local constant %struct.tegra_mc_reset_ops, align 4
@tegra124_mc_resets = internal constant [24 x %struct.tegra_mc_reset] [%struct.tegra_mc_reset { ptr @.str.91, i32 0, i32 512, i32 516, i32 0, i32 0 }, %struct.tegra_mc_reset { ptr @.str.92, i32 1, i32 512, i32 516, i32 0, i32 1 }, %struct.tegra_mc_reset { ptr @.str.93, i32 2, i32 512, i32 516, i32 0, i32 2 }, %struct.tegra_mc_reset { ptr @.str.94, i32 3, i32 512, i32 516, i32 0, i32 3 }, %struct.tegra_mc_reset { ptr @.str.95, i32 4, i32 512, i32 516, i32 0, i32 6 }, %struct.tegra_mc_reset { ptr @.str.96, i32 5, i32 512, i32 516, i32 0, i32 7 }, %struct.tegra_mc_reset { ptr @.str.97, i32 6, i32 512, i32 516, i32 0, i32 8 }, %struct.tegra_mc_reset { ptr @.str.98, i32 7, i32 512, i32 516, i32 0, i32 9 }, %struct.tegra_mc_reset { ptr @.str.99, i32 8, i32 512, i32 516, i32 0, i32 10 }, %struct.tegra_mc_reset { ptr @.str.100, i32 9, i32 512, i32 516, i32 0, i32 11 }, %struct.tegra_mc_reset { ptr @.str.101, i32 10, i32 512, i32 516, i32 0, i32 14 }, %struct.tegra_mc_reset { ptr @.str.102, i32 11, i32 512, i32 516, i32 0, i32 15 }, %struct.tegra_mc_reset { ptr @.str.103, i32 12, i32 512, i32 516, i32 0, i32 16 }, %struct.tegra_mc_reset { ptr @.str.104, i32 13, i32 512, i32 516, i32 0, i32 17 }, %struct.tegra_mc_reset { ptr @.str.105, i32 14, i32 512, i32 516, i32 0, i32 18 }, %struct.tegra_mc_reset { ptr @.str.106, i32 15, i32 512, i32 516, i32 0, i32 19 }, %struct.tegra_mc_reset { ptr @.str.107, i32 16, i32 512, i32 516, i32 0, i32 20 }, %struct.tegra_mc_reset { ptr @.str.108, i32 17, i32 512, i32 516, i32 0, i32 21 }, %struct.tegra_mc_reset { ptr @.str.109, i32 18, i32 512, i32 516, i32 0, i32 22 }, %struct.tegra_mc_reset { ptr @.str.110, i32 19, i32 512, i32 516, i32 0, i32 23 }, %struct.tegra_mc_reset { ptr @.str.111, i32 20, i32 512, i32 516, i32 0, i32 25 }, %struct.tegra_mc_reset { ptr @.str.112, i32 21, i32 2416, i32 2420, i32 0, i32 0 }, %struct.tegra_mc_reset { ptr @.str.113, i32 22, i32 2416, i32 2420, i32 0, i32 1 }, %struct.tegra_mc_reset { ptr @.str.114, i32 23, i32 2416, i32 2420, i32 0, i32 2 }], align 4
@tegra124_mc_icc_ops = internal constant %struct.tegra_mc_icc_ops { ptr @tegra124_mc_icc_set, ptr @tegra124_mc_icc_aggreate, ptr @tegra124_mc_of_icc_xlate_extended }, align 4
@tegra30_mc_ops = external dso_local constant %struct.tegra_mc_ops, align 4
@tegra124_mc_soc = dso_local local_unnamed_addr constant %struct.tegra_mc_soc { ptr @tegra124_mc_clients, i32 67, ptr @tegra124_mc_emem_regs, i32 19, i32 34, i32 32, i8 127, ptr @tegra124_smmu_soc, i32 81216, ptr @tegra_mc_reset_ops_common, ptr @tegra124_mc_resets, i32 24, ptr @tegra124_mc_icc_ops, ptr @tegra30_mc_ops }, align 4
@.str = private unnamed_addr constant [5 x i8] c"ptcr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"display0a\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"display0ab\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"display0b\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"display0bb\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"display0c\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"display0cb\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"afir\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"avpcarm7r\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"displayhc\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"displayhcb\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hdar\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"host1xdmar\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"host1xr\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"msencsrd\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"ppcsahbdmar\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ppcsahbslvr\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"satar\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"vdebsevr\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"vdember\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"vdemcer\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"vdetper\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"mpcorelpr\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"mpcorer\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"msencswr\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"afiw\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"avpcarm7w\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"hdaw\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"host1xw\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"mpcorelpw\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"mpcorew\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"ppcsahbdmaw\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ppcsahbslvw\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"sataw\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"vdebsevw\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"vdedbgw\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"vdembew\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"vdetpmw\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"ispra\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"ispwa\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"ispwb\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"xusb_hostr\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"xusb_hostw\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"xusb_devr\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"xusb_devw\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"isprab\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"ispwab\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"ispwbb\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"tsecsrd\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"tsecswr\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"a9avpscr\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"a9avpscw\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"gpusrd\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"gpuswr\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"displayt\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"sdmmcra\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"sdmmcraa\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"sdmmcr\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"sdmmcrab\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"sdmmcwa\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"sdmmcwaa\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"sdmmcw\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"sdmmcwab\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"vicsrd\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"vicswr\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"viw\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"displayd\00", align 1
@tegra124_swgroups = internal constant [23 x %struct.tegra_smmu_swgroup] [%struct.tegra_smmu_swgroup { ptr @.str.67, i32 1, i32 576 }, %struct.tegra_smmu_swgroup { ptr @.str.68, i32 2, i32 580 }, %struct.tegra_smmu_swgroup { ptr @.str.69, i32 3, i32 568 }, %struct.tegra_smmu_swgroup { ptr @.str.70, i32 4, i32 572 }, %struct.tegra_smmu_swgroup { ptr @.str.71, i32 5, i32 596 }, %struct.tegra_smmu_swgroup { ptr @.str.72, i32 6, i32 592 }, %struct.tegra_smmu_swgroup { ptr @.str.73, i32 7, i32 612 }, %struct.tegra_smmu_swgroup { ptr @.str.74, i32 8, i32 624 }, %struct.tegra_smmu_swgroup { ptr @.str.75, i32 9, i32 628 }, %struct.tegra_smmu_swgroup { ptr @.str.76, i32 10, i32 636 }, %struct.tegra_smmu_swgroup { ptr @.str.77, i32 13, i32 600 }, %struct.tegra_smmu_swgroup { ptr @.str.78, i32 14, i32 648 }, %struct.tegra_smmu_swgroup { ptr @.str.79, i32 15, i32 652 }, %struct.tegra_smmu_swgroup { ptr @.str.80, i32 16, i32 2724 }, %struct.tegra_smmu_swgroup { ptr @.str.81, i32 17, i32 660 }, %struct.tegra_smmu_swgroup { ptr @.str.82, i32 18, i32 656 }, %struct.tegra_smmu_swgroup { ptr @.str.83, i32 19, i32 2732 }, %struct.tegra_smmu_swgroup { ptr @.str.84, i32 20, i32 2708 }, %struct.tegra_smmu_swgroup { ptr @.str.85, i32 21, i32 2712 }, %struct.tegra_smmu_swgroup { ptr @.str.86, i32 22, i32 2716 }, %struct.tegra_smmu_swgroup { ptr @.str.87, i32 23, i32 2720 }, %struct.tegra_smmu_swgroup { ptr @.str.88, i32 24, i32 644 }, %struct.tegra_smmu_swgroup { ptr @.str.89, i32 25, i32 640 }], align 4
@tegra124_groups = internal constant [1 x %struct.tegra_smmu_group_soc] [%struct.tegra_smmu_group_soc { ptr @.str.90, ptr @tegra124_group_drm, i32 3 }], align 4
@.str.67 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"dcb\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"avpc\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"hda\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"hc\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"msenc\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ppcs\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"vde\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"isp2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"xusb_host\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"xusb_dev\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"isp2b\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"tsec\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"a9avp\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"sdmmc1a\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"sdmmc2a\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"sdmmc3a\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"sdmmc4a\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"vic\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@tegra124_group_drm = internal constant [3 x i32] [i32 1, i32 2, i32 24], align 4
@.str.91 = private unnamed_addr constant [4 x i8] c"AFI\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"AVPC\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"DCB\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"HDA\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"ISP2\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"MPCORE\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"MPCORELP\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"MSENC\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"PPCS\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"VDE\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"VIC\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"XUSB_HOST\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"XUSB_DEV\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"TSEC\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"SDMMC1\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"SDMMC2\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"SDMMC3\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"SDMMC4\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"ISP2B\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"GPU\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"invalid ICC client ID %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra124_mc_icc_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_mc_icc_aggreate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #1 {
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = zext i32 %3 to i64
  %11 = mul nuw nsw i64 %10, 400
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %11, i32 0) #6, !srcloc !8
  %13 = extractvalue { i64, i32 } %12, 0
  %14 = extractvalue { i64, i32 } %12, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %11, i64 %13, i32 %14) #6, !srcloc !9
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 6
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 4294967295) #7
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i32 [ %19, %9 ], [ %3, %6 ]
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, %2
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %5, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %21)
  store i32 %25, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra124_mc_of_icc_xlate_extended(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -84
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 8
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %19 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 -60
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_mc_soc, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 4
  br label %41

19:                                               ; preds = %7
  %20 = getelementptr i8, ptr %9, i32 -20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %7

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 8) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %9, i32 -20
  %29 = getelementptr i8, ptr %1, i32 -60
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  store ptr %28, ptr %25, align 8
  %32 = getelementptr %struct.tegra_mc_client, ptr %31, i32 %5, i32 2
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %36 [
    i32 1, label %34
    i32 2, label %34
    i32 0, label %34
    i32 25, label %34
  ]

34:                                               ; preds = %27, %27, %27, %27
  %35 = getelementptr inbounds %struct.icc_node_data, ptr %25, i32 0, i32 1
  store i32 1, ptr %35, align 4
  br label %48

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.icc_node_data, ptr %25, i32 0, i32 1
  store i32 0, ptr %37, align 4
  br label %48

38:                                               ; preds = %41
  %39 = add nuw i32 %42, 1
  %40 = icmp eq i32 %39, %15
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %17
  %42 = phi i32 [ 0, %17 ], [ %39, %38 ]
  %43 = getelementptr %struct.tegra_mc_client, ptr %18, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %5
  br i1 %45, label %48, label %38

46:                                               ; preds = %38, %11
  %47 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.115, i32 noundef %5) #9
  br label %48

48:                                               ; preds = %46, %41, %36, %34, %23
  %49 = phi ptr [ inttoptr (i32 -22 to ptr), %46 ], [ %25, %36 ], [ %25, %34 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -517 to ptr), %41 ]
  ret ptr %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{i64 1130650, i64 1130677, i64 1130699, i64 1130727}
!9 = !{i64 1131058, i64 1131085, i64 1131118, i64 1131139, i64 1131166, i64 1131192}
