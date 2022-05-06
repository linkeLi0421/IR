; ModuleID = '/llk/IR/drivers/soc/samsung/exynos4-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos4-pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_pmu_conf = type { i32, [3 x i8] }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }

@exynos4210_pmu_config = internal constant [72 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\02\02\03" }, %struct.exynos_pmu_conf { i32 4292, [3 x i8] c"\02\02\03" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4392, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4412, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4444, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4456, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4460, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4476, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4544, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4548, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4552, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4556, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4560, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4564, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4568, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4576, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4580, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4992, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 4996, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5000, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5004, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5008, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5012, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5016, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5020, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5024, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], align 4
@exynos4210_pmu_data = dso_local local_unnamed_addr constant %struct.exynos_pmu_data { ptr @exynos4210_pmu_config, ptr null, ptr null, ptr null }, align 4
@exynos4412_pmu_config = internal constant [110 x %struct.exynos_pmu_conf] [%struct.exynos_pmu_conf { i32 4096, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4100, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4104, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4112, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4116, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4120, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4176, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4180, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4184, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4224, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4288, [3 x i8] c"\00\00\03" }, %struct.exynos_pmu_conf { i32 9736, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4292, [3 x i8] c"\00\00\03" }, %struct.exynos_pmu_conf { i32 9768, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4352, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4356, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4364, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 5040, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5044, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 5056, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4368, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4372, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4380, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4384, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4388, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4392, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4396, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4400, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4408, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4412, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4416, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4420, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4424, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4428, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4432, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4436, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4440, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4444, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4448, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4452, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4456, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4460, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4464, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4468, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4472, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4476, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4480, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4484, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4488, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4496, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 4500, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4504, [3 x i8] c"\03\00\03" }, %struct.exynos_pmu_conf { i32 4512, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4516, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4528, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4532, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4544, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11784, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4548, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11816, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4552, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11848, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4556, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11880, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4560, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11912, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4564, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11944, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4568, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 11976, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4572, [3 x i8] c"\03\00\00" }, %struct.exynos_pmu_conf { i32 12104, [3 x i8] c"\10\10\00" }, %struct.exynos_pmu_conf { i32 4608, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4612, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4640, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4644, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4648, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4652, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4656, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4660, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4668, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4672, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4688, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4704, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4736, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4740, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4800, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4864, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4896, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4928, [3 x i8] c"\01\01\00" }, %struct.exynos_pmu_conf { i32 4932, [3 x i8] c"\01\01\01" }, %struct.exynos_pmu_conf { i32 4936, [3 x i8] c"\01\00\01" }, %struct.exynos_pmu_conf { i32 4992, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 4996, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5000, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5004, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5008, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5012, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5016, [3 x i8] c"\07\07\00" }, %struct.exynos_pmu_conf { i32 5020, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5024, [3 x i8] c"\07\00\00" }, %struct.exynos_pmu_conf { i32 5048, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 5052, [3 x i8] c"\01\00\00" }, %struct.exynos_pmu_conf { i32 4128, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4132, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4136, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4144, [3 x i8] c"\00\00\02" }, %struct.exynos_pmu_conf { i32 4148, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 4152, [3 x i8] zeroinitializer }, %struct.exynos_pmu_conf { i32 -1, [3 x i8] zeroinitializer }], align 4
@exynos4412_pmu_data = dso_local local_unnamed_addr constant %struct.exynos_pmu_data { ptr @exynos4412_pmu_config, ptr null, ptr null, ptr null }, align 4

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