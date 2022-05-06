; ModuleID = '/llk/IR/drivers/crypto/caam/caamalg_desc.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamalg_desc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_aead_null_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_aead_null_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_aead_null_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_aead_null_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_aead_null_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_aead_null_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_aead_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_aead_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_aead_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_aead_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_aead_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_aead_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_aead_givencap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_aead_givencap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_aead_givencap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_gcm_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_gcm_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_gcm_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_gcm_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_gcm_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_gcm_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_rfc4106_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_rfc4106_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_rfc4106_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_rfc4106_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_rfc4106_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_rfc4106_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_rfc4543_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_rfc4543_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_rfc4543_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_rfc4543_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_rfc4543_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_rfc4543_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_chachapoly:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_chachapoly\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_chachapoly:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_skcipher_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_skcipher_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_skcipher_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_skcipher_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_skcipher_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_skcipher_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_xts_skcipher_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_xts_skcipher_encap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_xts_skcipher_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_xts_skcipher_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_xts_skcipher_decap\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_xts_skcipher_decap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }

@__kstrtab_cnstr_shdsc_aead_null_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_aead_null_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_aead_null_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_aead_null_encap to i32), ptr @__kstrtab_cnstr_shdsc_aead_null_encap, ptr @__kstrtabns_cnstr_shdsc_aead_null_encap }, section "___ksymtab+cnstr_shdsc_aead_null_encap", align 4
@__kstrtab_cnstr_shdsc_aead_null_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_aead_null_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_aead_null_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_aead_null_decap to i32), ptr @__kstrtab_cnstr_shdsc_aead_null_decap, ptr @__kstrtabns_cnstr_shdsc_aead_null_decap }, section "___ksymtab+cnstr_shdsc_aead_null_decap", align 4
@__kstrtab_cnstr_shdsc_aead_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_aead_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_aead_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_aead_encap to i32), ptr @__kstrtab_cnstr_shdsc_aead_encap, ptr @__kstrtabns_cnstr_shdsc_aead_encap }, section "___ksymtab+cnstr_shdsc_aead_encap", align 4
@__kstrtab_cnstr_shdsc_aead_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_aead_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_aead_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_aead_decap to i32), ptr @__kstrtab_cnstr_shdsc_aead_decap, ptr @__kstrtabns_cnstr_shdsc_aead_decap }, section "___ksymtab+cnstr_shdsc_aead_decap", align 4
@__kstrtab_cnstr_shdsc_aead_givencap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_aead_givencap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_aead_givencap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_aead_givencap to i32), ptr @__kstrtab_cnstr_shdsc_aead_givencap, ptr @__kstrtabns_cnstr_shdsc_aead_givencap }, section "___ksymtab+cnstr_shdsc_aead_givencap", align 4
@__kstrtab_cnstr_shdsc_gcm_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_gcm_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_gcm_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_gcm_encap to i32), ptr @__kstrtab_cnstr_shdsc_gcm_encap, ptr @__kstrtabns_cnstr_shdsc_gcm_encap }, section "___ksymtab+cnstr_shdsc_gcm_encap", align 4
@__kstrtab_cnstr_shdsc_gcm_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_gcm_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_gcm_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_gcm_decap to i32), ptr @__kstrtab_cnstr_shdsc_gcm_decap, ptr @__kstrtabns_cnstr_shdsc_gcm_decap }, section "___ksymtab+cnstr_shdsc_gcm_decap", align 4
@__kstrtab_cnstr_shdsc_rfc4106_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_rfc4106_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_rfc4106_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_rfc4106_encap to i32), ptr @__kstrtab_cnstr_shdsc_rfc4106_encap, ptr @__kstrtabns_cnstr_shdsc_rfc4106_encap }, section "___ksymtab+cnstr_shdsc_rfc4106_encap", align 4
@__kstrtab_cnstr_shdsc_rfc4106_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_rfc4106_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_rfc4106_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_rfc4106_decap to i32), ptr @__kstrtab_cnstr_shdsc_rfc4106_decap, ptr @__kstrtabns_cnstr_shdsc_rfc4106_decap }, section "___ksymtab+cnstr_shdsc_rfc4106_decap", align 4
@__kstrtab_cnstr_shdsc_rfc4543_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_rfc4543_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_rfc4543_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_rfc4543_encap to i32), ptr @__kstrtab_cnstr_shdsc_rfc4543_encap, ptr @__kstrtabns_cnstr_shdsc_rfc4543_encap }, section "___ksymtab+cnstr_shdsc_rfc4543_encap", align 4
@__kstrtab_cnstr_shdsc_rfc4543_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_rfc4543_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_rfc4543_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_rfc4543_decap to i32), ptr @__kstrtab_cnstr_shdsc_rfc4543_decap, ptr @__kstrtabns_cnstr_shdsc_rfc4543_decap }, section "___ksymtab+cnstr_shdsc_rfc4543_decap", align 4
@__kstrtab_cnstr_shdsc_chachapoly = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_chachapoly = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_chachapoly = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_chachapoly to i32), ptr @__kstrtab_cnstr_shdsc_chachapoly, ptr @__kstrtabns_cnstr_shdsc_chachapoly }, section "___ksymtab+cnstr_shdsc_chachapoly", align 4
@__kstrtab_cnstr_shdsc_skcipher_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_skcipher_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_skcipher_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_skcipher_encap to i32), ptr @__kstrtab_cnstr_shdsc_skcipher_encap, ptr @__kstrtabns_cnstr_shdsc_skcipher_encap }, section "___ksymtab+cnstr_shdsc_skcipher_encap", align 4
@__kstrtab_cnstr_shdsc_skcipher_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_skcipher_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_skcipher_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_skcipher_decap to i32), ptr @__kstrtab_cnstr_shdsc_skcipher_decap, ptr @__kstrtabns_cnstr_shdsc_skcipher_decap }, section "___ksymtab+cnstr_shdsc_skcipher_decap", align 4
@__kstrtab_cnstr_shdsc_xts_skcipher_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_xts_skcipher_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_xts_skcipher_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_xts_skcipher_encap to i32), ptr @__kstrtab_cnstr_shdsc_xts_skcipher_encap, ptr @__kstrtabns_cnstr_shdsc_xts_skcipher_encap }, section "___ksymtab+cnstr_shdsc_xts_skcipher_encap", align 4
@__kstrtab_cnstr_shdsc_xts_skcipher_decap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_xts_skcipher_decap = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_xts_skcipher_decap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_xts_skcipher_decap to i32), ptr @__kstrtab_cnstr_shdsc_xts_skcipher_decap, ptr @__kstrtabns_cnstr_shdsc_xts_skcipher_decap }, section "___ksymtab+cnstr_shdsc_xts_skcipher_decap", align 4
@__UNIQUE_ID_license467 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [40 x i8] c"description=FSL CAAM descriptor support\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [41 x i8] c"author=Freescale Semiconductor - NMG/STC\00", section ".modinfo", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_license467, ptr @__ksymtab_cnstr_shdsc_aead_decap, ptr @__ksymtab_cnstr_shdsc_aead_encap, ptr @__ksymtab_cnstr_shdsc_aead_givencap, ptr @__ksymtab_cnstr_shdsc_aead_null_decap, ptr @__ksymtab_cnstr_shdsc_aead_null_encap, ptr @__ksymtab_cnstr_shdsc_chachapoly, ptr @__ksymtab_cnstr_shdsc_gcm_decap, ptr @__ksymtab_cnstr_shdsc_gcm_encap, ptr @__ksymtab_cnstr_shdsc_rfc4106_decap, ptr @__ksymtab_cnstr_shdsc_rfc4106_encap, ptr @__ksymtab_cnstr_shdsc_rfc4543_decap, ptr @__ksymtab_cnstr_shdsc_rfc4543_encap, ptr @__ksymtab_cnstr_shdsc_skcipher_decap, ptr @__ksymtab_cnstr_shdsc_skcipher_encap, ptr @__ksymtab_cnstr_shdsc_xts_skcipher_decap, ptr @__ksymtab_cnstr_shdsc_xts_skcipher_encap], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_aead_null_encap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i8, ptr @caam_little_end, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 16941240, i32 -1199570431
  store i32 %7, ptr %0, align 4
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %7, 24
  %11 = select i1 %9, i32 %10, i32 %7
  %12 = and i32 %11, 57
  %13 = getelementptr i32, ptr %0, i32 %12
  %14 = select i1 %9, i32 4194465, i32 -1593819136
  store i32 %14, ptr %13, align 4
  %15 = load i32, ptr %0, align 4
  %16 = load i8, ptr @caam_little_end, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %19 = select i1 %17, i32 %18, i32 %15
  %20 = add i32 %19, 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %22 = select i1 %17, i32 %21, i32 %20
  store i32 %22, ptr %0, align 4
  %23 = icmp slt i32 %3, 6
  br i1 %23, label %24, label %112

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 79888384
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %22, 24
  %39 = select i1 %37, i32 %38, i32 %22
  %40 = and i32 %39, 127
  %41 = getelementptr i32, ptr %0, i32 %40
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %43 = select i1 %37, i32 %42, i32 %35
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %0, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = add i32 %48, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #4
  %51 = select i1 %46, i32 %50, i32 %49
  store i32 %51, ptr %0, align 4
  %52 = icmp eq i32 %32, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %28
  %54 = load i8, ptr @caam_little_end, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = lshr i32 %51, 24
  %57 = select i1 %55, i32 %56, i32 %51
  %58 = and i32 %57, 127
  %59 = getelementptr i32, ptr %0, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 1 %30, i32 %32, i1 false) #4
  %60 = load i32, ptr %0, align 4
  br label %61

61:                                               ; preds = %53, %28
  %62 = phi i32 [ %51, %28 ], [ %60, %53 ]
  %63 = load i8, ptr @caam_little_end, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #4
  %66 = select i1 %64, i32 %65, i32 %62
  %67 = add i32 %32, 3
  %68 = lshr i32 %67, 2
  %69 = add i32 %66, %68
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  %71 = select i1 %64, i32 %70, i32 %69
  store i32 %71, ptr %0, align 4
  br label %114

72:                                               ; preds = %24
  %73 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 71499776
  %78 = load i8, ptr @caam_little_end, align 1, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = lshr i32 %22, 24
  %81 = select i1 %79, i32 %80, i32 %22
  %82 = and i32 %81, 127
  %83 = getelementptr i32, ptr %0, i32 %82
  %84 = tail call i32 @llvm.bswap.i32(i32 %77) #4
  %85 = select i1 %79, i32 %84, i32 %77
  store i32 %85, ptr %83, align 4
  %86 = load i32, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #4
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = add i32 %90, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %93 = select i1 %88, i32 %92, i32 %91
  store i32 %93, ptr %0, align 4
  %94 = load i8, ptr @caam_little_end, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  %96 = lshr i32 %93, 24
  %97 = select i1 %95, i32 %96, i32 %93
  %98 = and i32 %97, 127
  %99 = getelementptr i32, ptr %0, i32 %98
  %100 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %101 = select i1 %95, i32 %100, i32 %74
  store i32 %101, ptr %99, align 4
  %102 = load i32, ptr %0, align 4
  %103 = load i8, ptr @caam_little_end, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #4
  %106 = select i1 %104, i32 %105, i32 %102
  %107 = load i32, ptr @caam_ptr_sz, align 4
  %108 = lshr i32 %107, 2
  %109 = add i32 %106, %108
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %111 = select i1 %104, i32 %110, i32 %109
  store i32 %111, ptr %0, align 4
  br label %114

112:                                              ; preds = %4
  tail call fastcc void @append_proto_dkp(ptr noundef %0, ptr noundef %1)
  %113 = load i32, ptr %0, align 4
  br label %114

114:                                              ; preds = %112, %72, %61
  %115 = phi i32 [ %71, %61 ], [ %111, %72 ], [ %113, %112 ]
  %116 = load i32, ptr %13, align 4
  %117 = load i8, ptr @caam_little_end, align 1, !range !8
  %118 = icmp eq i8 %117, 0
  %119 = tail call i32 @llvm.bswap.i32(i32 %116) #4
  %120 = select i1 %118, i32 %119, i32 %116
  %121 = lshr i32 %115, 24
  %122 = select i1 %118, i32 %121, i32 %115
  %123 = and i32 %122, 127
  %124 = sub nsw i32 %123, %12
  %125 = or i32 %124, %120
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #4
  %127 = select i1 %118, i32 %126, i32 %125
  store i32 %127, ptr %13, align 4
  %128 = load i32, ptr %0, align 4
  %129 = load i8, ptr @caam_little_end, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  %131 = lshr i32 %128, 24
  %132 = select i1 %130, i32 %131, i32 %128
  %133 = and i32 %132, 127
  %134 = getelementptr i32, ptr %0, i32 %133
  %135 = select i1 %130, i32 67315880, i32 -1473772796
  store i32 %135, ptr %134, align 4
  %136 = load i32, ptr %0, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #4
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #4
  %143 = select i1 %138, i32 %142, i32 %141
  store i32 %143, ptr %0, align 4
  %144 = load i8, ptr @caam_little_end, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = lshr i32 %143, 24
  %147 = select i1 %145, i32 %146, i32 %143
  %148 = and i32 %147, 127
  %149 = getelementptr i32, ptr %0, i32 %148
  %150 = select i1 %145, i32 70913192, i32 -1475593724
  store i32 %150, ptr %149, align 4
  %151 = load i32, ptr %0, align 4
  %152 = load i8, ptr @caam_little_end, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  %154 = tail call i32 @llvm.bswap.i32(i32 %151) #4
  %155 = select i1 %153, i32 %154, i32 %151
  %156 = add i32 %155, 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #4
  %158 = select i1 %153, i32 %157, i32 %156
  store i32 %158, ptr %0, align 4
  %159 = load i8, ptr @caam_little_end, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = lshr i32 %158, 24
  %162 = select i1 %160, i32 %161, i32 %158
  %163 = and i32 %162, 127
  %164 = getelementptr i32, ptr %0, i32 %163
  %165 = select i1 %160, i32 70978728, i32 -1475593468
  store i32 %165, ptr %164, align 4
  %166 = load i32, ptr %0, align 4
  %167 = load i8, ptr @caam_little_end, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %166) #4
  %170 = select i1 %168, i32 %169, i32 %166
  %171 = add i32 %170, 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #4
  %173 = select i1 %168, i32 %172, i32 %171
  store i32 %173, ptr %0, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = lshr i32 %173, 24
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = and i32 %177, 127
  %179 = getelementptr i32, ptr %0, i32 %178
  %180 = select i1 %175, i32 100677496, i32 2016870406
  store i32 %180, ptr %179, align 4
  %181 = load i32, ptr %0, align 4
  %182 = load i8, ptr @caam_little_end, align 1, !range !8
  %183 = icmp eq i8 %182, 0
  %184 = tail call i32 @llvm.bswap.i32(i32 %181) #4
  %185 = select i1 %183, i32 %184, i32 %181
  %186 = add i32 %185, 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #4
  %188 = select i1 %183, i32 %187, i32 %186
  store i32 %188, ptr %0, align 4
  %189 = load i8, ptr @caam_little_end, align 1, !range !8
  %190 = icmp eq i8 %189, 0
  %191 = lshr i32 %188, 24
  %192 = select i1 %190, i32 %191, i32 %188
  %193 = and i32 %192, 127
  %194 = getelementptr i32, ptr %0, i32 %193
  %195 = select i1 %190, i32 134247289, i32 2037579784
  store i32 %195, ptr %194, align 4
  %196 = load i32, ptr %0, align 4
  %197 = load i8, ptr @caam_little_end, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  %199 = tail call i32 @llvm.bswap.i32(i32 %196) #4
  %200 = select i1 %198, i32 %199, i32 %196
  %201 = add i32 %200, 1
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #4
  %203 = select i1 %198, i32 %202, i32 %201
  store i32 %203, ptr %0, align 4
  %204 = load i32, ptr %1, align 4
  %205 = or i32 %204, -2147483635
  %206 = load i8, ptr @caam_little_end, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = lshr i32 %203, 24
  %209 = select i1 %207, i32 %208, i32 %203
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %0, i32 %210
  %212 = tail call i32 @llvm.bswap.i32(i32 %205) #4
  %213 = select i1 %207, i32 %212, i32 %205
  store i32 %213, ptr %211, align 4
  %214 = load i32, ptr %0, align 4
  %215 = load i8, ptr @caam_little_end, align 1, !range !8
  %216 = icmp eq i8 %215, 0
  %217 = tail call i32 @llvm.bswap.i32(i32 %214) #4
  %218 = select i1 %216, i32 %217, i32 %214
  %219 = add i32 %218, 1
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %221 = select i1 %216, i32 %220, i32 %219
  store i32 %221, ptr %0, align 4
  %222 = load i8, ptr @caam_little_end, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  %224 = lshr i32 %221, 24
  %225 = select i1 %223, i32 %224, i32 %221
  %226 = and i32 %225, 127
  %227 = getelementptr i32, ptr %0, i32 %226
  %228 = select i1 %223, i32 12393, i32 1764753408
  store i32 %228, ptr %227, align 4
  %229 = load i32, ptr %0, align 4
  %230 = load i8, ptr @caam_little_end, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  %232 = tail call i32 @llvm.bswap.i32(i32 %229) #4
  %233 = select i1 %231, i32 %232, i32 %229
  %234 = add i32 %233, 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %236 = select i1 %231, i32 %235, i32 %234
  store i32 %236, ptr %0, align 4
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = lshr i32 %236, 24
  %240 = select i1 %238, i32 %239, i32 %236
  %241 = and i32 %240, 127
  %242 = getelementptr i32, ptr %0, i32 %241
  %243 = select i1 %238, i32 5935, i32 790036480
  store i32 %243, ptr %242, align 4
  %244 = load i32, ptr %0, align 4
  %245 = load i8, ptr @caam_little_end, align 1, !range !8
  %246 = icmp eq i8 %245, 0
  %247 = tail call i32 @llvm.bswap.i32(i32 %244) #4
  %248 = select i1 %246, i32 %247, i32 %244
  %249 = add i32 %248, 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %251 = select i1 %246, i32 %250, i32 %249
  store i32 %251, ptr %0, align 4
  %252 = load i32, ptr %179, align 4
  %253 = load i8, ptr @caam_little_end, align 1, !range !8
  %254 = icmp eq i8 %253, 0
  %255 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %256 = select i1 %254, i32 %255, i32 %252
  %257 = and i32 %256, -65281
  %258 = lshr i32 %251, 24
  %259 = select i1 %254, i32 %258, i32 %251
  %260 = shl i32 %259, 10
  %261 = and i32 %260, 64512
  %262 = or i32 %261, %257
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #4
  %264 = select i1 %254, i32 %263, i32 %262
  store i32 %264, ptr %179, align 4
  %265 = load i32, ptr %194, align 4
  %266 = load i8, ptr @caam_little_end, align 1, !range !8
  %267 = icmp eq i8 %266, 0
  %268 = tail call i32 @llvm.bswap.i32(i32 %265) #4
  %269 = select i1 %267, i32 %268, i32 %265
  %270 = and i32 %269, -65281
  %271 = load i32, ptr %0, align 4
  %272 = lshr i32 %271, 24
  %273 = select i1 %267, i32 %272, i32 %271
  %274 = shl i32 %273, 10
  %275 = and i32 %274, 64512
  %276 = or i32 %275, %270
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #4
  %278 = select i1 %267, i32 %277, i32 %276
  store i32 %278, ptr %194, align 4
  %279 = load i32, ptr %0, align 4
  %280 = load i8, ptr @caam_little_end, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  %282 = lshr i32 %279, 24
  %283 = select i1 %281, i32 %282, i32 %279
  %284 = and i32 %283, 127
  %285 = getelementptr i32, ptr %0, i32 %284
  %286 = select i1 %281, i32 558614, i32 377882624
  store i32 %286, ptr %285, align 4
  %287 = load i32, ptr %0, align 4
  %288 = load i8, ptr @caam_little_end, align 1, !range !8
  %289 = icmp eq i8 %288, 0
  %290 = tail call i32 @llvm.bswap.i32(i32 %287) #4
  %291 = select i1 %289, i32 %290, i32 %287
  %292 = add i32 %291, 1
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #4
  %294 = select i1 %289, i32 %293, i32 %292
  store i32 %294, ptr %0, align 4
  %295 = load i8, ptr @caam_little_end, align 1, !range !8
  %296 = icmp eq i8 %295, 0
  %297 = lshr i32 %294, 24
  %298 = select i1 %296, i32 %297, i32 %294
  %299 = and i32 %298, 127
  %300 = getelementptr i32, ptr %0, i32 %299
  %301 = select i1 %296, i32 37498, i32 2056388608
  store i32 %301, ptr %300, align 4
  %302 = load i32, ptr %0, align 4
  %303 = load i8, ptr @caam_little_end, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  %305 = tail call i32 @llvm.bswap.i32(i32 %302) #4
  %306 = select i1 %304, i32 %305, i32 %302
  %307 = add i32 %306, 1
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #4
  %309 = select i1 %304, i32 %308, i32 %307
  store i32 %309, ptr %0, align 4
  %310 = or i32 %2, 1545601024
  %311 = load i8, ptr @caam_little_end, align 1, !range !8
  %312 = icmp eq i8 %311, 0
  %313 = lshr i32 %309, 24
  %314 = select i1 %312, i32 %313, i32 %309
  %315 = and i32 %314, 127
  %316 = getelementptr i32, ptr %0, i32 %315
  %317 = tail call i32 @llvm.bswap.i32(i32 %310) #4
  %318 = select i1 %312, i32 %317, i32 %310
  store i32 %318, ptr %316, align 4
  %319 = load i32, ptr %0, align 4
  %320 = load i8, ptr @caam_little_end, align 1, !range !8
  %321 = icmp eq i8 %320, 0
  %322 = tail call i32 @llvm.bswap.i32(i32 %319) #4
  %323 = select i1 %321, i32 %322, i32 %319
  %324 = add i32 %323, 1
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #4
  %326 = select i1 %321, i32 %325, i32 %324
  store i32 %326, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @append_proto_dkp(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 983040
  %5 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %121, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %9, %12
  %14 = or i32 %9, %4
  br i1 %13, label %15, label %59

15:                                               ; preds = %10
  %16 = or i32 %14, -2145353728
  %17 = load i32, ptr %0, align 4
  %18 = load i8, ptr @caam_little_end, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = lshr i32 %17, 24
  %21 = select i1 %19, i32 %20, i32 %17
  %22 = and i32 %21, 127
  %23 = getelementptr i32, ptr %0, i32 %22
  %24 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %25 = select i1 %19, i32 %24, i32 %16
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %0, align 4
  %27 = load i8, ptr @caam_little_end, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %30 = select i1 %28, i32 %29, i32 %26
  %31 = add i32 %30, 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %33 = select i1 %28, i32 %32, i32 %31
  store i32 %33, ptr %0, align 4
  %34 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %33, 24
  %39 = select i1 %37, i32 %38, i32 %33
  %40 = and i32 %39, 127
  %41 = getelementptr i32, ptr %0, i32 %40
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %43 = select i1 %37, i32 %42, i32 %35
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %0, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = load i32, ptr @caam_ptr_sz, align 4
  %50 = lshr i32 %49, 2
  %51 = add i32 %48, %50
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #4
  %53 = select i1 %46, i32 %52, i32 %51
  store i32 %53, ptr %0, align 4
  %54 = load i32, ptr %11, align 4
  %55 = add i32 %54, 3
  %56 = and i32 %55, -4
  %57 = load i32, ptr @caam_ptr_sz, align 4
  %58 = sub i32 %56, %57
  br label %108

59:                                               ; preds = %10
  %60 = or i32 %14, -2145386496
  %61 = load i32, ptr %0, align 4
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = lshr i32 %61, 24
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = and i32 %65, 127
  %67 = getelementptr i32, ptr %0, i32 %66
  %68 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %69 = select i1 %63, i32 %68, i32 %60
  store i32 %69, ptr %67, align 4
  %70 = load i32, ptr %0, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #4
  %74 = select i1 %72, i32 %73, i32 %70
  %75 = add i32 %74, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %77 = select i1 %72, i32 %76, i32 %75
  store i32 %77, ptr %0, align 4
  %78 = load i32, ptr %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = load i8, ptr @caam_little_end, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  %85 = lshr i32 %77, 24
  %86 = select i1 %84, i32 %85, i32 %77
  %87 = and i32 %86, 127
  %88 = getelementptr i32, ptr %0, i32 %87
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %88, ptr align 1 %82, i32 %78, i1 false) #4
  %89 = load i32, ptr %0, align 4
  br label %90

90:                                               ; preds = %80, %59
  %91 = phi i32 [ %77, %59 ], [ %89, %80 ]
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = add i32 %78, 3
  %97 = lshr i32 %96, 2
  %98 = add i32 %95, %97
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #4
  %100 = select i1 %93, i32 %99, i32 %98
  store i32 %100, ptr %0, align 4
  %101 = load i32, ptr %11, align 4
  %102 = add i32 %101, 3
  %103 = and i32 %102, -4
  %104 = load i32, ptr %8, align 4
  %105 = add i32 %104, 3
  %106 = and i32 %105, -4
  %107 = sub i32 %103, %106
  br label %108

108:                                              ; preds = %90, %15
  %109 = phi i32 [ %53, %15 ], [ %100, %90 ]
  %110 = phi i32 [ %58, %15 ], [ %107, %90 ]
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %163, label %112

112:                                              ; preds = %108
  %113 = lshr i32 %110, 2
  %114 = load i8, ptr @caam_little_end, align 1, !range !8
  %115 = icmp eq i8 %114, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %117 = select i1 %115, i32 %116, i32 %109
  %118 = add i32 %117, %113
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #4
  %120 = select i1 %115, i32 %119, i32 %118
  br label %161

121:                                              ; preds = %2
  %122 = or i32 %4, %9
  %123 = or i32 %122, -2145345536
  %124 = load i32, ptr %0, align 4
  %125 = load i8, ptr @caam_little_end, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = lshr i32 %124, 24
  %128 = select i1 %126, i32 %127, i32 %124
  %129 = and i32 %128, 127
  %130 = getelementptr i32, ptr %0, i32 %129
  %131 = tail call i32 @llvm.bswap.i32(i32 %123) #4
  %132 = select i1 %126, i32 %131, i32 %123
  store i32 %132, ptr %130, align 4
  %133 = load i32, ptr %0, align 4
  %134 = load i8, ptr @caam_little_end, align 1, !range !8
  %135 = icmp eq i8 %134, 0
  %136 = tail call i32 @llvm.bswap.i32(i32 %133) #4
  %137 = select i1 %135, i32 %136, i32 %133
  %138 = add i32 %137, 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #4
  %140 = select i1 %135, i32 %139, i32 %138
  store i32 %140, ptr %0, align 4
  %141 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %140, 24
  %146 = select i1 %144, i32 %145, i32 %140
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = tail call i32 @llvm.bswap.i32(i32 %142) #4
  %150 = select i1 %144, i32 %149, i32 %142
  store i32 %150, ptr %148, align 4
  %151 = load i32, ptr %0, align 4
  %152 = load i8, ptr @caam_little_end, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  %154 = tail call i32 @llvm.bswap.i32(i32 %151) #4
  %155 = select i1 %153, i32 %154, i32 %151
  %156 = load i32, ptr @caam_ptr_sz, align 4
  %157 = lshr i32 %156, 2
  %158 = add i32 %155, %157
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #4
  %160 = select i1 %153, i32 %159, i32 %158
  br label %161

161:                                              ; preds = %121, %112
  %162 = phi i32 [ %120, %112 ], [ %160, %121 ]
  store i32 %162, ptr %0, align 4
  br label %163

163:                                              ; preds = %161, %108
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_aead_null_decap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i8, ptr @caam_little_end, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 16941240, i32 -1199570431
  store i32 %7, ptr %0, align 4
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %7, 24
  %11 = select i1 %9, i32 %10, i32 %7
  %12 = and i32 %11, 57
  %13 = getelementptr i32, ptr %0, i32 %12
  %14 = select i1 %9, i32 4194465, i32 -1593819136
  store i32 %14, ptr %13, align 4
  %15 = load i32, ptr %0, align 4
  %16 = load i8, ptr @caam_little_end, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %19 = select i1 %17, i32 %18, i32 %15
  %20 = add i32 %19, 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %22 = select i1 %17, i32 %21, i32 %20
  store i32 %22, ptr %0, align 4
  %23 = icmp slt i32 %3, 6
  br i1 %23, label %24, label %112

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %72, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 79888384
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %22, 24
  %39 = select i1 %37, i32 %38, i32 %22
  %40 = and i32 %39, 127
  %41 = getelementptr i32, ptr %0, i32 %40
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %43 = select i1 %37, i32 %42, i32 %35
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %0, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = add i32 %48, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #4
  %51 = select i1 %46, i32 %50, i32 %49
  store i32 %51, ptr %0, align 4
  %52 = icmp eq i32 %32, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %28
  %54 = load i8, ptr @caam_little_end, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = lshr i32 %51, 24
  %57 = select i1 %55, i32 %56, i32 %51
  %58 = and i32 %57, 127
  %59 = getelementptr i32, ptr %0, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %59, ptr align 1 %30, i32 %32, i1 false) #4
  %60 = load i32, ptr %0, align 4
  br label %61

61:                                               ; preds = %53, %28
  %62 = phi i32 [ %51, %28 ], [ %60, %53 ]
  %63 = load i8, ptr @caam_little_end, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #4
  %66 = select i1 %64, i32 %65, i32 %62
  %67 = add i32 %32, 3
  %68 = lshr i32 %67, 2
  %69 = add i32 %66, %68
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  %71 = select i1 %64, i32 %70, i32 %69
  store i32 %71, ptr %0, align 4
  br label %114

72:                                               ; preds = %24
  %73 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 71499776
  %78 = load i8, ptr @caam_little_end, align 1, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = lshr i32 %22, 24
  %81 = select i1 %79, i32 %80, i32 %22
  %82 = and i32 %81, 127
  %83 = getelementptr i32, ptr %0, i32 %82
  %84 = tail call i32 @llvm.bswap.i32(i32 %77) #4
  %85 = select i1 %79, i32 %84, i32 %77
  store i32 %85, ptr %83, align 4
  %86 = load i32, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #4
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = add i32 %90, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %93 = select i1 %88, i32 %92, i32 %91
  store i32 %93, ptr %0, align 4
  %94 = load i8, ptr @caam_little_end, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  %96 = lshr i32 %93, 24
  %97 = select i1 %95, i32 %96, i32 %93
  %98 = and i32 %97, 127
  %99 = getelementptr i32, ptr %0, i32 %98
  %100 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %101 = select i1 %95, i32 %100, i32 %74
  store i32 %101, ptr %99, align 4
  %102 = load i32, ptr %0, align 4
  %103 = load i8, ptr @caam_little_end, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #4
  %106 = select i1 %104, i32 %105, i32 %102
  %107 = load i32, ptr @caam_ptr_sz, align 4
  %108 = lshr i32 %107, 2
  %109 = add i32 %106, %108
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %111 = select i1 %104, i32 %110, i32 %109
  store i32 %111, ptr %0, align 4
  br label %114

112:                                              ; preds = %4
  tail call fastcc void @append_proto_dkp(ptr noundef %0, ptr noundef %1)
  %113 = load i32, ptr %0, align 4
  br label %114

114:                                              ; preds = %112, %72, %61
  %115 = phi i32 [ %71, %61 ], [ %111, %72 ], [ %113, %112 ]
  %116 = load i32, ptr %13, align 4
  %117 = load i8, ptr @caam_little_end, align 1, !range !8
  %118 = icmp eq i8 %117, 0
  %119 = tail call i32 @llvm.bswap.i32(i32 %116) #4
  %120 = select i1 %118, i32 %119, i32 %116
  %121 = lshr i32 %115, 24
  %122 = select i1 %118, i32 %121, i32 %115
  %123 = and i32 %122, 127
  %124 = sub nsw i32 %123, %12
  %125 = or i32 %124, %120
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #4
  %127 = select i1 %118, i32 %126, i32 %125
  store i32 %127, ptr %13, align 4
  %128 = load i32, ptr %1, align 4
  %129 = or i32 %128, -2147483634
  %130 = load i32, ptr %0, align 4
  %131 = load i8, ptr @caam_little_end, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  %133 = lshr i32 %130, 24
  %134 = select i1 %132, i32 %133, i32 %130
  %135 = and i32 %134, 127
  %136 = getelementptr i32, ptr %0, i32 %135
  %137 = tail call i32 @llvm.bswap.i32(i32 %129) #4
  %138 = select i1 %132, i32 %137, i32 %129
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %0, align 4
  %140 = load i8, ptr @caam_little_end, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %143 = select i1 %141, i32 %142, i32 %139
  %144 = add i32 %143, 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #4
  %146 = select i1 %141, i32 %145, i32 %144
  store i32 %146, ptr %0, align 4
  %147 = load i8, ptr @caam_little_end, align 1, !range !8
  %148 = icmp eq i8 %147, 0
  %149 = lshr i32 %146, 24
  %150 = select i1 %148, i32 %149, i32 %146
  %151 = and i32 %150, 127
  %152 = getelementptr i32, ptr %0, i32 %151
  %153 = select i1 %148, i32 67250600, i32 -1473707516
  store i32 %153, ptr %152, align 4
  %154 = load i32, ptr %0, align 4
  %155 = load i8, ptr @caam_little_end, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  %157 = tail call i32 @llvm.bswap.i32(i32 %154) #4
  %158 = select i1 %156, i32 %157, i32 %154
  %159 = add i32 %158, 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #4
  %161 = select i1 %156, i32 %160, i32 %159
  store i32 %161, ptr %0, align 4
  %162 = load i8, ptr @caam_little_end, align 1, !range !8
  %163 = icmp eq i8 %162, 0
  %164 = lshr i32 %161, 24
  %165 = select i1 %163, i32 %164, i32 %161
  %166 = and i32 %165, 127
  %167 = getelementptr i32, ptr %0, i32 %166
  %168 = select i1 %163, i32 69864616, i32 -1475597820
  store i32 %168, ptr %167, align 4
  %169 = load i32, ptr %0, align 4
  %170 = load i8, ptr @caam_little_end, align 1, !range !8
  %171 = icmp eq i8 %170, 0
  %172 = tail call i32 @llvm.bswap.i32(i32 %169) #4
  %173 = select i1 %171, i32 %172, i32 %169
  %174 = add i32 %173, 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %176 = select i1 %171, i32 %175, i32 %174
  store i32 %176, ptr %0, align 4
  %177 = load i8, ptr @caam_little_end, align 1, !range !8
  %178 = icmp eq i8 %177, 0
  %179 = lshr i32 %176, 24
  %180 = select i1 %178, i32 %179, i32 %176
  %181 = and i32 %180, 127
  %182 = getelementptr i32, ptr %0, i32 %181
  %183 = select i1 %178, i32 69930152, i32 -1475597564
  store i32 %183, ptr %182, align 4
  %184 = load i32, ptr %0, align 4
  %185 = load i8, ptr @caam_little_end, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  %187 = tail call i32 @llvm.bswap.i32(i32 %184) #4
  %188 = select i1 %186, i32 %187, i32 %184
  %189 = add i32 %188, 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #4
  %191 = select i1 %186, i32 %190, i32 %189
  store i32 %191, ptr %0, align 4
  %192 = load i8, ptr @caam_little_end, align 1, !range !8
  %193 = icmp eq i8 %192, 0
  %194 = lshr i32 %191, 24
  %195 = select i1 %193, i32 %194, i32 %191
  %196 = and i32 %195, 127
  %197 = getelementptr i32, ptr %0, i32 %196
  %198 = select i1 %193, i32 100677240, i32 2016804870
  store i32 %198, ptr %197, align 4
  %199 = load i32, ptr %0, align 4
  %200 = load i8, ptr @caam_little_end, align 1, !range !8
  %201 = icmp eq i8 %200, 0
  %202 = tail call i32 @llvm.bswap.i32(i32 %199) #4
  %203 = select i1 %201, i32 %202, i32 %199
  %204 = add i32 %203, 1
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #4
  %206 = select i1 %201, i32 %205, i32 %204
  store i32 %206, ptr %0, align 4
  %207 = load i8, ptr @caam_little_end, align 1, !range !8
  %208 = icmp eq i8 %207, 0
  %209 = lshr i32 %206, 24
  %210 = select i1 %208, i32 %209, i32 %206
  %211 = and i32 %210, 127
  %212 = getelementptr i32, ptr %0, i32 %211
  %213 = select i1 %208, i32 134243193, i32 2036531208
  store i32 %213, ptr %212, align 4
  %214 = load i32, ptr %0, align 4
  %215 = load i8, ptr @caam_little_end, align 1, !range !8
  %216 = icmp eq i8 %215, 0
  %217 = tail call i32 @llvm.bswap.i32(i32 %214) #4
  %218 = select i1 %216, i32 %217, i32 %214
  %219 = add i32 %218, 1
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %221 = select i1 %216, i32 %220, i32 %219
  store i32 %221, ptr %0, align 4
  %222 = load i8, ptr @caam_little_end, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  %224 = lshr i32 %221, 24
  %225 = select i1 %223, i32 %224, i32 %221
  %226 = and i32 %225, 127
  %227 = getelementptr i32, ptr %0, i32 %226
  %228 = select i1 %223, i32 12393, i32 1764753408
  store i32 %228, ptr %227, align 4
  %229 = load i32, ptr %0, align 4
  %230 = load i8, ptr @caam_little_end, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  %232 = tail call i32 @llvm.bswap.i32(i32 %229) #4
  %233 = select i1 %231, i32 %232, i32 %229
  %234 = add i32 %233, 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %236 = select i1 %231, i32 %235, i32 %234
  store i32 %236, ptr %0, align 4
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = lshr i32 %236, 24
  %240 = select i1 %238, i32 %239, i32 %236
  %241 = and i32 %240, 127
  %242 = getelementptr i32, ptr %0, i32 %241
  %243 = select i1 %238, i32 5935, i32 790036480
  store i32 %243, ptr %242, align 4
  %244 = load i32, ptr %0, align 4
  %245 = load i8, ptr @caam_little_end, align 1, !range !8
  %246 = icmp eq i8 %245, 0
  %247 = tail call i32 @llvm.bswap.i32(i32 %244) #4
  %248 = select i1 %246, i32 %247, i32 %244
  %249 = add i32 %248, 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %251 = select i1 %246, i32 %250, i32 %249
  store i32 %251, ptr %0, align 4
  %252 = load i8, ptr @caam_little_end, align 1, !range !8
  %253 = icmp eq i8 %252, 0
  %254 = lshr i32 %251, 24
  %255 = select i1 %253, i32 %254, i32 %251
  %256 = and i32 %255, 127
  %257 = getelementptr i32, ptr %0, i32 %256
  %258 = select i1 %253, i32 160, i32 -1610612736
  store i32 %258, ptr %257, align 4
  %259 = load i32, ptr %0, align 4
  %260 = load i8, ptr @caam_little_end, align 1, !range !8
  %261 = icmp eq i8 %260, 0
  %262 = tail call i32 @llvm.bswap.i32(i32 %259) #4
  %263 = select i1 %261, i32 %262, i32 %259
  %264 = add i32 %263, 1
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #4
  %266 = select i1 %261, i32 %265, i32 %264
  store i32 %266, ptr %0, align 4
  %267 = load i32, ptr %257, align 4
  %268 = load i8, ptr @caam_little_end, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  %270 = tail call i32 @llvm.bswap.i32(i32 %267) #4
  %271 = select i1 %269, i32 %270, i32 %267
  %272 = lshr i32 %266, 24
  %273 = select i1 %269, i32 %272, i32 %266
  %274 = and i32 %273, 127
  %275 = sub nsw i32 %274, %256
  %276 = or i32 %275, %271
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #4
  %278 = select i1 %269, i32 %277, i32 %276
  store i32 %278, ptr %257, align 4
  %279 = load i32, ptr %197, align 4
  %280 = load i8, ptr @caam_little_end, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  %282 = tail call i32 @llvm.bswap.i32(i32 %279) #4
  %283 = select i1 %281, i32 %282, i32 %279
  %284 = and i32 %283, -65281
  %285 = load i32, ptr %0, align 4
  %286 = lshr i32 %285, 24
  %287 = select i1 %281, i32 %286, i32 %285
  %288 = shl i32 %287, 10
  %289 = and i32 %288, 64512
  %290 = or i32 %289, %284
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #4
  %292 = select i1 %281, i32 %291, i32 %290
  store i32 %292, ptr %197, align 4
  %293 = load i32, ptr %212, align 4
  %294 = load i8, ptr @caam_little_end, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %297 = select i1 %295, i32 %296, i32 %293
  %298 = and i32 %297, -65281
  %299 = load i32, ptr %0, align 4
  %300 = lshr i32 %299, 24
  %301 = select i1 %295, i32 %300, i32 %299
  %302 = shl i32 %301, 10
  %303 = and i32 %302, 64512
  %304 = or i32 %303, %298
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #4
  %306 = select i1 %295, i32 %305, i32 %304
  store i32 %306, ptr %212, align 4
  %307 = load i32, ptr %0, align 4
  %308 = load i8, ptr @caam_little_end, align 1, !range !8
  %309 = icmp eq i8 %308, 0
  %310 = lshr i32 %307, 24
  %311 = select i1 %309, i32 %310, i32 %307
  %312 = and i32 %311, 127
  %313 = getelementptr i32, ptr %0, i32 %312
  %314 = select i1 %309, i32 558614, i32 377882624
  store i32 %314, ptr %313, align 4
  %315 = load i32, ptr %0, align 4
  %316 = load i8, ptr @caam_little_end, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = tail call i32 @llvm.bswap.i32(i32 %315) #4
  %319 = select i1 %317, i32 %318, i32 %315
  %320 = add i32 %319, 1
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #4
  %322 = select i1 %317, i32 %321, i32 %320
  store i32 %322, ptr %0, align 4
  %323 = load i8, ptr @caam_little_end, align 1, !range !8
  %324 = icmp eq i8 %323, 0
  %325 = lshr i32 %322, 24
  %326 = select i1 %324, i32 %325, i32 %322
  %327 = and i32 %326, 127
  %328 = getelementptr i32, ptr %0, i32 %327
  %329 = select i1 %324, i32 37498, i32 2056388608
  store i32 %329, ptr %328, align 4
  %330 = load i32, ptr %0, align 4
  %331 = load i8, ptr @caam_little_end, align 1, !range !8
  %332 = icmp eq i8 %331, 0
  %333 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %334 = select i1 %332, i32 %333, i32 %330
  %335 = add i32 %334, 1
  %336 = tail call i32 @llvm.bswap.i32(i32 %335) #4
  %337 = select i1 %332, i32 %336, i32 %335
  store i32 %337, ptr %0, align 4
  %338 = load i8, ptr @caam_little_end, align 1, !range !8
  %339 = icmp eq i8 %338, 0
  %340 = lshr i32 %337, 24
  %341 = select i1 %339, i32 %340, i32 %337
  %342 = and i32 %341, 127
  %343 = getelementptr i32, ptr %0, i32 %342
  %344 = select i1 %339, i32 296470, i32 377881600
  store i32 %344, ptr %343, align 4
  %345 = load i32, ptr %0, align 4
  %346 = load i8, ptr @caam_little_end, align 1, !range !8
  %347 = icmp eq i8 %346, 0
  %348 = tail call i32 @llvm.bswap.i32(i32 %345) #4
  %349 = select i1 %347, i32 %348, i32 %345
  %350 = add i32 %349, 1
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #4
  %352 = select i1 %347, i32 %351, i32 %350
  store i32 %352, ptr %0, align 4
  %353 = or i32 %2, 742129664
  %354 = load i8, ptr @caam_little_end, align 1, !range !8
  %355 = icmp eq i8 %354, 0
  %356 = lshr i32 %352, 24
  %357 = select i1 %355, i32 %356, i32 %352
  %358 = and i32 %357, 127
  %359 = getelementptr i32, ptr %0, i32 %358
  %360 = tail call i32 @llvm.bswap.i32(i32 %353) #4
  %361 = select i1 %355, i32 %360, i32 %353
  store i32 %361, ptr %359, align 4
  %362 = load i32, ptr %0, align 4
  %363 = load i8, ptr @caam_little_end, align 1, !range !8
  %364 = icmp eq i8 %363, 0
  %365 = tail call i32 @llvm.bswap.i32(i32 %362) #4
  %366 = select i1 %364, i32 %365, i32 %362
  %367 = add i32 %366, 1
  %368 = tail call i32 @llvm.bswap.i32(i32 %367) #4
  %369 = select i1 %364, i32 %368, i32 %367
  store i32 %369, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_aead_encap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, i32 noundef %7, i1 noundef zeroext %8, i32 noundef %9) #0 {
  tail call fastcc void @init_sh_desc_key_aead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %9)
  %11 = load i32, ptr %2, align 4
  %12 = or i32 %11, -2147483635
  %13 = load i32, ptr %0, align 4
  %14 = load i8, ptr @caam_little_end, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = lshr i32 %13, 24
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = and i32 %17, 127
  %19 = getelementptr i32, ptr %0, i32 %18
  %20 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %21 = select i1 %15, i32 %20, i32 %12
  store i32 %21, ptr %19, align 4
  %22 = load i32, ptr %0, align 4
  %23 = load i8, ptr @caam_little_end, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = add i32 %26, 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %29 = select i1 %24, i32 %28, i32 %27
  store i32 %29, ptr %0, align 4
  br i1 %8, label %30, label %93

30:                                               ; preds = %10
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %29, 24
  %34 = select i1 %32, i32 %33, i32 %29
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = select i1 %32, i32 67373854, i32 504038404
  store i32 %37, ptr %36, align 4
  %38 = load i32, ptr %0, align 4
  %39 = load i8, ptr @caam_little_end, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %42 = select i1 %40, i32 %41, i32 %38
  %43 = add i32 %42, 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #4
  %45 = select i1 %40, i32 %44, i32 %43
  store i32 %45, ptr %0, align 4
  %46 = load i8, ptr @caam_little_end, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = lshr i32 %45, 24
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = and i32 %49, 127
  %51 = getelementptr i32, ptr %0, i32 %50
  %52 = select i1 %47, i32 2031777, i32 -1593827584
  store i32 %52, ptr %51, align 4
  %53 = load i32, ptr %0, align 4
  %54 = load i8, ptr @caam_little_end, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  %57 = select i1 %55, i32 %56, i32 %53
  %58 = add i32 %57, 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #4
  %60 = select i1 %55, i32 %59, i32 %58
  store i32 %60, ptr %0, align 4
  %61 = load i32, ptr %51, align 4
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #4
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = lshr i32 %60, 24
  %67 = select i1 %63, i32 %66, i32 %60
  %68 = and i32 %67, 127
  %69 = sub nsw i32 %68, %50
  %70 = or i32 %69, %65
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #4
  %72 = select i1 %63, i32 %71, i32 %70
  store i32 %72, ptr %51, align 4
  %73 = shl i32 %7, 8
  %74 = or i32 %73, %3
  %75 = or i32 %74, 438304768
  %76 = load i32, ptr %0, align 4
  %77 = load i8, ptr @caam_little_end, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = lshr i32 %76, 24
  %80 = select i1 %78, i32 %79, i32 %76
  %81 = and i32 %80, 127
  %82 = getelementptr i32, ptr %0, i32 %81
  %83 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %84 = select i1 %78, i32 %83, i32 %75
  store i32 %84, ptr %82, align 4
  %85 = load i32, ptr %0, align 4
  %86 = load i8, ptr @caam_little_end, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #4
  %89 = select i1 %87, i32 %88, i32 %85
  %90 = add i32 %89, 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #4
  %92 = select i1 %87, i32 %91, i32 %90
  store i32 %92, ptr %0, align 4
  br label %95

93:                                               ; preds = %10
  %94 = icmp slt i32 %9, 3
  br i1 %94, label %95, label %127

95:                                               ; preds = %93, %30
  %96 = phi i32 [ %92, %30 ], [ %29, %93 ]
  %97 = load i8, ptr @caam_little_end, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  %99 = lshr i32 %96, 24
  %100 = select i1 %98, i32 %99, i32 %96
  %101 = and i32 %100, 127
  %102 = getelementptr i32, ptr %0, i32 %101
  %103 = select i1 %98, i32 70913192, i32 -1475593724
  store i32 %103, ptr %102, align 4
  %104 = load i32, ptr %0, align 4
  %105 = load i8, ptr @caam_little_end, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  %107 = tail call i32 @llvm.bswap.i32(i32 %104) #4
  %108 = select i1 %106, i32 %107, i32 %104
  %109 = add i32 %108, 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %111 = select i1 %106, i32 %110, i32 %109
  store i32 %111, ptr %0, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = lshr i32 %111, 24
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = and i32 %115, 127
  %117 = getelementptr i32, ptr %0, i32 %116
  %118 = select i1 %113, i32 70978728, i32 -1475593468
  store i32 %118, ptr %117, align 4
  %119 = load i32, ptr %0, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #4
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = add i32 %123, 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %126 = select i1 %121, i32 %125, i32 %124
  br label %158

127:                                              ; preds = %93
  %128 = load i8, ptr @caam_little_end, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = lshr i32 %29, 24
  %131 = select i1 %129, i32 %130, i32 %29
  %132 = and i32 %131, 127
  %133 = getelementptr i32, ptr %0, i32 %132
  %134 = select i1 %129, i32 75107496, i32 -1475577340
  store i32 %134, ptr %133, align 4
  %135 = load i32, ptr %0, align 4
  %136 = load i8, ptr @caam_little_end, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  %138 = tail call i32 @llvm.bswap.i32(i32 %135) #4
  %139 = select i1 %137, i32 %138, i32 %135
  %140 = add i32 %139, 1
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #4
  %142 = select i1 %137, i32 %141, i32 %140
  store i32 %142, ptr %0, align 4
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %142, 24
  %146 = select i1 %144, i32 %145, i32 %142
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 75173032, i32 -1475577084
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  br label %158

158:                                              ; preds = %127, %95
  %159 = phi i32 [ %157, %127 ], [ %126, %95 ]
  store i32 %159, ptr %0, align 4
  %160 = load i8, ptr @caam_little_end, align 1, !range !8
  %161 = icmp eq i8 %160, 0
  %162 = lshr i32 %159, 24
  %163 = select i1 %161, i32 %162, i32 %159
  %164 = and i32 %163, 127
  %165 = getelementptr i32, ptr %0, i32 %164
  %166 = select i1 %161, i32 16233, i32 1765736448
  store i32 %166, ptr %165, align 4
  %167 = load i32, ptr %0, align 4
  %168 = load i8, ptr @caam_little_end, align 1, !range !8
  %169 = icmp eq i8 %168, 0
  %170 = tail call i32 @llvm.bswap.i32(i32 %167) #4
  %171 = select i1 %169, i32 %170, i32 %167
  %172 = add i32 %171, 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #4
  %174 = select i1 %169, i32 %173, i32 %172
  store i32 %174, ptr %0, align 4
  %175 = load i8, ptr @caam_little_end, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = lshr i32 %174, 24
  %178 = select i1 %176, i32 %177, i32 %174
  %179 = and i32 %178, 127
  %180 = getelementptr i32, ptr %0, i32 %179
  %181 = select i1 %176, i32 4141, i32 756023296
  store i32 %181, ptr %180, align 4
  %182 = load i32, ptr %0, align 4
  %183 = load i8, ptr @caam_little_end, align 1, !range !8
  %184 = icmp eq i8 %183, 0
  %185 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %186 = select i1 %184, i32 %185, i32 %182
  %187 = add i32 %186, 1
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #4
  %189 = select i1 %184, i32 %188, i32 %187
  store i32 %189, ptr %0, align 4
  br i1 %5, label %190, label %224

190:                                              ; preds = %158
  %191 = shl i32 %7, 8
  %192 = add i32 %191, 2048
  %193 = or i32 %192, 312475652
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = lshr i32 %189, 24
  %197 = select i1 %195, i32 %196, i32 %189
  %198 = and i32 %197, 127
  %199 = getelementptr i32, ptr %0, i32 %198
  %200 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %201 = select i1 %195, i32 %200, i32 %193
  store i32 %201, ptr %199, align 4
  %202 = load i32, ptr %0, align 4
  %203 = load i8, ptr @caam_little_end, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  %205 = tail call i32 @llvm.bswap.i32(i32 %202) #4
  %206 = select i1 %204, i32 %205, i32 %202
  %207 = add i32 %206, 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #4
  %209 = select i1 %204, i32 %208, i32 %207
  store i32 %209, ptr %0, align 4
  %210 = load i8, ptr @caam_little_end, align 1, !range !8
  %211 = icmp eq i8 %210, 0
  %212 = lshr i32 %209, 24
  %213 = select i1 %211, i32 %212, i32 %209
  %214 = and i32 %213, 127
  %215 = getelementptr i32, ptr %0, i32 %214
  store i32 16777216, ptr %215, align 4
  %216 = load i32, ptr %0, align 4
  %217 = load i8, ptr @caam_little_end, align 1, !range !8
  %218 = icmp eq i8 %217, 0
  %219 = tail call i32 @llvm.bswap.i32(i32 %216) #4
  %220 = select i1 %218, i32 %219, i32 %216
  %221 = add i32 %220, 1
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #4
  %223 = select i1 %218, i32 %222, i32 %221
  store i32 %223, ptr %0, align 4
  br label %224

224:                                              ; preds = %190, %158
  %225 = phi i32 [ %223, %190 ], [ %189, %158 ]
  %226 = load i32, ptr %1, align 4
  %227 = or i32 %226, -2147483635
  %228 = load i8, ptr @caam_little_end, align 1, !range !8
  %229 = icmp eq i8 %228, 0
  %230 = lshr i32 %225, 24
  %231 = select i1 %229, i32 %230, i32 %225
  %232 = and i32 %231, 127
  %233 = getelementptr i32, ptr %0, i32 %232
  %234 = tail call i32 @llvm.bswap.i32(i32 %227) #4
  %235 = select i1 %229, i32 %234, i32 %227
  store i32 %235, ptr %233, align 4
  %236 = load i32, ptr %0, align 4
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = tail call i32 @llvm.bswap.i32(i32 %236) #4
  %240 = select i1 %238, i32 %239, i32 %236
  %241 = add i32 %240, 1
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #4
  %243 = select i1 %238, i32 %242, i32 %241
  store i32 %243, ptr %0, align 4
  %244 = load i8, ptr @caam_little_end, align 1, !range !8
  %245 = icmp eq i8 %244, 0
  %246 = lshr i32 %243, 24
  %247 = select i1 %245, i32 %246, i32 %243
  %248 = and i32 %247, 127
  %249 = getelementptr i32, ptr %0, i32 %248
  %250 = select i1 %245, i32 67766440, i32 -1475868156
  store i32 %250, ptr %249, align 4
  %251 = load i32, ptr %0, align 4
  %252 = load i8, ptr @caam_little_end, align 1, !range !8
  %253 = icmp eq i8 %252, 0
  %254 = tail call i32 @llvm.bswap.i32(i32 %251) #4
  %255 = select i1 %253, i32 %254, i32 %251
  %256 = add i32 %255, 1
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #4
  %258 = select i1 %253, i32 %257, i32 %256
  store i32 %258, ptr %0, align 4
  %259 = load i8, ptr @caam_little_end, align 1, !range !8
  %260 = icmp eq i8 %259, 0
  %261 = lshr i32 %258, 24
  %262 = select i1 %260, i32 %261, i32 %258
  %263 = and i32 %262, 127
  %264 = getelementptr i32, ptr %0, i32 %263
  %265 = select i1 %260, i32 67831976, i32 -1475867900
  store i32 %265, ptr %264, align 4
  %266 = load i32, ptr %0, align 4
  %267 = load i8, ptr @caam_little_end, align 1, !range !8
  %268 = icmp eq i8 %267, 0
  %269 = tail call i32 @llvm.bswap.i32(i32 %266) #4
  %270 = select i1 %268, i32 %269, i32 %266
  %271 = add i32 %270, 1
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #4
  %273 = select i1 %268, i32 %272, i32 %271
  store i32 %273, ptr %0, align 4
  %274 = load i8, ptr @caam_little_end, align 1, !range !8
  %275 = icmp eq i8 %274, 0
  %276 = lshr i32 %273, 24
  %277 = select i1 %275, i32 %276, i32 %273
  %278 = and i32 %277, 127
  %279 = getelementptr i32, ptr %0, i32 %278
  %280 = select i1 %275, i32 12393, i32 1764753408
  store i32 %280, ptr %279, align 4
  %281 = load i32, ptr %0, align 4
  %282 = load i8, ptr @caam_little_end, align 1, !range !8
  %283 = icmp eq i8 %282, 0
  %284 = tail call i32 @llvm.bswap.i32(i32 %281) #4
  %285 = select i1 %283, i32 %284, i32 %281
  %286 = add i32 %285, 1
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #4
  %288 = select i1 %283, i32 %287, i32 %286
  store i32 %288, ptr %0, align 4
  %289 = load i8, ptr @caam_little_end, align 1, !range !8
  %290 = icmp eq i8 %289, 0
  %291 = lshr i32 %288, 24
  %292 = select i1 %290, i32 %291, i32 %288
  %293 = and i32 %292, 127
  %294 = getelementptr i32, ptr %0, i32 %293
  %295 = select i1 %290, i32 7727, i32 790495232
  store i32 %295, ptr %294, align 4
  %296 = load i32, ptr %0, align 4
  %297 = load i8, ptr @caam_little_end, align 1, !range !8
  %298 = icmp eq i8 %297, 0
  %299 = tail call i32 @llvm.bswap.i32(i32 %296) #4
  %300 = select i1 %298, i32 %299, i32 %296
  %301 = add i32 %300, 1
  %302 = tail call i32 @llvm.bswap.i32(i32 %301) #4
  %303 = select i1 %298, i32 %302, i32 %301
  store i32 %303, ptr %0, align 4
  %304 = or i32 %4, 1545601024
  %305 = load i8, ptr @caam_little_end, align 1, !range !8
  %306 = icmp eq i8 %305, 0
  %307 = lshr i32 %303, 24
  %308 = select i1 %306, i32 %307, i32 %303
  %309 = and i32 %308, 127
  %310 = getelementptr i32, ptr %0, i32 %309
  %311 = tail call i32 @llvm.bswap.i32(i32 %304) #4
  %312 = select i1 %306, i32 %311, i32 %304
  store i32 %312, ptr %310, align 4
  %313 = load i32, ptr %0, align 4
  %314 = load i8, ptr @caam_little_end, align 1, !range !8
  %315 = icmp eq i8 %314, 0
  %316 = tail call i32 @llvm.bswap.i32(i32 %313) #4
  %317 = select i1 %315, i32 %316, i32 %313
  %318 = add i32 %317, 1
  %319 = tail call i32 @llvm.bswap.i32(i32 %318) #4
  %320 = select i1 %315, i32 %319, i32 %318
  store i32 %320, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @init_sh_desc_key_aead(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 17989816, i32 -1199566335
  store i32 %11, ptr %0, align 4
  %12 = load i8, ptr @caam_little_end, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %11, 24
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = and i32 %15, 57
  %17 = getelementptr i32, ptr %0, i32 %16
  %18 = select i1 %13, i32 4194465, i32 -1593819136
  store i32 %18, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = load i8, ptr @caam_little_end, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %23 = select i1 %21, i32 %22, i32 %19
  %24 = add i32 %23, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %26 = select i1 %21, i32 %25, i32 %24
  store i32 %26, ptr %0, align 4
  %27 = add i32 %8, -4
  %28 = select i1 %3, i32 %27, i32 %8
  %29 = icmp slt i32 %5, 6
  br i1 %29, label %30, label %118

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 5
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 79888384
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = lshr i32 %26, 24
  %45 = select i1 %43, i32 %44, i32 %26
  %46 = and i32 %45, 127
  %47 = getelementptr i32, ptr %0, i32 %46
  %48 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %49 = select i1 %43, i32 %48, i32 %41
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr %0, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #4
  %54 = select i1 %52, i32 %53, i32 %50
  %55 = add i32 %54, 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %57 = select i1 %52, i32 %56, i32 %55
  store i32 %57, ptr %0, align 4
  %58 = icmp eq i32 %38, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %34
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = lshr i32 %57, 24
  %63 = select i1 %61, i32 %62, i32 %57
  %64 = and i32 %63, 127
  %65 = getelementptr i32, ptr %0, i32 %64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 1 %36, i32 %38, i1 false) #4
  %66 = load i32, ptr %0, align 4
  br label %67

67:                                               ; preds = %59, %34
  %68 = phi i32 [ %57, %34 ], [ %66, %59 ]
  %69 = load i8, ptr @caam_little_end, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #4
  %72 = select i1 %70, i32 %71, i32 %68
  %73 = add i32 %38, 3
  %74 = lshr i32 %73, 2
  %75 = add i32 %72, %74
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %77 = select i1 %70, i32 %76, i32 %75
  store i32 %77, ptr %0, align 4
  br label %119

78:                                               ; preds = %30
  %79 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.alginfo, ptr %2, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 71499776
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = lshr i32 %26, 24
  %87 = select i1 %85, i32 %86, i32 %26
  %88 = and i32 %87, 127
  %89 = getelementptr i32, ptr %0, i32 %88
  %90 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %91 = select i1 %85, i32 %90, i32 %83
  store i32 %91, ptr %89, align 4
  %92 = load i32, ptr %0, align 4
  %93 = load i8, ptr @caam_little_end, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = tail call i32 @llvm.bswap.i32(i32 %92) #4
  %96 = select i1 %94, i32 %95, i32 %92
  %97 = add i32 %96, 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %99 = select i1 %94, i32 %98, i32 %97
  store i32 %99, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = lshr i32 %99, 24
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = and i32 %103, 127
  %105 = getelementptr i32, ptr %0, i32 %104
  %106 = tail call i32 @llvm.bswap.i32(i32 %80) #4
  %107 = select i1 %101, i32 %106, i32 %80
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %0, align 4
  %109 = load i8, ptr @caam_little_end, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %108) #4
  %112 = select i1 %110, i32 %111, i32 %108
  %113 = load i32, ptr @caam_ptr_sz, align 4
  %114 = lshr i32 %113, 2
  %115 = add i32 %112, %114
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #4
  %117 = select i1 %110, i32 %116, i32 %115
  store i32 %117, ptr %0, align 4
  br label %119

118:                                              ; preds = %6
  tail call fastcc void @append_proto_dkp(ptr noundef %0, ptr noundef %2)
  br label %119

119:                                              ; preds = %118, %78, %67
  %120 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %121 = load i8, ptr %120, align 4, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = or i32 %28, 41943040
  %127 = load i32, ptr %0, align 4
  %128 = load i8, ptr @caam_little_end, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = lshr i32 %127, 24
  %131 = select i1 %129, i32 %130, i32 %127
  %132 = and i32 %131, 127
  %133 = getelementptr i32, ptr %0, i32 %132
  %134 = tail call i32 @llvm.bswap.i32(i32 %126) #4
  %135 = select i1 %129, i32 %134, i32 %126
  store i32 %135, ptr %133, align 4
  %136 = load i32, ptr %0, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #4
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #4
  %143 = select i1 %138, i32 %142, i32 %141
  store i32 %143, ptr %0, align 4
  %144 = icmp eq i32 %28, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %123
  %146 = load i8, ptr @caam_little_end, align 1, !range !8
  %147 = icmp eq i8 %146, 0
  %148 = lshr i32 %143, 24
  %149 = select i1 %147, i32 %148, i32 %143
  %150 = and i32 %149, 127
  %151 = getelementptr i32, ptr %0, i32 %150
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %151, ptr align 1 %125, i32 %28, i1 false) #4
  %152 = load i32, ptr %0, align 4
  br label %153

153:                                              ; preds = %145, %123
  %154 = phi i32 [ %143, %123 ], [ %152, %145 ]
  %155 = load i8, ptr @caam_little_end, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  %157 = tail call i32 @llvm.bswap.i32(i32 %154) #4
  %158 = select i1 %156, i32 %157, i32 %154
  %159 = add i32 %28, 3
  %160 = lshr i32 %159, 2
  %161 = add i32 %158, %160
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #4
  %163 = select i1 %156, i32 %162, i32 %161
  br label %203

164:                                              ; preds = %119
  %165 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = or i32 %28, 33554432
  %168 = load i32, ptr %0, align 4
  %169 = load i8, ptr @caam_little_end, align 1, !range !8
  %170 = icmp eq i8 %169, 0
  %171 = lshr i32 %168, 24
  %172 = select i1 %170, i32 %171, i32 %168
  %173 = and i32 %172, 127
  %174 = getelementptr i32, ptr %0, i32 %173
  %175 = tail call i32 @llvm.bswap.i32(i32 %167) #4
  %176 = select i1 %170, i32 %175, i32 %167
  store i32 %176, ptr %174, align 4
  %177 = load i32, ptr %0, align 4
  %178 = load i8, ptr @caam_little_end, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = tail call i32 @llvm.bswap.i32(i32 %177) #4
  %181 = select i1 %179, i32 %180, i32 %177
  %182 = add i32 %181, 1
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %179, i32 %183, i32 %182
  store i32 %184, ptr %0, align 4
  %185 = load i8, ptr @caam_little_end, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  %187 = lshr i32 %184, 24
  %188 = select i1 %186, i32 %187, i32 %184
  %189 = and i32 %188, 127
  %190 = getelementptr i32, ptr %0, i32 %189
  %191 = tail call i32 @llvm.bswap.i32(i32 %166) #4
  %192 = select i1 %186, i32 %191, i32 %166
  store i32 %192, ptr %190, align 4
  %193 = load i32, ptr %0, align 4
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %197 = select i1 %195, i32 %196, i32 %193
  %198 = load i32, ptr @caam_ptr_sz, align 4
  %199 = lshr i32 %198, 2
  %200 = add i32 %197, %199
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #4
  %202 = select i1 %195, i32 %201, i32 %200
  br label %203

203:                                              ; preds = %164, %153
  %204 = phi i32 [ %163, %153 ], [ %202, %164 ]
  store i32 %204, ptr %0, align 4
  br i1 %3, label %205, label %251

205:                                              ; preds = %203
  %206 = load i8, ptr @caam_little_end, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = lshr i32 %204, 24
  %209 = select i1 %207, i32 %208, i32 %204
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %0, i32 %210
  %212 = select i1 %207, i32 67173904, i32 285081604
  store i32 %212, ptr %211, align 4
  %213 = load i32, ptr %0, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #4
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = add i32 %217, 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %220 = select i1 %215, i32 %219, i32 %218
  store i32 %220, ptr %0, align 4
  %221 = load i8, ptr @caam_little_end, align 1, !range !8
  %222 = icmp eq i8 %221, 0
  %223 = lshr i32 %220, 24
  %224 = select i1 %222, i32 %223, i32 %220
  %225 = and i32 %224, 127
  %226 = getelementptr i32, ptr %0, i32 %225
  %227 = load i32, ptr %4, align 1
  store i32 %227, ptr %226, align 4
  %228 = load i32, ptr %0, align 4
  %229 = load i8, ptr @caam_little_end, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #4
  %232 = select i1 %230, i32 %231, i32 %228
  %233 = add i32 %232, 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #4
  %235 = select i1 %230, i32 %234, i32 %233
  store i32 %235, ptr %0, align 4
  %236 = load i8, ptr @caam_little_end, align 1, !range !8
  %237 = icmp eq i8 %236, 0
  %238 = lshr i32 %235, 24
  %239 = select i1 %237, i32 %238, i32 %235
  %240 = and i32 %239, 127
  %241 = getelementptr i32, ptr %0, i32 %240
  %242 = select i1 %237, i32 68165752, i32 2015367172
  store i32 %242, ptr %241, align 4
  %243 = load i32, ptr %0, align 4
  %244 = load i8, ptr @caam_little_end, align 1, !range !8
  %245 = icmp eq i8 %244, 0
  %246 = tail call i32 @llvm.bswap.i32(i32 %243) #4
  %247 = select i1 %245, i32 %246, i32 %243
  %248 = add i32 %247, 1
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #4
  %250 = select i1 %245, i32 %249, i32 %248
  store i32 %250, ptr %0, align 4
  br label %251

251:                                              ; preds = %205, %203
  %252 = phi i32 [ %250, %205 ], [ %204, %203 ]
  %253 = load i32, ptr %17, align 4
  %254 = load i8, ptr @caam_little_end, align 1, !range !8
  %255 = icmp eq i8 %254, 0
  %256 = tail call i32 @llvm.bswap.i32(i32 %253) #4
  %257 = select i1 %255, i32 %256, i32 %253
  %258 = lshr i32 %252, 24
  %259 = select i1 %255, i32 %258, i32 %252
  %260 = and i32 %259, 127
  %261 = sub nsw i32 %260, %16
  %262 = or i32 %261, %257
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #4
  %264 = select i1 %255, i32 %263, i32 %262
  store i32 %264, ptr %17, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_aead_decap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nocapture noundef readonly %7, i32 noundef %8, i1 noundef zeroext %9, i32 noundef %10) #0 {
  tail call fastcc void @init_sh_desc_key_aead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %6, ptr noundef %7, i32 noundef %10)
  %12 = load i32, ptr %2, align 4
  %13 = or i32 %12, -2147483634
  %14 = load i32, ptr %0, align 4
  %15 = load i8, ptr @caam_little_end, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  %17 = lshr i32 %14, 24
  %18 = select i1 %16, i32 %17, i32 %14
  %19 = and i32 %18, 127
  %20 = getelementptr i32, ptr %0, i32 %19
  %21 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %22 = select i1 %16, i32 %21, i32 %13
  store i32 %22, ptr %20, align 4
  %23 = load i32, ptr %0, align 4
  %24 = load i8, ptr @caam_little_end, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  %27 = select i1 %25, i32 %26, i32 %23
  %28 = add i32 %27, 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  %30 = select i1 %25, i32 %29, i32 %28
  store i32 %30, ptr %0, align 4
  br i1 %9, label %31, label %97

31:                                               ; preds = %11
  %32 = load i8, ptr @caam_little_end, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = lshr i32 %30, 24
  %35 = select i1 %33, i32 %34, i32 %30
  %36 = and i32 %35, 127
  %37 = getelementptr i32, ptr %0, i32 %36
  %38 = select i1 %33, i32 67373854, i32 504038404
  store i32 %38, ptr %37, align 4
  %39 = load i32, ptr %0, align 4
  %40 = load i8, ptr @caam_little_end, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = add i32 %43, 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  %46 = select i1 %41, i32 %45, i32 %44
  store i32 %46, ptr %0, align 4
  %47 = load i8, ptr @caam_little_end, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = lshr i32 %46, 24
  %50 = select i1 %48, i32 %49, i32 %46
  %51 = and i32 %50, 127
  %52 = getelementptr i32, ptr %0, i32 %51
  %53 = select i1 %48, i32 2031777, i32 -1593827584
  store i32 %53, ptr %52, align 4
  %54 = load i32, ptr %0, align 4
  %55 = load i8, ptr @caam_little_end, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #4
  %58 = select i1 %56, i32 %57, i32 %54
  %59 = add i32 %58, 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %61 = select i1 %56, i32 %60, i32 %59
  store i32 %61, ptr %0, align 4
  %62 = load i32, ptr %52, align 4
  %63 = load i8, ptr @caam_little_end, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #4
  %66 = select i1 %64, i32 %65, i32 %62
  %67 = lshr i32 %61, 24
  %68 = select i1 %64, i32 %67, i32 %61
  %69 = and i32 %68, 127
  %70 = sub nsw i32 %69, %51
  %71 = or i32 %70, %66
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %73 = select i1 %64, i32 %72, i32 %71
  store i32 %73, ptr %52, align 4
  br i1 %5, label %74, label %76

74:                                               ; preds = %31
  %75 = load i32, ptr %0, align 4
  br label %99

76:                                               ; preds = %31
  %77 = shl i32 %8, 8
  %78 = or i32 %77, %3
  %79 = or i32 %78, 438304768
  %80 = load i32, ptr %0, align 4
  %81 = load i8, ptr @caam_little_end, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = lshr i32 %80, 24
  %84 = select i1 %82, i32 %83, i32 %80
  %85 = and i32 %84, 127
  %86 = getelementptr i32, ptr %0, i32 %85
  %87 = tail call i32 @llvm.bswap.i32(i32 %79) #4
  %88 = select i1 %82, i32 %87, i32 %79
  store i32 %88, ptr %86, align 4
  %89 = load i32, ptr %0, align 4
  %90 = load i8, ptr @caam_little_end, align 1, !range !8
  %91 = icmp eq i8 %90, 0
  %92 = tail call i32 @llvm.bswap.i32(i32 %89) #4
  %93 = select i1 %91, i32 %92, i32 %89
  %94 = add i32 %93, 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #4
  %96 = select i1 %91, i32 %95, i32 %94
  store i32 %96, ptr %0, align 4
  br label %99

97:                                               ; preds = %11
  %98 = icmp slt i32 %10, 3
  br i1 %98, label %99, label %218

99:                                               ; preds = %97, %76, %74
  %100 = phi i32 [ %75, %74 ], [ %96, %76 ], [ %30, %97 ]
  %101 = load i8, ptr @caam_little_end, align 1, !range !8
  %102 = icmp eq i8 %101, 0
  %103 = lshr i32 %100, 24
  %104 = select i1 %102, i32 %103, i32 %100
  %105 = and i32 %104, 127
  %106 = getelementptr i32, ptr %0, i32 %105
  %107 = select i1 %102, i32 70913192, i32 -1475593724
  store i32 %107, ptr %106, align 4
  %108 = load i32, ptr %0, align 4
  %109 = load i8, ptr @caam_little_end, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %108) #4
  %112 = select i1 %110, i32 %111, i32 %108
  %113 = add i32 %112, 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #4
  %115 = select i1 %110, i32 %114, i32 %113
  store i32 %115, ptr %0, align 4
  %116 = load i8, ptr @caam_little_end, align 1, !range !8
  %117 = icmp eq i8 %116, 0
  %118 = lshr i32 %115, 24
  %119 = select i1 %117, i32 %118, i32 %115
  %120 = and i32 %119, 127
  %121 = getelementptr i32, ptr %0, i32 %120
  br i1 %5, label %122, label %178

122:                                              ; preds = %99
  %123 = select i1 %117, i32 72025000, i32 -1476179196
  store i32 %123, ptr %121, align 4
  %124 = load i32, ptr %0, align 4
  %125 = load i8, ptr @caam_little_end, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %128 = select i1 %126, i32 %127, i32 %124
  %129 = add i32 %128, 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #4
  %131 = select i1 %126, i32 %130, i32 %129
  store i32 %131, ptr %0, align 4
  %132 = load i8, ptr @caam_little_end, align 1, !range !8
  %133 = icmp eq i8 %132, 0
  %134 = lshr i32 %131, 24
  %135 = select i1 %133, i32 %134, i32 %131
  %136 = and i32 %135, 127
  %137 = getelementptr i32, ptr %0, i32 %136
  %138 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %139 = select i1 %133, i32 %138, i32 %3
  store i32 %139, ptr %137, align 4
  %140 = load i32, ptr %0, align 4
  %141 = load i8, ptr @caam_little_end, align 1, !range !8
  %142 = icmp eq i8 %141, 0
  %143 = tail call i32 @llvm.bswap.i32(i32 %140) #4
  %144 = select i1 %142, i32 %143, i32 %140
  %145 = add i32 %144, 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #4
  %147 = select i1 %142, i32 %146, i32 %145
  store i32 %147, ptr %0, align 4
  %148 = load i8, ptr @caam_little_end, align 1, !range !8
  %149 = icmp eq i8 %148, 0
  %150 = lshr i32 %147, 24
  %151 = select i1 %149, i32 %150, i32 %147
  %152 = and i32 %151, 127
  %153 = getelementptr i32, ptr %0, i32 %152
  %154 = select i1 %149, i32 16233, i32 1765736448
  store i32 %154, ptr %153, align 4
  %155 = load i32, ptr %0, align 4
  %156 = load i8, ptr @caam_little_end, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  %158 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %159 = select i1 %157, i32 %158, i32 %155
  %160 = add i32 %159, 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #4
  %162 = select i1 %157, i32 %161, i32 %160
  store i32 %162, ptr %0, align 4
  %163 = load i8, ptr @caam_little_end, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  %165 = lshr i32 %162, 24
  %166 = select i1 %164, i32 %165, i32 %162
  %167 = and i32 %166, 127
  %168 = getelementptr i32, ptr %0, i32 %167
  %169 = select i1 %164, i32 4141, i32 756023296
  store i32 %169, ptr %168, align 4
  %170 = load i32, ptr %0, align 4
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %174 = select i1 %172, i32 %173, i32 %170
  %175 = add i32 %174, 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #4
  %177 = select i1 %172, i32 %176, i32 %175
  br label %336

178:                                              ; preds = %99
  %179 = select i1 %117, i32 70978728, i32 -1475593468
  store i32 %179, ptr %121, align 4
  %180 = load i32, ptr %0, align 4
  %181 = load i8, ptr @caam_little_end, align 1, !range !8
  %182 = icmp eq i8 %181, 0
  %183 = tail call i32 @llvm.bswap.i32(i32 %180) #4
  %184 = select i1 %182, i32 %183, i32 %180
  %185 = add i32 %184, 1
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #4
  %187 = select i1 %182, i32 %186, i32 %185
  store i32 %187, ptr %0, align 4
  %188 = load i8, ptr @caam_little_end, align 1, !range !8
  %189 = icmp eq i8 %188, 0
  %190 = lshr i32 %187, 24
  %191 = select i1 %189, i32 %190, i32 %187
  %192 = and i32 %191, 127
  %193 = getelementptr i32, ptr %0, i32 %192
  %194 = select i1 %189, i32 16233, i32 1765736448
  store i32 %194, ptr %193, align 4
  %195 = load i32, ptr %0, align 4
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = tail call i32 @llvm.bswap.i32(i32 %195) #4
  %199 = select i1 %197, i32 %198, i32 %195
  %200 = add i32 %199, 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #4
  %202 = select i1 %197, i32 %201, i32 %200
  store i32 %202, ptr %0, align 4
  %203 = load i8, ptr @caam_little_end, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  %205 = lshr i32 %202, 24
  %206 = select i1 %204, i32 %205, i32 %202
  %207 = and i32 %206, 127
  %208 = getelementptr i32, ptr %0, i32 %207
  %209 = select i1 %204, i32 4141, i32 756023296
  store i32 %209, ptr %208, align 4
  %210 = load i32, ptr %0, align 4
  %211 = load i8, ptr @caam_little_end, align 1, !range !8
  %212 = icmp eq i8 %211, 0
  %213 = tail call i32 @llvm.bswap.i32(i32 %210) #4
  %214 = select i1 %212, i32 %213, i32 %210
  %215 = add i32 %214, 1
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #4
  %217 = select i1 %212, i32 %216, i32 %215
  br label %374

218:                                              ; preds = %97
  %219 = load i8, ptr @caam_little_end, align 1, !range !8
  %220 = icmp eq i8 %219, 0
  %221 = lshr i32 %30, 24
  %222 = select i1 %220, i32 %221, i32 %30
  %223 = and i32 %222, 127
  %224 = getelementptr i32, ptr %0, i32 %223
  %225 = select i1 %220, i32 75107496, i32 -1475577340
  store i32 %225, ptr %224, align 4
  %226 = load i32, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = tail call i32 @llvm.bswap.i32(i32 %226) #4
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = add i32 %230, 1
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #4
  %233 = select i1 %228, i32 %232, i32 %231
  store i32 %233, ptr %0, align 4
  %234 = load i8, ptr @caam_little_end, align 1, !range !8
  %235 = icmp eq i8 %234, 0
  %236 = lshr i32 %233, 24
  %237 = select i1 %235, i32 %236, i32 %233
  %238 = and i32 %237, 127
  %239 = getelementptr i32, ptr %0, i32 %238
  br i1 %5, label %240, label %296

240:                                              ; preds = %218
  %241 = select i1 %235, i32 72026024, i32 -1475917052
  store i32 %241, ptr %239, align 4
  %242 = load i32, ptr %0, align 4
  %243 = load i8, ptr @caam_little_end, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  %245 = tail call i32 @llvm.bswap.i32(i32 %242) #4
  %246 = select i1 %244, i32 %245, i32 %242
  %247 = add i32 %246, 1
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #4
  %249 = select i1 %244, i32 %248, i32 %247
  store i32 %249, ptr %0, align 4
  %250 = load i8, ptr @caam_little_end, align 1, !range !8
  %251 = icmp eq i8 %250, 0
  %252 = lshr i32 %249, 24
  %253 = select i1 %251, i32 %252, i32 %249
  %254 = and i32 %253, 127
  %255 = getelementptr i32, ptr %0, i32 %254
  %256 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %257 = select i1 %251, i32 %256, i32 %3
  store i32 %257, ptr %255, align 4
  %258 = load i32, ptr %0, align 4
  %259 = load i8, ptr @caam_little_end, align 1, !range !8
  %260 = icmp eq i8 %259, 0
  %261 = tail call i32 @llvm.bswap.i32(i32 %258) #4
  %262 = select i1 %260, i32 %261, i32 %258
  %263 = add i32 %262, 1
  %264 = tail call i32 @llvm.bswap.i32(i32 %263) #4
  %265 = select i1 %260, i32 %264, i32 %263
  store i32 %265, ptr %0, align 4
  %266 = load i8, ptr @caam_little_end, align 1, !range !8
  %267 = icmp eq i8 %266, 0
  %268 = lshr i32 %265, 24
  %269 = select i1 %267, i32 %268, i32 %265
  %270 = and i32 %269, 127
  %271 = getelementptr i32, ptr %0, i32 %270
  %272 = select i1 %267, i32 16233, i32 1765736448
  store i32 %272, ptr %271, align 4
  %273 = load i32, ptr %0, align 4
  %274 = load i8, ptr @caam_little_end, align 1, !range !8
  %275 = icmp eq i8 %274, 0
  %276 = tail call i32 @llvm.bswap.i32(i32 %273) #4
  %277 = select i1 %275, i32 %276, i32 %273
  %278 = add i32 %277, 1
  %279 = tail call i32 @llvm.bswap.i32(i32 %278) #4
  %280 = select i1 %275, i32 %279, i32 %278
  store i32 %280, ptr %0, align 4
  %281 = load i8, ptr @caam_little_end, align 1, !range !8
  %282 = icmp eq i8 %281, 0
  %283 = lshr i32 %280, 24
  %284 = select i1 %282, i32 %283, i32 %280
  %285 = and i32 %284, 127
  %286 = getelementptr i32, ptr %0, i32 %285
  %287 = select i1 %282, i32 4141, i32 756023296
  store i32 %287, ptr %286, align 4
  %288 = load i32, ptr %0, align 4
  %289 = load i8, ptr @caam_little_end, align 1, !range !8
  %290 = icmp eq i8 %289, 0
  %291 = tail call i32 @llvm.bswap.i32(i32 %288) #4
  %292 = select i1 %290, i32 %291, i32 %288
  %293 = add i32 %292, 1
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %295 = select i1 %290, i32 %294, i32 %293
  br label %336

296:                                              ; preds = %218
  %297 = select i1 %235, i32 75173032, i32 -1475577084
  store i32 %297, ptr %239, align 4
  %298 = load i32, ptr %0, align 4
  %299 = load i8, ptr @caam_little_end, align 1, !range !8
  %300 = icmp eq i8 %299, 0
  %301 = tail call i32 @llvm.bswap.i32(i32 %298) #4
  %302 = select i1 %300, i32 %301, i32 %298
  %303 = add i32 %302, 1
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #4
  %305 = select i1 %300, i32 %304, i32 %303
  store i32 %305, ptr %0, align 4
  %306 = load i8, ptr @caam_little_end, align 1, !range !8
  %307 = icmp eq i8 %306, 0
  %308 = lshr i32 %305, 24
  %309 = select i1 %307, i32 %308, i32 %305
  %310 = and i32 %309, 127
  %311 = getelementptr i32, ptr %0, i32 %310
  %312 = select i1 %307, i32 16233, i32 1765736448
  store i32 %312, ptr %311, align 4
  %313 = load i32, ptr %0, align 4
  %314 = load i8, ptr @caam_little_end, align 1, !range !8
  %315 = icmp eq i8 %314, 0
  %316 = tail call i32 @llvm.bswap.i32(i32 %313) #4
  %317 = select i1 %315, i32 %316, i32 %313
  %318 = add i32 %317, 1
  %319 = tail call i32 @llvm.bswap.i32(i32 %318) #4
  %320 = select i1 %315, i32 %319, i32 %318
  store i32 %320, ptr %0, align 4
  %321 = load i8, ptr @caam_little_end, align 1, !range !8
  %322 = icmp eq i8 %321, 0
  %323 = lshr i32 %320, 24
  %324 = select i1 %322, i32 %323, i32 %320
  %325 = and i32 %324, 127
  %326 = getelementptr i32, ptr %0, i32 %325
  %327 = select i1 %322, i32 4141, i32 756023296
  store i32 %327, ptr %326, align 4
  %328 = load i32, ptr %0, align 4
  %329 = load i8, ptr @caam_little_end, align 1, !range !8
  %330 = icmp eq i8 %329, 0
  %331 = tail call i32 @llvm.bswap.i32(i32 %328) #4
  %332 = select i1 %330, i32 %331, i32 %328
  %333 = add i32 %332, 1
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #4
  %335 = select i1 %330, i32 %334, i32 %333
  br label %374

336:                                              ; preds = %240, %122
  %337 = phi i32 [ %295, %240 ], [ %177, %122 ]
  store i32 %337, ptr %0, align 4
  %338 = shl i32 %8, 8
  %339 = or i32 %338, %3
  %340 = or i32 %339, 438304768
  %341 = load i8, ptr @caam_little_end, align 1, !range !8
  %342 = icmp eq i8 %341, 0
  %343 = lshr i32 %337, 24
  %344 = select i1 %342, i32 %343, i32 %337
  %345 = and i32 %344, 127
  %346 = getelementptr i32, ptr %0, i32 %345
  %347 = tail call i32 @llvm.bswap.i32(i32 %340) #4
  %348 = select i1 %342, i32 %347, i32 %340
  store i32 %348, ptr %346, align 4
  %349 = load i32, ptr %0, align 4
  %350 = load i8, ptr @caam_little_end, align 1, !range !8
  %351 = icmp eq i8 %350, 0
  %352 = tail call i32 @llvm.bswap.i32(i32 %349) #4
  %353 = select i1 %351, i32 %352, i32 %349
  %354 = add i32 %353, 1
  %355 = tail call i32 @llvm.bswap.i32(i32 %354) #4
  %356 = select i1 %351, i32 %355, i32 %354
  store i32 %356, ptr %0, align 4
  %357 = load i8, ptr @caam_little_end, align 1, !range !8
  %358 = icmp eq i8 %357, 0
  %359 = lshr i32 %356, 24
  %360 = select i1 %358, i32 %359, i32 %356
  %361 = and i32 %360, 127
  %362 = getelementptr i32, ptr %0, i32 %361
  %363 = or i32 %339, 2013855744
  %364 = tail call i32 @llvm.bswap.i32(i32 %363) #4
  %365 = select i1 %358, i32 %364, i32 %363
  store i32 %365, ptr %362, align 4
  %366 = load i32, ptr %0, align 4
  %367 = load i8, ptr @caam_little_end, align 1, !range !8
  %368 = icmp eq i8 %367, 0
  %369 = tail call i32 @llvm.bswap.i32(i32 %366) #4
  %370 = select i1 %368, i32 %369, i32 %366
  %371 = add i32 %370, 1
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #4
  %373 = select i1 %368, i32 %372, i32 %371
  br label %374

374:                                              ; preds = %336, %296, %178
  %375 = phi i32 [ %217, %178 ], [ %335, %296 ], [ %373, %336 ]
  store i32 %375, ptr %0, align 4
  br i1 %6, label %376, label %410

376:                                              ; preds = %374
  %377 = shl i32 %8, 8
  %378 = add i32 %377, 2048
  %379 = or i32 %378, 312475652
  %380 = load i8, ptr @caam_little_end, align 1, !range !8
  %381 = icmp eq i8 %380, 0
  %382 = lshr i32 %375, 24
  %383 = select i1 %381, i32 %382, i32 %375
  %384 = and i32 %383, 127
  %385 = getelementptr i32, ptr %0, i32 %384
  %386 = tail call i32 @llvm.bswap.i32(i32 %379) #4
  %387 = select i1 %381, i32 %386, i32 %379
  store i32 %387, ptr %385, align 4
  %388 = load i32, ptr %0, align 4
  %389 = load i8, ptr @caam_little_end, align 1, !range !8
  %390 = icmp eq i8 %389, 0
  %391 = tail call i32 @llvm.bswap.i32(i32 %388) #4
  %392 = select i1 %390, i32 %391, i32 %388
  %393 = add i32 %392, 1
  %394 = tail call i32 @llvm.bswap.i32(i32 %393) #4
  %395 = select i1 %390, i32 %394, i32 %393
  store i32 %395, ptr %0, align 4
  %396 = load i8, ptr @caam_little_end, align 1, !range !8
  %397 = icmp eq i8 %396, 0
  %398 = lshr i32 %395, 24
  %399 = select i1 %397, i32 %398, i32 %395
  %400 = and i32 %399, 127
  %401 = getelementptr i32, ptr %0, i32 %400
  store i32 16777216, ptr %401, align 4
  %402 = load i32, ptr %0, align 4
  %403 = load i8, ptr @caam_little_end, align 1, !range !8
  %404 = icmp eq i8 %403, 0
  %405 = tail call i32 @llvm.bswap.i32(i32 %402) #4
  %406 = select i1 %404, i32 %405, i32 %402
  %407 = add i32 %406, 1
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #4
  %409 = select i1 %404, i32 %408, i32 %407
  store i32 %409, ptr %0, align 4
  br label %410

410:                                              ; preds = %376, %374
  %411 = phi i32 [ %409, %376 ], [ %375, %374 ]
  %412 = icmp eq i32 %8, 0
  %413 = load i32, ptr %1, align 4
  br i1 %412, label %432, label %414

414:                                              ; preds = %410
  %415 = or i32 %413, -2147483636
  %416 = load i8, ptr @caam_little_end, align 1, !range !8
  %417 = icmp eq i8 %416, 0
  %418 = lshr i32 %411, 24
  %419 = select i1 %417, i32 %418, i32 %411
  %420 = and i32 %419, 127
  %421 = getelementptr i32, ptr %0, i32 %420
  %422 = tail call i32 @llvm.bswap.i32(i32 %415) #4
  %423 = select i1 %417, i32 %422, i32 %415
  store i32 %423, ptr %421, align 4
  %424 = load i32, ptr %0, align 4
  %425 = load i8, ptr @caam_little_end, align 1, !range !8
  %426 = icmp eq i8 %425, 0
  %427 = tail call i32 @llvm.bswap.i32(i32 %424) #4
  %428 = select i1 %426, i32 %427, i32 %424
  %429 = add i32 %428, 1
  %430 = tail call i32 @llvm.bswap.i32(i32 %429) #4
  %431 = select i1 %426, i32 %430, i32 %429
  store i32 %431, ptr %0, align 4
  br label %434

432:                                              ; preds = %410
  tail call fastcc void @append_dec_op1(ptr noundef %0, i32 noundef %413)
  %433 = load i32, ptr %0, align 4
  br label %434

434:                                              ; preds = %432, %414
  %435 = phi i32 [ %433, %432 ], [ %431, %414 ]
  %436 = load i8, ptr @caam_little_end, align 1, !range !8
  %437 = icmp eq i8 %436, 0
  %438 = lshr i32 %435, 24
  %439 = select i1 %437, i32 %438, i32 %435
  %440 = and i32 %439, 127
  %441 = getelementptr i32, ptr %0, i32 %440
  %442 = select i1 %437, i32 67766696, i32 -1475802620
  store i32 %442, ptr %441, align 4
  %443 = load i32, ptr %0, align 4
  %444 = load i8, ptr @caam_little_end, align 1, !range !8
  %445 = icmp eq i8 %444, 0
  %446 = tail call i32 @llvm.bswap.i32(i32 %443) #4
  %447 = select i1 %445, i32 %446, i32 %443
  %448 = add i32 %447, 1
  %449 = tail call i32 @llvm.bswap.i32(i32 %448) #4
  %450 = select i1 %445, i32 %449, i32 %448
  store i32 %450, ptr %0, align 4
  %451 = load i8, ptr @caam_little_end, align 1, !range !8
  %452 = icmp eq i8 %451, 0
  %453 = lshr i32 %450, 24
  %454 = select i1 %452, i32 %453, i32 %450
  %455 = and i32 %454, 127
  %456 = getelementptr i32, ptr %0, i32 %455
  %457 = select i1 %452, i32 67832232, i32 -1475802364
  store i32 %457, ptr %456, align 4
  %458 = load i32, ptr %0, align 4
  %459 = load i8, ptr @caam_little_end, align 1, !range !8
  %460 = icmp eq i8 %459, 0
  %461 = tail call i32 @llvm.bswap.i32(i32 %458) #4
  %462 = select i1 %460, i32 %461, i32 %458
  %463 = add i32 %462, 1
  %464 = tail call i32 @llvm.bswap.i32(i32 %463) #4
  %465 = select i1 %460, i32 %464, i32 %463
  store i32 %465, ptr %0, align 4
  %466 = load i8, ptr @caam_little_end, align 1, !range !8
  %467 = icmp eq i8 %466, 0
  %468 = lshr i32 %465, 24
  %469 = select i1 %467, i32 %468, i32 %465
  %470 = and i32 %469, 127
  %471 = getelementptr i32, ptr %0, i32 %470
  %472 = select i1 %467, i32 12393, i32 1764753408
  store i32 %472, ptr %471, align 4
  %473 = load i32, ptr %0, align 4
  %474 = load i8, ptr @caam_little_end, align 1, !range !8
  %475 = icmp eq i8 %474, 0
  %476 = tail call i32 @llvm.bswap.i32(i32 %473) #4
  %477 = select i1 %475, i32 %476, i32 %473
  %478 = add i32 %477, 1
  %479 = tail call i32 @llvm.bswap.i32(i32 %478) #4
  %480 = select i1 %475, i32 %479, i32 %478
  store i32 %480, ptr %0, align 4
  %481 = load i8, ptr @caam_little_end, align 1, !range !8
  %482 = icmp eq i8 %481, 0
  %483 = lshr i32 %480, 24
  %484 = select i1 %482, i32 %483, i32 %480
  %485 = and i32 %484, 127
  %486 = getelementptr i32, ptr %0, i32 %485
  %487 = select i1 %482, i32 5679, i32 789970944
  store i32 %487, ptr %486, align 4
  %488 = load i32, ptr %0, align 4
  %489 = load i8, ptr @caam_little_end, align 1, !range !8
  %490 = icmp eq i8 %489, 0
  %491 = tail call i32 @llvm.bswap.i32(i32 %488) #4
  %492 = select i1 %490, i32 %491, i32 %488
  %493 = add i32 %492, 1
  %494 = tail call i32 @llvm.bswap.i32(i32 %493) #4
  %495 = select i1 %490, i32 %494, i32 %493
  store i32 %495, ptr %0, align 4
  %496 = or i32 %4, 742129664
  %497 = load i8, ptr @caam_little_end, align 1, !range !8
  %498 = icmp eq i8 %497, 0
  %499 = lshr i32 %495, 24
  %500 = select i1 %498, i32 %499, i32 %495
  %501 = and i32 %500, 127
  %502 = getelementptr i32, ptr %0, i32 %501
  %503 = tail call i32 @llvm.bswap.i32(i32 %496) #4
  %504 = select i1 %498, i32 %503, i32 %496
  store i32 %504, ptr %502, align 4
  %505 = load i32, ptr %0, align 4
  %506 = load i8, ptr @caam_little_end, align 1, !range !8
  %507 = icmp eq i8 %506, 0
  %508 = tail call i32 @llvm.bswap.i32(i32 %505) #4
  %509 = select i1 %507, i32 %508, i32 %505
  %510 = add i32 %509, 1
  %511 = tail call i32 @llvm.bswap.i32(i32 %510) #4
  %512 = select i1 %507, i32 %511, i32 %510
  store i32 %512, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @append_dec_op1(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = and i32 %1, 16711680
  %4 = icmp eq i32 %3, 1048576
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = or i32 %1, -2147483636
  %7 = load i32, ptr %0, align 4
  %8 = load i8, ptr @caam_little_end, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = lshr i32 %7, 24
  %11 = select i1 %9, i32 %10, i32 %7
  %12 = and i32 %11, 127
  %13 = getelementptr i32, ptr %0, i32 %12
  %14 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %15 = select i1 %9, i32 %14, i32 %6
  store i32 %15, ptr %13, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  br label %115

24:                                               ; preds = %2
  %25 = load i32, ptr %0, align 4
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = lshr i32 %25, 24
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = and i32 %29, 127
  %31 = getelementptr i32, ptr %0, i32 %30
  %32 = select i1 %27, i32 4194465, i32 -1593819136
  store i32 %32, ptr %31, align 4
  %33 = load i32, ptr %0, align 4
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = add i32 %37, 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %40 = select i1 %35, i32 %39, i32 %38
  store i32 %40, ptr %0, align 4
  %41 = or i32 %1, -2147483644
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = lshr i32 %40, 24
  %45 = select i1 %43, i32 %44, i32 %40
  %46 = and i32 %45, 127
  %47 = getelementptr i32, ptr %0, i32 %46
  %48 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %49 = select i1 %43, i32 %48, i32 %41
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr %0, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #4
  %54 = select i1 %52, i32 %53, i32 %50
  %55 = add i32 %54, 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %57 = select i1 %52, i32 %56, i32 %55
  store i32 %57, ptr %0, align 4
  %58 = load i8, ptr @caam_little_end, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  %60 = lshr i32 %57, 24
  %61 = select i1 %59, i32 %60, i32 %57
  %62 = and i32 %61, 127
  %63 = getelementptr i32, ptr %0, i32 %62
  %64 = select i1 %59, i32 160, i32 -1610612736
  store i32 %64, ptr %63, align 4
  %65 = load i32, ptr %0, align 4
  %66 = load i8, ptr @caam_little_end, align 1, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = add i32 %69, 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #4
  %72 = select i1 %67, i32 %71, i32 %70
  store i32 %72, ptr %0, align 4
  %73 = load i32, ptr %31, align 4
  %74 = load i8, ptr @caam_little_end, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %77 = select i1 %75, i32 %76, i32 %73
  %78 = lshr i32 %72, 24
  %79 = select i1 %75, i32 %78, i32 %72
  %80 = and i32 %79, 127
  %81 = sub nsw i32 %80, %30
  %82 = or i32 %81, %77
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  %84 = select i1 %75, i32 %83, i32 %82
  store i32 %84, ptr %31, align 4
  %85 = or i32 %1, -2147479548
  %86 = load i32, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = lshr i32 %86, 24
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = and i32 %90, 127
  %92 = getelementptr i32, ptr %0, i32 %91
  %93 = tail call i32 @llvm.bswap.i32(i32 %85) #4
  %94 = select i1 %88, i32 %93, i32 %85
  store i32 %94, ptr %92, align 4
  %95 = load i32, ptr %0, align 4
  %96 = load i8, ptr @caam_little_end, align 1, !range !8
  %97 = icmp eq i8 %96, 0
  %98 = tail call i32 @llvm.bswap.i32(i32 %95) #4
  %99 = select i1 %97, i32 %98, i32 %95
  %100 = add i32 %99, 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #4
  %102 = select i1 %97, i32 %101, i32 %100
  store i32 %102, ptr %0, align 4
  %103 = load i32, ptr %63, align 4
  %104 = load i8, ptr @caam_little_end, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = tail call i32 @llvm.bswap.i32(i32 %103) #4
  %107 = select i1 %105, i32 %106, i32 %103
  %108 = lshr i32 %102, 24
  %109 = select i1 %105, i32 %108, i32 %102
  %110 = and i32 %109, 127
  %111 = sub nsw i32 %110, %62
  %112 = or i32 %111, %107
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #4
  %114 = select i1 %105, i32 %113, i32 %112
  store i32 %114, ptr %63, align 4
  br label %115

115:                                              ; preds = %24, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_aead_givencap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, i32 noundef %7, i1 noundef zeroext %8, i32 noundef %9) #0 {
  tail call fastcc void @init_sh_desc_key_aead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %9)
  br i1 %8, label %11, label %55

11:                                               ; preds = %10
  %12 = load i32, ptr %0, align 4
  %13 = load i8, ptr @caam_little_end, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = lshr i32 %12, 24
  %16 = select i1 %14, i32 %15, i32 %12
  %17 = and i32 %16, 127
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = select i1 %14, i32 67373854, i32 504038404
  store i32 %19, ptr %18, align 4
  %20 = load i32, ptr %0, align 4
  %21 = load i8, ptr @caam_little_end, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %24 = select i1 %22, i32 %23, i32 %20
  %25 = add i32 %24, 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  %27 = select i1 %22, i32 %26, i32 %25
  store i32 %27, ptr %0, align 4
  %28 = load i8, ptr @caam_little_end, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = lshr i32 %27, 24
  %31 = select i1 %29, i32 %30, i32 %27
  %32 = and i32 %31, 127
  %33 = getelementptr i32, ptr %0, i32 %32
  %34 = select i1 %29, i32 2031777, i32 -1593827584
  store i32 %34, ptr %33, align 4
  %35 = load i32, ptr %0, align 4
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %39 = select i1 %37, i32 %38, i32 %35
  %40 = add i32 %39, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %42 = select i1 %37, i32 %41, i32 %40
  store i32 %42, ptr %0, align 4
  %43 = load i32, ptr %33, align 4
  %44 = load i8, ptr @caam_little_end, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #4
  %47 = select i1 %45, i32 %46, i32 %43
  %48 = lshr i32 %42, 24
  %49 = select i1 %45, i32 %48, i32 %42
  %50 = and i32 %49, 127
  %51 = sub nsw i32 %50, %32
  %52 = or i32 %51, %47
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  %54 = select i1 %45, i32 %53, i32 %52
  store i32 %54, ptr %33, align 4
  br i1 %5, label %60, label %81

55:                                               ; preds = %10
  br i1 %5, label %56, label %81

56:                                               ; preds = %55
  %57 = load i32, ptr %0, align 4
  %58 = shl i32 %7, 8
  %59 = or i32 %58, %3
  br label %164

60:                                               ; preds = %11
  %61 = shl i32 %7, 8
  %62 = or i32 %61, %3
  %63 = or i32 %62, 438304768
  %64 = load i32, ptr %0, align 4
  %65 = load i8, ptr @caam_little_end, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = lshr i32 %64, 24
  %68 = select i1 %66, i32 %67, i32 %64
  %69 = and i32 %68, 127
  %70 = getelementptr i32, ptr %0, i32 %69
  %71 = tail call i32 @llvm.bswap.i32(i32 %63) #4
  %72 = select i1 %66, i32 %71, i32 %63
  store i32 %72, ptr %70, align 4
  %73 = load i32, ptr %0, align 4
  %74 = load i8, ptr @caam_little_end, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  %77 = select i1 %75, i32 %76, i32 %73
  %78 = add i32 %77, 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #4
  %80 = select i1 %75, i32 %79, i32 %78
  store i32 %80, ptr %0, align 4
  br label %164

81:                                               ; preds = %55, %11
  %82 = or i32 %3, 317915136
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = lshr i32 %83, 24
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = and i32 %87, 127
  %89 = getelementptr i32, ptr %0, i32 %88
  %90 = select i1 %85, i32 67172880, i32 284819460
  store i32 %90, ptr %89, align 4
  %91 = load i32, ptr %0, align 4
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = add i32 %95, 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #4
  %98 = select i1 %93, i32 %97, i32 %96
  store i32 %98, ptr %0, align 4
  %99 = load i8, ptr @caam_little_end, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = lshr i32 %98, 24
  %102 = select i1 %100, i32 %101, i32 %98
  %103 = and i32 %102, 127
  %104 = getelementptr i32, ptr %0, i32 %103
  %105 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  %106 = select i1 %100, i32 %105, i32 %82
  store i32 %106, ptr %104, align 4
  %107 = load i32, ptr %0, align 4
  %108 = load i8, ptr @caam_little_end, align 1, !range !8
  %109 = icmp eq i8 %108, 0
  %110 = tail call i32 @llvm.bswap.i32(i32 %107) #4
  %111 = select i1 %109, i32 %110, i32 %107
  %112 = add i32 %111, 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #4
  %114 = select i1 %109, i32 %113, i32 %112
  store i32 %114, ptr %0, align 4
  %115 = load i8, ptr @caam_little_end, align 1, !range !8
  %116 = icmp eq i8 %115, 0
  %117 = lshr i32 %114, 24
  %118 = select i1 %116, i32 %117, i32 %114
  %119 = and i32 %118, 127
  %120 = getelementptr i32, ptr %0, i32 %119
  %121 = select i1 %116, i32 558614, i32 377882624
  store i32 %121, ptr %120, align 4
  %122 = load i32, ptr %0, align 4
  %123 = load i8, ptr @caam_little_end, align 1, !range !8
  %124 = icmp eq i8 %123, 0
  %125 = tail call i32 @llvm.bswap.i32(i32 %122) #4
  %126 = select i1 %124, i32 %125, i32 %122
  %127 = add i32 %126, 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #4
  %129 = select i1 %124, i32 %128, i32 %127
  store i32 %129, ptr %0, align 4
  %130 = shl i32 %7, 8
  %131 = load i8, ptr @caam_little_end, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  %133 = lshr i32 %129, 24
  %134 = select i1 %132, i32 %133, i32 %129
  %135 = and i32 %134, 127
  %136 = getelementptr i32, ptr %0, i32 %135
  %137 = or i32 %130, %3
  %138 = or i32 %137, 2038431744
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #4
  %140 = select i1 %132, i32 %139, i32 %138
  store i32 %140, ptr %136, align 4
  %141 = load i32, ptr %0, align 4
  %142 = load i8, ptr @caam_little_end, align 1, !range !8
  %143 = icmp eq i8 %142, 0
  %144 = tail call i32 @llvm.bswap.i32(i32 %141) #4
  %145 = select i1 %143, i32 %144, i32 %141
  %146 = add i32 %145, 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #4
  %148 = select i1 %143, i32 %147, i32 %146
  store i32 %148, ptr %0, align 4
  %149 = load i8, ptr @caam_little_end, align 1, !range !8
  %150 = icmp eq i8 %149, 0
  %151 = lshr i32 %148, 24
  %152 = select i1 %150, i32 %151, i32 %148
  %153 = and i32 %152, 127
  %154 = getelementptr i32, ptr %0, i32 %153
  %155 = select i1 %150, i32 296470, i32 377881600
  store i32 %155, ptr %154, align 4
  %156 = load i32, ptr %0, align 4
  %157 = load i8, ptr @caam_little_end, align 1, !range !8
  %158 = icmp eq i8 %157, 0
  %159 = tail call i32 @llvm.bswap.i32(i32 %156) #4
  %160 = select i1 %158, i32 %159, i32 %156
  %161 = add i32 %160, 1
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #4
  %163 = select i1 %158, i32 %162, i32 %161
  store i32 %163, ptr %0, align 4
  br label %164

164:                                              ; preds = %81, %60, %56
  %165 = phi i32 [ %59, %56 ], [ %62, %60 ], [ %137, %81 ]
  %166 = phi i32 [ %58, %56 ], [ %61, %60 ], [ %130, %81 ]
  %167 = phi i32 [ %57, %56 ], [ %80, %60 ], [ %163, %81 ]
  %168 = load i8, ptr @caam_little_end, align 1, !range !8
  %169 = icmp eq i8 %168, 0
  %170 = lshr i32 %167, 24
  %171 = select i1 %169, i32 %170, i32 %167
  %172 = and i32 %171, 127
  %173 = getelementptr i32, ptr %0, i32 %172
  %174 = or i32 %165, 2013396992
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %176 = select i1 %169, i32 %175, i32 %174
  store i32 %176, ptr %173, align 4
  %177 = load i32, ptr %0, align 4
  %178 = load i8, ptr @caam_little_end, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = tail call i32 @llvm.bswap.i32(i32 %177) #4
  %181 = select i1 %179, i32 %180, i32 %177
  %182 = add i32 %181, 1
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %179, i32 %183, i32 %182
  store i32 %184, ptr %0, align 4
  %185 = load i32, ptr %2, align 4
  %186 = or i32 %185, -2147483635
  %187 = load i8, ptr @caam_little_end, align 1, !range !8
  %188 = icmp eq i8 %187, 0
  %189 = lshr i32 %184, 24
  %190 = select i1 %188, i32 %189, i32 %184
  %191 = and i32 %190, 127
  %192 = getelementptr i32, ptr %0, i32 %191
  %193 = tail call i32 @llvm.bswap.i32(i32 %186) #4
  %194 = select i1 %188, i32 %193, i32 %186
  store i32 %194, ptr %192, align 4
  %195 = load i32, ptr %0, align 4
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = tail call i32 @llvm.bswap.i32(i32 %195) #4
  %199 = select i1 %197, i32 %198, i32 %195
  %200 = add i32 %199, 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #4
  %202 = select i1 %197, i32 %201, i32 %200
  store i32 %202, ptr %0, align 4
  %203 = icmp slt i32 %9, 3
  %204 = or i1 %203, %8
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = lshr i32 %202, 24
  %208 = select i1 %206, i32 %207, i32 %202
  %209 = and i32 %208, 127
  %210 = getelementptr i32, ptr %0, i32 %209
  br i1 %204, label %211, label %236

211:                                              ; preds = %164
  %212 = select i1 %206, i32 70913192, i32 -1475593724
  store i32 %212, ptr %210, align 4
  %213 = load i32, ptr %0, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #4
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = add i32 %217, 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %220 = select i1 %215, i32 %219, i32 %218
  store i32 %220, ptr %0, align 4
  %221 = load i8, ptr @caam_little_end, align 1, !range !8
  %222 = icmp eq i8 %221, 0
  %223 = lshr i32 %220, 24
  %224 = select i1 %222, i32 %223, i32 %220
  %225 = and i32 %224, 127
  %226 = getelementptr i32, ptr %0, i32 %225
  %227 = select i1 %222, i32 70978728, i32 -1475593468
  store i32 %227, ptr %226, align 4
  %228 = load i32, ptr %0, align 4
  %229 = load i8, ptr @caam_little_end, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = tail call i32 @llvm.bswap.i32(i32 %228) #4
  %232 = select i1 %230, i32 %231, i32 %228
  %233 = add i32 %232, 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #4
  %235 = select i1 %230, i32 %234, i32 %233
  br label %261

236:                                              ; preds = %164
  %237 = select i1 %206, i32 75107496, i32 -1475577340
  store i32 %237, ptr %210, align 4
  %238 = load i32, ptr %0, align 4
  %239 = load i8, ptr @caam_little_end, align 1, !range !8
  %240 = icmp eq i8 %239, 0
  %241 = tail call i32 @llvm.bswap.i32(i32 %238) #4
  %242 = select i1 %240, i32 %241, i32 %238
  %243 = add i32 %242, 1
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #4
  %245 = select i1 %240, i32 %244, i32 %243
  store i32 %245, ptr %0, align 4
  %246 = load i8, ptr @caam_little_end, align 1, !range !8
  %247 = icmp eq i8 %246, 0
  %248 = lshr i32 %245, 24
  %249 = select i1 %247, i32 %248, i32 %245
  %250 = and i32 %249, 127
  %251 = getelementptr i32, ptr %0, i32 %250
  %252 = select i1 %247, i32 75173032, i32 -1475577084
  store i32 %252, ptr %251, align 4
  %253 = load i32, ptr %0, align 4
  %254 = load i8, ptr @caam_little_end, align 1, !range !8
  %255 = icmp eq i8 %254, 0
  %256 = tail call i32 @llvm.bswap.i32(i32 %253) #4
  %257 = select i1 %255, i32 %256, i32 %253
  %258 = add i32 %257, 1
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #4
  %260 = select i1 %255, i32 %259, i32 %258
  br label %261

261:                                              ; preds = %236, %211
  %262 = phi i32 [ %260, %236 ], [ %235, %211 ]
  store i32 %262, ptr %0, align 4
  %263 = load i8, ptr @caam_little_end, align 1, !range !8
  %264 = icmp eq i8 %263, 0
  %265 = lshr i32 %262, 24
  %266 = select i1 %264, i32 %265, i32 %262
  %267 = and i32 %266, 127
  %268 = getelementptr i32, ptr %0, i32 %267
  %269 = select i1 %264, i32 16233, i32 1765736448
  store i32 %269, ptr %268, align 4
  %270 = load i32, ptr %0, align 4
  %271 = load i8, ptr @caam_little_end, align 1, !range !8
  %272 = icmp eq i8 %271, 0
  %273 = tail call i32 @llvm.bswap.i32(i32 %270) #4
  %274 = select i1 %272, i32 %273, i32 %270
  %275 = add i32 %274, 1
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #4
  %277 = select i1 %272, i32 %276, i32 %275
  store i32 %277, ptr %0, align 4
  %278 = load i8, ptr @caam_little_end, align 1, !range !8
  %279 = icmp eq i8 %278, 0
  %280 = lshr i32 %277, 24
  %281 = select i1 %279, i32 %280, i32 %277
  %282 = and i32 %281, 127
  %283 = getelementptr i32, ptr %0, i32 %282
  %284 = select i1 %279, i32 4141, i32 756023296
  store i32 %284, ptr %283, align 4
  %285 = load i32, ptr %0, align 4
  %286 = load i8, ptr @caam_little_end, align 1, !range !8
  %287 = icmp eq i8 %286, 0
  %288 = tail call i32 @llvm.bswap.i32(i32 %285) #4
  %289 = select i1 %287, i32 %288, i32 %285
  %290 = add i32 %289, 1
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #4
  %292 = select i1 %287, i32 %291, i32 %290
  store i32 %292, ptr %0, align 4
  %293 = or i32 %3, -2114977792
  %294 = load i8, ptr @caam_little_end, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = lshr i32 %292, 24
  %297 = select i1 %295, i32 %296, i32 %292
  %298 = and i32 %297, 127
  %299 = getelementptr i32, ptr %0, i32 %298
  %300 = select i1 %295, i32 67172880, i32 284819460
  store i32 %300, ptr %299, align 4
  %301 = load i32, ptr %0, align 4
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = tail call i32 @llvm.bswap.i32(i32 %301) #4
  %305 = select i1 %303, i32 %304, i32 %301
  %306 = add i32 %305, 1
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #4
  %308 = select i1 %303, i32 %307, i32 %306
  store i32 %308, ptr %0, align 4
  %309 = load i8, ptr @caam_little_end, align 1, !range !8
  %310 = icmp eq i8 %309, 0
  %311 = lshr i32 %308, 24
  %312 = select i1 %310, i32 %311, i32 %308
  %313 = and i32 %312, 127
  %314 = getelementptr i32, ptr %0, i32 %313
  %315 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %316 = select i1 %310, i32 %315, i32 %293
  store i32 %316, ptr %314, align 4
  %317 = load i32, ptr %0, align 4
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = tail call i32 @llvm.bswap.i32(i32 %317) #4
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = add i32 %321, 1
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #4
  %324 = select i1 %319, i32 %323, i32 %322
  store i32 %324, ptr %0, align 4
  %325 = load i8, ptr @caam_little_end, align 1, !range !8
  %326 = icmp eq i8 %325, 0
  %327 = lshr i32 %324, 24
  %328 = select i1 %326, i32 %327, i32 %324
  %329 = and i32 %328, 127
  %330 = getelementptr i32, ptr %0, i32 %329
  %331 = select i1 %326, i32 67142164, i32 344064004
  store i32 %331, ptr %330, align 4
  %332 = load i32, ptr %0, align 4
  %333 = load i8, ptr @caam_little_end, align 1, !range !8
  %334 = icmp eq i8 %333, 0
  %335 = tail call i32 @llvm.bswap.i32(i32 %332) #4
  %336 = select i1 %334, i32 %335, i32 %332
  %337 = add i32 %336, 1
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #4
  %339 = select i1 %334, i32 %338, i32 %337
  store i32 %339, ptr %0, align 4
  %340 = load i8, ptr @caam_little_end, align 1, !range !8
  %341 = icmp eq i8 %340, 0
  %342 = lshr i32 %339, 24
  %343 = select i1 %341, i32 %342, i32 %339
  %344 = and i32 %343, 127
  %345 = getelementptr i32, ptr %0, i32 %344
  %346 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %347 = select i1 %341, i32 %346, i32 %3
  store i32 %347, ptr %345, align 4
  %348 = load i32, ptr %0, align 4
  %349 = load i8, ptr @caam_little_end, align 1, !range !8
  %350 = icmp eq i8 %349, 0
  %351 = tail call i32 @llvm.bswap.i32(i32 %348) #4
  %352 = select i1 %350, i32 %351, i32 %348
  %353 = add i32 %352, 1
  %354 = tail call i32 @llvm.bswap.i32(i32 %353) #4
  %355 = select i1 %350, i32 %354, i32 %353
  store i32 %355, ptr %0, align 4
  br i1 %5, label %356, label %389

356:                                              ; preds = %261
  %357 = add i32 %166, 2048
  %358 = or i32 %357, 312475652
  %359 = load i8, ptr @caam_little_end, align 1, !range !8
  %360 = icmp eq i8 %359, 0
  %361 = lshr i32 %355, 24
  %362 = select i1 %360, i32 %361, i32 %355
  %363 = and i32 %362, 127
  %364 = getelementptr i32, ptr %0, i32 %363
  %365 = tail call i32 @llvm.bswap.i32(i32 %358) #4
  %366 = select i1 %360, i32 %365, i32 %358
  store i32 %366, ptr %364, align 4
  %367 = load i32, ptr %0, align 4
  %368 = load i8, ptr @caam_little_end, align 1, !range !8
  %369 = icmp eq i8 %368, 0
  %370 = tail call i32 @llvm.bswap.i32(i32 %367) #4
  %371 = select i1 %369, i32 %370, i32 %367
  %372 = add i32 %371, 1
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #4
  %374 = select i1 %369, i32 %373, i32 %372
  store i32 %374, ptr %0, align 4
  %375 = load i8, ptr @caam_little_end, align 1, !range !8
  %376 = icmp eq i8 %375, 0
  %377 = lshr i32 %374, 24
  %378 = select i1 %376, i32 %377, i32 %374
  %379 = and i32 %378, 127
  %380 = getelementptr i32, ptr %0, i32 %379
  store i32 16777216, ptr %380, align 4
  %381 = load i32, ptr %0, align 4
  %382 = load i8, ptr @caam_little_end, align 1, !range !8
  %383 = icmp eq i8 %382, 0
  %384 = tail call i32 @llvm.bswap.i32(i32 %381) #4
  %385 = select i1 %383, i32 %384, i32 %381
  %386 = add i32 %385, 1
  %387 = tail call i32 @llvm.bswap.i32(i32 %386) #4
  %388 = select i1 %383, i32 %387, i32 %386
  store i32 %388, ptr %0, align 4
  br label %389

389:                                              ; preds = %356, %261
  %390 = phi i32 [ %388, %356 ], [ %355, %261 ]
  %391 = load i32, ptr %1, align 4
  %392 = or i32 %391, -2147483635
  %393 = load i8, ptr @caam_little_end, align 1, !range !8
  %394 = icmp eq i8 %393, 0
  %395 = lshr i32 %390, 24
  %396 = select i1 %394, i32 %395, i32 %390
  %397 = and i32 %396, 127
  %398 = getelementptr i32, ptr %0, i32 %397
  %399 = tail call i32 @llvm.bswap.i32(i32 %392) #4
  %400 = select i1 %394, i32 %399, i32 %392
  store i32 %400, ptr %398, align 4
  %401 = load i32, ptr %0, align 4
  %402 = load i8, ptr @caam_little_end, align 1, !range !8
  %403 = icmp eq i8 %402, 0
  %404 = tail call i32 @llvm.bswap.i32(i32 %401) #4
  %405 = select i1 %403, i32 %404, i32 %401
  %406 = add i32 %405, 1
  %407 = tail call i32 @llvm.bswap.i32(i32 %406) #4
  %408 = select i1 %403, i32 %407, i32 %406
  store i32 %408, ptr %0, align 4
  %409 = load i8, ptr @caam_little_end, align 1, !range !8
  %410 = icmp eq i8 %409, 0
  %411 = lshr i32 %408, 24
  %412 = select i1 %410, i32 %411, i32 %408
  %413 = and i32 %412, 127
  %414 = getelementptr i32, ptr %0, i32 %413
  %415 = select i1 %410, i32 67831976, i32 -1475867900
  store i32 %415, ptr %414, align 4
  %416 = load i32, ptr %0, align 4
  %417 = load i8, ptr @caam_little_end, align 1, !range !8
  %418 = icmp eq i8 %417, 0
  %419 = tail call i32 @llvm.bswap.i32(i32 %416) #4
  %420 = select i1 %418, i32 %419, i32 %416
  %421 = add i32 %420, 1
  %422 = tail call i32 @llvm.bswap.i32(i32 %421) #4
  %423 = select i1 %418, i32 %422, i32 %421
  store i32 %423, ptr %0, align 4
  %424 = or i32 %3, 671088640
  %425 = load i8, ptr @caam_little_end, align 1, !range !8
  %426 = icmp eq i8 %425, 0
  %427 = lshr i32 %423, 24
  %428 = select i1 %426, i32 %427, i32 %423
  %429 = and i32 %428, 127
  %430 = getelementptr i32, ptr %0, i32 %429
  %431 = tail call i32 @llvm.bswap.i32(i32 %424) #4
  %432 = select i1 %426, i32 %431, i32 %424
  store i32 %432, ptr %430, align 4
  %433 = load i32, ptr %0, align 4
  %434 = load i8, ptr @caam_little_end, align 1, !range !8
  %435 = icmp eq i8 %434, 0
  %436 = tail call i32 @llvm.bswap.i32(i32 %433) #4
  %437 = select i1 %435, i32 %436, i32 %433
  %438 = add i32 %437, 1
  %439 = tail call i32 @llvm.bswap.i32(i32 %438) #4
  %440 = select i1 %435, i32 %439, i32 %438
  store i32 %440, ptr %0, align 4
  %441 = load i8, ptr @caam_little_end, align 1, !range !8
  %442 = icmp eq i8 %441, 0
  %443 = lshr i32 %440, 24
  %444 = select i1 %442, i32 %443, i32 %440
  %445 = and i32 %444, 127
  %446 = getelementptr i32, ptr %0, i32 %445
  %447 = select i1 %442, i32 67766440, i32 -1475868156
  store i32 %447, ptr %446, align 4
  %448 = load i32, ptr %0, align 4
  %449 = load i8, ptr @caam_little_end, align 1, !range !8
  %450 = icmp eq i8 %449, 0
  %451 = tail call i32 @llvm.bswap.i32(i32 %448) #4
  %452 = select i1 %450, i32 %451, i32 %448
  %453 = add i32 %452, 1
  %454 = tail call i32 @llvm.bswap.i32(i32 %453) #4
  %455 = select i1 %450, i32 %454, i32 %453
  store i32 %455, ptr %0, align 4
  %456 = load i8, ptr @caam_little_end, align 1, !range !8
  %457 = icmp eq i8 %456, 0
  %458 = lshr i32 %455, 24
  %459 = select i1 %457, i32 %458, i32 %455
  %460 = and i32 %459, 127
  %461 = getelementptr i32, ptr %0, i32 %460
  %462 = select i1 %457, i32 262305, i32 -1593834496
  store i32 %462, ptr %461, align 4
  %463 = load i32, ptr %0, align 4
  %464 = load i8, ptr @caam_little_end, align 1, !range !8
  %465 = icmp eq i8 %464, 0
  %466 = tail call i32 @llvm.bswap.i32(i32 %463) #4
  %467 = select i1 %465, i32 %466, i32 %463
  %468 = add i32 %467, 1
  %469 = tail call i32 @llvm.bswap.i32(i32 %468) #4
  %470 = select i1 %465, i32 %469, i32 %468
  store i32 %470, ptr %0, align 4
  %471 = load i32, ptr %461, align 4
  %472 = load i8, ptr @caam_little_end, align 1, !range !8
  %473 = icmp eq i8 %472, 0
  %474 = tail call i32 @llvm.bswap.i32(i32 %471) #4
  %475 = select i1 %473, i32 %474, i32 %471
  %476 = lshr i32 %470, 24
  %477 = select i1 %473, i32 %476, i32 %470
  %478 = and i32 %477, 127
  %479 = sub nsw i32 %478, %460
  %480 = or i32 %479, %475
  %481 = tail call i32 @llvm.bswap.i32(i32 %480) #4
  %482 = select i1 %473, i32 %481, i32 %480
  store i32 %482, ptr %461, align 4
  %483 = load i32, ptr %0, align 4
  %484 = load i8, ptr @caam_little_end, align 1, !range !8
  %485 = icmp eq i8 %484, 0
  %486 = lshr i32 %483, 24
  %487 = select i1 %485, i32 %486, i32 %483
  %488 = and i32 %487, 127
  %489 = getelementptr i32, ptr %0, i32 %488
  %490 = select i1 %485, i32 7727, i32 790495232
  store i32 %490, ptr %489, align 4
  %491 = load i32, ptr %0, align 4
  %492 = load i8, ptr @caam_little_end, align 1, !range !8
  %493 = icmp eq i8 %492, 0
  %494 = tail call i32 @llvm.bswap.i32(i32 %491) #4
  %495 = select i1 %493, i32 %494, i32 %491
  %496 = add i32 %495, 1
  %497 = tail call i32 @llvm.bswap.i32(i32 %496) #4
  %498 = select i1 %493, i32 %497, i32 %496
  store i32 %498, ptr %0, align 4
  %499 = load i8, ptr @caam_little_end, align 1, !range !8
  %500 = icmp eq i8 %499, 0
  %501 = lshr i32 %498, 24
  %502 = select i1 %500, i32 %501, i32 %498
  %503 = and i32 %502, 127
  %504 = getelementptr i32, ptr %0, i32 %503
  %505 = select i1 %500, i32 12393, i32 1764753408
  store i32 %505, ptr %504, align 4
  %506 = load i32, ptr %0, align 4
  %507 = load i8, ptr @caam_little_end, align 1, !range !8
  %508 = icmp eq i8 %507, 0
  %509 = tail call i32 @llvm.bswap.i32(i32 %506) #4
  %510 = select i1 %508, i32 %509, i32 %506
  %511 = add i32 %510, 1
  %512 = tail call i32 @llvm.bswap.i32(i32 %511) #4
  %513 = select i1 %508, i32 %512, i32 %511
  store i32 %513, ptr %0, align 4
  %514 = or i32 %4, 1545601024
  %515 = load i8, ptr @caam_little_end, align 1, !range !8
  %516 = icmp eq i8 %515, 0
  %517 = lshr i32 %513, 24
  %518 = select i1 %516, i32 %517, i32 %513
  %519 = and i32 %518, 127
  %520 = getelementptr i32, ptr %0, i32 %519
  %521 = tail call i32 @llvm.bswap.i32(i32 %514) #4
  %522 = select i1 %516, i32 %521, i32 %514
  store i32 %522, ptr %520, align 4
  %523 = load i32, ptr %0, align 4
  %524 = load i8, ptr @caam_little_end, align 1, !range !8
  %525 = icmp eq i8 %524, 0
  %526 = tail call i32 @llvm.bswap.i32(i32 %523) #4
  %527 = select i1 %525, i32 %526, i32 %523
  %528 = add i32 %527, 1
  %529 = tail call i32 @llvm.bswap.i32(i32 %528) #4
  %530 = select i1 %525, i32 %529, i32 %528
  store i32 %530, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_gcm_encap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483635
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  %142 = load i8, ptr @caam_little_end, align 1, !range !8
  %143 = icmp eq i8 %142, 0
  %144 = lshr i32 %141, 24
  %145 = select i1 %143, i32 %144, i32 %141
  %146 = and i32 %145, 127
  %147 = getelementptr i32, ptr %0, i32 %146
  br i1 %4, label %148, label %217

148:                                              ; preds = %109
  %149 = select i1 %143, i32 67373854, i32 504038404
  store i32 %149, ptr %147, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = lshr i32 %157, 24
  %161 = select i1 %159, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %0, i32 %162
  %164 = select i1 %159, i32 2031777, i32 -1593827584
  store i32 %164, ptr %163, align 4
  %165 = load i32, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #4
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = add i32 %169, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %172 = select i1 %167, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %163, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = lshr i32 %172, 24
  %179 = select i1 %175, i32 %178, i32 %172
  %180 = and i32 %179, 127
  %181 = sub nsw i32 %180, %162
  %182 = or i32 %181, %177
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %175, i32 %183, i32 %182
  store i32 %184, ptr %163, align 4
  %185 = load i32, ptr %0, align 4
  %186 = load i8, ptr @caam_little_end, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = lshr i32 %185, 24
  %189 = select i1 %187, i32 %188, i32 %185
  %190 = and i32 %189, 127
  %191 = getelementptr i32, ptr %0, i32 %190
  %192 = select i1 %187, i32 72034472, i32 -1473754364
  store i32 %192, ptr %191, align 4
  %193 = load i32, ptr %0, align 4
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %197 = select i1 %195, i32 %196, i32 %193
  %198 = add i32 %197, 1
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #4
  %200 = select i1 %195, i32 %199, i32 %198
  store i32 %200, ptr %0, align 4
  %201 = load i8, ptr @caam_little_end, align 1, !range !8
  %202 = icmp eq i8 %201, 0
  %203 = lshr i32 %200, 24
  %204 = select i1 %202, i32 %203, i32 %200
  %205 = and i32 %204, 127
  %206 = getelementptr i32, ptr %0, i32 %205
  %207 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %208 = select i1 %202, i32 %207, i32 %2
  store i32 %208, ptr %206, align 4
  %209 = load i32, ptr %0, align 4
  %210 = load i8, ptr @caam_little_end, align 1, !range !8
  %211 = icmp eq i8 %210, 0
  %212 = tail call i32 @llvm.bswap.i32(i32 %209) #4
  %213 = select i1 %211, i32 %212, i32 %209
  %214 = add i32 %213, 1
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #4
  %216 = select i1 %211, i32 %215, i32 %214
  br label %227

217:                                              ; preds = %109
  %218 = select i1 %143, i32 67840168, i32 -1473770748
  store i32 %218, ptr %147, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %226 = select i1 %221, i32 %225, i32 %224
  br label %227

227:                                              ; preds = %217, %148
  %228 = phi i32 [ %226, %217 ], [ %216, %148 ]
  store i32 %228, ptr %0, align 4
  %229 = load i8, ptr @caam_little_end, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = lshr i32 %228, 24
  %232 = select i1 %230, i32 %231, i32 %228
  %233 = and i32 %232, 127
  %234 = getelementptr i32, ptr %0, i32 %233
  %235 = select i1 %230, i32 262304, i32 -1610611712
  store i32 %235, ptr %234, align 4
  %236 = load i32, ptr %0, align 4
  %237 = load i8, ptr @caam_little_end, align 1, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = tail call i32 @llvm.bswap.i32(i32 %236) #4
  %240 = select i1 %238, i32 %239, i32 %236
  %241 = add i32 %240, 1
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #4
  %243 = select i1 %238, i32 %242, i32 %241
  store i32 %243, ptr %0, align 4
  br i1 %4, label %244, label %262

244:                                              ; preds = %227
  %245 = or i32 %2, 706805760
  %246 = load i8, ptr @caam_little_end, align 1, !range !8
  %247 = icmp eq i8 %246, 0
  %248 = lshr i32 %243, 24
  %249 = select i1 %247, i32 %248, i32 %243
  %250 = and i32 %249, 127
  %251 = getelementptr i32, ptr %0, i32 %250
  %252 = tail call i32 @llvm.bswap.i32(i32 %245) #4
  %253 = select i1 %247, i32 %252, i32 %245
  store i32 %253, ptr %251, align 4
  %254 = load i32, ptr %0, align 4
  %255 = load i8, ptr @caam_little_end, align 1, !range !8
  %256 = icmp eq i8 %255, 0
  %257 = tail call i32 @llvm.bswap.i32(i32 %254) #4
  %258 = select i1 %256, i32 %257, i32 %254
  %259 = add i32 %258, 1
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #4
  %261 = select i1 %256, i32 %260, i32 %259
  store i32 %261, ptr %0, align 4
  br label %262

262:                                              ; preds = %244, %227
  %263 = phi i32 [ %261, %244 ], [ %243, %227 ]
  %264 = load i8, ptr @caam_little_end, align 1, !range !8
  %265 = icmp eq i8 %264, 0
  %266 = lshr i32 %263, 24
  %267 = select i1 %265, i32 %266, i32 %263
  %268 = and i32 %267, 127
  %269 = getelementptr i32, ptr %0, i32 %268
  %270 = select i1 %265, i32 70913192, i32 -1475593724
  store i32 %270, ptr %269, align 4
  %271 = load i32, ptr %0, align 4
  %272 = load i8, ptr @caam_little_end, align 1, !range !8
  %273 = icmp eq i8 %272, 0
  %274 = tail call i32 @llvm.bswap.i32(i32 %271) #4
  %275 = select i1 %273, i32 %274, i32 %271
  %276 = add i32 %275, 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #4
  %278 = select i1 %273, i32 %277, i32 %276
  store i32 %278, ptr %0, align 4
  %279 = load i8, ptr @caam_little_end, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  %281 = lshr i32 %278, 24
  %282 = select i1 %280, i32 %281, i32 %278
  %283 = and i32 %282, 127
  %284 = getelementptr i32, ptr %0, i32 %283
  %285 = select i1 %280, i32 262304, i32 -1610611712
  store i32 %285, ptr %284, align 4
  %286 = load i32, ptr %0, align 4
  %287 = load i8, ptr @caam_little_end, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  %289 = tail call i32 @llvm.bswap.i32(i32 %286) #4
  %290 = select i1 %288, i32 %289, i32 %286
  %291 = add i32 %290, 1
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #4
  %293 = select i1 %288, i32 %292, i32 %291
  store i32 %293, ptr %0, align 4
  %294 = load i8, ptr @caam_little_end, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = lshr i32 %293, 24
  %297 = select i1 %295, i32 %296, i32 %293
  %298 = and i32 %297, 127
  %299 = getelementptr i32, ptr %0, i32 %298
  %300 = select i1 %295, i32 70978728, i32 -1475593468
  store i32 %300, ptr %299, align 4
  %301 = load i32, ptr %0, align 4
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = tail call i32 @llvm.bswap.i32(i32 %301) #4
  %305 = select i1 %303, i32 %304, i32 %301
  %306 = add i32 %305, 1
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #4
  %308 = select i1 %303, i32 %307, i32 %306
  store i32 %308, ptr %0, align 4
  %309 = load i8, ptr @caam_little_end, align 1, !range !8
  %310 = icmp eq i8 %309, 0
  %311 = lshr i32 %308, 24
  %312 = select i1 %310, i32 %311, i32 %308
  %313 = and i32 %312, 127
  %314 = getelementptr i32, ptr %0, i32 %313
  %315 = select i1 %310, i32 16233, i32 1765736448
  store i32 %315, ptr %314, align 4
  %316 = load i32, ptr %0, align 4
  %317 = load i8, ptr @caam_little_end, align 1, !range !8
  %318 = icmp eq i8 %317, 0
  %319 = tail call i32 @llvm.bswap.i32(i32 %316) #4
  %320 = select i1 %318, i32 %319, i32 %316
  %321 = add i32 %320, 1
  %322 = tail call i32 @llvm.bswap.i32(i32 %321) #4
  %323 = select i1 %318, i32 %322, i32 %321
  store i32 %323, ptr %0, align 4
  %324 = load i8, ptr @caam_little_end, align 1, !range !8
  %325 = icmp eq i8 %324, 0
  %326 = lshr i32 %323, 24
  %327 = select i1 %325, i32 %326, i32 %323
  %328 = and i32 %327, 127
  %329 = getelementptr i32, ptr %0, i32 %328
  %330 = select i1 %325, i32 70985896, i32 -1473758460
  store i32 %330, ptr %329, align 4
  %331 = load i32, ptr %0, align 4
  %332 = load i8, ptr @caam_little_end, align 1, !range !8
  %333 = icmp eq i8 %332, 0
  %334 = tail call i32 @llvm.bswap.i32(i32 %331) #4
  %335 = select i1 %333, i32 %334, i32 %331
  %336 = add i32 %335, 1
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #4
  %338 = select i1 %333, i32 %337, i32 %336
  store i32 %338, ptr %0, align 4
  %339 = load i8, ptr @caam_little_end, align 1, !range !8
  %340 = icmp eq i8 %339, 0
  %341 = lshr i32 %338, 24
  %342 = select i1 %340, i32 %341, i32 %338
  %343 = and i32 %342, 127
  %344 = getelementptr i32, ptr %0, i32 %343
  %345 = select i1 %340, i32 262304, i32 -1610611712
  store i32 %345, ptr %344, align 4
  %346 = load i32, ptr %0, align 4
  %347 = load i8, ptr @caam_little_end, align 1, !range !8
  %348 = icmp eq i8 %347, 0
  %349 = tail call i32 @llvm.bswap.i32(i32 %346) #4
  %350 = select i1 %348, i32 %349, i32 %346
  %351 = add i32 %350, 1
  %352 = tail call i32 @llvm.bswap.i32(i32 %351) #4
  %353 = select i1 %348, i32 %352, i32 %351
  store i32 %353, ptr %0, align 4
  %354 = load i8, ptr @caam_little_end, align 1, !range !8
  %355 = icmp eq i8 %354, 0
  %356 = lshr i32 %353, 24
  %357 = select i1 %355, i32 %356, i32 %353
  %358 = and i32 %357, 127
  %359 = getelementptr i32, ptr %0, i32 %358
  %360 = select i1 %355, i32 12587, i32 724631552
  store i32 %360, ptr %359, align 4
  %361 = load i32, ptr %0, align 4
  %362 = load i8, ptr @caam_little_end, align 1, !range !8
  %363 = icmp eq i8 %362, 0
  %364 = tail call i32 @llvm.bswap.i32(i32 %361) #4
  %365 = select i1 %363, i32 %364, i32 %361
  %366 = add i32 %365, 1
  %367 = tail call i32 @llvm.bswap.i32(i32 %366) #4
  %368 = select i1 %363, i32 %367, i32 %366
  store i32 %368, ptr %0, align 4
  %369 = load i32, ptr %284, align 4
  %370 = load i8, ptr @caam_little_end, align 1, !range !8
  %371 = icmp eq i8 %370, 0
  %372 = tail call i32 @llvm.bswap.i32(i32 %369) #4
  %373 = select i1 %371, i32 %372, i32 %369
  %374 = lshr i32 %368, 24
  %375 = select i1 %371, i32 %374, i32 %368
  %376 = and i32 %375, 127
  %377 = sub nsw i32 %376, %283
  %378 = or i32 %377, %373
  %379 = tail call i32 @llvm.bswap.i32(i32 %378) #4
  %380 = select i1 %371, i32 %379, i32 %378
  store i32 %380, ptr %284, align 4
  %381 = load i32, ptr %0, align 4
  %382 = load i8, ptr @caam_little_end, align 1, !range !8
  %383 = icmp eq i8 %382, 0
  %384 = lshr i32 %381, 24
  %385 = select i1 %383, i32 %384, i32 %381
  %386 = and i32 %385, 127
  %387 = getelementptr i32, ptr %0, i32 %386
  %388 = select i1 %383, i32 67774632, i32 -1473771004
  store i32 %388, ptr %387, align 4
  %389 = load i32, ptr %0, align 4
  %390 = load i8, ptr @caam_little_end, align 1, !range !8
  %391 = icmp eq i8 %390, 0
  %392 = tail call i32 @llvm.bswap.i32(i32 %389) #4
  %393 = select i1 %391, i32 %392, i32 %389
  %394 = add i32 %393, 1
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #4
  %396 = select i1 %391, i32 %395, i32 %394
  store i32 %396, ptr %0, align 4
  %397 = load i8, ptr @caam_little_end, align 1, !range !8
  %398 = icmp eq i8 %397, 0
  %399 = lshr i32 %396, 24
  %400 = select i1 %398, i32 %399, i32 %396
  %401 = and i32 %400, 127
  %402 = getelementptr i32, ptr %0, i32 %401
  %403 = select i1 %398, i32 12393, i32 1764753408
  store i32 %403, ptr %402, align 4
  %404 = load i32, ptr %0, align 4
  %405 = load i8, ptr @caam_little_end, align 1, !range !8
  %406 = icmp eq i8 %405, 0
  %407 = tail call i32 @llvm.bswap.i32(i32 %404) #4
  %408 = select i1 %406, i32 %407, i32 %404
  %409 = add i32 %408, 1
  %410 = tail call i32 @llvm.bswap.i32(i32 %409) #4
  %411 = select i1 %406, i32 %410, i32 %409
  store i32 %411, ptr %0, align 4
  %412 = load i8, ptr @caam_little_end, align 1, !range !8
  %413 = icmp eq i8 %412, 0
  %414 = lshr i32 %411, 24
  %415 = select i1 %413, i32 %414, i32 %411
  %416 = and i32 %415, 127
  %417 = getelementptr i32, ptr %0, i32 %416
  %418 = select i1 %413, i32 4651, i32 722599936
  store i32 %418, ptr %417, align 4
  %419 = load i32, ptr %0, align 4
  %420 = load i8, ptr @caam_little_end, align 1, !range !8
  %421 = icmp eq i8 %420, 0
  %422 = tail call i32 @llvm.bswap.i32(i32 %419) #4
  %423 = select i1 %421, i32 %422, i32 %419
  %424 = add i32 %423, 1
  %425 = tail call i32 @llvm.bswap.i32(i32 %424) #4
  %426 = select i1 %421, i32 %425, i32 %424
  store i32 %426, ptr %0, align 4
  %427 = load i8, ptr @caam_little_end, align 1, !range !8
  %428 = icmp eq i8 %427, 0
  %429 = lshr i32 %426, 24
  %430 = select i1 %428, i32 %429, i32 %426
  %431 = and i32 %430, 127
  %432 = getelementptr i32, ptr %0, i32 %431
  br i1 %4, label %433, label %516

433:                                              ; preds = %262
  %434 = select i1 %428, i32 67109024, i32 -1610612732
  store i32 %434, ptr %432, align 4
  %435 = load i32, ptr %0, align 4
  %436 = load i8, ptr @caam_little_end, align 1, !range !8
  %437 = icmp eq i8 %436, 0
  %438 = tail call i32 @llvm.bswap.i32(i32 %435) #4
  %439 = select i1 %437, i32 %438, i32 %435
  %440 = add i32 %439, 1
  %441 = tail call i32 @llvm.bswap.i32(i32 %440) #4
  %442 = select i1 %437, i32 %441, i32 %440
  store i32 %442, ptr %0, align 4
  %443 = load i32, ptr %344, align 4
  %444 = load i8, ptr @caam_little_end, align 1, !range !8
  %445 = icmp eq i8 %444, 0
  %446 = tail call i32 @llvm.bswap.i32(i32 %443) #4
  %447 = select i1 %445, i32 %446, i32 %443
  %448 = lshr i32 %442, 24
  %449 = select i1 %445, i32 %448, i32 %442
  %450 = and i32 %449, 127
  %451 = sub nsw i32 %450, %343
  %452 = or i32 %451, %447
  %453 = tail call i32 @llvm.bswap.i32(i32 %452) #4
  %454 = select i1 %445, i32 %453, i32 %452
  store i32 %454, ptr %344, align 4
  %455 = load i32, ptr %0, align 4
  %456 = load i8, ptr @caam_little_end, align 1, !range !8
  %457 = icmp eq i8 %456, 0
  %458 = lshr i32 %455, 24
  %459 = select i1 %457, i32 %458, i32 %455
  %460 = and i32 %459, 127
  %461 = getelementptr i32, ptr %0, i32 %460
  %462 = select i1 %457, i32 12843, i32 724697088
  store i32 %462, ptr %461, align 4
  %463 = load i32, ptr %0, align 4
  %464 = load i8, ptr @caam_little_end, align 1, !range !8
  %465 = icmp eq i8 %464, 0
  %466 = tail call i32 @llvm.bswap.i32(i32 %463) #4
  %467 = select i1 %465, i32 %466, i32 %463
  %468 = add i32 %467, 1
  %469 = tail call i32 @llvm.bswap.i32(i32 %468) #4
  %470 = select i1 %465, i32 %469, i32 %468
  store i32 %470, ptr %0, align 4
  %471 = load i8, ptr @caam_little_end, align 1, !range !8
  %472 = icmp eq i8 %471, 0
  %473 = lshr i32 %470, 24
  %474 = select i1 %472, i32 %473, i32 %470
  %475 = and i32 %474, 127
  %476 = getelementptr i32, ptr %0, i32 %475
  %477 = select i1 %472, i32 33554592, i32 -1610612734
  store i32 %477, ptr %476, align 4
  %478 = load i32, ptr %0, align 4
  %479 = load i8, ptr @caam_little_end, align 1, !range !8
  %480 = icmp eq i8 %479, 0
  %481 = tail call i32 @llvm.bswap.i32(i32 %478) #4
  %482 = select i1 %480, i32 %481, i32 %478
  %483 = add i32 %482, 1
  %484 = tail call i32 @llvm.bswap.i32(i32 %483) #4
  %485 = select i1 %480, i32 %484, i32 %483
  store i32 %485, ptr %0, align 4
  %486 = load i32, ptr %234, align 4
  %487 = load i8, ptr @caam_little_end, align 1, !range !8
  %488 = icmp eq i8 %487, 0
  %489 = tail call i32 @llvm.bswap.i32(i32 %486) #4
  %490 = select i1 %488, i32 %489, i32 %486
  %491 = lshr i32 %485, 24
  %492 = select i1 %488, i32 %491, i32 %485
  %493 = and i32 %492, 127
  %494 = sub nsw i32 %493, %233
  %495 = or i32 %494, %490
  %496 = tail call i32 @llvm.bswap.i32(i32 %495) #4
  %497 = select i1 %488, i32 %496, i32 %495
  store i32 %497, ptr %234, align 4
  %498 = or i32 %2, 706936832
  %499 = load i32, ptr %0, align 4
  %500 = load i8, ptr @caam_little_end, align 1, !range !8
  %501 = icmp eq i8 %500, 0
  %502 = lshr i32 %499, 24
  %503 = select i1 %501, i32 %502, i32 %499
  %504 = and i32 %503, 127
  %505 = getelementptr i32, ptr %0, i32 %504
  %506 = tail call i32 @llvm.bswap.i32(i32 %498) #4
  %507 = select i1 %501, i32 %506, i32 %498
  store i32 %507, ptr %505, align 4
  %508 = load i32, ptr %0, align 4
  %509 = load i8, ptr @caam_little_end, align 1, !range !8
  %510 = icmp eq i8 %509, 0
  %511 = tail call i32 @llvm.bswap.i32(i32 %508) #4
  %512 = select i1 %510, i32 %511, i32 %508
  %513 = add i32 %512, 1
  %514 = tail call i32 @llvm.bswap.i32(i32 %513) #4
  %515 = select i1 %510, i32 %514, i32 %513
  store i32 %515, ptr %0, align 4
  br label %567

516:                                              ; preds = %262
  %517 = select i1 %428, i32 33554592, i32 -1610612734
  store i32 %517, ptr %432, align 4
  %518 = load i32, ptr %0, align 4
  %519 = load i8, ptr @caam_little_end, align 1, !range !8
  %520 = icmp eq i8 %519, 0
  %521 = tail call i32 @llvm.bswap.i32(i32 %518) #4
  %522 = select i1 %520, i32 %521, i32 %518
  %523 = add i32 %522, 1
  %524 = tail call i32 @llvm.bswap.i32(i32 %523) #4
  %525 = select i1 %520, i32 %524, i32 %523
  store i32 %525, ptr %0, align 4
  %526 = load i32, ptr %344, align 4
  %527 = load i8, ptr @caam_little_end, align 1, !range !8
  %528 = icmp eq i8 %527, 0
  %529 = tail call i32 @llvm.bswap.i32(i32 %526) #4
  %530 = select i1 %528, i32 %529, i32 %526
  %531 = lshr i32 %525, 24
  %532 = select i1 %528, i32 %531, i32 %525
  %533 = and i32 %532, 127
  %534 = sub nsw i32 %533, %343
  %535 = or i32 %534, %530
  %536 = tail call i32 @llvm.bswap.i32(i32 %535) #4
  %537 = select i1 %528, i32 %536, i32 %535
  store i32 %537, ptr %344, align 4
  %538 = load i32, ptr %0, align 4
  %539 = load i8, ptr @caam_little_end, align 1, !range !8
  %540 = icmp eq i8 %539, 0
  %541 = lshr i32 %538, 24
  %542 = select i1 %540, i32 %541, i32 %538
  %543 = and i32 %542, 127
  %544 = getelementptr i32, ptr %0, i32 %543
  %545 = select i1 %540, i32 12843, i32 724697088
  store i32 %545, ptr %544, align 4
  %546 = load i32, ptr %0, align 4
  %547 = load i8, ptr @caam_little_end, align 1, !range !8
  %548 = icmp eq i8 %547, 0
  %549 = tail call i32 @llvm.bswap.i32(i32 %546) #4
  %550 = select i1 %548, i32 %549, i32 %546
  %551 = add i32 %550, 1
  %552 = tail call i32 @llvm.bswap.i32(i32 %551) #4
  %553 = select i1 %548, i32 %552, i32 %551
  store i32 %553, ptr %0, align 4
  %554 = load i32, ptr %234, align 4
  %555 = load i8, ptr @caam_little_end, align 1, !range !8
  %556 = icmp eq i8 %555, 0
  %557 = tail call i32 @llvm.bswap.i32(i32 %554) #4
  %558 = select i1 %556, i32 %557, i32 %554
  %559 = lshr i32 %553, 24
  %560 = select i1 %556, i32 %559, i32 %553
  %561 = and i32 %560, 127
  %562 = sub nsw i32 %561, %233
  %563 = or i32 %562, %558
  %564 = tail call i32 @llvm.bswap.i32(i32 %563) #4
  %565 = select i1 %556, i32 %564, i32 %563
  store i32 %565, ptr %234, align 4
  %566 = load i32, ptr %0, align 4
  br label %567

567:                                              ; preds = %516, %433
  %568 = phi i32 [ %566, %516 ], [ %515, %433 ]
  %569 = or i32 %3, 1512046592
  %570 = load i8, ptr @caam_little_end, align 1, !range !8
  %571 = icmp eq i8 %570, 0
  %572 = lshr i32 %568, 24
  %573 = select i1 %571, i32 %572, i32 %568
  %574 = and i32 %573, 127
  %575 = getelementptr i32, ptr %0, i32 %574
  %576 = tail call i32 @llvm.bswap.i32(i32 %569) #4
  %577 = select i1 %571, i32 %576, i32 %569
  store i32 %577, ptr %575, align 4
  %578 = load i32, ptr %0, align 4
  %579 = load i8, ptr @caam_little_end, align 1, !range !8
  %580 = icmp eq i8 %579, 0
  %581 = tail call i32 @llvm.bswap.i32(i32 %578) #4
  %582 = select i1 %580, i32 %581, i32 %578
  %583 = add i32 %582, 1
  %584 = tail call i32 @llvm.bswap.i32(i32 %583) #4
  %585 = select i1 %580, i32 %584, i32 %583
  store i32 %585, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_gcm_decap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483634
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  br i1 %4, label %142, label %203

142:                                              ; preds = %109
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %141, 24
  %146 = select i1 %144, i32 %145, i32 %141
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 67373854, i32 504038404
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = lshr i32 %157, 24
  %161 = select i1 %159, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %0, i32 %162
  %164 = select i1 %159, i32 2031777, i32 -1593827584
  store i32 %164, ptr %163, align 4
  %165 = load i32, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #4
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = add i32 %169, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %172 = select i1 %167, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %163, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = lshr i32 %172, 24
  %179 = select i1 %175, i32 %178, i32 %172
  %180 = and i32 %179, 127
  %181 = sub nsw i32 %180, %162
  %182 = or i32 %181, %177
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %175, i32 %183, i32 %182
  store i32 %184, ptr %163, align 4
  %185 = or i32 %2, 706805760
  %186 = load i32, ptr %0, align 4
  %187 = load i8, ptr @caam_little_end, align 1, !range !8
  %188 = icmp eq i8 %187, 0
  %189 = lshr i32 %186, 24
  %190 = select i1 %188, i32 %189, i32 %186
  %191 = and i32 %190, 127
  %192 = getelementptr i32, ptr %0, i32 %191
  %193 = tail call i32 @llvm.bswap.i32(i32 %185) #4
  %194 = select i1 %188, i32 %193, i32 %185
  store i32 %194, ptr %192, align 4
  %195 = load i32, ptr %0, align 4
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = tail call i32 @llvm.bswap.i32(i32 %195) #4
  %199 = select i1 %197, i32 %198, i32 %195
  %200 = add i32 %199, 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #4
  %202 = select i1 %197, i32 %201, i32 %200
  store i32 %202, ptr %0, align 4
  br label %203

203:                                              ; preds = %142, %109
  %204 = phi i32 [ %202, %142 ], [ %141, %109 ]
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = lshr i32 %204, 24
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = and i32 %208, 127
  %210 = getelementptr i32, ptr %0, i32 %209
  %211 = select i1 %206, i32 70913192, i32 -1475593724
  store i32 %211, ptr %210, align 4
  %212 = load i32, ptr %0, align 4
  %213 = load i8, ptr @caam_little_end, align 1, !range !8
  %214 = icmp eq i8 %213, 0
  %215 = tail call i32 @llvm.bswap.i32(i32 %212) #4
  %216 = select i1 %214, i32 %215, i32 %212
  %217 = add i32 %216, 1
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #4
  %219 = select i1 %214, i32 %218, i32 %217
  store i32 %219, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = lshr i32 %219, 24
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = and i32 %223, 127
  %225 = getelementptr i32, ptr %0, i32 %224
  %226 = select i1 %221, i32 262304, i32 -1610611712
  store i32 %226, ptr %225, align 4
  %227 = load i32, ptr %0, align 4
  %228 = load i8, ptr @caam_little_end, align 1, !range !8
  %229 = icmp eq i8 %228, 0
  %230 = tail call i32 @llvm.bswap.i32(i32 %227) #4
  %231 = select i1 %229, i32 %230, i32 %227
  %232 = add i32 %231, 1
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #4
  %234 = select i1 %229, i32 %233, i32 %232
  store i32 %234, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = lshr i32 %234, 24
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = and i32 %238, 127
  %240 = getelementptr i32, ptr %0, i32 %239
  %241 = select i1 %236, i32 70978728, i32 -1475593468
  store i32 %241, ptr %240, align 4
  %242 = load i32, ptr %0, align 4
  %243 = load i8, ptr @caam_little_end, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  %245 = tail call i32 @llvm.bswap.i32(i32 %242) #4
  %246 = select i1 %244, i32 %245, i32 %242
  %247 = add i32 %246, 1
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #4
  %249 = select i1 %244, i32 %248, i32 %247
  store i32 %249, ptr %0, align 4
  %250 = load i8, ptr @caam_little_end, align 1, !range !8
  %251 = icmp eq i8 %250, 0
  %252 = lshr i32 %249, 24
  %253 = select i1 %251, i32 %252, i32 %249
  %254 = and i32 %253, 127
  %255 = getelementptr i32, ptr %0, i32 %254
  %256 = select i1 %251, i32 16233, i32 1765736448
  store i32 %256, ptr %255, align 4
  %257 = load i32, ptr %0, align 4
  %258 = load i8, ptr @caam_little_end, align 1, !range !8
  %259 = icmp eq i8 %258, 0
  %260 = tail call i32 @llvm.bswap.i32(i32 %257) #4
  %261 = select i1 %259, i32 %260, i32 %257
  %262 = add i32 %261, 1
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #4
  %264 = select i1 %259, i32 %263, i32 %262
  store i32 %264, ptr %0, align 4
  %265 = load i8, ptr @caam_little_end, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = lshr i32 %264, 24
  %268 = select i1 %266, i32 %267, i32 %264
  %269 = and i32 %268, 127
  %270 = getelementptr i32, ptr %0, i32 %269
  %271 = select i1 %266, i32 12587, i32 724631552
  store i32 %271, ptr %270, align 4
  %272 = load i32, ptr %0, align 4
  %273 = load i8, ptr @caam_little_end, align 1, !range !8
  %274 = icmp eq i8 %273, 0
  %275 = tail call i32 @llvm.bswap.i32(i32 %272) #4
  %276 = select i1 %274, i32 %275, i32 %272
  %277 = add i32 %276, 1
  %278 = tail call i32 @llvm.bswap.i32(i32 %277) #4
  %279 = select i1 %274, i32 %278, i32 %277
  store i32 %279, ptr %0, align 4
  %280 = load i32, ptr %225, align 4
  %281 = load i8, ptr @caam_little_end, align 1, !range !8
  %282 = icmp eq i8 %281, 0
  %283 = tail call i32 @llvm.bswap.i32(i32 %280) #4
  %284 = select i1 %282, i32 %283, i32 %280
  %285 = lshr i32 %279, 24
  %286 = select i1 %282, i32 %285, i32 %279
  %287 = and i32 %286, 127
  %288 = sub nsw i32 %287, %224
  %289 = or i32 %288, %284
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #4
  %291 = select i1 %282, i32 %290, i32 %289
  store i32 %291, ptr %225, align 4
  %292 = load i32, ptr %0, align 4
  %293 = load i8, ptr @caam_little_end, align 1, !range !8
  %294 = icmp eq i8 %293, 0
  %295 = lshr i32 %292, 24
  %296 = select i1 %294, i32 %295, i32 %292
  %297 = and i32 %296, 127
  %298 = getelementptr i32, ptr %0, i32 %297
  %299 = select i1 %294, i32 67774888, i32 -1473705468
  store i32 %299, ptr %298, align 4
  %300 = load i32, ptr %0, align 4
  %301 = load i8, ptr @caam_little_end, align 1, !range !8
  %302 = icmp eq i8 %301, 0
  %303 = tail call i32 @llvm.bswap.i32(i32 %300) #4
  %304 = select i1 %302, i32 %303, i32 %300
  %305 = add i32 %304, 1
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #4
  %307 = select i1 %302, i32 %306, i32 %305
  store i32 %307, ptr %0, align 4
  %308 = load i8, ptr @caam_little_end, align 1, !range !8
  %309 = icmp eq i8 %308, 0
  %310 = lshr i32 %307, 24
  %311 = select i1 %309, i32 %310, i32 %307
  %312 = and i32 %311, 127
  %313 = getelementptr i32, ptr %0, i32 %312
  %314 = select i1 %309, i32 262304, i32 -1610611712
  store i32 %314, ptr %313, align 4
  %315 = load i32, ptr %0, align 4
  %316 = load i8, ptr @caam_little_end, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = tail call i32 @llvm.bswap.i32(i32 %315) #4
  %319 = select i1 %317, i32 %318, i32 %315
  %320 = add i32 %319, 1
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #4
  %322 = select i1 %317, i32 %321, i32 %320
  store i32 %322, ptr %0, align 4
  %323 = load i8, ptr @caam_little_end, align 1, !range !8
  %324 = icmp eq i8 %323, 0
  %325 = lshr i32 %322, 24
  %326 = select i1 %324, i32 %325, i32 %322
  %327 = and i32 %326, 127
  %328 = getelementptr i32, ptr %0, i32 %327
  %329 = select i1 %324, i32 67840424, i32 -1473705212
  store i32 %329, ptr %328, align 4
  %330 = load i32, ptr %0, align 4
  %331 = load i8, ptr @caam_little_end, align 1, !range !8
  %332 = icmp eq i8 %331, 0
  %333 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %334 = select i1 %332, i32 %333, i32 %330
  %335 = add i32 %334, 1
  %336 = tail call i32 @llvm.bswap.i32(i32 %335) #4
  %337 = select i1 %332, i32 %336, i32 %335
  store i32 %337, ptr %0, align 4
  %338 = load i8, ptr @caam_little_end, align 1, !range !8
  %339 = icmp eq i8 %338, 0
  %340 = lshr i32 %337, 24
  %341 = select i1 %339, i32 %340, i32 %337
  %342 = and i32 %341, 127
  %343 = getelementptr i32, ptr %0, i32 %342
  %344 = select i1 %339, i32 12393, i32 1764753408
  store i32 %344, ptr %343, align 4
  %345 = load i32, ptr %0, align 4
  %346 = load i8, ptr @caam_little_end, align 1, !range !8
  %347 = icmp eq i8 %346, 0
  %348 = tail call i32 @llvm.bswap.i32(i32 %345) #4
  %349 = select i1 %347, i32 %348, i32 %345
  %350 = add i32 %349, 1
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #4
  %352 = select i1 %347, i32 %351, i32 %350
  store i32 %352, ptr %0, align 4
  %353 = load i8, ptr @caam_little_end, align 1, !range !8
  %354 = icmp eq i8 %353, 0
  %355 = lshr i32 %352, 24
  %356 = select i1 %354, i32 %355, i32 %352
  %357 = and i32 %356, 127
  %358 = getelementptr i32, ptr %0, i32 %357
  %359 = select i1 %354, i32 4395, i32 722534400
  store i32 %359, ptr %358, align 4
  %360 = load i32, ptr %0, align 4
  %361 = load i8, ptr @caam_little_end, align 1, !range !8
  %362 = icmp eq i8 %361, 0
  %363 = tail call i32 @llvm.bswap.i32(i32 %360) #4
  %364 = select i1 %362, i32 %363, i32 %360
  %365 = add i32 %364, 1
  %366 = tail call i32 @llvm.bswap.i32(i32 %365) #4
  %367 = select i1 %362, i32 %366, i32 %365
  store i32 %367, ptr %0, align 4
  %368 = load i32, ptr %313, align 4
  %369 = load i8, ptr @caam_little_end, align 1, !range !8
  %370 = icmp eq i8 %369, 0
  %371 = tail call i32 @llvm.bswap.i32(i32 %368) #4
  %372 = select i1 %370, i32 %371, i32 %368
  %373 = lshr i32 %367, 24
  %374 = select i1 %370, i32 %373, i32 %367
  %375 = and i32 %374, 127
  %376 = sub nsw i32 %375, %312
  %377 = or i32 %376, %372
  %378 = tail call i32 @llvm.bswap.i32(i32 %377) #4
  %379 = select i1 %370, i32 %378, i32 %377
  store i32 %379, ptr %313, align 4
  %380 = or i32 %3, 708444160
  %381 = load i32, ptr %0, align 4
  %382 = load i8, ptr @caam_little_end, align 1, !range !8
  %383 = icmp eq i8 %382, 0
  %384 = lshr i32 %381, 24
  %385 = select i1 %383, i32 %384, i32 %381
  %386 = and i32 %385, 127
  %387 = getelementptr i32, ptr %0, i32 %386
  %388 = tail call i32 @llvm.bswap.i32(i32 %380) #4
  %389 = select i1 %383, i32 %388, i32 %380
  store i32 %389, ptr %387, align 4
  %390 = load i32, ptr %0, align 4
  %391 = load i8, ptr @caam_little_end, align 1, !range !8
  %392 = icmp eq i8 %391, 0
  %393 = tail call i32 @llvm.bswap.i32(i32 %390) #4
  %394 = select i1 %392, i32 %393, i32 %390
  %395 = add i32 %394, 1
  %396 = tail call i32 @llvm.bswap.i32(i32 %395) #4
  %397 = select i1 %392, i32 %396, i32 %395
  store i32 %397, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_rfc4106_encap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483635
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  br i1 %4, label %142, label %238

142:                                              ; preds = %109
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %141, 24
  %146 = select i1 %144, i32 %145, i32 %141
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 67373854, i32 504038404
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = lshr i32 %157, 24
  %161 = select i1 %159, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %0, i32 %162
  %164 = select i1 %159, i32 2031777, i32 -1593827584
  store i32 %164, ptr %163, align 4
  %165 = load i32, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #4
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = add i32 %169, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %172 = select i1 %167, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %163, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = lshr i32 %172, 24
  %179 = select i1 %175, i32 %178, i32 %172
  %180 = and i32 %179, 127
  %181 = sub nsw i32 %180, %162
  %182 = or i32 %181, %177
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %175, i32 %183, i32 %182
  store i32 %184, ptr %163, align 4
  %185 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr i8, ptr %186, i32 %188
  %190 = load i32, ptr %0, align 4
  %191 = load i8, ptr @caam_little_end, align 1, !range !8
  %192 = icmp eq i8 %191, 0
  %193 = lshr i32 %190, 24
  %194 = select i1 %192, i32 %193, i32 %190
  %195 = and i32 %194, 127
  %196 = getelementptr i32, ptr %0, i32 %195
  %197 = select i1 %192, i32 67149858, i32 580911108
  store i32 %197, ptr %196, align 4
  %198 = load i32, ptr %0, align 4
  %199 = load i8, ptr @caam_little_end, align 1, !range !8
  %200 = icmp eq i8 %199, 0
  %201 = tail call i32 @llvm.bswap.i32(i32 %198) #4
  %202 = select i1 %200, i32 %201, i32 %198
  %203 = add i32 %202, 1
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #4
  %205 = select i1 %200, i32 %204, i32 %203
  store i32 %205, ptr %0, align 4
  %206 = load i8, ptr @caam_little_end, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = lshr i32 %205, 24
  %209 = select i1 %207, i32 %208, i32 %205
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %0, i32 %210
  %212 = load i32, ptr %189, align 1
  store i32 %212, ptr %211, align 4
  %213 = load i32, ptr %0, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #4
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = add i32 %217, 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %220 = select i1 %215, i32 %219, i32 %218
  store i32 %220, ptr %0, align 4
  %221 = or i32 %2, 706805760
  %222 = load i8, ptr @caam_little_end, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  %224 = lshr i32 %220, 24
  %225 = select i1 %223, i32 %224, i32 %220
  %226 = and i32 %225, 127
  %227 = getelementptr i32, ptr %0, i32 %226
  %228 = tail call i32 @llvm.bswap.i32(i32 %221) #4
  %229 = select i1 %223, i32 %228, i32 %221
  store i32 %229, ptr %227, align 4
  %230 = load i32, ptr %0, align 4
  %231 = load i8, ptr @caam_little_end, align 1, !range !8
  %232 = icmp eq i8 %231, 0
  %233 = tail call i32 @llvm.bswap.i32(i32 %230) #4
  %234 = select i1 %232, i32 %233, i32 %230
  %235 = add i32 %234, 1
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #4
  %237 = select i1 %232, i32 %236, i32 %235
  store i32 %237, ptr %0, align 4
  br label %238

238:                                              ; preds = %142, %109
  %239 = phi i32 [ %141, %109 ], [ %237, %142 ]
  %240 = load i8, ptr @caam_little_end, align 1, !range !8
  %241 = icmp eq i8 %240, 0
  %242 = lshr i32 %239, 24
  %243 = select i1 %241, i32 %242, i32 %239
  %244 = and i32 %243, 127
  %245 = getelementptr i32, ptr %0, i32 %244
  %246 = select i1 %241, i32 71967656, i32 -1474082300
  store i32 %246, ptr %245, align 4
  %247 = load i32, ptr %0, align 4
  %248 = load i8, ptr @caam_little_end, align 1, !range !8
  %249 = icmp eq i8 %248, 0
  %250 = tail call i32 @llvm.bswap.i32(i32 %247) #4
  %251 = select i1 %249, i32 %250, i32 %247
  %252 = add i32 %251, 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %254 = select i1 %249, i32 %253, i32 %252
  store i32 %254, ptr %0, align 4
  %255 = load i8, ptr @caam_little_end, align 1, !range !8
  %256 = icmp eq i8 %255, 0
  %257 = lshr i32 %254, 24
  %258 = select i1 %256, i32 %257, i32 %254
  %259 = and i32 %258, 127
  %260 = getelementptr i32, ptr %0, i32 %259
  %261 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %262 = select i1 %256, i32 %261, i32 %2
  store i32 %262, ptr %260, align 4
  %263 = load i32, ptr %0, align 4
  %264 = load i8, ptr @caam_little_end, align 1, !range !8
  %265 = icmp eq i8 %264, 0
  %266 = tail call i32 @llvm.bswap.i32(i32 %263) #4
  %267 = select i1 %265, i32 %266, i32 %263
  %268 = add i32 %267, 1
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #4
  %270 = select i1 %265, i32 %269, i32 %268
  store i32 %270, ptr %0, align 4
  %271 = load i8, ptr @caam_little_end, align 1, !range !8
  %272 = icmp eq i8 %271, 0
  %273 = lshr i32 %270, 24
  %274 = select i1 %272, i32 %273, i32 %270
  %275 = and i32 %274, 127
  %276 = getelementptr i32, ptr %0, i32 %275
  %277 = select i1 %272, i32 70978728, i32 -1475593468
  store i32 %277, ptr %276, align 4
  %278 = load i32, ptr %0, align 4
  %279 = load i8, ptr @caam_little_end, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  %281 = tail call i32 @llvm.bswap.i32(i32 %278) #4
  %282 = select i1 %280, i32 %281, i32 %278
  %283 = add i32 %282, 1
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #4
  %285 = select i1 %280, i32 %284, i32 %283
  store i32 %285, ptr %0, align 4
  %286 = load i8, ptr @caam_little_end, align 1, !range !8
  %287 = icmp eq i8 %286, 0
  %288 = lshr i32 %285, 24
  %289 = select i1 %287, i32 %288, i32 %285
  %290 = and i32 %289, 127
  %291 = getelementptr i32, ptr %0, i32 %290
  %292 = select i1 %287, i32 16233, i32 1765736448
  store i32 %292, ptr %291, align 4
  %293 = load i32, ptr %0, align 4
  %294 = load i8, ptr @caam_little_end, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %297 = select i1 %295, i32 %296, i32 %293
  %298 = add i32 %297, 1
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #4
  %300 = select i1 %295, i32 %299, i32 %298
  store i32 %300, ptr %0, align 4
  %301 = load i8, ptr @caam_little_end, align 1, !range !8
  %302 = icmp eq i8 %301, 0
  %303 = lshr i32 %300, 24
  %304 = select i1 %302, i32 %303, i32 %300
  %305 = and i32 %304, 127
  %306 = getelementptr i32, ptr %0, i32 %305
  %307 = select i1 %302, i32 70985896, i32 -1473758460
  store i32 %307, ptr %306, align 4
  %308 = load i32, ptr %0, align 4
  %309 = load i8, ptr @caam_little_end, align 1, !range !8
  %310 = icmp eq i8 %309, 0
  %311 = tail call i32 @llvm.bswap.i32(i32 %308) #4
  %312 = select i1 %310, i32 %311, i32 %308
  %313 = add i32 %312, 1
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #4
  %315 = select i1 %310, i32 %314, i32 %313
  store i32 %315, ptr %0, align 4
  %316 = load i8, ptr @caam_little_end, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = lshr i32 %315, 24
  %319 = select i1 %317, i32 %318, i32 %315
  %320 = and i32 %319, 127
  %321 = getelementptr i32, ptr %0, i32 %320
  %322 = select i1 %317, i32 262304, i32 -1610611712
  store i32 %322, ptr %321, align 4
  %323 = load i32, ptr %0, align 4
  %324 = load i8, ptr @caam_little_end, align 1, !range !8
  %325 = icmp eq i8 %324, 0
  %326 = tail call i32 @llvm.bswap.i32(i32 %323) #4
  %327 = select i1 %325, i32 %326, i32 %323
  %328 = add i32 %327, 1
  %329 = tail call i32 @llvm.bswap.i32(i32 %328) #4
  %330 = select i1 %325, i32 %329, i32 %328
  store i32 %330, ptr %0, align 4
  %331 = load i8, ptr @caam_little_end, align 1, !range !8
  %332 = icmp eq i8 %331, 0
  %333 = lshr i32 %330, 24
  %334 = select i1 %332, i32 %333, i32 %330
  %335 = and i32 %334, 127
  %336 = getelementptr i32, ptr %0, i32 %335
  %337 = select i1 %332, i32 12587, i32 724631552
  store i32 %337, ptr %336, align 4
  %338 = load i32, ptr %0, align 4
  %339 = load i8, ptr @caam_little_end, align 1, !range !8
  %340 = icmp eq i8 %339, 0
  %341 = tail call i32 @llvm.bswap.i32(i32 %338) #4
  %342 = select i1 %340, i32 %341, i32 %338
  %343 = add i32 %342, 1
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #4
  %345 = select i1 %340, i32 %344, i32 %343
  store i32 %345, ptr %0, align 4
  %346 = load i8, ptr @caam_little_end, align 1, !range !8
  %347 = icmp eq i8 %346, 0
  %348 = lshr i32 %345, 24
  %349 = select i1 %347, i32 %348, i32 %345
  %350 = and i32 %349, 127
  %351 = getelementptr i32, ptr %0, i32 %350
  %352 = select i1 %347, i32 12392, i32 1747976192
  store i32 %352, ptr %351, align 4
  %353 = load i32, ptr %0, align 4
  %354 = load i8, ptr @caam_little_end, align 1, !range !8
  %355 = icmp eq i8 %354, 0
  %356 = tail call i32 @llvm.bswap.i32(i32 %353) #4
  %357 = select i1 %355, i32 %356, i32 %353
  %358 = add i32 %357, 1
  %359 = tail call i32 @llvm.bswap.i32(i32 %358) #4
  %360 = select i1 %355, i32 %359, i32 %358
  store i32 %360, ptr %0, align 4
  %361 = or i32 %2, 671088640
  %362 = load i8, ptr @caam_little_end, align 1, !range !8
  %363 = icmp eq i8 %362, 0
  %364 = lshr i32 %360, 24
  %365 = select i1 %363, i32 %364, i32 %360
  %366 = and i32 %365, 127
  %367 = getelementptr i32, ptr %0, i32 %366
  %368 = tail call i32 @llvm.bswap.i32(i32 %361) #4
  %369 = select i1 %363, i32 %368, i32 %361
  store i32 %369, ptr %367, align 4
  %370 = load i32, ptr %0, align 4
  %371 = load i8, ptr @caam_little_end, align 1, !range !8
  %372 = icmp eq i8 %371, 0
  %373 = tail call i32 @llvm.bswap.i32(i32 %370) #4
  %374 = select i1 %372, i32 %373, i32 %370
  %375 = add i32 %374, 1
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #4
  %377 = select i1 %372, i32 %376, i32 %375
  store i32 %377, ptr %0, align 4
  %378 = load i8, ptr @caam_little_end, align 1, !range !8
  %379 = icmp eq i8 %378, 0
  %380 = lshr i32 %377, 24
  %381 = select i1 %379, i32 %380, i32 %377
  %382 = and i32 %381, 127
  %383 = getelementptr i32, ptr %0, i32 %382
  %384 = select i1 %379, i32 67767208, i32 -1475671548
  store i32 %384, ptr %383, align 4
  %385 = load i32, ptr %0, align 4
  %386 = load i8, ptr @caam_little_end, align 1, !range !8
  %387 = icmp eq i8 %386, 0
  %388 = tail call i32 @llvm.bswap.i32(i32 %385) #4
  %389 = select i1 %387, i32 %388, i32 %385
  %390 = add i32 %389, 1
  %391 = tail call i32 @llvm.bswap.i32(i32 %390) #4
  %392 = select i1 %387, i32 %391, i32 %390
  store i32 %392, ptr %0, align 4
  %393 = load i8, ptr @caam_little_end, align 1, !range !8
  %394 = icmp eq i8 %393, 0
  %395 = lshr i32 %392, 24
  %396 = select i1 %394, i32 %395, i32 %392
  %397 = and i32 %396, 127
  %398 = getelementptr i32, ptr %0, i32 %397
  %399 = select i1 %394, i32 12393, i32 1764753408
  store i32 %399, ptr %398, align 4
  %400 = load i32, ptr %0, align 4
  %401 = load i8, ptr @caam_little_end, align 1, !range !8
  %402 = icmp eq i8 %401, 0
  %403 = tail call i32 @llvm.bswap.i32(i32 %400) #4
  %404 = select i1 %402, i32 %403, i32 %400
  %405 = add i32 %404, 1
  %406 = tail call i32 @llvm.bswap.i32(i32 %405) #4
  %407 = select i1 %402, i32 %406, i32 %405
  store i32 %407, ptr %0, align 4
  %408 = load i8, ptr @caam_little_end, align 1, !range !8
  %409 = icmp eq i8 %408, 0
  %410 = lshr i32 %407, 24
  %411 = select i1 %409, i32 %410, i32 %407
  %412 = and i32 %411, 127
  %413 = getelementptr i32, ptr %0, i32 %412
  %414 = select i1 %409, i32 4651, i32 722599936
  store i32 %414, ptr %413, align 4
  %415 = load i32, ptr %0, align 4
  %416 = load i8, ptr @caam_little_end, align 1, !range !8
  %417 = icmp eq i8 %416, 0
  %418 = tail call i32 @llvm.bswap.i32(i32 %415) #4
  %419 = select i1 %417, i32 %418, i32 %415
  %420 = add i32 %419, 1
  %421 = tail call i32 @llvm.bswap.i32(i32 %420) #4
  %422 = select i1 %417, i32 %421, i32 %420
  store i32 %422, ptr %0, align 4
  %423 = load i8, ptr @caam_little_end, align 1, !range !8
  %424 = icmp eq i8 %423, 0
  %425 = lshr i32 %422, 24
  %426 = select i1 %424, i32 %425, i32 %422
  %427 = and i32 %426, 127
  %428 = getelementptr i32, ptr %0, i32 %427
  %429 = select i1 %424, i32 160, i32 -1610612736
  store i32 %429, ptr %428, align 4
  %430 = load i32, ptr %0, align 4
  %431 = load i8, ptr @caam_little_end, align 1, !range !8
  %432 = icmp eq i8 %431, 0
  %433 = tail call i32 @llvm.bswap.i32(i32 %430) #4
  %434 = select i1 %432, i32 %433, i32 %430
  %435 = add i32 %434, 1
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #4
  %437 = select i1 %432, i32 %436, i32 %435
  store i32 %437, ptr %0, align 4
  %438 = load i32, ptr %321, align 4
  %439 = load i8, ptr @caam_little_end, align 1, !range !8
  %440 = icmp eq i8 %439, 0
  %441 = tail call i32 @llvm.bswap.i32(i32 %438) #4
  %442 = select i1 %440, i32 %441, i32 %438
  %443 = lshr i32 %437, 24
  %444 = select i1 %440, i32 %443, i32 %437
  %445 = and i32 %444, 127
  %446 = sub nsw i32 %445, %320
  %447 = or i32 %446, %442
  %448 = tail call i32 @llvm.bswap.i32(i32 %447) #4
  %449 = select i1 %440, i32 %448, i32 %447
  store i32 %449, ptr %321, align 4
  %450 = load i32, ptr %0, align 4
  %451 = load i8, ptr @caam_little_end, align 1, !range !8
  %452 = icmp eq i8 %451, 0
  %453 = lshr i32 %450, 24
  %454 = select i1 %452, i32 %453, i32 %450
  %455 = and i32 %454, 127
  %456 = getelementptr i32, ptr %0, i32 %455
  %457 = select i1 %452, i32 12843, i32 724697088
  store i32 %457, ptr %456, align 4
  %458 = load i32, ptr %0, align 4
  %459 = load i8, ptr @caam_little_end, align 1, !range !8
  %460 = icmp eq i8 %459, 0
  %461 = tail call i32 @llvm.bswap.i32(i32 %458) #4
  %462 = select i1 %460, i32 %461, i32 %458
  %463 = add i32 %462, 1
  %464 = tail call i32 @llvm.bswap.i32(i32 %463) #4
  %465 = select i1 %460, i32 %464, i32 %463
  store i32 %465, ptr %0, align 4
  %466 = load i32, ptr %428, align 4
  %467 = load i8, ptr @caam_little_end, align 1, !range !8
  %468 = icmp eq i8 %467, 0
  %469 = tail call i32 @llvm.bswap.i32(i32 %466) #4
  %470 = select i1 %468, i32 %469, i32 %466
  %471 = lshr i32 %465, 24
  %472 = select i1 %468, i32 %471, i32 %465
  %473 = and i32 %472, 127
  %474 = sub nsw i32 %473, %427
  %475 = or i32 %474, %470
  %476 = tail call i32 @llvm.bswap.i32(i32 %475) #4
  %477 = select i1 %468, i32 %476, i32 %475
  store i32 %477, ptr %428, align 4
  %478 = or i32 %3, 1512046592
  %479 = load i32, ptr %0, align 4
  %480 = load i8, ptr @caam_little_end, align 1, !range !8
  %481 = icmp eq i8 %480, 0
  %482 = lshr i32 %479, 24
  %483 = select i1 %481, i32 %482, i32 %479
  %484 = and i32 %483, 127
  %485 = getelementptr i32, ptr %0, i32 %484
  %486 = tail call i32 @llvm.bswap.i32(i32 %478) #4
  %487 = select i1 %481, i32 %486, i32 %478
  store i32 %487, ptr %485, align 4
  %488 = load i32, ptr %0, align 4
  %489 = load i8, ptr @caam_little_end, align 1, !range !8
  %490 = icmp eq i8 %489, 0
  %491 = tail call i32 @llvm.bswap.i32(i32 %488) #4
  %492 = select i1 %490, i32 %491, i32 %488
  %493 = add i32 %492, 1
  %494 = tail call i32 @llvm.bswap.i32(i32 %493) #4
  %495 = select i1 %490, i32 %494, i32 %493
  store i32 %495, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_rfc4106_decap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483634
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  br i1 %4, label %142, label %238

142:                                              ; preds = %109
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %141, 24
  %146 = select i1 %144, i32 %145, i32 %141
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 67373854, i32 504038404
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = lshr i32 %157, 24
  %161 = select i1 %159, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %0, i32 %162
  %164 = select i1 %159, i32 2031777, i32 -1593827584
  store i32 %164, ptr %163, align 4
  %165 = load i32, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #4
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = add i32 %169, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %172 = select i1 %167, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %163, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = lshr i32 %172, 24
  %179 = select i1 %175, i32 %178, i32 %172
  %180 = and i32 %179, 127
  %181 = sub nsw i32 %180, %162
  %182 = or i32 %181, %177
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = select i1 %175, i32 %183, i32 %182
  store i32 %184, ptr %163, align 4
  %185 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr i8, ptr %186, i32 %188
  %190 = load i32, ptr %0, align 4
  %191 = load i8, ptr @caam_little_end, align 1, !range !8
  %192 = icmp eq i8 %191, 0
  %193 = lshr i32 %190, 24
  %194 = select i1 %192, i32 %193, i32 %190
  %195 = and i32 %194, 127
  %196 = getelementptr i32, ptr %0, i32 %195
  %197 = select i1 %192, i32 67149858, i32 580911108
  store i32 %197, ptr %196, align 4
  %198 = load i32, ptr %0, align 4
  %199 = load i8, ptr @caam_little_end, align 1, !range !8
  %200 = icmp eq i8 %199, 0
  %201 = tail call i32 @llvm.bswap.i32(i32 %198) #4
  %202 = select i1 %200, i32 %201, i32 %198
  %203 = add i32 %202, 1
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #4
  %205 = select i1 %200, i32 %204, i32 %203
  store i32 %205, ptr %0, align 4
  %206 = load i8, ptr @caam_little_end, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = lshr i32 %205, 24
  %209 = select i1 %207, i32 %208, i32 %205
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %0, i32 %210
  %212 = load i32, ptr %189, align 1
  store i32 %212, ptr %211, align 4
  %213 = load i32, ptr %0, align 4
  %214 = load i8, ptr @caam_little_end, align 1, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #4
  %217 = select i1 %215, i32 %216, i32 %213
  %218 = add i32 %217, 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %220 = select i1 %215, i32 %219, i32 %218
  store i32 %220, ptr %0, align 4
  %221 = or i32 %2, 706805760
  %222 = load i8, ptr @caam_little_end, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  %224 = lshr i32 %220, 24
  %225 = select i1 %223, i32 %224, i32 %220
  %226 = and i32 %225, 127
  %227 = getelementptr i32, ptr %0, i32 %226
  %228 = tail call i32 @llvm.bswap.i32(i32 %221) #4
  %229 = select i1 %223, i32 %228, i32 %221
  store i32 %229, ptr %227, align 4
  %230 = load i32, ptr %0, align 4
  %231 = load i8, ptr @caam_little_end, align 1, !range !8
  %232 = icmp eq i8 %231, 0
  %233 = tail call i32 @llvm.bswap.i32(i32 %230) #4
  %234 = select i1 %232, i32 %233, i32 %230
  %235 = add i32 %234, 1
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #4
  %237 = select i1 %232, i32 %236, i32 %235
  store i32 %237, ptr %0, align 4
  br label %238

238:                                              ; preds = %142, %109
  %239 = phi i32 [ %141, %109 ], [ %237, %142 ]
  %240 = load i8, ptr @caam_little_end, align 1, !range !8
  %241 = icmp eq i8 %240, 0
  %242 = lshr i32 %239, 24
  %243 = select i1 %241, i32 %242, i32 %239
  %244 = and i32 %243, 127
  %245 = getelementptr i32, ptr %0, i32 %244
  %246 = select i1 %241, i32 71967656, i32 -1474082300
  store i32 %246, ptr %245, align 4
  %247 = load i32, ptr %0, align 4
  %248 = load i8, ptr @caam_little_end, align 1, !range !8
  %249 = icmp eq i8 %248, 0
  %250 = tail call i32 @llvm.bswap.i32(i32 %247) #4
  %251 = select i1 %249, i32 %250, i32 %247
  %252 = add i32 %251, 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %254 = select i1 %249, i32 %253, i32 %252
  store i32 %254, ptr %0, align 4
  %255 = load i8, ptr @caam_little_end, align 1, !range !8
  %256 = icmp eq i8 %255, 0
  %257 = lshr i32 %254, 24
  %258 = select i1 %256, i32 %257, i32 %254
  %259 = and i32 %258, 127
  %260 = getelementptr i32, ptr %0, i32 %259
  %261 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %262 = select i1 %256, i32 %261, i32 %2
  store i32 %262, ptr %260, align 4
  %263 = load i32, ptr %0, align 4
  %264 = load i8, ptr @caam_little_end, align 1, !range !8
  %265 = icmp eq i8 %264, 0
  %266 = tail call i32 @llvm.bswap.i32(i32 %263) #4
  %267 = select i1 %265, i32 %266, i32 %263
  %268 = add i32 %267, 1
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #4
  %270 = select i1 %265, i32 %269, i32 %268
  store i32 %270, ptr %0, align 4
  %271 = load i8, ptr @caam_little_end, align 1, !range !8
  %272 = icmp eq i8 %271, 0
  %273 = lshr i32 %270, 24
  %274 = select i1 %272, i32 %273, i32 %270
  %275 = and i32 %274, 127
  %276 = getelementptr i32, ptr %0, i32 %275
  %277 = select i1 %272, i32 70978728, i32 -1475593468
  store i32 %277, ptr %276, align 4
  %278 = load i32, ptr %0, align 4
  %279 = load i8, ptr @caam_little_end, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  %281 = tail call i32 @llvm.bswap.i32(i32 %278) #4
  %282 = select i1 %280, i32 %281, i32 %278
  %283 = add i32 %282, 1
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #4
  %285 = select i1 %280, i32 %284, i32 %283
  store i32 %285, ptr %0, align 4
  %286 = load i8, ptr @caam_little_end, align 1, !range !8
  %287 = icmp eq i8 %286, 0
  %288 = lshr i32 %285, 24
  %289 = select i1 %287, i32 %288, i32 %285
  %290 = and i32 %289, 127
  %291 = getelementptr i32, ptr %0, i32 %290
  %292 = select i1 %287, i32 12587, i32 724631552
  store i32 %292, ptr %291, align 4
  %293 = load i32, ptr %0, align 4
  %294 = load i8, ptr @caam_little_end, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %297 = select i1 %295, i32 %296, i32 %293
  %298 = add i32 %297, 1
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #4
  %300 = select i1 %295, i32 %299, i32 %298
  store i32 %300, ptr %0, align 4
  %301 = or i32 %2, 671088640
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = lshr i32 %300, 24
  %305 = select i1 %303, i32 %304, i32 %300
  %306 = and i32 %305, 127
  %307 = getelementptr i32, ptr %0, i32 %306
  %308 = tail call i32 @llvm.bswap.i32(i32 %301) #4
  %309 = select i1 %303, i32 %308, i32 %301
  store i32 %309, ptr %307, align 4
  %310 = load i32, ptr %0, align 4
  %311 = load i8, ptr @caam_little_end, align 1, !range !8
  %312 = icmp eq i8 %311, 0
  %313 = tail call i32 @llvm.bswap.i32(i32 %310) #4
  %314 = select i1 %312, i32 %313, i32 %310
  %315 = add i32 %314, 1
  %316 = tail call i32 @llvm.bswap.i32(i32 %315) #4
  %317 = select i1 %312, i32 %316, i32 %315
  store i32 %317, ptr %0, align 4
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = lshr i32 %317, 24
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = and i32 %321, 127
  %323 = getelementptr i32, ptr %0, i32 %322
  %324 = select i1 %319, i32 70920616, i32 -1473693180
  store i32 %324, ptr %323, align 4
  %325 = load i32, ptr %0, align 4
  %326 = load i8, ptr @caam_little_end, align 1, !range !8
  %327 = icmp eq i8 %326, 0
  %328 = tail call i32 @llvm.bswap.i32(i32 %325) #4
  %329 = select i1 %327, i32 %328, i32 %325
  %330 = add i32 %329, 1
  %331 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %332 = select i1 %327, i32 %331, i32 %330
  store i32 %332, ptr %0, align 4
  %333 = load i8, ptr @caam_little_end, align 1, !range !8
  %334 = icmp eq i8 %333, 0
  %335 = lshr i32 %332, 24
  %336 = select i1 %334, i32 %335, i32 %332
  %337 = and i32 %336, 127
  %338 = getelementptr i32, ptr %0, i32 %337
  %339 = select i1 %334, i32 4138, i32 705691648
  store i32 %339, ptr %338, align 4
  %340 = load i32, ptr %0, align 4
  %341 = load i8, ptr @caam_little_end, align 1, !range !8
  %342 = icmp eq i8 %341, 0
  %343 = tail call i32 @llvm.bswap.i32(i32 %340) #4
  %344 = select i1 %342, i32 %343, i32 %340
  %345 = add i32 %344, 1
  %346 = tail call i32 @llvm.bswap.i32(i32 %345) #4
  %347 = select i1 %342, i32 %346, i32 %345
  store i32 %347, ptr %0, align 4
  %348 = load i8, ptr @caam_little_end, align 1, !range !8
  %349 = icmp eq i8 %348, 0
  %350 = lshr i32 %347, 24
  %351 = select i1 %349, i32 %350, i32 %347
  %352 = and i32 %351, 127
  %353 = getelementptr i32, ptr %0, i32 %352
  %354 = select i1 %349, i32 16233, i32 1765736448
  store i32 %354, ptr %353, align 4
  %355 = load i32, ptr %0, align 4
  %356 = load i8, ptr @caam_little_end, align 1, !range !8
  %357 = icmp eq i8 %356, 0
  %358 = tail call i32 @llvm.bswap.i32(i32 %355) #4
  %359 = select i1 %357, i32 %358, i32 %355
  %360 = add i32 %359, 1
  %361 = tail call i32 @llvm.bswap.i32(i32 %360) #4
  %362 = select i1 %357, i32 %361, i32 %360
  store i32 %362, ptr %0, align 4
  %363 = load i8, ptr @caam_little_end, align 1, !range !8
  %364 = icmp eq i8 %363, 0
  %365 = lshr i32 %362, 24
  %366 = select i1 %364, i32 %365, i32 %362
  %367 = and i32 %366, 127
  %368 = getelementptr i32, ptr %0, i32 %367
  %369 = select i1 %364, i32 67840424, i32 -1473705212
  store i32 %369, ptr %368, align 4
  %370 = load i32, ptr %0, align 4
  %371 = load i8, ptr @caam_little_end, align 1, !range !8
  %372 = icmp eq i8 %371, 0
  %373 = tail call i32 @llvm.bswap.i32(i32 %370) #4
  %374 = select i1 %372, i32 %373, i32 %370
  %375 = add i32 %374, 1
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #4
  %377 = select i1 %372, i32 %376, i32 %375
  store i32 %377, ptr %0, align 4
  %378 = load i8, ptr @caam_little_end, align 1, !range !8
  %379 = icmp eq i8 %378, 0
  %380 = lshr i32 %377, 24
  %381 = select i1 %379, i32 %380, i32 %377
  %382 = and i32 %381, 127
  %383 = getelementptr i32, ptr %0, i32 %382
  %384 = select i1 %379, i32 12393, i32 1764753408
  store i32 %384, ptr %383, align 4
  %385 = load i32, ptr %0, align 4
  %386 = load i8, ptr @caam_little_end, align 1, !range !8
  %387 = icmp eq i8 %386, 0
  %388 = tail call i32 @llvm.bswap.i32(i32 %385) #4
  %389 = select i1 %387, i32 %388, i32 %385
  %390 = add i32 %389, 1
  %391 = tail call i32 @llvm.bswap.i32(i32 %390) #4
  %392 = select i1 %387, i32 %391, i32 %390
  store i32 %392, ptr %0, align 4
  %393 = load i8, ptr @caam_little_end, align 1, !range !8
  %394 = icmp eq i8 %393, 0
  %395 = lshr i32 %392, 24
  %396 = select i1 %394, i32 %395, i32 %392
  %397 = and i32 %396, 127
  %398 = getelementptr i32, ptr %0, i32 %397
  %399 = select i1 %394, i32 4395, i32 722534400
  store i32 %399, ptr %398, align 4
  %400 = load i32, ptr %0, align 4
  %401 = load i8, ptr @caam_little_end, align 1, !range !8
  %402 = icmp eq i8 %401, 0
  %403 = tail call i32 @llvm.bswap.i32(i32 %400) #4
  %404 = select i1 %402, i32 %403, i32 %400
  %405 = add i32 %404, 1
  %406 = tail call i32 @llvm.bswap.i32(i32 %405) #4
  %407 = select i1 %402, i32 %406, i32 %405
  store i32 %407, ptr %0, align 4
  %408 = or i32 %3, 708444160
  %409 = load i8, ptr @caam_little_end, align 1, !range !8
  %410 = icmp eq i8 %409, 0
  %411 = lshr i32 %407, 24
  %412 = select i1 %410, i32 %411, i32 %407
  %413 = and i32 %412, 127
  %414 = getelementptr i32, ptr %0, i32 %413
  %415 = tail call i32 @llvm.bswap.i32(i32 %408) #4
  %416 = select i1 %410, i32 %415, i32 %408
  store i32 %416, ptr %414, align 4
  %417 = load i32, ptr %0, align 4
  %418 = load i8, ptr @caam_little_end, align 1, !range !8
  %419 = icmp eq i8 %418, 0
  %420 = tail call i32 @llvm.bswap.i32(i32 %417) #4
  %421 = select i1 %419, i32 %420, i32 %417
  %422 = add i32 %421, 1
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #4
  %424 = select i1 %419, i32 %423, i32 %422
  store i32 %424, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_rfc4543_encap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483635
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  br i1 %4, label %142, label %210

142:                                              ; preds = %109
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %141, 24
  %146 = select i1 %144, i32 %145, i32 %141
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 67108904, i32 671088644
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i8, ptr %159, i32 %161
  %163 = load i8, ptr @caam_little_end, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  %165 = lshr i32 %157, 24
  %166 = select i1 %164, i32 %165, i32 %157
  %167 = and i32 %166, 127
  %168 = getelementptr i32, ptr %0, i32 %167
  %169 = select i1 %164, i32 67149858, i32 580911108
  store i32 %169, ptr %168, align 4
  %170 = load i32, ptr %0, align 4
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %174 = select i1 %172, i32 %173, i32 %170
  %175 = add i32 %174, 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #4
  %177 = select i1 %172, i32 %176, i32 %175
  store i32 %177, ptr %0, align 4
  %178 = load i8, ptr @caam_little_end, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = lshr i32 %177, 24
  %181 = select i1 %179, i32 %180, i32 %177
  %182 = and i32 %181, 127
  %183 = getelementptr i32, ptr %0, i32 %182
  %184 = load i32, ptr %162, align 1
  store i32 %184, ptr %183, align 4
  %185 = load i32, ptr %0, align 4
  %186 = load i8, ptr @caam_little_end, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %185) #4
  %189 = select i1 %187, i32 %188, i32 %185
  %190 = add i32 %189, 1
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #4
  %192 = select i1 %187, i32 %191, i32 %190
  store i32 %192, ptr %0, align 4
  %193 = or i32 %2, 706805760
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = lshr i32 %192, 24
  %197 = select i1 %195, i32 %196, i32 %192
  %198 = and i32 %197, 127
  %199 = getelementptr i32, ptr %0, i32 %198
  %200 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %201 = select i1 %195, i32 %200, i32 %193
  store i32 %201, ptr %199, align 4
  %202 = load i32, ptr %0, align 4
  %203 = load i8, ptr @caam_little_end, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  %205 = tail call i32 @llvm.bswap.i32(i32 %202) #4
  %206 = select i1 %204, i32 %205, i32 %202
  %207 = add i32 %206, 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #4
  %209 = select i1 %204, i32 %208, i32 %207
  store i32 %209, ptr %0, align 4
  br label %210

210:                                              ; preds = %142, %109
  %211 = phi i32 [ %209, %142 ], [ %141, %109 ]
  %212 = load i8, ptr @caam_little_end, align 1, !range !8
  %213 = icmp eq i8 %212, 0
  %214 = lshr i32 %211, 24
  %215 = select i1 %213, i32 %214, i32 %211
  %216 = and i32 %215, 127
  %217 = getelementptr i32, ptr %0, i32 %216
  %218 = select i1 %213, i32 67315880, i32 -1473772796
  store i32 %218, ptr %217, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %226 = select i1 %221, i32 %225, i32 %224
  store i32 %226, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = lshr i32 %226, 24
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = and i32 %230, 127
  %232 = getelementptr i32, ptr %0, i32 %231
  %233 = select i1 %228, i32 100677496, i32 2016870406
  store i32 %233, ptr %232, align 4
  %234 = load i32, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = add i32 %238, 1
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #4
  %241 = select i1 %236, i32 %240, i32 %239
  store i32 %241, ptr %0, align 4
  %242 = load i8, ptr @caam_little_end, align 1, !range !8
  %243 = icmp eq i8 %242, 0
  %244 = lshr i32 %241, 24
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = and i32 %245, 127
  %247 = getelementptr i32, ptr %0, i32 %246
  %248 = select i1 %243, i32 134247289, i32 2037579784
  store i32 %248, ptr %247, align 4
  %249 = load i32, ptr %0, align 4
  %250 = load i8, ptr @caam_little_end, align 1, !range !8
  %251 = icmp eq i8 %250, 0
  %252 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %253 = select i1 %251, i32 %252, i32 %249
  %254 = add i32 %253, 1
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #4
  %256 = select i1 %251, i32 %255, i32 %254
  store i32 %256, ptr %0, align 4
  %257 = load i8, ptr @caam_little_end, align 1, !range !8
  %258 = icmp eq i8 %257, 0
  %259 = lshr i32 %256, 24
  %260 = select i1 %258, i32 %259, i32 %256
  %261 = and i32 %260, 127
  %262 = getelementptr i32, ptr %0, i32 %261
  %263 = select i1 %258, i32 67774632, i32 -1473771004
  store i32 %263, ptr %262, align 4
  %264 = load i32, ptr %0, align 4
  %265 = load i8, ptr @caam_little_end, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = tail call i32 @llvm.bswap.i32(i32 %264) #4
  %268 = select i1 %266, i32 %267, i32 %264
  %269 = add i32 %268, 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #4
  %271 = select i1 %266, i32 %270, i32 %269
  store i32 %271, ptr %0, align 4
  %272 = load i8, ptr @caam_little_end, align 1, !range !8
  %273 = icmp eq i8 %272, 0
  %274 = lshr i32 %271, 24
  %275 = select i1 %273, i32 %274, i32 %271
  %276 = and i32 %275, 127
  %277 = getelementptr i32, ptr %0, i32 %276
  %278 = select i1 %273, i32 67840168, i32 -1473770748
  store i32 %278, ptr %277, align 4
  %279 = load i32, ptr %0, align 4
  %280 = load i8, ptr @caam_little_end, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  %282 = tail call i32 @llvm.bswap.i32(i32 %279) #4
  %283 = select i1 %281, i32 %282, i32 %279
  %284 = add i32 %283, 1
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #4
  %286 = select i1 %281, i32 %285, i32 %284
  store i32 %286, ptr %0, align 4
  %287 = load i8, ptr @caam_little_end, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  %289 = lshr i32 %286, 24
  %290 = select i1 %288, i32 %289, i32 %286
  %291 = and i32 %290, 127
  %292 = getelementptr i32, ptr %0, i32 %291
  %293 = select i1 %288, i32 12393, i32 1764753408
  store i32 %293, ptr %292, align 4
  %294 = load i32, ptr %0, align 4
  %295 = load i8, ptr @caam_little_end, align 1, !range !8
  %296 = icmp eq i8 %295, 0
  %297 = tail call i32 @llvm.bswap.i32(i32 %294) #4
  %298 = select i1 %296, i32 %297, i32 %294
  %299 = add i32 %298, 1
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #4
  %301 = select i1 %296, i32 %300, i32 %299
  store i32 %301, ptr %0, align 4
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = lshr i32 %301, 24
  %305 = select i1 %303, i32 %304, i32 %301
  %306 = and i32 %305, 127
  %307 = getelementptr i32, ptr %0, i32 %306
  %308 = select i1 %303, i32 13871, i32 792068096
  store i32 %308, ptr %307, align 4
  %309 = load i32, ptr %0, align 4
  %310 = load i8, ptr @caam_little_end, align 1, !range !8
  %311 = icmp eq i8 %310, 0
  %312 = tail call i32 @llvm.bswap.i32(i32 %309) #4
  %313 = select i1 %311, i32 %312, i32 %309
  %314 = add i32 %313, 1
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #4
  %316 = select i1 %311, i32 %315, i32 %314
  store i32 %316, ptr %0, align 4
  %317 = load i32, ptr %232, align 4
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = tail call i32 @llvm.bswap.i32(i32 %317) #4
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = and i32 %321, -65281
  %323 = lshr i32 %316, 24
  %324 = select i1 %319, i32 %323, i32 %316
  %325 = shl i32 %324, 10
  %326 = and i32 %325, 64512
  %327 = or i32 %326, %322
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #4
  %329 = select i1 %319, i32 %328, i32 %327
  store i32 %329, ptr %232, align 4
  %330 = load i32, ptr %247, align 4
  %331 = load i8, ptr @caam_little_end, align 1, !range !8
  %332 = icmp eq i8 %331, 0
  %333 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %334 = select i1 %332, i32 %333, i32 %330
  %335 = and i32 %334, -65281
  %336 = load i32, ptr %0, align 4
  %337 = lshr i32 %336, 24
  %338 = select i1 %332, i32 %337, i32 %336
  %339 = shl i32 %338, 10
  %340 = and i32 %339, 64512
  %341 = or i32 %340, %335
  %342 = tail call i32 @llvm.bswap.i32(i32 %341) #4
  %343 = select i1 %332, i32 %342, i32 %341
  store i32 %343, ptr %247, align 4
  %344 = load i32, ptr %0, align 4
  %345 = load i8, ptr @caam_little_end, align 1, !range !8
  %346 = icmp eq i8 %345, 0
  %347 = lshr i32 %344, 24
  %348 = select i1 %346, i32 %347, i32 %344
  %349 = and i32 %348, 127
  %350 = getelementptr i32, ptr %0, i32 %349
  %351 = select i1 %346, i32 558614, i32 377882624
  store i32 %351, ptr %350, align 4
  %352 = load i32, ptr %0, align 4
  %353 = load i8, ptr @caam_little_end, align 1, !range !8
  %354 = icmp eq i8 %353, 0
  %355 = tail call i32 @llvm.bswap.i32(i32 %352) #4
  %356 = select i1 %354, i32 %355, i32 %352
  %357 = add i32 %356, 1
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #4
  %359 = select i1 %354, i32 %358, i32 %357
  store i32 %359, ptr %0, align 4
  %360 = load i8, ptr @caam_little_end, align 1, !range !8
  %361 = icmp eq i8 %360, 0
  %362 = lshr i32 %359, 24
  %363 = select i1 %361, i32 %362, i32 %359
  %364 = and i32 %363, 127
  %365 = getelementptr i32, ptr %0, i32 %364
  %366 = select i1 %361, i32 37496, i32 2022834176
  store i32 %366, ptr %365, align 4
  %367 = load i32, ptr %0, align 4
  %368 = load i8, ptr @caam_little_end, align 1, !range !8
  %369 = icmp eq i8 %368, 0
  %370 = tail call i32 @llvm.bswap.i32(i32 %367) #4
  %371 = select i1 %369, i32 %370, i32 %367
  %372 = add i32 %371, 1
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #4
  %374 = select i1 %369, i32 %373, i32 %372
  store i32 %374, ptr %0, align 4
  %375 = or i32 %3, 1512046592
  %376 = load i8, ptr @caam_little_end, align 1, !range !8
  %377 = icmp eq i8 %376, 0
  %378 = lshr i32 %374, 24
  %379 = select i1 %377, i32 %378, i32 %374
  %380 = and i32 %379, 127
  %381 = getelementptr i32, ptr %0, i32 %380
  %382 = tail call i32 @llvm.bswap.i32(i32 %375) #4
  %383 = select i1 %377, i32 %382, i32 %375
  store i32 %383, ptr %381, align 4
  %384 = load i32, ptr %0, align 4
  %385 = load i8, ptr @caam_little_end, align 1, !range !8
  %386 = icmp eq i8 %385, 0
  %387 = tail call i32 @llvm.bswap.i32(i32 %384) #4
  %388 = select i1 %386, i32 %387, i32 %384
  %389 = add i32 %388, 1
  %390 = tail call i32 @llvm.bswap.i32(i32 %389) #4
  %391 = select i1 %386, i32 %390, i32 %389
  store i32 %391, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_rfc4543_decap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 16941240, i32 -1199570431
  store i32 %8, ptr %0, align 4
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %8, 24
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = and i32 %12, 57
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = select i1 %10, i32 4194465, i32 -1593819136
  store i32 %15, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i8, ptr @caam_little_end, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %20 = select i1 %18, i32 %19, i32 %16
  %21 = add i32 %20, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %23 = select i1 %18, i32 %22, i32 %21
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 41943040
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %23, 24
  %36 = select i1 %34, i32 %35, i32 %23
  %37 = and i32 %36, 127
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %40 = select i1 %34, i32 %39, i32 %32
  store i32 %40, ptr %38, align 4
  %41 = load i32, ptr %0, align 4
  %42 = load i8, ptr @caam_little_end, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = add i32 %45, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  %48 = select i1 %43, i32 %47, i32 %46
  store i32 %48, ptr %0, align 4
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %27
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %48, 24
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = and i32 %54, 127
  %56 = getelementptr i32, ptr %0, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %56, ptr align 1 %29, i32 %31, i1 false) #4
  %57 = load i32, ptr %0, align 4
  br label %58

58:                                               ; preds = %50, %27
  %59 = phi i32 [ %48, %27 ], [ %57, %50 ]
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = add i32 %31, 3
  %65 = lshr i32 %64, 2
  %66 = add i32 %63, %65
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %68 = select i1 %61, i32 %67, i32 %66
  br label %109

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 33554432
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %23, 24
  %78 = select i1 %76, i32 %77, i32 %23
  %79 = and i32 %78, 127
  %80 = getelementptr i32, ptr %0, i32 %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %82 = select i1 %76, i32 %81, i32 %74
  store i32 %82, ptr %80, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i8, ptr @caam_little_end, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = lshr i32 %90, 24
  %94 = select i1 %92, i32 %93, i32 %90
  %95 = and i32 %94, 127
  %96 = getelementptr i32, ptr %0, i32 %95
  %97 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %98 = select i1 %92, i32 %97, i32 %71
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %0, align 4
  %100 = load i8, ptr @caam_little_end, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %103 = select i1 %101, i32 %102, i32 %99
  %104 = load i32, ptr @caam_ptr_sz, align 4
  %105 = lshr i32 %104, 2
  %106 = add i32 %103, %105
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #4
  %108 = select i1 %101, i32 %107, i32 %106
  br label %109

109:                                              ; preds = %69, %58
  %110 = phi i32 [ %68, %58 ], [ %108, %69 ]
  store i32 %110, ptr %0, align 4
  %111 = load i32, ptr %14, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = lshr i32 %110, 24
  %117 = select i1 %113, i32 %116, i32 %110
  %118 = and i32 %117, 127
  %119 = sub nsw i32 %118, %13
  %120 = or i32 %119, %115
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = select i1 %113, i32 %121, i32 %120
  store i32 %122, ptr %14, align 4
  %123 = load i32, ptr %1, align 4
  %124 = or i32 %123, -2147483634
  %125 = load i32, ptr %0, align 4
  %126 = load i8, ptr @caam_little_end, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = lshr i32 %125, 24
  %129 = select i1 %127, i32 %128, i32 %125
  %130 = and i32 %129, 127
  %131 = getelementptr i32, ptr %0, i32 %130
  %132 = tail call i32 @llvm.bswap.i32(i32 %124) #4
  %133 = select i1 %127, i32 %132, i32 %124
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %0, align 4
  %135 = load i8, ptr @caam_little_end, align 1, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %134) #4
  %138 = select i1 %136, i32 %137, i32 %134
  %139 = add i32 %138, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #4
  %141 = select i1 %136, i32 %140, i32 %139
  store i32 %141, ptr %0, align 4
  br i1 %4, label %142, label %210

142:                                              ; preds = %109
  %143 = load i8, ptr @caam_little_end, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = lshr i32 %141, 24
  %146 = select i1 %144, i32 %145, i32 %141
  %147 = and i32 %146, 127
  %148 = getelementptr i32, ptr %0, i32 %147
  %149 = select i1 %144, i32 67108904, i32 671088644
  store i32 %149, ptr %148, align 4
  %150 = load i32, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %157 = select i1 %152, i32 %156, i32 %155
  store i32 %157, ptr %0, align 4
  %158 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i8, ptr %159, i32 %161
  %163 = load i8, ptr @caam_little_end, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  %165 = lshr i32 %157, 24
  %166 = select i1 %164, i32 %165, i32 %157
  %167 = and i32 %166, 127
  %168 = getelementptr i32, ptr %0, i32 %167
  %169 = select i1 %164, i32 67149858, i32 580911108
  store i32 %169, ptr %168, align 4
  %170 = load i32, ptr %0, align 4
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %174 = select i1 %172, i32 %173, i32 %170
  %175 = add i32 %174, 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #4
  %177 = select i1 %172, i32 %176, i32 %175
  store i32 %177, ptr %0, align 4
  %178 = load i8, ptr @caam_little_end, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = lshr i32 %177, 24
  %181 = select i1 %179, i32 %180, i32 %177
  %182 = and i32 %181, 127
  %183 = getelementptr i32, ptr %0, i32 %182
  %184 = load i32, ptr %162, align 1
  store i32 %184, ptr %183, align 4
  %185 = load i32, ptr %0, align 4
  %186 = load i8, ptr @caam_little_end, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %185) #4
  %189 = select i1 %187, i32 %188, i32 %185
  %190 = add i32 %189, 1
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #4
  %192 = select i1 %187, i32 %191, i32 %190
  store i32 %192, ptr %0, align 4
  %193 = or i32 %2, 706805760
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = lshr i32 %192, 24
  %197 = select i1 %195, i32 %196, i32 %192
  %198 = and i32 %197, 127
  %199 = getelementptr i32, ptr %0, i32 %198
  %200 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %201 = select i1 %195, i32 %200, i32 %193
  store i32 %201, ptr %199, align 4
  %202 = load i32, ptr %0, align 4
  %203 = load i8, ptr @caam_little_end, align 1, !range !8
  %204 = icmp eq i8 %203, 0
  %205 = tail call i32 @llvm.bswap.i32(i32 %202) #4
  %206 = select i1 %204, i32 %205, i32 %202
  %207 = add i32 %206, 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #4
  %209 = select i1 %204, i32 %208, i32 %207
  store i32 %209, ptr %0, align 4
  br label %210

210:                                              ; preds = %142, %109
  %211 = phi i32 [ %209, %142 ], [ %141, %109 ]
  %212 = load i8, ptr @caam_little_end, align 1, !range !8
  %213 = icmp eq i8 %212, 0
  %214 = lshr i32 %211, 24
  %215 = select i1 %213, i32 %214, i32 %211
  %216 = and i32 %215, 127
  %217 = getelementptr i32, ptr %0, i32 %216
  %218 = select i1 %213, i32 67316136, i32 -1473707260
  store i32 %218, ptr %217, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %226 = select i1 %221, i32 %225, i32 %224
  store i32 %226, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = lshr i32 %226, 24
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = and i32 %230, 127
  %232 = getelementptr i32, ptr %0, i32 %231
  %233 = select i1 %228, i32 100677496, i32 2016870406
  store i32 %233, ptr %232, align 4
  %234 = load i32, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = add i32 %238, 1
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #4
  %241 = select i1 %236, i32 %240, i32 %239
  store i32 %241, ptr %0, align 4
  %242 = load i8, ptr @caam_little_end, align 1, !range !8
  %243 = icmp eq i8 %242, 0
  %244 = lshr i32 %241, 24
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = and i32 %245, 127
  %247 = getelementptr i32, ptr %0, i32 %246
  %248 = select i1 %243, i32 134247289, i32 2037579784
  store i32 %248, ptr %247, align 4
  %249 = load i32, ptr %0, align 4
  %250 = load i8, ptr @caam_little_end, align 1, !range !8
  %251 = icmp eq i8 %250, 0
  %252 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %253 = select i1 %251, i32 %252, i32 %249
  %254 = add i32 %253, 1
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #4
  %256 = select i1 %251, i32 %255, i32 %254
  store i32 %256, ptr %0, align 4
  %257 = load i8, ptr @caam_little_end, align 1, !range !8
  %258 = icmp eq i8 %257, 0
  %259 = lshr i32 %256, 24
  %260 = select i1 %258, i32 %259, i32 %256
  %261 = and i32 %260, 127
  %262 = getelementptr i32, ptr %0, i32 %261
  %263 = select i1 %258, i32 67774888, i32 -1473705468
  store i32 %263, ptr %262, align 4
  %264 = load i32, ptr %0, align 4
  %265 = load i8, ptr @caam_little_end, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = tail call i32 @llvm.bswap.i32(i32 %264) #4
  %268 = select i1 %266, i32 %267, i32 %264
  %269 = add i32 %268, 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #4
  %271 = select i1 %266, i32 %270, i32 %269
  store i32 %271, ptr %0, align 4
  %272 = load i8, ptr @caam_little_end, align 1, !range !8
  %273 = icmp eq i8 %272, 0
  %274 = lshr i32 %271, 24
  %275 = select i1 %273, i32 %274, i32 %271
  %276 = and i32 %275, 127
  %277 = getelementptr i32, ptr %0, i32 %276
  %278 = select i1 %273, i32 67840424, i32 -1473705212
  store i32 %278, ptr %277, align 4
  %279 = load i32, ptr %0, align 4
  %280 = load i8, ptr @caam_little_end, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  %282 = tail call i32 @llvm.bswap.i32(i32 %279) #4
  %283 = select i1 %281, i32 %282, i32 %279
  %284 = add i32 %283, 1
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #4
  %286 = select i1 %281, i32 %285, i32 %284
  store i32 %286, ptr %0, align 4
  %287 = load i8, ptr @caam_little_end, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  %289 = lshr i32 %286, 24
  %290 = select i1 %288, i32 %289, i32 %286
  %291 = and i32 %290, 127
  %292 = getelementptr i32, ptr %0, i32 %291
  %293 = select i1 %288, i32 12393, i32 1764753408
  store i32 %293, ptr %292, align 4
  %294 = load i32, ptr %0, align 4
  %295 = load i8, ptr @caam_little_end, align 1, !range !8
  %296 = icmp eq i8 %295, 0
  %297 = tail call i32 @llvm.bswap.i32(i32 %294) #4
  %298 = select i1 %296, i32 %297, i32 %294
  %299 = add i32 %298, 1
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #4
  %301 = select i1 %296, i32 %300, i32 %299
  store i32 %301, ptr %0, align 4
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = lshr i32 %301, 24
  %305 = select i1 %303, i32 %304, i32 %301
  %306 = and i32 %305, 127
  %307 = getelementptr i32, ptr %0, i32 %306
  %308 = select i1 %303, i32 13615, i32 792002560
  store i32 %308, ptr %307, align 4
  %309 = load i32, ptr %0, align 4
  %310 = load i8, ptr @caam_little_end, align 1, !range !8
  %311 = icmp eq i8 %310, 0
  %312 = tail call i32 @llvm.bswap.i32(i32 %309) #4
  %313 = select i1 %311, i32 %312, i32 %309
  %314 = add i32 %313, 1
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #4
  %316 = select i1 %311, i32 %315, i32 %314
  store i32 %316, ptr %0, align 4
  %317 = load i32, ptr %232, align 4
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = tail call i32 @llvm.bswap.i32(i32 %317) #4
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = and i32 %321, -65281
  %323 = lshr i32 %316, 24
  %324 = select i1 %319, i32 %323, i32 %316
  %325 = shl i32 %324, 10
  %326 = and i32 %325, 64512
  %327 = or i32 %326, %322
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #4
  %329 = select i1 %319, i32 %328, i32 %327
  store i32 %329, ptr %232, align 4
  %330 = load i32, ptr %247, align 4
  %331 = load i8, ptr @caam_little_end, align 1, !range !8
  %332 = icmp eq i8 %331, 0
  %333 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %334 = select i1 %332, i32 %333, i32 %330
  %335 = and i32 %334, -65281
  %336 = load i32, ptr %0, align 4
  %337 = lshr i32 %336, 24
  %338 = select i1 %332, i32 %337, i32 %336
  %339 = shl i32 %338, 10
  %340 = and i32 %339, 64512
  %341 = or i32 %340, %335
  %342 = tail call i32 @llvm.bswap.i32(i32 %341) #4
  %343 = select i1 %332, i32 %342, i32 %341
  store i32 %343, ptr %247, align 4
  %344 = load i32, ptr %0, align 4
  %345 = load i8, ptr @caam_little_end, align 1, !range !8
  %346 = icmp eq i8 %345, 0
  %347 = lshr i32 %344, 24
  %348 = select i1 %346, i32 %347, i32 %344
  %349 = and i32 %348, 127
  %350 = getelementptr i32, ptr %0, i32 %349
  %351 = select i1 %346, i32 558614, i32 377882624
  store i32 %351, ptr %350, align 4
  %352 = load i32, ptr %0, align 4
  %353 = load i8, ptr @caam_little_end, align 1, !range !8
  %354 = icmp eq i8 %353, 0
  %355 = tail call i32 @llvm.bswap.i32(i32 %352) #4
  %356 = select i1 %354, i32 %355, i32 %352
  %357 = add i32 %356, 1
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #4
  %359 = select i1 %354, i32 %358, i32 %357
  store i32 %359, ptr %0, align 4
  %360 = load i8, ptr @caam_little_end, align 1, !range !8
  %361 = icmp eq i8 %360, 0
  %362 = lshr i32 %359, 24
  %363 = select i1 %361, i32 %362, i32 %359
  %364 = and i32 %363, 127
  %365 = getelementptr i32, ptr %0, i32 %364
  %366 = select i1 %361, i32 37496, i32 2022834176
  store i32 %366, ptr %365, align 4
  %367 = load i32, ptr %0, align 4
  %368 = load i8, ptr @caam_little_end, align 1, !range !8
  %369 = icmp eq i8 %368, 0
  %370 = tail call i32 @llvm.bswap.i32(i32 %367) #4
  %371 = select i1 %369, i32 %370, i32 %367
  %372 = add i32 %371, 1
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #4
  %374 = select i1 %369, i32 %373, i32 %372
  store i32 %374, ptr %0, align 4
  %375 = load i8, ptr @caam_little_end, align 1, !range !8
  %376 = icmp eq i8 %375, 0
  %377 = lshr i32 %374, 24
  %378 = select i1 %376, i32 %377, i32 %374
  %379 = and i32 %378, 127
  %380 = getelementptr i32, ptr %0, i32 %379
  %381 = select i1 %376, i32 296470, i32 377881600
  store i32 %381, ptr %380, align 4
  %382 = load i32, ptr %0, align 4
  %383 = load i8, ptr @caam_little_end, align 1, !range !8
  %384 = icmp eq i8 %383, 0
  %385 = tail call i32 @llvm.bswap.i32(i32 %382) #4
  %386 = select i1 %384, i32 %385, i32 %382
  %387 = add i32 %386, 1
  %388 = tail call i32 @llvm.bswap.i32(i32 %387) #4
  %389 = select i1 %384, i32 %388, i32 %387
  store i32 %389, ptr %0, align 4
  %390 = or i32 %3, 708444160
  %391 = load i8, ptr @caam_little_end, align 1, !range !8
  %392 = icmp eq i8 %391, 0
  %393 = lshr i32 %389, 24
  %394 = select i1 %392, i32 %393, i32 %389
  %395 = and i32 %394, 127
  %396 = getelementptr i32, ptr %0, i32 %395
  %397 = tail call i32 @llvm.bswap.i32(i32 %390) #4
  %398 = select i1 %392, i32 %397, i32 %390
  store i32 %398, ptr %396, align 4
  %399 = load i32, ptr %0, align 4
  %400 = load i8, ptr @caam_little_end, align 1, !range !8
  %401 = icmp eq i8 %400, 0
  %402 = tail call i32 @llvm.bswap.i32(i32 %399) #4
  %403 = select i1 %401, i32 %402, i32 %399
  %404 = add i32 %403, 1
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #4
  %406 = select i1 %401, i32 %405, i32 %404
  store i32 %406, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_chachapoly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = icmp eq i32 %3, 12
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 17989816, i32 -1199566335
  store i32 %11, ptr %0, align 4
  %12 = load i8, ptr @caam_little_end, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %11, 24
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = and i32 %15, 57
  %17 = getelementptr i32, ptr %0, i32 %16
  %18 = select i1 %13, i32 4194465, i32 -1593819136
  store i32 %18, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = load i8, ptr @caam_little_end, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %23 = select i1 %21, i32 %22, i32 %19
  %24 = add i32 %23, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %26 = select i1 %21, i32 %25, i32 %24
  store i32 %26, ptr %0, align 4
  %27 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 41943040
  %32 = load i8, ptr @caam_little_end, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = lshr i32 %26, 24
  %35 = select i1 %33, i32 %34, i32 %26
  %36 = and i32 %35, 127
  %37 = getelementptr i32, ptr %0, i32 %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %39 = select i1 %33, i32 %38, i32 %31
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %0, align 4
  %41 = load i8, ptr @caam_little_end, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = add i32 %44, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %47 = select i1 %42, i32 %46, i32 %45
  store i32 %47, ptr %0, align 4
  %48 = icmp eq i32 %30, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %7
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %47, 24
  %53 = select i1 %51, i32 %52, i32 %47
  %54 = and i32 %53, 127
  %55 = getelementptr i32, ptr %0, i32 %54
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 1 %28, i32 %30, i1 false) #4
  %56 = load i32, ptr %0, align 4
  br label %57

57:                                               ; preds = %49, %7
  %58 = phi i32 [ %47, %7 ], [ %56, %49 ]
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #4
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = add i32 %30, 3
  %64 = lshr i32 %63, 2
  %65 = add i32 %62, %64
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %67 = select i1 %60, i32 %66, i32 %65
  store i32 %67, ptr %0, align 4
  br i1 %8, label %102, label %68

68:                                               ; preds = %57
  %69 = load ptr, ptr %27, align 4
  %70 = load i32, ptr %29, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = load i8, ptr @caam_little_end, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = lshr i32 %67, 24
  %75 = select i1 %73, i32 %74, i32 %67
  %76 = and i32 %75, 127
  %77 = getelementptr i32, ptr %0, i32 %76
  %78 = select i1 %73, i32 67411986, i32 312476676
  store i32 %78, ptr %77, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #4
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = add i32 %83, 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #4
  %86 = select i1 %81, i32 %85, i32 %84
  store i32 %86, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = lshr i32 %86, 24
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = and i32 %90, 127
  %92 = getelementptr i32, ptr %0, i32 %91
  %93 = load i32, ptr %71, align 1
  store i32 %93, ptr %92, align 4
  %94 = load i32, ptr %0, align 4
  %95 = load i8, ptr @caam_little_end, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #4
  %98 = select i1 %96, i32 %97, i32 %94
  %99 = add i32 %98, 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %101 = select i1 %96, i32 %100, i32 %99
  store i32 %101, ptr %0, align 4
  br label %102

102:                                              ; preds = %68, %57
  %103 = phi i32 [ %101, %68 ], [ %67, %57 ]
  %104 = load i32, ptr %17, align 4
  %105 = load i8, ptr @caam_little_end, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  %107 = tail call i32 @llvm.bswap.i32(i32 %104) #4
  %108 = select i1 %106, i32 %107, i32 %104
  %109 = lshr i32 %103, 24
  %110 = select i1 %106, i32 %109, i32 %103
  %111 = and i32 %110, 127
  %112 = sub nsw i32 %111, %16
  %113 = or i32 %112, %108
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #4
  %115 = select i1 %106, i32 %114, i32 %113
  store i32 %115, ptr %17, align 4
  %116 = load i32, ptr %2, align 4
  br i1 %5, label %117, label %154

117:                                              ; preds = %102
  %118 = or i32 %116, -2147483635
  %119 = load i32, ptr %0, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = lshr i32 %119, 24
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = and i32 %123, 127
  %125 = getelementptr i32, ptr %0, i32 %124
  %126 = tail call i32 @llvm.bswap.i32(i32 %118) #4
  %127 = select i1 %121, i32 %126, i32 %118
  store i32 %127, ptr %125, align 4
  %128 = load i32, ptr %0, align 4
  %129 = load i8, ptr @caam_little_end, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  %131 = tail call i32 @llvm.bswap.i32(i32 %128) #4
  %132 = select i1 %130, i32 %131, i32 %128
  %133 = add i32 %132, 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #4
  %135 = select i1 %130, i32 %134, i32 %133
  store i32 %135, ptr %0, align 4
  %136 = load i32, ptr %1, align 4
  %137 = or i32 %136, -2147483635
  %138 = load i8, ptr @caam_little_end, align 1, !range !8
  %139 = icmp eq i8 %138, 0
  %140 = lshr i32 %135, 24
  %141 = select i1 %139, i32 %140, i32 %135
  %142 = and i32 %141, 127
  %143 = getelementptr i32, ptr %0, i32 %142
  %144 = tail call i32 @llvm.bswap.i32(i32 %137) #4
  %145 = select i1 %139, i32 %144, i32 %137
  store i32 %145, ptr %143, align 4
  %146 = load i32, ptr %0, align 4
  %147 = load i8, ptr @caam_little_end, align 1, !range !8
  %148 = icmp eq i8 %147, 0
  %149 = tail call i32 @llvm.bswap.i32(i32 %146) #4
  %150 = select i1 %148, i32 %149, i32 %146
  %151 = add i32 %150, 1
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #4
  %153 = select i1 %148, i32 %152, i32 %151
  br label %191

154:                                              ; preds = %102
  %155 = or i32 %116, -2147483634
  %156 = load i32, ptr %0, align 4
  %157 = load i8, ptr @caam_little_end, align 1, !range !8
  %158 = icmp eq i8 %157, 0
  %159 = lshr i32 %156, 24
  %160 = select i1 %158, i32 %159, i32 %156
  %161 = and i32 %160, 127
  %162 = getelementptr i32, ptr %0, i32 %161
  %163 = tail call i32 @llvm.bswap.i32(i32 %155) #4
  %164 = select i1 %158, i32 %163, i32 %155
  store i32 %164, ptr %162, align 4
  %165 = load i32, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i32 @llvm.bswap.i32(i32 %165) #4
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = add i32 %169, 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #4
  %172 = select i1 %167, i32 %171, i32 %170
  store i32 %172, ptr %0, align 4
  %173 = load i32, ptr %1, align 4
  %174 = or i32 %173, -2147483636
  %175 = load i8, ptr @caam_little_end, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = lshr i32 %172, 24
  %178 = select i1 %176, i32 %177, i32 %172
  %179 = and i32 %178, 127
  %180 = getelementptr i32, ptr %0, i32 %179
  %181 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %182 = select i1 %176, i32 %181, i32 %174
  store i32 %182, ptr %180, align 4
  %183 = load i32, ptr %0, align 4
  %184 = load i8, ptr @caam_little_end, align 1, !range !8
  %185 = icmp eq i8 %184, 0
  %186 = tail call i32 @llvm.bswap.i32(i32 %183) #4
  %187 = select i1 %185, i32 %186, i32 %183
  %188 = add i32 %187, 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #4
  %190 = select i1 %185, i32 %189, i32 %188
  br label %191

191:                                              ; preds = %154, %117
  %192 = phi i32 [ %190, %154 ], [ %153, %117 ]
  store i32 %192, ptr %0, align 4
  br i1 %6, label %193, label %256

193:                                              ; preds = %191
  %194 = load i8, ptr @caam_little_end, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = lshr i32 %192, 24
  %197 = select i1 %195, i32 %196, i32 %192
  %198 = and i32 %197, 127
  %199 = getelementptr i32, ptr %0, i32 %198
  %200 = select i1 %195, i32 67373854, i32 504038404
  store i32 %200, ptr %199, align 4
  %201 = load i32, ptr %0, align 4
  %202 = load i8, ptr @caam_little_end, align 1, !range !8
  %203 = icmp eq i8 %202, 0
  %204 = tail call i32 @llvm.bswap.i32(i32 %201) #4
  %205 = select i1 %203, i32 %204, i32 %201
  %206 = add i32 %205, 1
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #4
  %208 = select i1 %203, i32 %207, i32 %206
  store i32 %208, ptr %0, align 4
  %209 = load i8, ptr @caam_little_end, align 1, !range !8
  %210 = icmp eq i8 %209, 0
  %211 = lshr i32 %208, 24
  %212 = select i1 %210, i32 %211, i32 %208
  %213 = and i32 %212, 127
  %214 = getelementptr i32, ptr %0, i32 %213
  %215 = select i1 %210, i32 2031777, i32 -1593827584
  store i32 %215, ptr %214, align 4
  %216 = load i32, ptr %0, align 4
  %217 = load i8, ptr @caam_little_end, align 1, !range !8
  %218 = icmp eq i8 %217, 0
  %219 = tail call i32 @llvm.bswap.i32(i32 %216) #4
  %220 = select i1 %218, i32 %219, i32 %216
  %221 = add i32 %220, 1
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #4
  %223 = select i1 %218, i32 %222, i32 %221
  store i32 %223, ptr %0, align 4
  %224 = load i32, ptr %214, align 4
  %225 = load i8, ptr @caam_little_end, align 1, !range !8
  %226 = icmp eq i8 %225, 0
  %227 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %228 = select i1 %226, i32 %227, i32 %224
  %229 = lshr i32 %223, 24
  %230 = select i1 %226, i32 %229, i32 %223
  %231 = and i32 %230, 127
  %232 = sub nsw i32 %231, %213
  %233 = or i32 %232, %228
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #4
  %235 = select i1 %226, i32 %234, i32 %233
  store i32 %235, ptr %214, align 4
  %236 = select i1 %8, i32 35652608, i32 35653632
  %237 = or i32 %236, %3
  %238 = or i32 %237, 402653184
  %239 = load i32, ptr %0, align 4
  %240 = load i8, ptr @caam_little_end, align 1, !range !8
  %241 = icmp eq i8 %240, 0
  %242 = lshr i32 %239, 24
  %243 = select i1 %241, i32 %242, i32 %239
  %244 = and i32 %243, 127
  %245 = getelementptr i32, ptr %0, i32 %244
  %246 = tail call i32 @llvm.bswap.i32(i32 %238) #4
  %247 = select i1 %241, i32 %246, i32 %238
  store i32 %247, ptr %245, align 4
  %248 = load i32, ptr %0, align 4
  %249 = load i8, ptr @caam_little_end, align 1, !range !8
  %250 = icmp eq i8 %249, 0
  %251 = tail call i32 @llvm.bswap.i32(i32 %248) #4
  %252 = select i1 %250, i32 %251, i32 %248
  %253 = add i32 %252, 1
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #4
  %255 = select i1 %250, i32 %254, i32 %253
  store i32 %255, ptr %0, align 4
  br label %256

256:                                              ; preds = %193, %191
  %257 = phi i32 [ %255, %193 ], [ %192, %191 ]
  %258 = load i8, ptr @caam_little_end, align 1, !range !8
  %259 = icmp eq i8 %258, 0
  %260 = lshr i32 %257, 24
  %261 = select i1 %259, i32 %260, i32 %257
  %262 = and i32 %261, 127
  %263 = getelementptr i32, ptr %0, i32 %262
  %264 = select i1 %259, i32 50393360, i32 284229635
  store i32 %264, ptr %263, align 4
  %265 = load i32, ptr %0, align 4
  %266 = load i8, ptr @caam_little_end, align 1, !range !8
  %267 = icmp eq i8 %266, 0
  %268 = tail call i32 @llvm.bswap.i32(i32 %265) #4
  %269 = select i1 %267, i32 %268, i32 %265
  %270 = add i32 %269, 1
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #4
  %272 = select i1 %267, i32 %271, i32 %270
  store i32 %272, ptr %0, align 4
  %273 = load i8, ptr @caam_little_end, align 1, !range !8
  %274 = icmp eq i8 %273, 0
  %275 = lshr i32 %272, 24
  %276 = select i1 %274, i32 %275, i32 %272
  %277 = and i32 %276, 127
  %278 = getelementptr i32, ptr %0, i32 %277
  %279 = select i1 %274, i32 47308, i32 -860356608
  store i32 %279, ptr %278, align 4
  %280 = load i32, ptr %0, align 4
  %281 = load i8, ptr @caam_little_end, align 1, !range !8
  %282 = icmp eq i8 %281, 0
  %283 = tail call i32 @llvm.bswap.i32(i32 %280) #4
  %284 = select i1 %282, i32 %283, i32 %280
  %285 = add i32 %284, 1
  %286 = tail call i32 @llvm.bswap.i32(i32 %285) #4
  %287 = select i1 %282, i32 %286, i32 %285
  store i32 %287, ptr %0, align 4
  %288 = load i8, ptr @caam_little_end, align 1, !range !8
  %289 = icmp eq i8 %288, 0
  %290 = lshr i32 %287, 24
  %291 = select i1 %289, i32 %290, i32 %287
  %292 = and i32 %291, 127
  %293 = getelementptr i32, ptr %0, i32 %292
  %294 = select i1 %289, i32 70913192, i32 -1475593724
  store i32 %294, ptr %293, align 4
  %295 = load i32, ptr %0, align 4
  %296 = load i8, ptr @caam_little_end, align 1, !range !8
  %297 = icmp eq i8 %296, 0
  %298 = tail call i32 @llvm.bswap.i32(i32 %295) #4
  %299 = select i1 %297, i32 %298, i32 %295
  %300 = add i32 %299, 1
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #4
  %302 = select i1 %297, i32 %301, i32 %300
  store i32 %302, ptr %0, align 4
  %303 = load i8, ptr @caam_little_end, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  %305 = lshr i32 %302, 24
  %306 = select i1 %304, i32 %305, i32 %302
  %307 = and i32 %306, 127
  %308 = getelementptr i32, ptr %0, i32 %307
  %309 = select i1 %304, i32 70978728, i32 -1475593468
  store i32 %309, ptr %308, align 4
  %310 = load i32, ptr %0, align 4
  %311 = load i8, ptr @caam_little_end, align 1, !range !8
  %312 = icmp eq i8 %311, 0
  %313 = tail call i32 @llvm.bswap.i32(i32 %310) #4
  %314 = select i1 %312, i32 %313, i32 %310
  %315 = add i32 %314, 1
  %316 = tail call i32 @llvm.bswap.i32(i32 %315) #4
  %317 = select i1 %312, i32 %316, i32 %315
  store i32 %317, ptr %0, align 4
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = lshr i32 %317, 24
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = and i32 %321, 127
  %323 = getelementptr i32, ptr %0, i32 %322
  %324 = select i1 %319, i32 3883, i32 722403328
  store i32 %324, ptr %323, align 4
  %325 = load i32, ptr %0, align 4
  %326 = load i8, ptr @caam_little_end, align 1, !range !8
  %327 = icmp eq i8 %326, 0
  %328 = tail call i32 @llvm.bswap.i32(i32 %325) #4
  %329 = select i1 %327, i32 %328, i32 %325
  %330 = add i32 %329, 1
  %331 = tail call i32 @llvm.bswap.i32(i32 %330) #4
  %332 = select i1 %327, i32 %331, i32 %330
  store i32 %332, ptr %0, align 4
  %333 = load i8, ptr @caam_little_end, align 1, !range !8
  %334 = icmp eq i8 %333, 0
  %335 = lshr i32 %332, 24
  %336 = select i1 %334, i32 %335, i32 %332
  %337 = and i32 %336, 127
  %338 = getelementptr i32, ptr %0, i32 %337
  %339 = select i1 %334, i32 50373234, i32 1923219459
  store i32 %339, ptr %338, align 4
  %340 = load i32, ptr %0, align 4
  %341 = load i8, ptr @caam_little_end, align 1, !range !8
  %342 = icmp eq i8 %341, 0
  %343 = tail call i32 @llvm.bswap.i32(i32 %340) #4
  %344 = select i1 %342, i32 %343, i32 %340
  %345 = add i32 %344, 1
  %346 = tail call i32 @llvm.bswap.i32(i32 %345) #4
  %347 = select i1 %342, i32 %346, i32 %345
  store i32 %347, ptr %0, align 4
  %348 = load i8, ptr @caam_little_end, align 1, !range !8
  %349 = icmp eq i8 %348, 0
  %350 = lshr i32 %347, 24
  %351 = select i1 %349, i32 %350, i32 %347
  %352 = and i32 %351, 127
  %353 = getelementptr i32, ptr %0, i32 %352
  %354 = select i1 %349, i32 12393, i32 1764753408
  store i32 %354, ptr %353, align 4
  %355 = load i32, ptr %0, align 4
  %356 = load i8, ptr @caam_little_end, align 1, !range !8
  %357 = icmp eq i8 %356, 0
  %358 = tail call i32 @llvm.bswap.i32(i32 %355) #4
  %359 = select i1 %357, i32 %358, i32 %355
  %360 = add i32 %359, 1
  %361 = tail call i32 @llvm.bswap.i32(i32 %360) #4
  %362 = select i1 %357, i32 %361, i32 %360
  store i32 %362, ptr %0, align 4
  br i1 %8, label %381, label %363

363:                                              ; preds = %256
  %364 = or i32 %3, 1816002560
  %365 = load i8, ptr @caam_little_end, align 1, !range !8
  %366 = icmp eq i8 %365, 0
  %367 = lshr i32 %362, 24
  %368 = select i1 %366, i32 %367, i32 %362
  %369 = and i32 %368, 127
  %370 = getelementptr i32, ptr %0, i32 %369
  %371 = tail call i32 @llvm.bswap.i32(i32 %364) #4
  %372 = select i1 %366, i32 %371, i32 %364
  store i32 %372, ptr %370, align 4
  %373 = load i32, ptr %0, align 4
  %374 = load i8, ptr @caam_little_end, align 1, !range !8
  %375 = icmp eq i8 %374, 0
  %376 = tail call i32 @llvm.bswap.i32(i32 %373) #4
  %377 = select i1 %375, i32 %376, i32 %373
  %378 = add i32 %377, 1
  %379 = tail call i32 @llvm.bswap.i32(i32 %378) #4
  %380 = select i1 %375, i32 %379, i32 %378
  store i32 %380, ptr %0, align 4
  br label %381

381:                                              ; preds = %363, %256
  %382 = phi i32 [ %380, %363 ], [ %362, %256 ]
  %383 = load i8, ptr @caam_little_end, align 1, !range !8
  %384 = icmp eq i8 %383, 0
  %385 = lshr i32 %382, 24
  %386 = select i1 %384, i32 %385, i32 %382
  %387 = and i32 %386, 127
  %388 = getelementptr i32, ptr %0, i32 %387
  %389 = select i1 %384, i32 131233, i32 -1593835008
  store i32 %389, ptr %388, align 4
  %390 = load i32, ptr %0, align 4
  %391 = load i8, ptr @caam_little_end, align 1, !range !8
  %392 = icmp eq i8 %391, 0
  %393 = tail call i32 @llvm.bswap.i32(i32 %390) #4
  %394 = select i1 %392, i32 %393, i32 %390
  %395 = add i32 %394, 1
  %396 = tail call i32 @llvm.bswap.i32(i32 %395) #4
  %397 = select i1 %392, i32 %396, i32 %395
  store i32 %397, ptr %0, align 4
  %398 = load i32, ptr %388, align 4
  %399 = load i8, ptr @caam_little_end, align 1, !range !8
  %400 = icmp eq i8 %399, 0
  %401 = tail call i32 @llvm.bswap.i32(i32 %398) #4
  %402 = select i1 %400, i32 %401, i32 %398
  %403 = lshr i32 %397, 24
  %404 = select i1 %400, i32 %403, i32 %397
  %405 = and i32 %404, 127
  %406 = sub nsw i32 %405, %387
  %407 = or i32 %406, %402
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #4
  %409 = select i1 %400, i32 %408, i32 %407
  store i32 %409, ptr %388, align 4
  %410 = load i32, ptr %0, align 4
  %411 = load i8, ptr @caam_little_end, align 1, !range !8
  %412 = icmp eq i8 %411, 0
  %413 = lshr i32 %410, 24
  %414 = select i1 %412, i32 %413, i32 %410
  %415 = and i32 %414, 127
  %416 = getelementptr i32, ptr %0, i32 %415
  br i1 %5, label %417, label %489

417:                                              ; preds = %381
  %418 = select i1 %412, i32 67766440, i32 -1475868156
  store i32 %418, ptr %416, align 4
  %419 = load i32, ptr %0, align 4
  %420 = load i8, ptr @caam_little_end, align 1, !range !8
  %421 = icmp eq i8 %420, 0
  %422 = tail call i32 @llvm.bswap.i32(i32 %419) #4
  %423 = select i1 %421, i32 %422, i32 %419
  %424 = add i32 %423, 1
  %425 = tail call i32 @llvm.bswap.i32(i32 %424) #4
  %426 = select i1 %421, i32 %425, i32 %424
  store i32 %426, ptr %0, align 4
  %427 = load i8, ptr @caam_little_end, align 1, !range !8
  %428 = icmp eq i8 %427, 0
  %429 = lshr i32 %426, 24
  %430 = select i1 %428, i32 %429, i32 %426
  %431 = and i32 %430, 127
  %432 = getelementptr i32, ptr %0, i32 %431
  %433 = select i1 %428, i32 67831976, i32 -1475867900
  store i32 %433, ptr %432, align 4
  %434 = load i32, ptr %0, align 4
  %435 = load i8, ptr @caam_little_end, align 1, !range !8
  %436 = icmp eq i8 %435, 0
  %437 = tail call i32 @llvm.bswap.i32(i32 %434) #4
  %438 = select i1 %436, i32 %437, i32 %434
  %439 = add i32 %438, 1
  %440 = tail call i32 @llvm.bswap.i32(i32 %439) #4
  %441 = select i1 %436, i32 %440, i32 %439
  store i32 %441, ptr %0, align 4
  %442 = load i8, ptr @caam_little_end, align 1, !range !8
  %443 = icmp eq i8 %442, 0
  %444 = lshr i32 %441, 24
  %445 = select i1 %443, i32 %444, i32 %441
  %446 = and i32 %445, 127
  %447 = getelementptr i32, ptr %0, i32 %446
  %448 = select i1 %443, i32 12393, i32 1764753408
  store i32 %448, ptr %447, align 4
  %449 = load i32, ptr %0, align 4
  %450 = load i8, ptr @caam_little_end, align 1, !range !8
  %451 = icmp eq i8 %450, 0
  %452 = tail call i32 @llvm.bswap.i32(i32 %449) #4
  %453 = select i1 %451, i32 %452, i32 %449
  %454 = add i32 %453, 1
  %455 = tail call i32 @llvm.bswap.i32(i32 %454) #4
  %456 = select i1 %451, i32 %455, i32 %454
  store i32 %456, ptr %0, align 4
  %457 = load i8, ptr @caam_little_end, align 1, !range !8
  %458 = icmp eq i8 %457, 0
  %459 = lshr i32 %456, 24
  %460 = select i1 %458, i32 %459, i32 %456
  %461 = and i32 %460, 127
  %462 = getelementptr i32, ptr %0, i32 %461
  %463 = select i1 %458, i32 7727, i32 790495232
  store i32 %463, ptr %462, align 4
  %464 = load i32, ptr %0, align 4
  %465 = load i8, ptr @caam_little_end, align 1, !range !8
  %466 = icmp eq i8 %465, 0
  %467 = tail call i32 @llvm.bswap.i32(i32 %464) #4
  %468 = select i1 %466, i32 %467, i32 %464
  %469 = add i32 %468, 1
  %470 = tail call i32 @llvm.bswap.i32(i32 %469) #4
  %471 = select i1 %466, i32 %470, i32 %469
  store i32 %471, ptr %0, align 4
  %472 = or i32 %4, 1545601024
  %473 = load i8, ptr @caam_little_end, align 1, !range !8
  %474 = icmp eq i8 %473, 0
  %475 = lshr i32 %471, 24
  %476 = select i1 %474, i32 %475, i32 %471
  %477 = and i32 %476, 127
  %478 = getelementptr i32, ptr %0, i32 %477
  %479 = tail call i32 @llvm.bswap.i32(i32 %472) #4
  %480 = select i1 %474, i32 %479, i32 %472
  store i32 %480, ptr %478, align 4
  %481 = load i32, ptr %0, align 4
  %482 = load i8, ptr @caam_little_end, align 1, !range !8
  %483 = icmp eq i8 %482, 0
  %484 = tail call i32 @llvm.bswap.i32(i32 %481) #4
  %485 = select i1 %483, i32 %484, i32 %481
  %486 = add i32 %485, 1
  %487 = tail call i32 @llvm.bswap.i32(i32 %486) #4
  %488 = select i1 %483, i32 %487, i32 %486
  br label %561

489:                                              ; preds = %381
  %490 = select i1 %412, i32 67766696, i32 -1475802620
  store i32 %490, ptr %416, align 4
  %491 = load i32, ptr %0, align 4
  %492 = load i8, ptr @caam_little_end, align 1, !range !8
  %493 = icmp eq i8 %492, 0
  %494 = tail call i32 @llvm.bswap.i32(i32 %491) #4
  %495 = select i1 %493, i32 %494, i32 %491
  %496 = add i32 %495, 1
  %497 = tail call i32 @llvm.bswap.i32(i32 %496) #4
  %498 = select i1 %493, i32 %497, i32 %496
  store i32 %498, ptr %0, align 4
  %499 = load i8, ptr @caam_little_end, align 1, !range !8
  %500 = icmp eq i8 %499, 0
  %501 = lshr i32 %498, 24
  %502 = select i1 %500, i32 %501, i32 %498
  %503 = and i32 %502, 127
  %504 = getelementptr i32, ptr %0, i32 %503
  %505 = select i1 %500, i32 67832232, i32 -1475802364
  store i32 %505, ptr %504, align 4
  %506 = load i32, ptr %0, align 4
  %507 = load i8, ptr @caam_little_end, align 1, !range !8
  %508 = icmp eq i8 %507, 0
  %509 = tail call i32 @llvm.bswap.i32(i32 %506) #4
  %510 = select i1 %508, i32 %509, i32 %506
  %511 = add i32 %510, 1
  %512 = tail call i32 @llvm.bswap.i32(i32 %511) #4
  %513 = select i1 %508, i32 %512, i32 %511
  store i32 %513, ptr %0, align 4
  %514 = load i8, ptr @caam_little_end, align 1, !range !8
  %515 = icmp eq i8 %514, 0
  %516 = lshr i32 %513, 24
  %517 = select i1 %515, i32 %516, i32 %513
  %518 = and i32 %517, 127
  %519 = getelementptr i32, ptr %0, i32 %518
  %520 = select i1 %515, i32 12393, i32 1764753408
  store i32 %520, ptr %519, align 4
  %521 = load i32, ptr %0, align 4
  %522 = load i8, ptr @caam_little_end, align 1, !range !8
  %523 = icmp eq i8 %522, 0
  %524 = tail call i32 @llvm.bswap.i32(i32 %521) #4
  %525 = select i1 %523, i32 %524, i32 %521
  %526 = add i32 %525, 1
  %527 = tail call i32 @llvm.bswap.i32(i32 %526) #4
  %528 = select i1 %523, i32 %527, i32 %526
  store i32 %528, ptr %0, align 4
  %529 = load i8, ptr @caam_little_end, align 1, !range !8
  %530 = icmp eq i8 %529, 0
  %531 = lshr i32 %528, 24
  %532 = select i1 %530, i32 %531, i32 %528
  %533 = and i32 %532, 127
  %534 = getelementptr i32, ptr %0, i32 %533
  %535 = select i1 %530, i32 5679, i32 789970944
  store i32 %535, ptr %534, align 4
  %536 = load i32, ptr %0, align 4
  %537 = load i8, ptr @caam_little_end, align 1, !range !8
  %538 = icmp eq i8 %537, 0
  %539 = tail call i32 @llvm.bswap.i32(i32 %536) #4
  %540 = select i1 %538, i32 %539, i32 %536
  %541 = add i32 %540, 1
  %542 = tail call i32 @llvm.bswap.i32(i32 %541) #4
  %543 = select i1 %538, i32 %542, i32 %541
  store i32 %543, ptr %0, align 4
  %544 = or i32 %4, 742129664
  %545 = load i8, ptr @caam_little_end, align 1, !range !8
  %546 = icmp eq i8 %545, 0
  %547 = lshr i32 %543, 24
  %548 = select i1 %546, i32 %547, i32 %543
  %549 = and i32 %548, 127
  %550 = getelementptr i32, ptr %0, i32 %549
  %551 = tail call i32 @llvm.bswap.i32(i32 %544) #4
  %552 = select i1 %546, i32 %551, i32 %544
  store i32 %552, ptr %550, align 4
  %553 = load i32, ptr %0, align 4
  %554 = load i8, ptr @caam_little_end, align 1, !range !8
  %555 = icmp eq i8 %554, 0
  %556 = tail call i32 @llvm.bswap.i32(i32 %553) #4
  %557 = select i1 %555, i32 %556, i32 %553
  %558 = add i32 %557, 1
  %559 = tail call i32 @llvm.bswap.i32(i32 %558) #4
  %560 = select i1 %555, i32 %559, i32 %558
  br label %561

561:                                              ; preds = %489, %417
  %562 = phi i32 [ %560, %489 ], [ %488, %417 ]
  store i32 %562, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_skcipher_encap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 16711680
  %8 = icmp eq i32 %7, 13631488
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 17989816, i32 -1199566335
  store i32 %11, ptr %0, align 4
  %12 = load i8, ptr @caam_little_end, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %11, 24
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = and i32 %15, 57
  %17 = getelementptr i32, ptr %0, i32 %16
  %18 = select i1 %13, i32 4194465, i32 -1593819136
  store i32 %18, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = load i8, ptr @caam_little_end, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %23 = select i1 %21, i32 %22, i32 %19
  %24 = add i32 %23, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %26 = select i1 %21, i32 %25, i32 %24
  store i32 %26, ptr %0, align 4
  %27 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 41943040
  %32 = load i8, ptr @caam_little_end, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = lshr i32 %26, 24
  %35 = select i1 %33, i32 %34, i32 %26
  %36 = and i32 %35, 127
  %37 = getelementptr i32, ptr %0, i32 %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %39 = select i1 %33, i32 %38, i32 %31
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %0, align 4
  %41 = load i8, ptr @caam_little_end, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = add i32 %44, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %47 = select i1 %42, i32 %46, i32 %45
  store i32 %47, ptr %0, align 4
  %48 = icmp eq i32 %30, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %5
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %47, 24
  %53 = select i1 %51, i32 %52, i32 %47
  %54 = and i32 %53, 127
  %55 = getelementptr i32, ptr %0, i32 %54
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 1 %28, i32 %30, i1 false) #4
  %56 = load i32, ptr %0, align 4
  br label %57

57:                                               ; preds = %49, %5
  %58 = phi i32 [ %47, %5 ], [ %56, %49 ]
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #4
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = add i32 %30, 3
  %64 = lshr i32 %63, 2
  %65 = add i32 %62, %64
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %67 = select i1 %60, i32 %66, i32 %65
  store i32 %67, ptr %0, align 4
  br i1 %3, label %68, label %117

68:                                               ; preds = %57
  %69 = load ptr, ptr %27, align 4
  %70 = load i32, ptr %29, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = load i8, ptr @caam_little_end, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = lshr i32 %67, 24
  %75 = select i1 %73, i32 %74, i32 %67
  %76 = and i32 %75, 127
  %77 = getelementptr i32, ptr %0, i32 %76
  %78 = select i1 %73, i32 67173904, i32 285081604
  store i32 %78, ptr %77, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #4
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = add i32 %83, 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #4
  %86 = select i1 %81, i32 %85, i32 %84
  store i32 %86, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = lshr i32 %86, 24
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = and i32 %90, 127
  %92 = getelementptr i32, ptr %0, i32 %91
  %93 = load i32, ptr %71, align 1
  store i32 %93, ptr %92, align 4
  %94 = load i32, ptr %0, align 4
  %95 = load i8, ptr @caam_little_end, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #4
  %98 = select i1 %96, i32 %97, i32 %94
  %99 = add i32 %98, 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %101 = select i1 %96, i32 %100, i32 %99
  store i32 %101, ptr %0, align 4
  %102 = load i8, ptr @caam_little_end, align 1, !range !8
  %103 = icmp eq i8 %102, 0
  %104 = lshr i32 %101, 24
  %105 = select i1 %103, i32 %104, i32 %101
  %106 = and i32 %105, 127
  %107 = getelementptr i32, ptr %0, i32 %106
  %108 = select i1 %103, i32 68165753, i32 2032144388
  store i32 %108, ptr %107, align 4
  %109 = load i32, ptr %0, align 4
  %110 = load i8, ptr @caam_little_end, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %113 = select i1 %111, i32 %112, i32 %109
  %114 = add i32 %113, 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %116 = select i1 %111, i32 %115, i32 %114
  store i32 %116, ptr %0, align 4
  br label %117

117:                                              ; preds = %68, %57
  %118 = phi i32 [ %116, %68 ], [ %67, %57 ]
  %119 = load i32, ptr %17, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #4
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = lshr i32 %118, 24
  %125 = select i1 %121, i32 %124, i32 %118
  %126 = and i32 %125, 127
  %127 = sub nsw i32 %126, %16
  %128 = or i32 %127, %123
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #4
  %130 = select i1 %121, i32 %129, i32 %128
  store i32 %130, ptr %17, align 4
  %131 = icmp ne i32 %2, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %117
  %133 = shl i32 %4, 8
  %134 = or i32 %133, %2
  %135 = or i32 %134, 438304768
  %136 = load i32, ptr %0, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = lshr i32 %136, 24
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = and i32 %140, 127
  %142 = getelementptr i32, ptr %0, i32 %141
  %143 = tail call i32 @llvm.bswap.i32(i32 %135) #4
  %144 = select i1 %138, i32 %143, i32 %135
  store i32 %144, ptr %142, align 4
  %145 = load i32, ptr %0, align 4
  %146 = load i8, ptr @caam_little_end, align 1, !range !8
  %147 = icmp eq i8 %146, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %145) #4
  %149 = select i1 %147, i32 %148, i32 %145
  %150 = add i32 %149, 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %152 = select i1 %147, i32 %151, i32 %150
  store i32 %152, ptr %0, align 4
  br label %153

153:                                              ; preds = %132, %117
  br i1 %3, label %156, label %154

154:                                              ; preds = %153
  %155 = load i32, ptr %0, align 4
  br label %191

156:                                              ; preds = %153
  %157 = shl i32 %4, 8
  %158 = add i32 %157, 2048
  %159 = or i32 %158, 312475652
  %160 = load i32, ptr %0, align 4
  %161 = load i8, ptr @caam_little_end, align 1, !range !8
  %162 = icmp eq i8 %161, 0
  %163 = lshr i32 %160, 24
  %164 = select i1 %162, i32 %163, i32 %160
  %165 = and i32 %164, 127
  %166 = getelementptr i32, ptr %0, i32 %165
  %167 = tail call i32 @llvm.bswap.i32(i32 %159) #4
  %168 = select i1 %162, i32 %167, i32 %159
  store i32 %168, ptr %166, align 4
  %169 = load i32, ptr %0, align 4
  %170 = load i8, ptr @caam_little_end, align 1, !range !8
  %171 = icmp eq i8 %170, 0
  %172 = tail call i32 @llvm.bswap.i32(i32 %169) #4
  %173 = select i1 %171, i32 %172, i32 %169
  %174 = add i32 %173, 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %176 = select i1 %171, i32 %175, i32 %174
  store i32 %176, ptr %0, align 4
  %177 = load i8, ptr @caam_little_end, align 1, !range !8
  %178 = icmp eq i8 %177, 0
  %179 = lshr i32 %176, 24
  %180 = select i1 %178, i32 %179, i32 %176
  %181 = and i32 %180, 127
  %182 = getelementptr i32, ptr %0, i32 %181
  store i32 16777216, ptr %182, align 4
  %183 = load i32, ptr %0, align 4
  %184 = load i8, ptr @caam_little_end, align 1, !range !8
  %185 = icmp eq i8 %184, 0
  %186 = tail call i32 @llvm.bswap.i32(i32 %183) #4
  %187 = select i1 %185, i32 %186, i32 %183
  %188 = add i32 %187, 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #4
  %190 = select i1 %185, i32 %189, i32 %188
  store i32 %190, ptr %0, align 4
  br label %191

191:                                              ; preds = %156, %154
  %192 = phi i32 [ %155, %154 ], [ %190, %156 ]
  %193 = select i1 %8, i32 13, i32 5
  %194 = or i32 %6, %193
  %195 = or i32 %194, -2147483648
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = lshr i32 %192, 24
  %199 = select i1 %197, i32 %198, i32 %192
  %200 = and i32 %199, 127
  %201 = getelementptr i32, ptr %0, i32 %200
  %202 = tail call i32 @llvm.bswap.i32(i32 %195) #4
  %203 = select i1 %197, i32 %202, i32 %195
  store i32 %203, ptr %201, align 4
  %204 = load i32, ptr %0, align 4
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #4
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = add i32 %208, 1
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #4
  %211 = select i1 %206, i32 %210, i32 %209
  store i32 %211, ptr %0, align 4
  %212 = load i8, ptr @caam_little_end, align 1, !range !8
  %213 = icmp eq i8 %212, 0
  %214 = lshr i32 %211, 24
  %215 = select i1 %213, i32 %214, i32 %211
  %216 = and i32 %215, 127
  %217 = getelementptr i32, ptr %0, i32 %216
  %218 = select i1 %213, i32 67831976, i32 -1475867900
  store i32 %218, ptr %217, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %226 = select i1 %221, i32 %225, i32 %224
  store i32 %226, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = lshr i32 %226, 24
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = and i32 %230, 127
  %232 = getelementptr i32, ptr %0, i32 %231
  %233 = select i1 %228, i32 67766440, i32 -1475868156
  store i32 %233, ptr %232, align 4
  %234 = load i32, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = add i32 %238, 1
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #4
  %241 = select i1 %236, i32 %240, i32 %239
  store i32 %241, ptr %0, align 4
  %242 = load i8, ptr @caam_little_end, align 1, !range !8
  %243 = icmp eq i8 %242, 0
  %244 = lshr i32 %241, 24
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = and i32 %245, 127
  %247 = getelementptr i32, ptr %0, i32 %246
  %248 = select i1 %243, i32 4651, i32 722599936
  store i32 %248, ptr %247, align 4
  %249 = load i32, ptr %0, align 4
  %250 = load i8, ptr @caam_little_end, align 1, !range !8
  %251 = icmp eq i8 %250, 0
  %252 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %253 = select i1 %251, i32 %252, i32 %249
  %254 = add i32 %253, 1
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #4
  %256 = select i1 %251, i32 %255, i32 %254
  store i32 %256, ptr %0, align 4
  %257 = load i8, ptr @caam_little_end, align 1, !range !8
  %258 = icmp eq i8 %257, 0
  %259 = lshr i32 %256, 24
  %260 = select i1 %258, i32 %259, i32 %256
  %261 = and i32 %260, 127
  %262 = getelementptr i32, ptr %0, i32 %261
  %263 = select i1 %258, i32 12393, i32 1764753408
  store i32 %263, ptr %262, align 4
  %264 = load i32, ptr %0, align 4
  %265 = load i8, ptr @caam_little_end, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = tail call i32 @llvm.bswap.i32(i32 %264) #4
  %268 = select i1 %266, i32 %267, i32 %264
  %269 = add i32 %268, 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #4
  %271 = select i1 %266, i32 %270, i32 %269
  store i32 %271, ptr %0, align 4
  %272 = xor i1 %8, true
  %273 = and i1 %131, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %191
  %275 = shl i32 %4, 8
  %276 = or i32 %275, %2
  %277 = or i32 %276, 1512046592
  %278 = load i8, ptr @caam_little_end, align 1, !range !8
  %279 = icmp eq i8 %278, 0
  %280 = lshr i32 %271, 24
  %281 = select i1 %279, i32 %280, i32 %271
  %282 = and i32 %281, 127
  %283 = getelementptr i32, ptr %0, i32 %282
  %284 = tail call i32 @llvm.bswap.i32(i32 %277) #4
  %285 = select i1 %279, i32 %284, i32 %277
  store i32 %285, ptr %283, align 4
  %286 = load i32, ptr %0, align 4
  %287 = load i8, ptr @caam_little_end, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  %289 = tail call i32 @llvm.bswap.i32(i32 %286) #4
  %290 = select i1 %288, i32 %289, i32 %286
  %291 = add i32 %290, 1
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #4
  %293 = select i1 %288, i32 %292, i32 %291
  store i32 %293, ptr %0, align 4
  br label %294

294:                                              ; preds = %274, %191
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_skcipher_decap(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 16711680
  %8 = icmp ne i32 %7, 13631488
  %9 = load i8, ptr @caam_little_end, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 17989816, i32 -1199566335
  store i32 %11, ptr %0, align 4
  %12 = load i8, ptr @caam_little_end, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %11, 24
  %15 = select i1 %13, i32 %14, i32 %11
  %16 = and i32 %15, 57
  %17 = getelementptr i32, ptr %0, i32 %16
  %18 = select i1 %13, i32 4194465, i32 -1593819136
  store i32 %18, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = load i8, ptr @caam_little_end, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  %23 = select i1 %21, i32 %22, i32 %19
  %24 = add i32 %23, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %26 = select i1 %21, i32 %25, i32 %24
  store i32 %26, ptr %0, align 4
  %27 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 41943040
  %32 = load i8, ptr @caam_little_end, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = lshr i32 %26, 24
  %35 = select i1 %33, i32 %34, i32 %26
  %36 = and i32 %35, 127
  %37 = getelementptr i32, ptr %0, i32 %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %39 = select i1 %33, i32 %38, i32 %31
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %0, align 4
  %41 = load i8, ptr @caam_little_end, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = add i32 %44, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %47 = select i1 %42, i32 %46, i32 %45
  store i32 %47, ptr %0, align 4
  %48 = icmp eq i32 %30, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %5
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %47, 24
  %53 = select i1 %51, i32 %52, i32 %47
  %54 = and i32 %53, 127
  %55 = getelementptr i32, ptr %0, i32 %54
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr align 1 %28, i32 %30, i1 false) #4
  %56 = load i32, ptr %0, align 4
  br label %57

57:                                               ; preds = %49, %5
  %58 = phi i32 [ %47, %5 ], [ %56, %49 ]
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #4
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = add i32 %30, 3
  %64 = lshr i32 %63, 2
  %65 = add i32 %62, %64
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  %67 = select i1 %60, i32 %66, i32 %65
  store i32 %67, ptr %0, align 4
  br i1 %3, label %68, label %117

68:                                               ; preds = %57
  %69 = load ptr, ptr %27, align 4
  %70 = load i32, ptr %29, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = load i8, ptr @caam_little_end, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = lshr i32 %67, 24
  %75 = select i1 %73, i32 %74, i32 %67
  %76 = and i32 %75, 127
  %77 = getelementptr i32, ptr %0, i32 %76
  %78 = select i1 %73, i32 67173904, i32 285081604
  store i32 %78, ptr %77, align 4
  %79 = load i32, ptr %0, align 4
  %80 = load i8, ptr @caam_little_end, align 1, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #4
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = add i32 %83, 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #4
  %86 = select i1 %81, i32 %85, i32 %84
  store i32 %86, ptr %0, align 4
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = lshr i32 %86, 24
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = and i32 %90, 127
  %92 = getelementptr i32, ptr %0, i32 %91
  %93 = load i32, ptr %71, align 1
  store i32 %93, ptr %92, align 4
  %94 = load i32, ptr %0, align 4
  %95 = load i8, ptr @caam_little_end, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #4
  %98 = select i1 %96, i32 %97, i32 %94
  %99 = add i32 %98, 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #4
  %101 = select i1 %96, i32 %100, i32 %99
  store i32 %101, ptr %0, align 4
  %102 = load i8, ptr @caam_little_end, align 1, !range !8
  %103 = icmp eq i8 %102, 0
  %104 = lshr i32 %101, 24
  %105 = select i1 %103, i32 %104, i32 %101
  %106 = and i32 %105, 127
  %107 = getelementptr i32, ptr %0, i32 %106
  %108 = select i1 %103, i32 68165753, i32 2032144388
  store i32 %108, ptr %107, align 4
  %109 = load i32, ptr %0, align 4
  %110 = load i8, ptr @caam_little_end, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #4
  %113 = select i1 %111, i32 %112, i32 %109
  %114 = add i32 %113, 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %116 = select i1 %111, i32 %115, i32 %114
  store i32 %116, ptr %0, align 4
  br label %117

117:                                              ; preds = %68, %57
  %118 = phi i32 [ %116, %68 ], [ %67, %57 ]
  %119 = load i32, ptr %17, align 4
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #4
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = lshr i32 %118, 24
  %125 = select i1 %121, i32 %124, i32 %118
  %126 = and i32 %125, 127
  %127 = sub nsw i32 %126, %16
  %128 = or i32 %127, %123
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #4
  %130 = select i1 %121, i32 %129, i32 %128
  store i32 %130, ptr %17, align 4
  %131 = icmp ne i32 %2, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %117
  %133 = shl i32 %4, 8
  %134 = or i32 %133, %2
  %135 = or i32 %134, 438304768
  %136 = load i32, ptr %0, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = lshr i32 %136, 24
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = and i32 %140, 127
  %142 = getelementptr i32, ptr %0, i32 %141
  %143 = tail call i32 @llvm.bswap.i32(i32 %135) #4
  %144 = select i1 %138, i32 %143, i32 %135
  store i32 %144, ptr %142, align 4
  %145 = load i32, ptr %0, align 4
  %146 = load i8, ptr @caam_little_end, align 1, !range !8
  %147 = icmp eq i8 %146, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %145) #4
  %149 = select i1 %147, i32 %148, i32 %145
  %150 = add i32 %149, 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #4
  %152 = select i1 %147, i32 %151, i32 %150
  store i32 %152, ptr %0, align 4
  br label %153

153:                                              ; preds = %132, %117
  br i1 %3, label %154, label %189

154:                                              ; preds = %153
  %155 = shl i32 %4, 8
  %156 = add i32 %155, 2048
  %157 = or i32 %156, 312475652
  %158 = load i32, ptr %0, align 4
  %159 = load i8, ptr @caam_little_end, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = lshr i32 %158, 24
  %162 = select i1 %160, i32 %161, i32 %158
  %163 = and i32 %162, 127
  %164 = getelementptr i32, ptr %0, i32 %163
  %165 = tail call i32 @llvm.bswap.i32(i32 %157) #4
  %166 = select i1 %160, i32 %165, i32 %157
  store i32 %166, ptr %164, align 4
  %167 = load i32, ptr %0, align 4
  %168 = load i8, ptr @caam_little_end, align 1, !range !8
  %169 = icmp eq i8 %168, 0
  %170 = tail call i32 @llvm.bswap.i32(i32 %167) #4
  %171 = select i1 %169, i32 %170, i32 %167
  %172 = add i32 %171, 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #4
  %174 = select i1 %169, i32 %173, i32 %172
  store i32 %174, ptr %0, align 4
  %175 = load i8, ptr @caam_little_end, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = lshr i32 %174, 24
  %178 = select i1 %176, i32 %177, i32 %174
  %179 = and i32 %178, 127
  %180 = getelementptr i32, ptr %0, i32 %179
  store i32 16777216, ptr %180, align 4
  %181 = load i32, ptr %0, align 4
  %182 = load i8, ptr @caam_little_end, align 1, !range !8
  %183 = icmp eq i8 %182, 0
  %184 = tail call i32 @llvm.bswap.i32(i32 %181) #4
  %185 = select i1 %183, i32 %184, i32 %181
  %186 = add i32 %185, 1
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #4
  %188 = select i1 %183, i32 %187, i32 %186
  store i32 %188, ptr %0, align 4
  br label %189

189:                                              ; preds = %154, %153
  %190 = icmp eq i32 %4, 0
  %191 = load i32, ptr %1, align 4
  br i1 %190, label %211, label %192

192:                                              ; preds = %189
  %193 = or i32 %191, -2147483644
  %194 = load i32, ptr %0, align 4
  %195 = load i8, ptr @caam_little_end, align 1, !range !8
  %196 = icmp eq i8 %195, 0
  %197 = lshr i32 %194, 24
  %198 = select i1 %196, i32 %197, i32 %194
  %199 = and i32 %198, 127
  %200 = getelementptr i32, ptr %0, i32 %199
  %201 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %202 = select i1 %196, i32 %201, i32 %193
  store i32 %202, ptr %200, align 4
  %203 = load i32, ptr %0, align 4
  %204 = load i8, ptr @caam_little_end, align 1, !range !8
  %205 = icmp eq i8 %204, 0
  %206 = tail call i32 @llvm.bswap.i32(i32 %203) #4
  %207 = select i1 %205, i32 %206, i32 %203
  %208 = add i32 %207, 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #4
  %210 = select i1 %205, i32 %209, i32 %208
  store i32 %210, ptr %0, align 4
  br label %213

211:                                              ; preds = %189
  tail call fastcc void @append_dec_op1(ptr noundef %0, i32 noundef %191)
  %212 = load i32, ptr %0, align 4
  br label %213

213:                                              ; preds = %211, %192
  %214 = phi i32 [ %212, %211 ], [ %210, %192 ]
  %215 = load i8, ptr @caam_little_end, align 1, !range !8
  %216 = icmp eq i8 %215, 0
  %217 = lshr i32 %214, 24
  %218 = select i1 %216, i32 %217, i32 %214
  %219 = and i32 %218, 127
  %220 = getelementptr i32, ptr %0, i32 %219
  %221 = select i1 %216, i32 67831976, i32 -1475867900
  store i32 %221, ptr %220, align 4
  %222 = load i32, ptr %0, align 4
  %223 = load i8, ptr @caam_little_end, align 1, !range !8
  %224 = icmp eq i8 %223, 0
  %225 = tail call i32 @llvm.bswap.i32(i32 %222) #4
  %226 = select i1 %224, i32 %225, i32 %222
  %227 = add i32 %226, 1
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #4
  %229 = select i1 %224, i32 %228, i32 %227
  store i32 %229, ptr %0, align 4
  %230 = load i8, ptr @caam_little_end, align 1, !range !8
  %231 = icmp eq i8 %230, 0
  %232 = lshr i32 %229, 24
  %233 = select i1 %231, i32 %232, i32 %229
  %234 = and i32 %233, 127
  %235 = getelementptr i32, ptr %0, i32 %234
  %236 = select i1 %231, i32 67766440, i32 -1475868156
  store i32 %236, ptr %235, align 4
  %237 = load i32, ptr %0, align 4
  %238 = load i8, ptr @caam_little_end, align 1, !range !8
  %239 = icmp eq i8 %238, 0
  %240 = tail call i32 @llvm.bswap.i32(i32 %237) #4
  %241 = select i1 %239, i32 %240, i32 %237
  %242 = add i32 %241, 1
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #4
  %244 = select i1 %239, i32 %243, i32 %242
  store i32 %244, ptr %0, align 4
  %245 = load i8, ptr @caam_little_end, align 1, !range !8
  %246 = icmp eq i8 %245, 0
  %247 = lshr i32 %244, 24
  %248 = select i1 %246, i32 %247, i32 %244
  %249 = and i32 %248, 127
  %250 = getelementptr i32, ptr %0, i32 %249
  %251 = select i1 %246, i32 4651, i32 722599936
  store i32 %251, ptr %250, align 4
  %252 = load i32, ptr %0, align 4
  %253 = load i8, ptr @caam_little_end, align 1, !range !8
  %254 = icmp eq i8 %253, 0
  %255 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %256 = select i1 %254, i32 %255, i32 %252
  %257 = add i32 %256, 1
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #4
  %259 = select i1 %254, i32 %258, i32 %257
  store i32 %259, ptr %0, align 4
  %260 = load i8, ptr @caam_little_end, align 1, !range !8
  %261 = icmp eq i8 %260, 0
  %262 = lshr i32 %259, 24
  %263 = select i1 %261, i32 %262, i32 %259
  %264 = and i32 %263, 127
  %265 = getelementptr i32, ptr %0, i32 %264
  %266 = select i1 %261, i32 12393, i32 1764753408
  store i32 %266, ptr %265, align 4
  %267 = load i32, ptr %0, align 4
  %268 = load i8, ptr @caam_little_end, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  %270 = tail call i32 @llvm.bswap.i32(i32 %267) #4
  %271 = select i1 %269, i32 %270, i32 %267
  %272 = add i32 %271, 1
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #4
  %274 = select i1 %269, i32 %273, i32 %272
  store i32 %274, ptr %0, align 4
  %275 = and i1 %131, %8
  br i1 %275, label %276, label %296

276:                                              ; preds = %213
  %277 = shl i32 %4, 8
  %278 = or i32 %277, %2
  %279 = or i32 %278, 1512046592
  %280 = load i8, ptr @caam_little_end, align 1, !range !8
  %281 = icmp eq i8 %280, 0
  %282 = lshr i32 %274, 24
  %283 = select i1 %281, i32 %282, i32 %274
  %284 = and i32 %283, 127
  %285 = getelementptr i32, ptr %0, i32 %284
  %286 = tail call i32 @llvm.bswap.i32(i32 %279) #4
  %287 = select i1 %281, i32 %286, i32 %279
  store i32 %287, ptr %285, align 4
  %288 = load i32, ptr %0, align 4
  %289 = load i8, ptr @caam_little_end, align 1, !range !8
  %290 = icmp eq i8 %289, 0
  %291 = tail call i32 @llvm.bswap.i32(i32 %288) #4
  %292 = select i1 %290, i32 %291, i32 %288
  %293 = add i32 %292, 1
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #4
  %295 = select i1 %290, i32 %294, i32 %293
  store i32 %295, ptr %0, align 4
  br label %296

296:                                              ; preds = %276, %213
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_xts_skcipher_encap(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr @caam_little_end, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 17989816, i32 -1199566335
  store i32 %5, ptr %0, align 4
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = lshr i32 %5, 24
  %9 = select i1 %7, i32 %8, i32 %5
  %10 = and i32 %9, 57
  %11 = getelementptr i32, ptr %0, i32 %10
  %12 = select i1 %7, i32 4194465, i32 -1593819136
  store i32 %12, ptr %11, align 4
  %13 = load i32, ptr %0, align 4
  %14 = load i8, ptr @caam_little_end, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = add i32 %17, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %20 = select i1 %15, i32 %19, i32 %18
  store i32 %20, ptr %0, align 4
  %21 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 41943040
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = lshr i32 %20, 24
  %29 = select i1 %27, i32 %28, i32 %20
  %30 = and i32 %29, 127
  %31 = getelementptr i32, ptr %0, i32 %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  %33 = select i1 %27, i32 %32, i32 %25
  store i32 %33, ptr %31, align 4
  %34 = load i32, ptr %0, align 4
  %35 = load i8, ptr @caam_little_end, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = add i32 %38, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %41 = select i1 %36, i32 %40, i32 %39
  store i32 %41, ptr %0, align 4
  %42 = icmp eq i32 %24, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load i8, ptr @caam_little_end, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = lshr i32 %41, 24
  %47 = select i1 %45, i32 %46, i32 %41
  %48 = and i32 %47, 127
  %49 = getelementptr i32, ptr %0, i32 %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr align 1 %22, i32 %24, i1 false) #4
  %50 = load i32, ptr %0, align 4
  br label %51

51:                                               ; preds = %43, %2
  %52 = phi i32 [ %41, %2 ], [ %50, %43 ]
  %53 = load i8, ptr @caam_little_end, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  %56 = select i1 %54, i32 %55, i32 %52
  %57 = add i32 %24, 3
  %58 = lshr i32 %57, 2
  %59 = add i32 %56, %58
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %61 = select i1 %54, i32 %60, i32 %59
  store i32 %61, ptr %0, align 4
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = lshr i32 %61, 24
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = and i32 %65, 127
  %67 = getelementptr i32, ptr %0, i32 %66
  %68 = select i1 %63, i32 136880146, i32 312485896
  store i32 %68, ptr %67, align 4
  %69 = load i32, ptr %0, align 4
  %70 = load i8, ptr @caam_little_end, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  %73 = select i1 %71, i32 %72, i32 %69
  %74 = add i32 %73, 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %76 = select i1 %71, i32 %75, i32 %74
  store i32 %76, ptr %0, align 4
  %77 = load i8, ptr @caam_little_end, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = lshr i32 %76, 24
  %80 = select i1 %78, i32 %79, i32 %76
  %81 = and i32 %80, 127
  %82 = getelementptr i32, ptr %0, i32 %81
  store i64 36028797018963968, ptr %82, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 2
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i32, ptr %11, align 4
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = lshr i32 %90, 24
  %97 = select i1 %93, i32 %96, i32 %90
  %98 = and i32 %97, 127
  %99 = sub nsw i32 %98, %10
  %100 = or i32 %99, %95
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #4
  %102 = select i1 %93, i32 %101, i32 %100
  store i32 %102, ptr %11, align 4
  %103 = load i32, ptr %0, align 4
  %104 = load i8, ptr @caam_little_end, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = lshr i32 %103, 24
  %107 = select i1 %105, i32 %106, i32 %103
  %108 = and i32 %107, 127
  %109 = getelementptr i32, ptr %0, i32 %108
  %110 = select i1 %105, i32 136323098, i32 438312968
  store i32 %110, ptr %109, align 4
  %111 = load i32, ptr %0, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = add i32 %115, 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #4
  %118 = select i1 %113, i32 %117, i32 %116
  store i32 %118, ptr %0, align 4
  %119 = load i8, ptr @caam_little_end, align 1, !range !8
  %120 = icmp eq i8 %119, 0
  %121 = lshr i32 %118, 24
  %122 = select i1 %120, i32 %121, i32 %118
  %123 = and i32 %122, 127
  %124 = getelementptr i32, ptr %0, i32 %123
  %125 = select i1 %120, i32 137371674, i32 438317064
  store i32 %125, ptr %124, align 4
  %126 = load i32, ptr %0, align 4
  %127 = load i8, ptr @caam_little_end, align 1, !range !8
  %128 = icmp eq i8 %127, 0
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #4
  %130 = select i1 %128, i32 %129, i32 %126
  %131 = add i32 %130, 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #4
  %133 = select i1 %128, i32 %132, i32 %131
  store i32 %133, ptr %0, align 4
  %134 = load i32, ptr %1, align 4
  %135 = or i32 %134, -2147483635
  %136 = load i8, ptr @caam_little_end, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  %138 = lshr i32 %133, 24
  %139 = select i1 %137, i32 %138, i32 %133
  %140 = and i32 %139, 127
  %141 = getelementptr i32, ptr %0, i32 %140
  %142 = tail call i32 @llvm.bswap.i32(i32 %135) #4
  %143 = select i1 %137, i32 %142, i32 %135
  store i32 %143, ptr %141, align 4
  %144 = load i32, ptr %0, align 4
  %145 = load i8, ptr @caam_little_end, align 1, !range !8
  %146 = icmp eq i8 %145, 0
  %147 = tail call i32 @llvm.bswap.i32(i32 %144) #4
  %148 = select i1 %146, i32 %147, i32 %144
  %149 = add i32 %148, 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #4
  %151 = select i1 %146, i32 %150, i32 %149
  store i32 %151, ptr %0, align 4
  %152 = load i8, ptr @caam_little_end, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  %154 = lshr i32 %151, 24
  %155 = select i1 %153, i32 %154, i32 %151
  %156 = and i32 %155, 127
  %157 = getelementptr i32, ptr %0, i32 %156
  %158 = select i1 %153, i32 67831976, i32 -1475867900
  store i32 %158, ptr %157, align 4
  %159 = load i32, ptr %0, align 4
  %160 = load i8, ptr @caam_little_end, align 1, !range !8
  %161 = icmp eq i8 %160, 0
  %162 = tail call i32 @llvm.bswap.i32(i32 %159) #4
  %163 = select i1 %161, i32 %162, i32 %159
  %164 = add i32 %163, 1
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #4
  %166 = select i1 %161, i32 %165, i32 %164
  store i32 %166, ptr %0, align 4
  %167 = load i8, ptr @caam_little_end, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = lshr i32 %166, 24
  %170 = select i1 %168, i32 %169, i32 %166
  %171 = and i32 %170, 127
  %172 = getelementptr i32, ptr %0, i32 %171
  %173 = select i1 %168, i32 67766440, i32 -1475868156
  store i32 %173, ptr %172, align 4
  %174 = load i32, ptr %0, align 4
  %175 = load i8, ptr @caam_little_end, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = tail call i32 @llvm.bswap.i32(i32 %174) #4
  %178 = select i1 %176, i32 %177, i32 %174
  %179 = add i32 %178, 1
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #4
  %181 = select i1 %176, i32 %180, i32 %179
  store i32 %181, ptr %0, align 4
  %182 = load i8, ptr @caam_little_end, align 1, !range !8
  %183 = icmp eq i8 %182, 0
  %184 = lshr i32 %181, 24
  %185 = select i1 %183, i32 %184, i32 %181
  %186 = and i32 %185, 127
  %187 = getelementptr i32, ptr %0, i32 %186
  %188 = select i1 %183, i32 4651, i32 722599936
  store i32 %188, ptr %187, align 4
  %189 = load i32, ptr %0, align 4
  %190 = load i8, ptr @caam_little_end, align 1, !range !8
  %191 = icmp eq i8 %190, 0
  %192 = tail call i32 @llvm.bswap.i32(i32 %189) #4
  %193 = select i1 %191, i32 %192, i32 %189
  %194 = add i32 %193, 1
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #4
  %196 = select i1 %191, i32 %195, i32 %194
  store i32 %196, ptr %0, align 4
  %197 = load i8, ptr @caam_little_end, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  %199 = lshr i32 %196, 24
  %200 = select i1 %198, i32 %199, i32 %196
  %201 = and i32 %200, 127
  %202 = getelementptr i32, ptr %0, i32 %201
  %203 = select i1 %198, i32 12393, i32 1764753408
  store i32 %203, ptr %202, align 4
  %204 = load i32, ptr %0, align 4
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #4
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = add i32 %208, 1
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #4
  %211 = select i1 %206, i32 %210, i32 %209
  store i32 %211, ptr %0, align 4
  %212 = load i8, ptr @caam_little_end, align 1, !range !8
  %213 = icmp eq i8 %212, 0
  %214 = lshr i32 %211, 24
  %215 = select i1 %213, i32 %214, i32 %211
  %216 = and i32 %215, 127
  %217 = getelementptr i32, ptr %0, i32 %216
  %218 = select i1 %213, i32 136323162, i32 1512054792
  store i32 %218, ptr %217, align 4
  %219 = load i32, ptr %0, align 4
  %220 = load i8, ptr @caam_little_end, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #4
  %223 = select i1 %221, i32 %222, i32 %219
  %224 = add i32 %223, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #4
  %226 = select i1 %221, i32 %225, i32 %224
  store i32 %226, ptr %0, align 4
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = lshr i32 %226, 24
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = and i32 %230, 127
  %232 = getelementptr i32, ptr %0, i32 %231
  %233 = select i1 %228, i32 137371738, i32 1512058888
  store i32 %233, ptr %232, align 4
  %234 = load i32, ptr %0, align 4
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %234) #4
  %238 = select i1 %236, i32 %237, i32 %234
  %239 = add i32 %238, 1
  %240 = tail call i32 @llvm.bswap.i32(i32 %239) #4
  %241 = select i1 %236, i32 %240, i32 %239
  store i32 %241, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cnstr_shdsc_xts_skcipher_decap(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr @caam_little_end, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 17989816, i32 -1199566335
  store i32 %5, ptr %0, align 4
  %6 = load i8, ptr @caam_little_end, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = lshr i32 %5, 24
  %9 = select i1 %7, i32 %8, i32 %5
  %10 = and i32 %9, 57
  %11 = getelementptr i32, ptr %0, i32 %10
  %12 = select i1 %7, i32 4194465, i32 -1593819136
  store i32 %12, ptr %11, align 4
  %13 = load i32, ptr %0, align 4
  %14 = load i8, ptr @caam_little_end, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = add i32 %17, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %20 = select i1 %15, i32 %19, i32 %18
  store i32 %20, ptr %0, align 4
  %21 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.alginfo, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 41943040
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = lshr i32 %20, 24
  %29 = select i1 %27, i32 %28, i32 %20
  %30 = and i32 %29, 127
  %31 = getelementptr i32, ptr %0, i32 %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  %33 = select i1 %27, i32 %32, i32 %25
  store i32 %33, ptr %31, align 4
  %34 = load i32, ptr %0, align 4
  %35 = load i8, ptr @caam_little_end, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = add i32 %38, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %41 = select i1 %36, i32 %40, i32 %39
  store i32 %41, ptr %0, align 4
  %42 = icmp eq i32 %24, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load i8, ptr @caam_little_end, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = lshr i32 %41, 24
  %47 = select i1 %45, i32 %46, i32 %41
  %48 = and i32 %47, 127
  %49 = getelementptr i32, ptr %0, i32 %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %49, ptr align 1 %22, i32 %24, i1 false) #4
  %50 = load i32, ptr %0, align 4
  br label %51

51:                                               ; preds = %43, %2
  %52 = phi i32 [ %41, %2 ], [ %50, %43 ]
  %53 = load i8, ptr @caam_little_end, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  %56 = select i1 %54, i32 %55, i32 %52
  %57 = add i32 %24, 3
  %58 = lshr i32 %57, 2
  %59 = add i32 %56, %58
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #4
  %61 = select i1 %54, i32 %60, i32 %59
  store i32 %61, ptr %0, align 4
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = lshr i32 %61, 24
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = and i32 %65, 127
  %67 = getelementptr i32, ptr %0, i32 %66
  %68 = select i1 %63, i32 136880146, i32 312485896
  store i32 %68, ptr %67, align 4
  %69 = load i32, ptr %0, align 4
  %70 = load i8, ptr @caam_little_end, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  %73 = select i1 %71, i32 %72, i32 %69
  %74 = add i32 %73, 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %76 = select i1 %71, i32 %75, i32 %74
  store i32 %76, ptr %0, align 4
  %77 = load i8, ptr @caam_little_end, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = lshr i32 %76, 24
  %80 = select i1 %78, i32 %79, i32 %76
  %81 = and i32 %80, 127
  %82 = getelementptr i32, ptr %0, i32 %81
  store i64 36028797018963968, ptr %82, align 4
  %83 = load i32, ptr %0, align 4
  %84 = load i8, ptr @caam_little_end, align 1, !range !8
  %85 = icmp eq i8 %84, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #4
  %87 = select i1 %85, i32 %86, i32 %83
  %88 = add i32 %87, 2
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %90 = select i1 %85, i32 %89, i32 %88
  store i32 %90, ptr %0, align 4
  %91 = load i32, ptr %11, align 4
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #4
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = lshr i32 %90, 24
  %97 = select i1 %93, i32 %96, i32 %90
  %98 = and i32 %97, 127
  %99 = sub nsw i32 %98, %10
  %100 = or i32 %99, %95
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #4
  %102 = select i1 %93, i32 %101, i32 %100
  store i32 %102, ptr %11, align 4
  %103 = load i32, ptr %0, align 4
  %104 = load i8, ptr @caam_little_end, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = lshr i32 %103, 24
  %107 = select i1 %105, i32 %106, i32 %103
  %108 = and i32 %107, 127
  %109 = getelementptr i32, ptr %0, i32 %108
  %110 = select i1 %105, i32 136323098, i32 438312968
  store i32 %110, ptr %109, align 4
  %111 = load i32, ptr %0, align 4
  %112 = load i8, ptr @caam_little_end, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %115 = select i1 %113, i32 %114, i32 %111
  %116 = add i32 %115, 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #4
  %118 = select i1 %113, i32 %117, i32 %116
  store i32 %118, ptr %0, align 4
  %119 = load i8, ptr @caam_little_end, align 1, !range !8
  %120 = icmp eq i8 %119, 0
  %121 = lshr i32 %118, 24
  %122 = select i1 %120, i32 %121, i32 %118
  %123 = and i32 %122, 127
  %124 = getelementptr i32, ptr %0, i32 %123
  %125 = select i1 %120, i32 137371674, i32 438317064
  store i32 %125, ptr %124, align 4
  %126 = load i32, ptr %0, align 4
  %127 = load i8, ptr @caam_little_end, align 1, !range !8
  %128 = icmp eq i8 %127, 0
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #4
  %130 = select i1 %128, i32 %129, i32 %126
  %131 = add i32 %130, 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #4
  %133 = select i1 %128, i32 %132, i32 %131
  store i32 %133, ptr %0, align 4
  %134 = load i32, ptr %1, align 4
  tail call fastcc void @append_dec_op1(ptr noundef %0, i32 noundef %134)
  %135 = load i32, ptr %0, align 4
  %136 = load i8, ptr @caam_little_end, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  %138 = lshr i32 %135, 24
  %139 = select i1 %137, i32 %138, i32 %135
  %140 = and i32 %139, 127
  %141 = getelementptr i32, ptr %0, i32 %140
  %142 = select i1 %137, i32 67831976, i32 -1475867900
  store i32 %142, ptr %141, align 4
  %143 = load i32, ptr %0, align 4
  %144 = load i8, ptr @caam_little_end, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %143) #4
  %147 = select i1 %145, i32 %146, i32 %143
  %148 = add i32 %147, 1
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #4
  %150 = select i1 %145, i32 %149, i32 %148
  store i32 %150, ptr %0, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = lshr i32 %150, 24
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = and i32 %154, 127
  %156 = getelementptr i32, ptr %0, i32 %155
  %157 = select i1 %152, i32 67766440, i32 -1475868156
  store i32 %157, ptr %156, align 4
  %158 = load i32, ptr %0, align 4
  %159 = load i8, ptr @caam_little_end, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %158) #4
  %162 = select i1 %160, i32 %161, i32 %158
  %163 = add i32 %162, 1
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #4
  %165 = select i1 %160, i32 %164, i32 %163
  store i32 %165, ptr %0, align 4
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = lshr i32 %165, 24
  %169 = select i1 %167, i32 %168, i32 %165
  %170 = and i32 %169, 127
  %171 = getelementptr i32, ptr %0, i32 %170
  %172 = select i1 %167, i32 4651, i32 722599936
  store i32 %172, ptr %171, align 4
  %173 = load i32, ptr %0, align 4
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  %177 = select i1 %175, i32 %176, i32 %173
  %178 = add i32 %177, 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #4
  %180 = select i1 %175, i32 %179, i32 %178
  store i32 %180, ptr %0, align 4
  %181 = load i8, ptr @caam_little_end, align 1, !range !8
  %182 = icmp eq i8 %181, 0
  %183 = lshr i32 %180, 24
  %184 = select i1 %182, i32 %183, i32 %180
  %185 = and i32 %184, 127
  %186 = getelementptr i32, ptr %0, i32 %185
  %187 = select i1 %182, i32 12393, i32 1764753408
  store i32 %187, ptr %186, align 4
  %188 = load i32, ptr %0, align 4
  %189 = load i8, ptr @caam_little_end, align 1, !range !8
  %190 = icmp eq i8 %189, 0
  %191 = tail call i32 @llvm.bswap.i32(i32 %188) #4
  %192 = select i1 %190, i32 %191, i32 %188
  %193 = add i32 %192, 1
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #4
  %195 = select i1 %190, i32 %194, i32 %193
  store i32 %195, ptr %0, align 4
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  %198 = lshr i32 %195, 24
  %199 = select i1 %197, i32 %198, i32 %195
  %200 = and i32 %199, 127
  %201 = getelementptr i32, ptr %0, i32 %200
  %202 = select i1 %197, i32 136323162, i32 1512054792
  store i32 %202, ptr %201, align 4
  %203 = load i32, ptr %0, align 4
  %204 = load i8, ptr @caam_little_end, align 1, !range !8
  %205 = icmp eq i8 %204, 0
  %206 = tail call i32 @llvm.bswap.i32(i32 %203) #4
  %207 = select i1 %205, i32 %206, i32 %203
  %208 = add i32 %207, 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #4
  %210 = select i1 %205, i32 %209, i32 %208
  store i32 %210, ptr %0, align 4
  %211 = load i8, ptr @caam_little_end, align 1, !range !8
  %212 = icmp eq i8 %211, 0
  %213 = lshr i32 %210, 24
  %214 = select i1 %212, i32 %213, i32 %210
  %215 = and i32 %214, 127
  %216 = getelementptr i32, ptr %0, i32 %215
  %217 = select i1 %212, i32 137371738, i32 1512058888
  store i32 %217, ptr %216, align 4
  %218 = load i32, ptr %0, align 4
  %219 = load i8, ptr @caam_little_end, align 1, !range !8
  %220 = icmp eq i8 %219, 0
  %221 = tail call i32 @llvm.bswap.i32(i32 %218) #4
  %222 = select i1 %220, i32 %221, i32 %218
  %223 = add i32 %222, 1
  %224 = tail call i32 @llvm.bswap.i32(i32 %223) #4
  %225 = select i1 %220, i32 %224, i32 %223
  store i32 %225, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
