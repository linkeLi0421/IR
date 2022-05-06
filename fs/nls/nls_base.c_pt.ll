; ModuleID = '/llk/IR/fs/nls/nls_base.c_pt.bc'
source_filename = "../fs/nls/nls_base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_to_utf32:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_to_utf32\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_to_utf32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf32_to_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22utf32_to_utf8\22\09\09\09\09\09"
module asm "__kstrtabns_utf32_to_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8s_to_utf16s:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8s_to_utf16s\22\09\09\09\09\09"
module asm "__kstrtabns_utf8s_to_utf16s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf16s_to_utf8s:\09\09\09\09\09"
module asm "\09.asciz \09\22utf16s_to_utf8s\22\09\09\09\09\09"
module asm "__kstrtabns_utf16s_to_utf8s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_nls\22\09\09\09\09\09"
module asm "__kstrtabns___register_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_nls\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unload_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22unload_nls\22\09\09\09\09\09"
module asm "__kstrtabns_unload_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_load_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22load_nls\22\09\09\09\09\09"
module asm "__kstrtabns_load_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_load_nls_default:\09\09\09\09\09"
module asm "\09.asciz \09\22load_nls_default\22\09\09\09\09\09"
module asm "__kstrtabns_load_nls_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.utf8_table = type { i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@utf8_table = internal unnamed_addr constant [7 x %struct.utf8_table] [%struct.utf8_table { i32 128, i32 0, i32 0, i32 127, i32 0 }, %struct.utf8_table { i32 224, i32 192, i32 6, i32 2047, i32 128 }, %struct.utf8_table { i32 240, i32 224, i32 12, i32 65535, i32 2048 }, %struct.utf8_table { i32 248, i32 240, i32 18, i32 2097151, i32 65536 }, %struct.utf8_table { i32 252, i32 248, i32 24, i32 67108863, i32 2097152 }, %struct.utf8_table { i32 254, i32 252, i32 30, i32 2147483647, i32 67108864 }, %struct.utf8_table zeroinitializer], align 4
@__kstrtab_utf8_to_utf32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_to_utf32 = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_to_utf32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_to_utf32 to i32), ptr @__kstrtab_utf8_to_utf32, ptr @__kstrtabns_utf8_to_utf32 }, section "___ksymtab+utf8_to_utf32", align 4
@__kstrtab_utf32_to_utf8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf32_to_utf8 = external dso_local constant [0 x i8], align 1
@__ksymtab_utf32_to_utf8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf32_to_utf8 to i32), ptr @__kstrtab_utf32_to_utf8, ptr @__kstrtabns_utf32_to_utf8 }, section "___ksymtab+utf32_to_utf8", align 4
@__kstrtab_utf8s_to_utf16s = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8s_to_utf16s = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8s_to_utf16s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8s_to_utf16s to i32), ptr @__kstrtab_utf8s_to_utf16s, ptr @__kstrtabns_utf8s_to_utf16s }, section "___ksymtab+utf8s_to_utf16s", align 4
@__kstrtab_utf16s_to_utf8s = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf16s_to_utf8s = external dso_local constant [0 x i8], align 1
@__ksymtab_utf16s_to_utf8s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf16s_to_utf8s to i32), ptr @__kstrtab_utf16s_to_utf8s, ptr @__kstrtabns_utf16s_to_utf8s }, section "___ksymtab+utf16s_to_utf8s", align 4
@tables = internal unnamed_addr global ptr @default_table, align 4
@nls_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab___register_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_nls = external dso_local constant [0 x i8], align 1
@__ksymtab___register_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_nls to i32), ptr @__kstrtab___register_nls, ptr @__kstrtabns___register_nls }, section "___ksymtab+__register_nls", align 4
@.str = private unnamed_addr constant [7 x i8] c"nls_%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1
@default_table = internal global %struct.nls_table { ptr @.str.2, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, align 4
@__kstrtab_unregister_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_nls to i32), ptr @__kstrtab_unregister_nls, ptr @__kstrtabns_unregister_nls }, section "___ksymtab+unregister_nls", align 4
@__kstrtab_unload_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_unload_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_unload_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unload_nls to i32), ptr @__kstrtab_unload_nls, ptr @__kstrtabns_unload_nls }, section "___ksymtab+unload_nls", align 4
@__kstrtab_load_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_load_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_load_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @load_nls to i32), ptr @__kstrtab_load_nls, ptr @__kstrtabns_load_nls }, section "___ksymtab+load_nls", align 4
@__kstrtab_load_nls_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_load_nls_default = external dso_local constant [0 x i8], align 1
@__ksymtab_load_nls_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @load_nls_default to i32), ptr @__kstrtab_load_nls_default, ptr @__kstrtabns_load_nls_default }, section "___ksymtab+load_nls_default", align 4
@__UNIQUE_ID_file100 = internal constant [30 x i8] c"nls_base.file=fs/nls/nls_base\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [30 x i8] c"nls_base.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@charset2lower = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@charset2upper = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@page00 = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@page_uni2charset = internal unnamed_addr constant <{ ptr, [255 x ptr] }> <{ ptr @page00, [255 x ptr] zeroinitializer }>, align 4
@charset2uni = internal unnamed_addr constant [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], align 2
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab___register_nls, ptr @__ksymtab_load_nls, ptr @__ksymtab_load_nls_default, ptr @__ksymtab_unload_nls, ptr @__ksymtab_unregister_nls, ptr @__ksymtab_utf16s_to_utf8s, ptr @__ksymtab_utf32_to_utf8, ptr @__ksymtab_utf8_to_utf32, ptr @__ksymtab_utf8s_to_utf16s], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @utf8_to_utf32(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %7 = add nsw i32 %6, -1
  %8 = and i32 %5, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %91, %77, %63, %49, %35, %3
  %11 = phi ptr [ @utf8_table, %3 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %35 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %49 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %63 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %77 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %91 ]
  %12 = phi i32 [ %5, %3 ], [ %37, %35 ], [ %51, %49 ], [ %65, %63 ], [ %79, %77 ], [ %93, %91 ]
  %13 = phi i32 [ 1, %3 ], [ 2, %35 ], [ 3, %49 ], [ 4, %63 ], [ 5, %77 ], [ 6, %91 ]
  %14 = getelementptr inbounds %struct.utf8_table, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %12
  %17 = getelementptr inbounds %struct.utf8_table, ptr %11, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  %20 = icmp ugt i32 %16, 1114111
  %21 = or i1 %19, %20
  %22 = and i32 %16, -2048
  %23 = icmp eq i32 %22, 55296
  %24 = or i1 %21, %23
  br i1 %24, label %96, label %25

25:                                               ; preds = %10
  store i32 %16, ptr %2, align 4
  br label %96

26:                                               ; preds = %3
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %96, label %28

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = xor i8 %30, -128
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %28
  %36 = shl nuw nsw i32 %5, 6
  %37 = or i32 %36, %32
  %38 = and i32 %5, 224
  %39 = icmp eq i32 %38, 192
  br i1 %39, label %10, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %7, 1
  br i1 %41, label %96, label %42

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = xor i8 %44, -128
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %42
  %50 = shl nuw nsw i32 %37, 6
  %51 = or i32 %50, %46
  %52 = and i32 %5, 240
  %53 = icmp eq i32 %52, 224
  br i1 %53, label %10, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %7, 2
  br i1 %55, label %96, label %56

56:                                               ; preds = %54
  %57 = getelementptr i8, ptr %0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = xor i8 %58, -128
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 192
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %56
  %64 = shl nuw nsw i32 %51, 6
  %65 = or i32 %64, %60
  %66 = and i32 %5, 248
  %67 = icmp eq i32 %66, 240
  br i1 %67, label %10, label %68

68:                                               ; preds = %63
  %69 = icmp eq i32 %7, 3
  br i1 %69, label %96, label %70

70:                                               ; preds = %68
  %71 = getelementptr i8, ptr %0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = xor i8 %72, -128
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = shl i32 %65, 6
  %79 = or i32 %78, %74
  %80 = and i32 %5, 252
  %81 = icmp eq i32 %80, 248
  br i1 %81, label %10, label %82

82:                                               ; preds = %77
  %83 = icmp eq i32 %7, 4
  br i1 %83, label %96, label %84

84:                                               ; preds = %82
  %85 = getelementptr i8, ptr %0, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = xor i8 %86, -128
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = shl i32 %79, 6
  %93 = or i32 %92, %88
  %94 = and i32 %5, 254
  %95 = icmp eq i32 %94, 252
  br i1 %95, label %10, label %96

96:                                               ; preds = %91, %84, %82, %70, %68, %56, %54, %42, %40, %28, %26, %25, %10
  %97 = phi i32 [ %13, %25 ], [ -1, %10 ], [ -1, %84 ], [ -1, %82 ], [ -1, %70 ], [ -1, %68 ], [ -1, %56 ], [ -1, %54 ], [ -1, %42 ], [ -1, %40 ], [ -1, %26 ], [ -1, %28 ], [ -1, %91 ]
  ret i32 %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @utf32_to_utf8(i32 noundef %0, ptr noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 1114112
  %7 = and i32 %0, -2048
  %8 = icmp ne i32 %7, 55296
  %9 = and i1 %6, %8
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %5
  %13 = add i32 %2, -1
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 5)
  %15 = icmp ugt i32 %0, 127
  br i1 %15, label %37, label %16

16:                                               ; preds = %53, %51, %47, %43, %39, %12
  %17 = phi ptr [ @utf8_table, %12 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %39 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %43 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %47 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %51 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %53 ]
  %18 = phi i32 [ 1, %12 ], [ 2, %39 ], [ 3, %43 ], [ 4, %47 ], [ 5, %51 ], [ 6, %53 ]
  %19 = getelementptr inbounds %struct.utf8_table, ptr %17, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.utf8_table, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %0, %20
  %24 = or i32 %22, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %1, align 1
  %26 = icmp sgt i32 %20, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %27, %16
  %28 = phi i32 [ %30, %27 ], [ %20, %16 ]
  %29 = phi ptr [ %31, %27 ], [ %1, %16 ]
  %30 = add nsw i32 %28, -6
  %31 = getelementptr i8, ptr %29, i32 1
  %32 = lshr i32 %0, %30
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 63
  %35 = or i8 %34, -128
  store i8 %35, ptr %31, align 1
  %36 = icmp ugt i32 %28, 6
  br i1 %36, label %27, label %57

37:                                               ; preds = %12
  %38 = icmp eq i32 %14, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i32 %0, 2047
  br i1 %40, label %41, label %16

41:                                               ; preds = %39
  %42 = icmp eq i32 %14, 1
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  %44 = icmp ugt i32 %0, 65535
  br i1 %44, label %45, label %16

45:                                               ; preds = %43
  %46 = icmp eq i32 %14, 2
  br i1 %46, label %57, label %47

47:                                               ; preds = %45
  %48 = icmp ugt i32 %0, 2097151
  br i1 %48, label %49, label %16

49:                                               ; preds = %47
  %50 = icmp eq i32 %14, 3
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i32 %0, 67108863
  br i1 %52, label %53, label %16

53:                                               ; preds = %51
  %54 = icmp eq i32 %14, 4
  %55 = icmp slt i32 %0, 0
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %16

57:                                               ; preds = %53, %49, %45, %41, %37, %27, %16, %5, %3
  %58 = phi i32 [ 0, %3 ], [ -1, %5 ], [ %18, %16 ], [ %18, %27 ], [ -1, %53 ], [ -1, %49 ], [ -1, %45 ], [ -1, %41 ], [ -1, %37 ]
  ret i32 %58
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @utf8s_to_utf16s(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp sgt i32 %1, 0
  %8 = icmp sgt i32 %4, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %91

10:                                               ; preds = %82, %5
  %11 = phi ptr [ %86, %82 ], [ %3, %5 ]
  %12 = phi i32 [ %87, %82 ], [ %4, %5 ]
  %13 = phi ptr [ %85, %82 ], [ %0, %5 ]
  %14 = phi i32 [ %84, %82 ], [ %1, %5 ]
  %15 = load i8, ptr %13, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %91, label %17

17:                                               ; preds = %10
  %18 = icmp sgt i8 %15, -1
  br i1 %18, label %69, label %19

19:                                               ; preds = %17
  %20 = call i32 @utf8_to_utf32(ptr noundef %13, i32 noundef %14, ptr noundef nonnull %6)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %97, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %13, i32 %20
  %24 = sub nsw i32 %14, %20
  %25 = load i32, ptr %6, align 4
  %26 = icmp ugt i32 %25, 65535
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = icmp ult i32 %12, 2
  br i1 %28, label %91, label %29

29:                                               ; preds = %27
  %30 = add i32 %25, -65536
  store i32 %30, ptr %6, align 4
  %31 = getelementptr i16, ptr %11, i32 1
  %32 = lshr i32 %30, 10
  %33 = and i32 %32, 1023
  %34 = or i32 %33, 55296
  switch i32 %2, label %49 [
    i32 1, label %35
    i32 2, label %41
  ]

35:                                               ; preds = %29
  %36 = trunc i32 %34 to i16
  store i16 %36, ptr %11, align 2
  %37 = load i32, ptr %6, align 4
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 1023
  %40 = or i16 %39, -9216
  br label %55

41:                                               ; preds = %29
  %42 = trunc i32 %34 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  store i16 %43, ptr %11, align 2
  %44 = load i32, ptr %6, align 4
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, 1023
  %47 = or i16 %46, -9216
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  br label %55

49:                                               ; preds = %29
  %50 = trunc i32 %34 to i16
  store i16 %50, ptr %11, align 2
  %51 = load i32, ptr %6, align 4
  %52 = trunc i32 %51 to i16
  %53 = and i16 %52, 1023
  %54 = or i16 %53, -9216
  br label %55

55:                                               ; preds = %49, %41, %35
  %56 = phi i16 [ %48, %41 ], [ %40, %35 ], [ %54, %49 ]
  %57 = getelementptr i16, ptr %11, i32 2
  store i16 %56, ptr %31, align 2
  br label %82

58:                                               ; preds = %22
  %59 = getelementptr i16, ptr %11, i32 1
  switch i32 %2, label %60 [
    i32 1, label %62
    i32 2, label %64
  ]

60:                                               ; preds = %58
  %61 = trunc i32 %25 to i16
  br label %67

62:                                               ; preds = %58
  %63 = trunc i32 %25 to i16
  br label %67

64:                                               ; preds = %58
  %65 = trunc i32 %25 to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #9
  br label %67

67:                                               ; preds = %64, %62, %60
  %68 = phi i16 [ %66, %64 ], [ %63, %62 ], [ %61, %60 ]
  store i16 %68, ptr %11, align 2
  br label %82

69:                                               ; preds = %17
  %70 = getelementptr i16, ptr %11, i32 1
  %71 = getelementptr i8, ptr %13, i32 1
  switch i32 %2, label %72 [
    i32 1, label %74
    i32 2, label %76
  ]

72:                                               ; preds = %69
  %73 = zext i8 %15 to i16
  br label %79

74:                                               ; preds = %69
  %75 = zext i8 %15 to i16
  br label %79

76:                                               ; preds = %69
  %77 = zext i8 %15 to i16
  %78 = shl nuw nsw i16 %77, 8
  br label %79

79:                                               ; preds = %76, %74, %72
  %80 = phi i16 [ %78, %76 ], [ %75, %74 ], [ %73, %72 ]
  store i16 %80, ptr %11, align 2
  %81 = add nsw i32 %14, -1
  br label %82

82:                                               ; preds = %79, %67, %55
  %83 = phi i32 [ -2, %55 ], [ -1, %67 ], [ -1, %79 ]
  %84 = phi i32 [ %24, %55 ], [ %24, %67 ], [ %81, %79 ]
  %85 = phi ptr [ %23, %55 ], [ %23, %67 ], [ %71, %79 ]
  %86 = phi ptr [ %57, %55 ], [ %59, %67 ], [ %70, %79 ]
  %87 = add nsw i32 %12, %83
  %88 = icmp sgt i32 %84, 0
  %89 = icmp sgt i32 %87, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %10, label %91

91:                                               ; preds = %82, %27, %10, %5
  %92 = phi ptr [ %3, %5 ], [ %86, %82 ], [ %11, %27 ], [ %11, %10 ]
  %93 = ptrtoint ptr %92 to i32
  %94 = ptrtoint ptr %3 to i32
  %95 = sub i32 %93, %94
  %96 = ashr exact i32 %95, 1
  br label %97

97:                                               ; preds = %91, %19
  %98 = phi i32 [ %96, %91 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %98
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @utf16s_to_utf8s(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = icmp sgt i32 %4, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %122

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 2
  br label %11

11:                                               ; preds = %114, %9
  %12 = phi ptr [ %3, %9 ], [ %118, %114 ]
  %13 = phi i32 [ %4, %9 ], [ %117, %114 ]
  %14 = phi ptr [ %0, %9 ], [ %116, %114 ]
  %15 = phi i32 [ %1, %9 ], [ %115, %114 ]
  br label %16

16:                                               ; preds = %34, %11
  %17 = phi ptr [ %14, %11 ], [ %25, %34 ]
  %18 = phi i32 [ %15, %11 ], [ %26, %34 ]
  %19 = load i16, ptr %17, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %21 = select i1 %10, i16 %20, i16 %19
  %22 = zext i16 %21 to i32
  %23 = icmp eq i16 %21, 0
  br i1 %23, label %122, label %24

24:                                               ; preds = %16
  %25 = getelementptr i16, ptr %17, i32 1
  %26 = add nsw i32 %18, -1
  %27 = icmp ugt i16 %21, 127
  br i1 %27, label %28, label %110

28:                                               ; preds = %24
  %29 = and i32 %22, 63488
  %30 = icmp eq i32 %29, 55296
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = and i32 %22, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %38, %31
  %35 = icmp ugt i32 %18, 1
  br i1 %35, label %16, label %122

36:                                               ; preds = %31
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %122, label %38

38:                                               ; preds = %36
  %39 = load i16, ptr %25, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %41 = select i1 %10, i16 %40, i16 %39
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 64512
  %44 = icmp eq i32 %43, 56320
  br i1 %44, label %45, label %34

45:                                               ; preds = %38
  %46 = shl nuw nsw i32 %22, 10
  %47 = and i32 %46, 1047552
  %48 = add nuw nsw i32 %47, 65536
  %49 = and i32 %42, 1023
  %50 = or i32 %49, %48
  %51 = getelementptr i16, ptr %17, i32 2
  %52 = add nsw i32 %18, -2
  br label %53

53:                                               ; preds = %45, %28
  %54 = phi i32 [ %52, %45 ], [ %26, %28 ]
  %55 = phi ptr [ %51, %45 ], [ %25, %28 ]
  %56 = phi i32 [ %50, %45 ], [ %22, %28 ]
  %57 = icmp eq ptr %12, null
  br i1 %57, label %106, label %58

58:                                               ; preds = %53
  %59 = icmp ult i32 %56, 1114112
  %60 = and i32 %56, -2048
  %61 = icmp ne i32 %60, 55296
  %62 = and i1 %59, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %58
  %64 = add nsw i32 %13, -1
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 5) #9
  %66 = icmp ugt i32 %56, 127
  br i1 %66, label %88, label %67

67:                                               ; preds = %104, %102, %98, %94, %90, %63
  %68 = phi ptr [ @utf8_table, %63 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %90 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %94 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %98 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %102 ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %104 ]
  %69 = phi i32 [ 1, %63 ], [ 2, %90 ], [ 3, %94 ], [ 4, %98 ], [ 5, %102 ], [ 6, %104 ]
  %70 = getelementptr inbounds %struct.utf8_table, ptr %68, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.utf8_table, ptr %68, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %56, %71
  %75 = or i32 %73, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %12, align 1
  %77 = icmp sgt i32 %71, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %78, %67
  %79 = phi i32 [ %81, %78 ], [ %71, %67 ]
  %80 = phi ptr [ %82, %78 ], [ %12, %67 ]
  %81 = add nsw i32 %79, -6
  %82 = getelementptr i8, ptr %80, i32 1
  %83 = lshr i32 %56, %81
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 63
  %86 = or i8 %85, -128
  store i8 %86, ptr %82, align 1
  %87 = icmp ugt i32 %79, 6
  br i1 %87, label %78, label %106

88:                                               ; preds = %63
  %89 = icmp eq i32 %65, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %88
  %91 = icmp ugt i32 %56, 2047
  br i1 %91, label %92, label %67

92:                                               ; preds = %90
  %93 = icmp eq i32 %65, 1
  br i1 %93, label %114, label %94

94:                                               ; preds = %92
  %95 = icmp ugt i32 %56, 65535
  br i1 %95, label %96, label %67

96:                                               ; preds = %94
  %97 = icmp eq i32 %65, 2
  br i1 %97, label %114, label %98

98:                                               ; preds = %96
  %99 = icmp ugt i32 %56, 2097151
  br i1 %99, label %100, label %67

100:                                              ; preds = %98
  %101 = icmp eq i32 %65, 3
  br i1 %101, label %114, label %102

102:                                              ; preds = %100
  %103 = icmp ugt i32 %56, 67108863
  br i1 %103, label %104, label %67

104:                                              ; preds = %102
  %105 = icmp eq i32 %65, 4
  br i1 %105, label %114, label %67

106:                                              ; preds = %78, %67, %53
  %107 = phi i32 [ %69, %67 ], [ 0, %53 ], [ %69, %78 ]
  %108 = getelementptr i8, ptr %12, i32 %107
  %109 = sub i32 %13, %107
  br label %114

110:                                              ; preds = %24
  %111 = trunc i16 %21 to i8
  %112 = getelementptr i8, ptr %12, i32 1
  store i8 %111, ptr %12, align 1
  %113 = add nsw i32 %13, -1
  br label %114

114:                                              ; preds = %110, %106, %104, %100, %96, %92, %88, %58
  %115 = phi i32 [ %54, %106 ], [ %26, %110 ], [ %54, %58 ], [ %54, %104 ], [ %54, %100 ], [ %54, %96 ], [ %54, %92 ], [ %54, %88 ]
  %116 = phi ptr [ %55, %106 ], [ %25, %110 ], [ %55, %58 ], [ %55, %104 ], [ %55, %100 ], [ %55, %96 ], [ %55, %92 ], [ %55, %88 ]
  %117 = phi i32 [ %109, %106 ], [ %113, %110 ], [ %13, %58 ], [ %13, %104 ], [ %13, %100 ], [ %13, %96 ], [ %13, %92 ], [ %13, %88 ]
  %118 = phi ptr [ %108, %106 ], [ %112, %110 ], [ %12, %58 ], [ %12, %104 ], [ %12, %100 ], [ %12, %96 ], [ %12, %92 ], [ %12, %88 ]
  %119 = icmp sgt i32 %117, 0
  %120 = icmp sgt i32 %115, 0
  %121 = select i1 %120, i1 %119, i1 false
  br i1 %121, label %11, label %122

122:                                              ; preds = %114, %36, %34, %16, %5
  %123 = phi ptr [ %3, %5 ], [ %12, %36 ], [ %12, %16 ], [ %12, %34 ], [ %118, %114 ]
  %124 = ptrtoint ptr %123 to i32
  %125 = ptrtoint ptr %3 to i32
  %126 = sub i32 %124, %125
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_nls(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 6
  store ptr %1, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %8 = load ptr, ptr @tables, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.nls_table, ptr %15, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %10

17:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %18 = load i16, ptr @nls_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @nls_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %23

20:                                               ; preds = %10, %6
  store ptr %8, ptr %3, align 4
  store ptr %0, ptr @tables, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %21 = load i16, ptr @nls_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @nls_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %23

23:                                               ; preds = %20, %17, %2
  %24 = phi i32 [ -16, %17 ], [ 0, %20 ], [ -16, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_nls(ptr noundef readonly %0) #3 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %2 = load ptr, ptr @tables, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %2, %0
  br i1 %5, label %15, label %6

6:                                                ; preds = %11, %4
  %7 = phi ptr [ %9, %11 ], [ %2, %4 ]
  %8 = getelementptr inbounds %struct.nls_table, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %13, label %6

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.nls_table, ptr %7, i32 0, i32 7
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ @tables, %4 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %19 = load i16, ptr @nls_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @nls_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %24

21:                                               ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %22 = load i16, ptr @nls_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @nls_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ 0, %15 ], [ -22, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @load_nls(ptr noundef %0) #3 {
  %2 = tail call fastcc ptr @find_nls(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %0) #9
  %6 = tail call fastcc ptr @find_nls(ptr noundef %0)
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %2, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_nls(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %2 = load ptr, ptr @tables, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %16, %1
  %5 = phi ptr [ %18, %16 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @strcmp(ptr noundef nonnull %11, ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %4

20:                                               ; preds = %13, %4
  %21 = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #9
  %24 = select i1 %23, ptr %5, ptr null
  br label %25

25:                                               ; preds = %20, %16, %1
  %26 = phi ptr [ %24, %20 ], [ null, %1 ], [ null, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %27 = load i16, ptr @nls_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @nls_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unload_nls(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @module_put(ptr noundef %5) #9
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @load_nls_default() #3 {
  %1 = tail call fastcc ptr @find_nls(ptr noundef nonnull @.str.1) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  %5 = tail call fastcc ptr @find_nls(ptr noundef nonnull @.str.1) #9
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @default_table, ptr %7
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = lshr i16 %0, 8
  %7 = zext i16 %6 to i32
  %8 = getelementptr [256 x ptr], ptr @page_uni2charset, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = and i16 %0, 255
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i8 %15, ptr %1, align 1
  br label %18

18:                                               ; preds = %17, %11, %5, %3
  %19 = phi i32 [ 1, %17 ], [ -36, %3 ], [ -22, %11 ], [ -22, %5 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @char2uni(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [256 x i16], ptr @charset2uni, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  store i16 %7, ptr %2, align 2
  %8 = icmp eq i8 %4, 0
  %9 = select i1 %8, i32 -22, i32 1
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2148940319}
!10 = !{i64 2148936143}
!11 = !{i64 2148936218, i64 2148936245, i64 2148936292, i64 2148936314, i64 2148936342, i64 2148936362}
!12 = !{i64 2148963322}
