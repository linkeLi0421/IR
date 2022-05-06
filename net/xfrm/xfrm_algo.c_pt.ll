; ModuleID = '/llk/IR/net/xfrm/xfrm_algo.c_pt.bc'
source_filename = "../net/xfrm/xfrm_algo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_aalg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_aalg_get_byid\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_aalg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_ealg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_ealg_get_byid\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_ealg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_calg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_calg_get_byid\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_calg_get_byid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_aalg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_aalg_get_byname\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_aalg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_ealg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_ealg_get_byname\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_ealg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_calg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_calg_get_byname\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_calg_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_aead_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_aead_get_byname\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_aead_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_aalg_get_byidx:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_aalg_get_byidx\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_aalg_get_byidx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_ealg_get_byidx:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_ealg_get_byidx\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_ealg_get_byidx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_probe_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_probe_algs\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_probe_algs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_count_pfkey_auth_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_count_pfkey_auth_supported\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_count_pfkey_auth_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_count_pfkey_enc_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_count_pfkey_enc_supported\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_count_pfkey_enc_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon, %struct.sadb_alg }
%union.anon = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrm_algo_encr_info = type { ptr, i16, i16 }
%struct.xfrm_algo_comp_info = type { i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_xfrm_aalg_get_byid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_aalg_get_byid = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_aalg_get_byid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_aalg_get_byid to i32), ptr @__kstrtab_xfrm_aalg_get_byid, ptr @__kstrtabns_xfrm_aalg_get_byid }, section "___ksymtab_gpl+xfrm_aalg_get_byid", align 4
@__kstrtab_xfrm_ealg_get_byid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_ealg_get_byid = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_ealg_get_byid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_ealg_get_byid to i32), ptr @__kstrtab_xfrm_ealg_get_byid, ptr @__kstrtabns_xfrm_ealg_get_byid }, section "___ksymtab_gpl+xfrm_ealg_get_byid", align 4
@__kstrtab_xfrm_calg_get_byid = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_calg_get_byid = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_calg_get_byid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_calg_get_byid to i32), ptr @__kstrtab_xfrm_calg_get_byid, ptr @__kstrtabns_xfrm_calg_get_byid }, section "___ksymtab_gpl+xfrm_calg_get_byid", align 4
@__kstrtab_xfrm_aalg_get_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_aalg_get_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_aalg_get_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_aalg_get_byname to i32), ptr @__kstrtab_xfrm_aalg_get_byname, ptr @__kstrtabns_xfrm_aalg_get_byname }, section "___ksymtab_gpl+xfrm_aalg_get_byname", align 4
@__kstrtab_xfrm_ealg_get_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_ealg_get_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_ealg_get_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_ealg_get_byname to i32), ptr @__kstrtab_xfrm_ealg_get_byname, ptr @__kstrtabns_xfrm_ealg_get_byname }, section "___ksymtab_gpl+xfrm_ealg_get_byname", align 4
@__kstrtab_xfrm_calg_get_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_calg_get_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_calg_get_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_calg_get_byname to i32), ptr @__kstrtab_xfrm_calg_get_byname, ptr @__kstrtabns_xfrm_calg_get_byname }, section "___ksymtab_gpl+xfrm_calg_get_byname", align 4
@__kstrtab_xfrm_aead_get_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_aead_get_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_aead_get_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_aead_get_byname to i32), ptr @__kstrtab_xfrm_aead_get_byname, ptr @__kstrtabns_xfrm_aead_get_byname }, section "___ksymtab_gpl+xfrm_aead_get_byname", align 4
@__kstrtab_xfrm_aalg_get_byidx = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_aalg_get_byidx = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_aalg_get_byidx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_aalg_get_byidx to i32), ptr @__kstrtab_xfrm_aalg_get_byidx, ptr @__kstrtabns_xfrm_aalg_get_byidx }, section "___ksymtab_gpl+xfrm_aalg_get_byidx", align 4
@__kstrtab_xfrm_ealg_get_byidx = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_ealg_get_byidx = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_ealg_get_byidx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_ealg_get_byidx to i32), ptr @__kstrtab_xfrm_ealg_get_byidx, ptr @__kstrtabns_xfrm_ealg_get_byidx }, section "___ksymtab_gpl+xfrm_ealg_get_byidx", align 4
@__kstrtab_xfrm_probe_algs = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_probe_algs = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_probe_algs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_probe_algs to i32), ptr @__kstrtab_xfrm_probe_algs, ptr @__kstrtabns_xfrm_probe_algs }, section "___ksymtab_gpl+xfrm_probe_algs", align 4
@__kstrtab_xfrm_count_pfkey_auth_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_count_pfkey_auth_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_count_pfkey_auth_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_count_pfkey_auth_supported to i32), ptr @__kstrtab_xfrm_count_pfkey_auth_supported, ptr @__kstrtabns_xfrm_count_pfkey_auth_supported }, section "___ksymtab_gpl+xfrm_count_pfkey_auth_supported", align 4
@__kstrtab_xfrm_count_pfkey_enc_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_count_pfkey_enc_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_count_pfkey_enc_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_count_pfkey_enc_supported to i32), ptr @__kstrtab_xfrm_count_pfkey_enc_supported, ptr @__kstrtabns_xfrm_count_pfkey_enc_supported }, section "___ksymtab_gpl+xfrm_count_pfkey_enc_supported", align 4
@__UNIQUE_ID_license464 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@aead_list = internal global [8 x %struct.xfrm_algo_desc] [%struct.xfrm_algo_desc { ptr @.str, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 64 } }, %struct.sadb_alg { i8 18, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 96 } }, %struct.sadb_alg { i8 19, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 128 } }, %struct.sadb_alg { i8 20, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.2, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 64 } }, %struct.sadb_alg { i8 14, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.2, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 96 } }, %struct.sadb_alg { i8 15, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.2, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 128 } }, %struct.sadb_alg { i8 16, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.3, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 128 } }, %struct.sadb_alg { i8 23, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.4, ptr null, i8 0, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.1, i16 128 } }, %struct.sadb_alg zeroinitializer }], align 4
@.str = private unnamed_addr constant [18 x i8] c"rfc4106(gcm(aes))\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"seqiv\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rfc4309(ccm(aes))\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rfc4543(gcm(aes))\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"rfc7539esp(chacha20,poly1305)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"digest_null\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"hmac(sha1)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"hmac(sha384)\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"hmac(sha512)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"hmac(rmd160)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"xcbc(aes)\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"hmac(sm3)\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@aalg_list = internal global [10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }] [{ ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.5, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info zeroinitializer, [4 x i8] undef }, %struct.sadb_alg { i8 -5, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.6, ptr @.str.7, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [4 x i8] undef }, %struct.sadb_alg { i8 2, i8 0, i16 128, i16 128, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.8, ptr @.str.9, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 160 }, [4 x i8] undef }, %struct.sadb_alg { i8 3, i8 0, i16 160, i16 160, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.10, ptr @.str.11, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 256 }, [4 x i8] undef }, %struct.sadb_alg { i8 5, i8 0, i16 256, i16 256, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.12, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 192, i16 384 }, [4 x i8] undef }, %struct.sadb_alg { i8 6, i8 0, i16 384, i16 384, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.13, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 256, i16 512 }, [4 x i8] undef }, %struct.sadb_alg { i8 7, i8 0, i16 512, i16 512, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.14, ptr @.str.15, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 160 }, [4 x i8] undef }, %struct.sadb_alg { i8 8, i8 0, i16 160, i16 160, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.16, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [4 x i8] undef }, %struct.sadb_alg { i8 9, i8 0, i16 128, i16 128, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.17, ptr null, i8 0, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [4 x i8] undef }, %struct.sadb_alg zeroinitializer }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg } { ptr @.str.18, ptr @.str.19, i8 2, [3 x i8] undef, { %struct.xfrm_algo_auth_info, [4 x i8] } { %struct.xfrm_algo_auth_info { i16 256, i16 256 }, [4 x i8] undef }, %struct.sadb_alg { i8 10, i8 0, i16 256, i16 256, i16 0 } }], align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"ecb(cipher_null)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cipher_null\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"cbc(des)\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"echainiv\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"cbc(des3_ede)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"des3_ede\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"cbc(cast5)\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"cast5\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"cbc(blowfish)\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"blowfish\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"cbc(serpent)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"serpent\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"cbc(camellia)\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"camellia\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"cbc(twofish)\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"twofish\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"rfc3686(ctr(aes))\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"cbc(sm4)\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"sm4\00", align 1
@ealg_list = internal global [11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }] [{ ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.21, ptr @.str.22, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr null, i16 8, i16 0 } }, %struct.sadb_alg { i8 11, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.23, ptr @.str.24, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 64, i16 64 } }, %struct.sadb_alg { i8 2, i8 8, i16 64, i16 64, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.26, ptr @.str.27, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 64, i16 192 } }, %struct.sadb_alg { i8 3, i8 8, i16 192, i16 192, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.28, ptr @.str.29, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 64, i16 128 } }, %struct.sadb_alg { i8 6, i8 8, i16 40, i16 128, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.30, ptr @.str.31, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 64, i16 128 } }, %struct.sadb_alg { i8 7, i8 8, i16 40, i16 448, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.32, ptr @.str.33, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 128, i16 128 } }, %struct.sadb_alg { i8 12, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.34, ptr @.str.35, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 128, i16 128 } }, %struct.sadb_alg { i8 -4, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.36, ptr @.str.37, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 128, i16 128 } }, %struct.sadb_alg { i8 22, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.38, ptr @.str.39, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 128, i16 128 } }, %struct.sadb_alg { i8 -3, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.40, ptr null, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.1, i16 128, i16 160 } }, %struct.sadb_alg { i8 13, i8 8, i16 160, i16 288, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.41, ptr @.str.42, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.25, i16 128, i16 128 } }, %struct.sadb_alg { i8 24, i8 16, i16 128, i16 256, i16 0 } }], align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"lzs\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"lzjh\00", align 1
@calg_list = internal global [3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }] [{ ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg } { ptr @.str.44, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_comp_info, [6 x i8] } { %struct.xfrm_algo_comp_info { i16 90 }, [6 x i8] undef }, %struct.sadb_alg { i8 2, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg } { ptr @.str.45, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_comp_info, [6 x i8] } { %struct.xfrm_algo_comp_info { i16 90 }, [6 x i8] undef }, %struct.sadb_alg { i8 3, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg } { ptr @.str.46, ptr null, i8 2, [3 x i8] undef, { %struct.xfrm_algo_comp_info, [6 x i8] } { %struct.xfrm_algo_comp_info { i16 50 }, [6 x i8] undef }, %struct.sadb_alg { i8 4, i8 0, i16 0, i16 0, i16 0 } }], align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_license464, ptr @__ksymtab_xfrm_aalg_get_byid, ptr @__ksymtab_xfrm_aalg_get_byidx, ptr @__ksymtab_xfrm_aalg_get_byname, ptr @__ksymtab_xfrm_aead_get_byname, ptr @__ksymtab_xfrm_calg_get_byid, ptr @__ksymtab_xfrm_calg_get_byname, ptr @__ksymtab_xfrm_count_pfkey_auth_supported, ptr @__ksymtab_xfrm_count_pfkey_enc_supported, ptr @__ksymtab_xfrm_ealg_get_byid, ptr @__ksymtab_xfrm_ealg_get_byidx, ptr @__ksymtab_xfrm_ealg_get_byname, ptr @__ksymtab_xfrm_probe_algs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_aalg_get_byid(i32 noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 0, i32 5), align 4
  %3 = zext i8 %2 to i32
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %22

5:                                                ; preds = %54, %50, %46, %42, %38, %34, %30, %26, %22, %1
  %6 = phi i32 [ 0, %1 ], [ 1, %22 ], [ 2, %26 ], [ 3, %30 ], [ 4, %34 ], [ 5, %38 ], [ 6, %42 ], [ 7, %46 ], [ 8, %50 ], [ 9, %54 ]
  %7 = getelementptr %struct.xfrm_algo_desc, ptr @aalg_list, i32 %6
  %8 = getelementptr %struct.xfrm_algo_desc, ptr @aalg_list, i32 %6, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @crypto_has_alg(ptr noundef %13, i32 noundef 14, i32 noundef 14) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = trunc i32 %14 to i8
  %18 = load i8, ptr %8, align 4
  %19 = and i8 %17, 1
  %20 = and i8 %18, -2
  %21 = or i8 %20, %19
  store i8 %21, ptr %8, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 1, i32 5), align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %5, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 2, i32 5), align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %5, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 3, i32 5), align 4
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %5, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 4, i32 5), align 4
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, %0
  br i1 %37, label %5, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 5, i32 5), align 4
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %0
  br i1 %41, label %5, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 6, i32 5), align 4
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, %0
  br i1 %45, label %5, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 7, i32 5), align 4
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %5, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 8, i32 5), align 4
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, %0
  br i1 %53, label %5, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 9, i32 5), align 4
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %5, label %58

58:                                               ; preds = %54, %16, %12, %5
  %59 = phi ptr [ %7, %16 ], [ %7, %5 ], [ null, %12 ], [ null, %54 ]
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_ealg_get_byid(i32 noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 0, i32 4), align 4
  %3 = zext i8 %2 to i32
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %22

5:                                                ; preds = %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %1
  %6 = phi i32 [ 0, %1 ], [ 1, %22 ], [ 2, %26 ], [ 3, %30 ], [ 4, %34 ], [ 5, %38 ], [ 6, %42 ], [ 7, %46 ], [ 8, %50 ], [ 9, %54 ], [ 10, %58 ]
  %7 = getelementptr %struct.xfrm_algo_desc, ptr @ealg_list, i32 %6
  %8 = getelementptr %struct.xfrm_algo_desc, ptr @ealg_list, i32 %6, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @crypto_has_alg(ptr noundef %13, i32 noundef 5, i32 noundef 15) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %12
  %17 = trunc i32 %14 to i8
  %18 = load i8, ptr %8, align 4
  %19 = and i8 %17, 1
  %20 = and i8 %18, -2
  %21 = or i8 %20, %19
  store i8 %21, ptr %8, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 1, i32 4), align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %5, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 2, i32 4), align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %5, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 3, i32 4), align 4
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %5, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 4, i32 4), align 4
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, %0
  br i1 %37, label %5, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 5, i32 4), align 4
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %0
  br i1 %41, label %5, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 6, i32 4), align 4
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, %0
  br i1 %45, label %5, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 7, i32 4), align 4
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %5, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 8, i32 4), align 4
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, %0
  br i1 %53, label %5, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 9, i32 4), align 4
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %5, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 10, i32 4), align 4
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, %0
  br i1 %61, label %5, label %62

62:                                               ; preds = %58, %16, %12, %5
  %63 = phi ptr [ %7, %16 ], [ %7, %5 ], [ null, %12 ], [ null, %58 ]
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_calg_get_byid(i32 noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 0, i32 5), align 4
  %3 = zext i8 %2 to i32
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %22

5:                                                ; preds = %26, %22, %1
  %6 = phi i32 [ 0, %1 ], [ 1, %22 ], [ 2, %26 ]
  %7 = getelementptr %struct.xfrm_algo_desc, ptr @calg_list, i32 %6
  %8 = getelementptr %struct.xfrm_algo_desc, ptr @calg_list, i32 %6, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @crypto_has_alg(ptr noundef %13, i32 noundef 2, i32 noundef 15) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = trunc i32 %14 to i8
  %18 = load i8, ptr %8, align 4
  %19 = and i8 %17, 1
  %20 = and i8 %18, -2
  %21 = or i8 %20, %19
  store i8 %21, ptr %8, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 5), align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %5, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 5), align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %5, label %30

30:                                               ; preds = %26, %16, %12, %5
  %31 = phi ptr [ %7, %16 ], [ %7, %5 ], [ null, %12 ], [ null, %26 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_aalg_get_byname(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br label %4

4:                                                ; preds = %34, %2
  %5 = phi i32 [ %35, %34 ], [ 0, %2 ]
  %6 = getelementptr %struct.xfrm_algo_desc, ptr @aalg_list, i32 %5
  br i1 %3, label %34, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.xfrm_algo_desc, ptr @aalg_list, i32 %5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %13) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15, %7
  %19 = getelementptr %struct.xfrm_algo_desc, ptr @aalg_list, i32 %5, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @crypto_has_alg(ptr noundef %8, i32 noundef 14, i32 noundef 14) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = trunc i32 %26 to i8
  %30 = load i8, ptr %19, align 4
  %31 = and i8 %29, 1
  %32 = and i8 %30, -2
  %33 = or i8 %32, %31
  store i8 %33, ptr %19, align 4
  br label %37

34:                                               ; preds = %15, %11, %4
  %35 = add nuw nsw i32 %5, 1
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %4

37:                                               ; preds = %34, %28, %25, %23, %18
  %38 = phi ptr [ %6, %28 ], [ %6, %18 ], [ null, %25 ], [ null, %23 ], [ null, %34 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_ealg_get_byname(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br label %4

4:                                                ; preds = %34, %2
  %5 = phi i32 [ %35, %34 ], [ 0, %2 ]
  %6 = getelementptr %struct.xfrm_algo_desc, ptr @ealg_list, i32 %5
  br i1 %3, label %34, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.xfrm_algo_desc, ptr @ealg_list, i32 %5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %13) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15, %7
  %19 = getelementptr %struct.xfrm_algo_desc, ptr @ealg_list, i32 %5, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @crypto_has_alg(ptr noundef %8, i32 noundef 5, i32 noundef 15) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = trunc i32 %26 to i8
  %30 = load i8, ptr %19, align 4
  %31 = and i8 %29, 1
  %32 = and i8 %30, -2
  %33 = or i8 %32, %31
  store i8 %33, ptr %19, align 4
  br label %37

34:                                               ; preds = %15, %11, %4
  %35 = add nuw nsw i32 %5, 1
  %36 = icmp eq i32 %35, 11
  br i1 %36, label %37, label %4

37:                                               ; preds = %34, %28, %25, %23, %18
  %38 = phi ptr [ %6, %28 ], [ %6, %18 ], [ null, %25 ], [ null, %23 ], [ null, %34 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_calg_get_byname(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @calg_list, align 4
  %6 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %9) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %50, %43, %40, %33, %11, %4
  %15 = phi ptr [ %5, %4 ], [ %5, %11 ], [ %34, %33 ], [ %34, %40 ], [ %44, %43 ], [ %44, %50 ]
  %16 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 1, %33 ], [ 1, %40 ], [ 2, %43 ], [ 2, %50 ]
  %17 = phi ptr [ @calg_list, %4 ], [ @calg_list, %11 ], [ getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 0), %33 ], [ getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 0), %40 ], [ getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 0), %43 ], [ getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 0), %50 ]
  %18 = getelementptr %struct.xfrm_algo_desc, ptr @calg_list, i32 %16, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %14
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @crypto_has_alg(ptr noundef %15, i32 noundef 2, i32 noundef 15) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %24
  %28 = trunc i32 %25 to i8
  %29 = load i8, ptr %18, align 4
  %30 = and i8 %28, 1
  %31 = and i8 %29, -2
  %32 = or i8 %31, %30
  store i8 %32, ptr %18, align 4
  br label %53

33:                                               ; preds = %11, %8
  %34 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 0), align 4
  %35 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %14, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 1), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %38) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %14, label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 0), align 4
  %45 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %44) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %14, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 1), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %48) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %14, label %53

53:                                               ; preds = %50, %47, %27, %24, %22, %14, %2
  %54 = phi ptr [ %17, %27 ], [ %17, %14 ], [ null, %24 ], [ null, %22 ], [ null, %2 ], [ null, %50 ], [ null, %47 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_aead_get_byname(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 0, i32 3, i32 0, i32 1), align 4
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, %1
  %8 = and i1 %4, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load ptr, ptr @aead_list, align 4
  %11 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %91, %82, %73, %64, %55, %46, %37, %9
  %14 = phi ptr [ %10, %9 ], [ %38, %37 ], [ %47, %46 ], [ %56, %55 ], [ %65, %64 ], [ %74, %73 ], [ %83, %82 ], [ %92, %91 ]
  %15 = phi i32 [ 0, %9 ], [ 1, %37 ], [ 2, %46 ], [ 3, %55 ], [ 4, %64 ], [ 5, %73 ], [ 6, %82 ], [ 7, %91 ]
  %16 = phi ptr [ @aead_list, %9 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 1), %37 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 2), %46 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 3), %55 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 4), %64 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 5), %73 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 6), %82 ], [ getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 7), %91 ]
  %17 = getelementptr %struct.xfrm_algo_desc, ptr @aead_list, i32 %15, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %13
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @crypto_has_alg(ptr noundef %14, i32 noundef 3, i32 noundef 15) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %95, label %26

26:                                               ; preds = %23
  %27 = trunc i32 %24 to i8
  %28 = load i8, ptr %17, align 4
  %29 = and i8 %27, 1
  %30 = and i8 %28, -2
  %31 = or i8 %30, %29
  store i8 %31, ptr %17, align 4
  br label %95

32:                                               ; preds = %9, %3
  %33 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 1, i32 3, i32 0, i32 1), align 4
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, %1
  %36 = and i1 %4, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 1), align 4
  %39 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %38) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %13, label %41

41:                                               ; preds = %37, %32
  %42 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 2, i32 3, i32 0, i32 1), align 4
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, %1
  %45 = and i1 %4, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 2), align 4
  %48 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %47) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %13, label %50

50:                                               ; preds = %46, %41
  %51 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 3, i32 3, i32 0, i32 1), align 4
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, %1
  %54 = and i1 %4, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 3), align 4
  %57 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %56) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %13, label %59

59:                                               ; preds = %55, %50
  %60 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 4, i32 3, i32 0, i32 1), align 4
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %61, %1
  %63 = and i1 %4, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 4), align 4
  %66 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %65) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %13, label %68

68:                                               ; preds = %64, %59
  %69 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 5, i32 3, i32 0, i32 1), align 4
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, %1
  %72 = and i1 %4, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 5), align 4
  %75 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %74) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %13, label %77

77:                                               ; preds = %73, %68
  %78 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 6, i32 3, i32 0, i32 1), align 4
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %79, %1
  %81 = and i1 %4, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 6), align 4
  %84 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %83) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %13, label %86

86:                                               ; preds = %82, %77
  %87 = load i16, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 7, i32 3, i32 0, i32 1), align 4
  %88 = zext i16 %87 to i32
  %89 = icmp eq i32 %88, %1
  %90 = and i1 %4, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load ptr, ptr getelementptr inbounds ([8 x %struct.xfrm_algo_desc], ptr @aead_list, i32 0, i32 7), align 4
  %93 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %92) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %13, label %95

95:                                               ; preds = %91, %86, %26, %23, %21, %13
  %96 = phi ptr [ %16, %26 ], [ %16, %13 ], [ null, %23 ], [ null, %21 ], [ null, %91 ], [ null, %86 ]
  ret ptr %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @xfrm_aalg_get_byidx(i32 noundef %0) #1 {
  %2 = icmp ugt i32 %0, 9
  %3 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i32 0, i32 %0
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @xfrm_ealg_get_byidx(i32 noundef %0) #1 {
  %2 = icmp ugt i32 %0, 10
  %3 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i32 0, i32 %0
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_probe_algs() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #6
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 65280
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_algo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 821, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

7:                                                ; preds = %22, %0
  %8 = phi i32 [ %23, %22 ], [ 0, %0 ]
  %9 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @crypto_has_ahash(ptr noundef %10, i32 noundef 0, i32 noundef 0) #6
  %12 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i32 0, i32 %8, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %7
  %18 = trunc i32 %11 to i8
  %19 = and i8 %18, 1
  %20 = and i8 %13, -2
  %21 = or i8 %20, %19
  store i8 %21, ptr %12, align 4
  br label %22

22:                                               ; preds = %17, %7
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %7

25:                                               ; preds = %40, %22
  %26 = phi i32 [ %41, %40 ], [ 0, %22 ]
  %27 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @crypto_has_skcipher(ptr noundef %28, i32 noundef 0, i32 noundef 0) #6
  %30 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i32 0, i32 %26, i32 2
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = trunc i32 %29 to i8
  %37 = and i8 %36, 1
  %38 = and i8 %31, -2
  %39 = or i8 %38, %37
  store i8 %39, ptr %30, align 4
  br label %40

40:                                               ; preds = %35, %25
  %41 = add nuw nsw i32 %26, 1
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %43, label %25

43:                                               ; preds = %40
  %44 = load ptr, ptr @calg_list, align 4
  %45 = tail call i32 @crypto_has_alg(ptr noundef %44, i32 noundef 2, i32 noundef 143) #6
  %46 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 0, i32 2), align 4
  %47 = and i8 %46, 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = trunc i32 %45 to i8
  %52 = and i8 %51, 1
  %53 = and i8 %46, -2
  %54 = or i8 %53, %52
  store i8 %54, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 0, i32 2), align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 0), align 4
  %57 = tail call i32 @crypto_has_alg(ptr noundef %56, i32 noundef 2, i32 noundef 143) #6
  %58 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 2), align 4
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = trunc i32 %57 to i8
  %64 = and i8 %63, 1
  %65 = and i8 %58, -2
  %66 = or i8 %65, %64
  store i8 %66, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 1, i32 2), align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 0), align 4
  %69 = tail call i32 @crypto_has_alg(ptr noundef %68, i32 noundef 2, i32 noundef 143) #6
  %70 = load i8, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 2), align 4
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = trunc i32 %69 to i8
  %76 = and i8 %75, 1
  %77 = and i8 %70, -2
  %78 = or i8 %77, %76
  store i8 %78, ptr getelementptr inbounds ([3 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_comp_info, [6 x i8] }, %struct.sadb_alg }], ptr @calg_list, i32 0, i32 2, i32 2), align 4
  br label %79

79:                                               ; preds = %74, %67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xfrm_count_pfkey_auth_supported() #3 {
  %1 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 0, i32 2), align 4
  %2 = and i8 %1, 3
  %3 = icmp eq i8 %2, 3
  %4 = zext i1 %3 to i32
  %5 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 1, i32 2), align 4
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 3
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %4, %8
  %10 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 2, i32 2), align 4
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 3
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 3, i32 2), align 4
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 3
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 4, i32 2), align 4
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 3
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %19, %23
  %25 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 5, i32 2), align 4
  %26 = and i8 %25, 3
  %27 = icmp eq i8 %26, 3
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 6, i32 2), align 4
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 3
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %29, %33
  %35 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 7, i32 2), align 4
  %36 = and i8 %35, 3
  %37 = icmp eq i8 %36, 3
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %34, %38
  %40 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 8, i32 2), align 4
  %41 = and i8 %40, 3
  %42 = icmp eq i8 %41, 3
  %43 = zext i1 %42 to i32
  %44 = add nuw nsw i32 %39, %43
  %45 = load i8, ptr getelementptr inbounds ([10 x { ptr, ptr, i8, [3 x i8], { %struct.xfrm_algo_auth_info, [4 x i8] }, %struct.sadb_alg }], ptr @aalg_list, i32 0, i32 9, i32 2), align 4
  %46 = and i8 %45, 3
  %47 = icmp eq i8 %46, 3
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %44, %48
  ret i32 %49
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xfrm_count_pfkey_enc_supported() #3 {
  %1 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 0, i32 2), align 4
  %2 = and i8 %1, 3
  %3 = icmp eq i8 %2, 3
  %4 = zext i1 %3 to i32
  %5 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 1, i32 2), align 4
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 3
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %4, %8
  %10 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 2, i32 2), align 4
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 3
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 3, i32 2), align 4
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 3
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 4, i32 2), align 4
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 3
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %19, %23
  %25 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 5, i32 2), align 4
  %26 = and i8 %25, 3
  %27 = icmp eq i8 %26, 3
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 6, i32 2), align 4
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 3
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %29, %33
  %35 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 7, i32 2), align 4
  %36 = and i8 %35, 3
  %37 = icmp eq i8 %36, 3
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %34, %38
  %40 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 8, i32 2), align 4
  %41 = and i8 %40, 3
  %42 = icmp eq i8 %41, 3
  %43 = zext i1 %42 to i32
  %44 = add nuw nsw i32 %39, %43
  %45 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 9, i32 2), align 4
  %46 = and i8 %45, 3
  %47 = icmp eq i8 %46, 3
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %44, %48
  %50 = load i8, ptr getelementptr inbounds ([11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }], ptr @ealg_list, i32 0, i32 10, i32 2), align 4
  %51 = and i8 %50, 3
  %52 = icmp eq i8 %51, 3
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %49, %53
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156441391, i64 2156441876, i64 2156441428, i64 2156441484, i64 2156441518, i64 2156441542, i64 2156441583, i64 2156441604, i64 2156441632, i64 2156441666}
