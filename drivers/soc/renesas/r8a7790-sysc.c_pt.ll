; ModuleID = '/llk/IR/drivers/soc/renesas/r8a7790-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/r8a7790-sysc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_sysc_area = type { ptr, i16, i8, i8, i32, i32 }
%struct.rcar_sysc_info = type { ptr, ptr, i32, i32, i32 }

@r8a7790_areas = internal constant [14 x %struct.rcar_sysc_area] [%struct.rcar_sysc_area { ptr @.str, i16 0, i8 0, i8 32, i32 -1, i32 4 }, %struct.rcar_sysc_area { ptr @.str.1, i16 384, i8 0, i8 12, i32 32, i32 2 }, %struct.rcar_sysc_area { ptr @.str.2, i16 64, i8 0, i8 0, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.3, i16 64, i8 1, i8 1, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.4, i16 64, i8 2, i8 2, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.5, i16 64, i8 3, i8 3, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.6, i16 256, i8 0, i8 21, i32 32, i32 2 }, %struct.rcar_sysc_area { ptr @.str.7, i16 448, i8 0, i8 5, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.8, i16 448, i8 1, i8 6, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.9, i16 448, i8 2, i8 7, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.10, i16 448, i8 3, i8 8, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.11, i16 128, i8 0, i8 16, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.12, i16 192, i8 0, i8 20, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.13, i16 320, i8 0, i8 24, i32 32, i32 0 }], section ".init.rodata", align 4
@r8a7790_sysc_info = dso_local local_unnamed_addr constant %struct.rcar_sysc_info { ptr null, ptr @r8a7790_areas, i32 14, i32 0, i32 0 }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [10 x i8] c"always-on\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ca15-scu\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ca15-cpu0\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ca15-cpu1\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ca15-cpu2\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ca15-cpu3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ca7-scu\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ca7-cpu0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ca7-cpu1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ca7-cpu2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ca7-cpu3\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"sh-4a\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rgx\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"imp\00", align 1

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
