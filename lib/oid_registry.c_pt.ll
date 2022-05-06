; ModuleID = '/llk/IR/lib/oid_registry.c_pt.bc'
source_filename = "../lib/oid_registry.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_look_up_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22look_up_OID\22\09\09\09\09\09"
module asm "__kstrtabns_look_up_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parse_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22parse_OID\22\09\09\09\09\09"
module asm "__kstrtabns_parse_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_oid\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_OID\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { i8, i8, [2 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_description100 = internal constant [38 x i8] c"oid_registry.description=OID Registry\00", section ".modinfo", align 1
@__UNIQUE_ID_author101 = internal constant [34 x i8] c"oid_registry.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file102 = internal constant [35 x i8] c"oid_registry.file=lib/oid_registry\00", section ".modinfo", align 1
@__UNIQUE_ID_license103 = internal constant [25 x i8] c"oid_registry.license=GPL\00", section ".modinfo", align 1
@oid_search_table = internal unnamed_addr constant [98 x %struct.anon] [%struct.anon { i8 10, i8 58, [2 x i8] undef }, %struct.anon { i8 11, i8 40, [2 x i8] undef }, %struct.anon { i8 11, i8 41, [2 x i8] undef }, %struct.anon { i8 13, i8 46, [2 x i8] undef }, %struct.anon { i8 19, i8 90, [2 x i8] undef }, %struct.anon { i8 19, i8 87, [2 x i8] undef }, %struct.anon { i8 23, i8 67, [2 x i8] undef }, %struct.anon { i8 23, i8 62, [2 x i8] undef }, %struct.anon { i8 29, i8 11, [2 x i8] undef }, %struct.anon { i8 30, i8 27, [2 x i8] undef }, %struct.anon { i8 32, i8 0, [2 x i8] undef }, %struct.anon { i8 35, i8 22, [2 x i8] undef }, %struct.anon { i8 35, i8 15, [2 x i8] undef }, %struct.anon { i8 36, i8 71, [2 x i8] undef }, %struct.anon { i8 37, i8 59, [2 x i8] undef }, %struct.anon { i8 43, i8 1, [2 x i8] undef }, %struct.anon { i8 44, i8 42, [2 x i8] undef }, %struct.anon { i8 44, i8 32, [2 x i8] undef }, %struct.anon { i8 49, i8 6, [2 x i8] undef }, %struct.anon { i8 51, i8 37, [2 x i8] undef }, %struct.anon { i8 52, i8 93, [2 x i8] undef }, %struct.anon { i8 54, i8 68, [2 x i8] undef }, %struct.anon { i8 54, i8 63, [2 x i8] undef }, %struct.anon { i8 60, i8 75, [2 x i8] undef }, %struct.anon { i8 60, i8 12, [2 x i8] undef }, %struct.anon { i8 64, i8 95, [2 x i8] undef }, %struct.anon { i8 64, i8 31, [2 x i8] undef }, %struct.anon { i8 64, i8 20, [2 x i8] undef }, %struct.anon { i8 76, i8 3, [2 x i8] undef }, %struct.anon { i8 77, i8 53, [2 x i8] undef }, %struct.anon { i8 77, i8 5, [2 x i8] undef }, %struct.anon { i8 83, i8 47, [2 x i8] undef }, %struct.anon { i8 84, i8 91, [2 x i8] undef }, %struct.anon { i8 85, i8 25, [2 x i8] undef }, %struct.anon { i8 87, i8 45, [2 x i8] undef }, %struct.anon { i8 93, i8 76, [2 x i8] undef }, %struct.anon { i8 97, i8 21, [2 x i8] undef }, %struct.anon { i8 106, i8 72, [2 x i8] undef }, %struct.anon { i8 106, i8 36, [2 x i8] undef }, %struct.anon { i8 110, i8 54, [2 x i8] undef }, %struct.anon { i8 124, i8 78, [2 x i8] undef }, %struct.anon { i8 126, i8 77, [2 x i8] undef }, %struct.anon { i8 126, i8 10, [2 x i8] undef }, %struct.anon { i8 -126, i8 97, [2 x i8] undef }, %struct.anon { i8 -124, i8 26, [2 x i8] undef }, %struct.anon { i8 -122, i8 43, [2 x i8] undef }, %struct.anon { i8 -114, i8 2, [2 x i8] undef }, %struct.anon { i8 -114, i8 18, [2 x i8] undef }, %struct.anon { i8 -113, i8 55, [2 x i8] undef }, %struct.anon { i8 -111, i8 94, [2 x i8] undef }, %struct.anon { i8 -110, i8 64, [2 x i8] undef }, %struct.anon { i8 -106, i8 9, [2 x i8] undef }, %struct.anon { i8 -106, i8 4, [2 x i8] undef }, %struct.anon { i8 -99, i8 79, [2 x i8] undef }, %struct.anon { i8 -99, i8 49, [2 x i8] undef }, %struct.anon { i8 -96, i8 19, [2 x i8] undef }, %struct.anon { i8 -95, i8 69, [2 x i8] undef }, %struct.anon { i8 -95, i8 96, [2 x i8] undef }, %struct.anon { i8 -83, i8 38, [2 x i8] undef }, %struct.anon { i8 -78, i8 48, [2 x i8] undef }, %struct.anon { i8 -77, i8 65, [2 x i8] undef }, %struct.anon { i8 -77, i8 73, [2 x i8] undef }, %struct.anon { i8 -66, i8 80, [2 x i8] undef }, %struct.anon { i8 -65, i8 84, [2 x i8] undef }, %struct.anon { i8 -61, i8 30, [2 x i8] undef }, %struct.anon { i8 -61, i8 13, [2 x i8] undef }, %struct.anon { i8 -58, i8 70, [2 x i8] undef }, %struct.anon { i8 -56, i8 35, [2 x i8] undef }, %struct.anon { i8 -55, i8 56, [2 x i8] undef }, %struct.anon { i8 -52, i8 23, [2 x i8] undef }, %struct.anon { i8 -52, i8 16, [2 x i8] undef }, %struct.anon { i8 -48, i8 7, [2 x i8] undef }, %struct.anon { i8 -48, i8 88, [2 x i8] undef }, %struct.anon { i8 -48, i8 85, [2 x i8] undef }, %struct.anon { i8 -44, i8 60, [2 x i8] undef }, %struct.anon { i8 -43, i8 51, [2 x i8] undef }, %struct.anon { i8 -43, i8 92, [2 x i8] undef }, %struct.anon { i8 -36, i8 28, [2 x i8] undef }, %struct.anon { i8 -33, i8 82, [2 x i8] undef }, %struct.anon { i8 -33, i8 81, [2 x i8] undef }, %struct.anon { i8 -30, i8 14, [2 x i8] undef }, %struct.anon { i8 -29, i8 29, [2 x i8] undef }, %struct.anon { i8 -28, i8 44, [2 x i8] undef }, %struct.anon { i8 -25, i8 39, [2 x i8] undef }, %struct.anon { i8 -25, i8 34, [2 x i8] undef }, %struct.anon { i8 -22, i8 57, [2 x i8] undef }, %struct.anon { i8 -20, i8 74, [2 x i8] undef }, %struct.anon { i8 -19, i8 24, [2 x i8] undef }, %struct.anon { i8 -19, i8 17, [2 x i8] undef }, %struct.anon { i8 -16, i8 83, [2 x i8] undef }, %struct.anon { i8 -15, i8 89, [2 x i8] undef }, %struct.anon { i8 -15, i8 86, [2 x i8] undef }, %struct.anon { i8 -12, i8 52, [2 x i8] undef }, %struct.anon { i8 -11, i8 66, [2 x i8] undef }, %struct.anon { i8 -11, i8 61, [2 x i8] undef }, %struct.anon { i8 -9, i8 8, [2 x i8] undef }, %struct.anon { i8 -4, i8 50, [2 x i8] undef }, %struct.anon { i8 -1, i8 33, [2 x i8] undef }], align 4
@oid_index = internal unnamed_addr constant [99 x i16] [i16 0, i16 7, i16 14, i16 21, i16 29, i16 37, i16 44, i16 52, i16 60, i16 68, i16 76, i16 85, i16 94, i16 103, i16 112, i16 121, i16 130, i16 139, i16 148, i16 157, i16 166, i16 175, i16 184, i16 193, i16 202, i16 211, i16 220, i16 231, i16 239, i16 247, i16 255, i16 264, i16 273, i16 283, i16 293, i16 303, i16 313, i16 323, i16 333, i16 342, i16 352, i16 358, i16 364, i16 370, i16 376, i16 384, i16 389, i16 394, i16 403, i16 412, i16 421, i16 430, i16 433, i16 436, i16 439, i16 442, i16 445, i16 448, i16 451, i16 454, i16 457, i16 460, i16 463, i16 466, i16 469, i16 472, i16 475, i16 478, i16 481, i16 484, i16 487, i16 490, i16 493, i16 496, i16 502, i16 508, i16 515, i16 522, i16 529, i16 537, i16 545, i16 553, i16 561, i16 569, i16 577, i16 586, i16 595, i16 604, i16 613, i16 622, i16 631, i16 640, i16 648, i16 656, i16 664, i16 672, i16 678, i16 684, i16 690], align 2
@oid_data = internal constant [690 x i8] c"*\86H\CE.\04\03*\86H\CE8\04\01*\86H\CE=\02\01*\86H\CE=\03\01\01*\86H\CE=\03\01\07*\86H\CE=\04\01*\86H\CE=\04\03\01*\86H\CE=\04\03\02*\86H\CE=\04\03\03*\86H\CE=\04\03\04*\86H\86\F7\0D\01\01\01*\86H\86\F7\0D\01\01\02*\86H\86\F7\0D\01\01\03*\86H\86\F7\0D\01\01\04*\86H\86\F7\0D\01\01\05*\86H\86\F7\0D\01\01\0B*\86H\86\F7\0D\01\01\0C*\86H\86\F7\0D\01\01\0D*\86H\86\F7\0D\01\01\0E*\86H\86\F7\0D\01\07\01*\86H\86\F7\0D\01\07\02*\86H\86\F7\0D\01\09\01*\86H\86\F7\0D\01\09\03*\86H\86\F7\0D\01\09\04*\86H\86\F7\0D\01\09\05*\86H\86\F7\0D\01\09\0F*\86H\86\F7\0D\01\09\10\02\0B*\86H\86\F7\0D\02\02*\86H\86\F7\0D\02\04*\86H\86\F7\0D\02\05*\86H\82\F7\12\01\02\02*\86H\86\F7\12\01\02\02*\86H\86\F7\12\01\02\02\03+\06\01\04\01\827\02\01\04+\06\01\04\01\827\02\01\0B+\06\01\04\01\827\02\01\0C+\06\01\04\01\827\02\01\0F+\06\01\04\01\827\02\01\15+\06\01\04\01\827\10\04+\06\01\04\01\827\02\02\0A+\06\01\05\05\02+\06\01\05\02\05+\05\01\05\02\07+\06\01\05\05\0E+\06\01\05\05\07\01\01+\0E\03\02\1A+\81\04\00\22`\86H\01e\03\04\02\01`\86H\01e\03\04\02\02`\86H\01e\03\04\02\03`\86H\01e\03\04\02\04U\04\03U\04\04U\04\06U\04\07U\04\08U\04\0AU\04\0BU\04\0CU\04\0DU\04)U\04*U\04+U\04,U\1D\0EU\1D\0FU\1D\11U\1D\12U\1D\13U\1D\1FU\1D U\1D#U\1D%*\85p+\0E\02*\85p+\0E\03*\85\03\02\02#\01*\85\03\02\02#\02*\85\03\02\02#\03*\85\03\07\01\01\01\01*\85\03\07\01\01\01\02*\85\03\07\01\01\02\02*\85\03\07\01\01\02\03*\85\03\07\01\01\03\02*\85\03\07\01\01\03\03*\85\03\07\01\02\01\01\01*\85\03\07\01\02\01\01\02*\85\03\07\01\02\01\01\03*\85\03\07\01\02\01\01\04*\85\03\07\01\02\01\02\01*\85\03\07\01\02\01\02\02*\85\03\07\01\02\01\02\03*\81\1C\CFU\01\82-*\81\1C\CFU\01\83\11*\81\1C\CFU\01\83u*\81\1C\CFU\01\83xg\81\05\0A\01\03g\81\05\0A\01\04g\81\05\0A\01\05", align 1
@__kstrtab_look_up_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_look_up_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_look_up_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @look_up_OID to i32), ptr @__kstrtab_look_up_OID, ptr @__kstrtabns_look_up_OID }, section "___ksymtab_gpl+look_up_OID", align 4
@__kstrtab_parse_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_parse_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_parse_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parse_OID to i32), ptr @__kstrtab_parse_OID, ptr @__kstrtabns_parse_OID }, section "___ksymtab_gpl+parse_OID", align 4
@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".%lu\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(bad)\00", align 1
@__kstrtab_sprint_oid = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_oid = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_oid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_oid to i32), ptr @__kstrtab_sprint_oid, ptr @__kstrtabns_sprint_oid }, section "___ksymtab_gpl+sprint_oid", align 4
@__kstrtab_sprint_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_OID to i32), ptr @__kstrtab_sprint_OID, ptr @__kstrtabns_sprint_OID }, section "___ksymtab_gpl+sprint_OID", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author101, ptr @__UNIQUE_ID_description100, ptr @__UNIQUE_ID_file102, ptr @__UNIQUE_ID_license103, ptr @__ksymtab_look_up_OID, ptr @__ksymtab_parse_OID, ptr @__ksymtab_sprint_OID, ptr @__ksymtab_sprint_oid], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @look_up_OID(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %13, %6 ], [ %5, %4 ]
  %8 = phi i32 [ %14, %6 ], [ 0, %4 ]
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %11, 33
  %13 = add i32 %12, %7
  %14 = add nuw i32 %8, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %6

16:                                               ; preds = %6, %2
  %17 = phi i32 [ -1, %2 ], [ %13, %6 ]
  %18 = lshr i32 %17, 24
  %19 = lshr i32 %17, 16
  %20 = lshr i32 %17, 8
  %21 = xor i32 %19, %17
  %22 = xor i32 %21, %18
  %23 = xor i32 %22, %20
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %42, %16
  %26 = phi i32 [ 98, %16 ], [ %44, %42 ]
  %27 = phi i32 [ 0, %16 ], [ %43, %42 ]
  br label %28

28:                                               ; preds = %36, %25
  %29 = phi i32 [ %26, %25 ], [ %31, %36 ]
  %30 = add i32 %29, %27
  %31 = lshr i32 %30, 1
  %32 = getelementptr [98 x %struct.anon], ptr @oid_search_table, i32 0, i32 %31
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp ult i32 %24, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %46, %28
  %37 = icmp ult i32 %27, %31
  br i1 %37, label %28, label %83

38:                                               ; preds = %28
  %39 = icmp ugt i32 %24, %34
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = add nuw i32 %31, 1
  br label %42

42:                                               ; preds = %68, %59, %40
  %43 = phi i32 [ %41, %40 ], [ %62, %59 ], [ %78, %68 ]
  %44 = phi i32 [ %29, %40 ], [ %29, %59 ], [ %79, %68 ]
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %25, label %83

46:                                               ; preds = %38
  %47 = getelementptr [98 x %struct.anon], ptr @oid_search_table, i32 0, i32 %31, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 1
  %51 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %50
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %49
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = sub nsw i32 %53, %56
  %58 = icmp ugt i32 %57, %1
  br i1 %58, label %36, label %59

59:                                               ; preds = %46
  %60 = zext i16 %55 to i32
  %61 = icmp ult i32 %57, %1
  %62 = add nuw i32 %31, 1
  br i1 %61, label %42, label %63

63:                                               ; preds = %68, %59
  %64 = phi i32 [ %78, %68 ], [ %27, %59 ]
  %65 = phi i32 [ %79, %68 ], [ %29, %59 ]
  %66 = phi i32 [ %69, %68 ], [ %57, %59 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = add i32 %66, -1
  %70 = add i32 %69, %60
  %71 = getelementptr [690 x i8], ptr @oid_data, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %0, i32 %69
  %74 = load i8, ptr %73, align 1
  %75 = icmp ugt i8 %72, %74
  %76 = icmp ult i8 %72, %74
  %77 = select i1 %76, i32 %62, i32 %64
  %78 = select i1 %75, i32 %64, i32 %77
  %79 = select i1 %75, i32 %31, i32 %65
  %80 = icmp eq i8 %72, %74
  br i1 %80, label %63, label %42

81:                                               ; preds = %63
  %82 = zext i8 %48 to i32
  br label %83

83:                                               ; preds = %81, %42, %36
  %84 = phi i32 [ %82, %81 ], [ 98, %36 ], [ 98, %42 ]
  ret i32 %84
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @parse_OID(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 6
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add i32 %1, -2
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 2
  %16 = tail call i32 @look_up_OID(ptr noundef %15, i32 noundef %11)
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %14, %8, %5, %3
  %18 = phi i32 [ 0, %14 ], [ -74, %8 ], [ -74, %5 ], [ -74, %3 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_oid(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = load i8, ptr %0, align 1
  %9 = freeze i8 %8
  %10 = udiv i8 %9, 40
  %11 = zext i8 %10 to i32
  %12 = mul i8 %10, 40
  %13 = sub i8 %9, %12
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %14)
  %16 = icmp ult i32 %15, %3
  br i1 %16, label %17, label %62

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %0, i32 1
  %19 = icmp ult ptr %18, %5
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = sub i32 %3, %15
  %22 = getelementptr i8, ptr %2, i32 %15
  br label %23

23:                                               ; preds = %53, %20
  %24 = phi i32 [ %54, %53 ], [ %15, %20 ]
  %25 = phi ptr [ %49, %53 ], [ %18, %20 ]
  %26 = phi i32 [ %56, %53 ], [ %21, %20 ]
  %27 = phi ptr [ %55, %53 ], [ %22, %20 ]
  %28 = getelementptr i8, ptr %25, i32 1
  %29 = load i8, ptr %25, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %23
  %34 = and i32 %30, 127
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %28, %33 ], [ %40, %39 ]
  %37 = phi i32 [ %34, %33 ], [ %45, %39 ]
  %38 = icmp ult ptr %36, %5
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %36, i32 1
  %41 = load i8, ptr %36, align 1
  %42 = shl i32 %37, 7
  %43 = zext i8 %41 to i32
  %44 = and i32 %43, 127
  %45 = or i32 %44, %42
  %46 = and i32 %43, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %35

48:                                               ; preds = %39, %23
  %49 = phi ptr [ %28, %23 ], [ %40, %39 ]
  %50 = phi i32 [ %30, %23 ], [ %45, %39 ]
  %51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %27, i32 noundef %26, ptr noundef nonnull @.str.1, i32 noundef %50)
  %52 = icmp ugt i32 %26, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = add i32 %51, %24
  %55 = getelementptr i8, ptr %27, i32 %51
  %56 = sub i32 %26, %51
  %57 = icmp ult ptr %49, %5
  br i1 %57, label %23, label %62

58:                                               ; preds = %35, %4
  %59 = phi ptr [ %2, %4 ], [ %27, %35 ]
  %60 = phi i32 [ %3, %4 ], [ %26, %35 ]
  %61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %59, i32 noundef %60, ptr noundef nonnull @.str.2)
  br label %62

62:                                               ; preds = %58, %53, %48, %17, %7
  %63 = phi i32 [ -74, %58 ], [ -105, %7 ], [ %15, %17 ], [ -105, %48 ], [ %54, %53 ]
  ret i32 %63
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_OID(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #4 {
  %4 = icmp ugt i32 %0, 97
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/oid_registry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %0
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr @oid_data, i32 %9
  %11 = add nuw nsw i32 %0, 1
  %12 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %14, %9
  %16 = tail call i32 @sprint_oid(ptr noundef %10, i32 noundef %15, ptr noundef %1, i32 noundef %2)
  %17 = icmp eq i32 %16, -74
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/oid_registry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

19:                                               ; preds = %6
  ret i32 %16
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150382289, i64 2150382772, i64 2150382326, i64 2150382382, i64 2150382416, i64 2150382440, i64 2150382481, i64 2150382502, i64 2150382530, i64 2150382564}
!10 = !{i64 2150383303, i64 2150383786, i64 2150383340, i64 2150383396, i64 2150383430, i64 2150383454, i64 2150383495, i64 2150383516, i64 2150383544, i64 2150383578}
