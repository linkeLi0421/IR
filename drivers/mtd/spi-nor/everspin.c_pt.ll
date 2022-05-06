; ModuleID = '/llk/IR/drivers/mtd/spi-nor/everspin.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/everspin.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] c"everspin\00", align 1
@everspin_parts = internal constant [4 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] zeroinitializer, i8 0, i32 16384, i16 1, i16 256, i16 2, i8 0, i16 320, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] zeroinitializer, i8 0, i32 32768, i16 1, i16 256, i16 2, i8 0, i16 320, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] zeroinitializer, i8 0, i32 131072, i16 1, i16 256, i16 3, i8 0, i16 320, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] zeroinitializer, i8 0, i32 524288, i16 1, i16 256, i16 3, i8 0, i16 320, i8 0, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }], align 8
@spi_nor_everspin = dso_local local_unnamed_addr constant %struct.spi_nor_manufacturer { ptr @.str, ptr @everspin_parts, i32 4, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mr25h128\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mr25h256\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mr25h10\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mr25h40\00", align 1

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
