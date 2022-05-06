; ModuleID = '/llk/IR/crypto/ecc.c_pt.bc'
source_filename = "../crypto/ecc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_get_curve25519:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_get_curve25519\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_get_curve25519:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_get_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_get_curve\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_get_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_alloc_point:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_alloc_point\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_alloc_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_free_point:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_free_point\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_free_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_vli_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_num_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_num_bits\22\09\09\09\09\09"
module asm "__kstrtabns_vli_num_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_from_be64:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_from_be64\22\09\09\09\09\09"
module asm "__kstrtabns_vli_from_be64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_from_le64:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_from_le64\22\09\09\09\09\09"
module asm "__kstrtabns_vli_from_le64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_cmp\22\09\09\09\09\09"
module asm "__kstrtabns_vli_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_sub\22\09\09\09\09\09"
module asm "__kstrtabns_vli_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_mod_mult_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_mod_mult_slow\22\09\09\09\09\09"
module asm "__kstrtabns_vli_mod_mult_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_mod_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_mod_inv\22\09\09\09\09\09"
module asm "__kstrtabns_vli_mod_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_point_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_point_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_point_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_point_mult_shamir:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_point_mult_shamir\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_point_mult_shamir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_key_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_key_valid\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_key_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_gen_privkey:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_gen_privkey\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_gen_privkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_make_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_make_pub_key\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_make_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_pubkey_valid_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_pubkey_valid_partial\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_pubkey_valid_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_pubkey_valid_full:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_pubkey_valid_full\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_pubkey_valid_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_shared_secret:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_shared_secret\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_shared_secret:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ecc_curve = type { ptr, %struct.ecc_point, ptr, ptr, ptr, ptr }
%struct.ecc_point = type { ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@ecc_25519 = internal constant %struct.ecc_curve { ptr @.str.1, %struct.ecc_point { ptr @curve25519_g_x, ptr null, i8 4 }, ptr @curve25519_p, ptr null, ptr @curve25519_a, ptr null }, align 4
@__kstrtab_ecc_get_curve25519 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_get_curve25519 = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_get_curve25519 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_get_curve25519 to i32), ptr @__kstrtab_ecc_get_curve25519, ptr @__kstrtabns_ecc_get_curve25519 }, section "___ksymtab+ecc_get_curve25519", align 4
@nist_p192 = internal global %struct.ecc_curve { ptr @.str.2, %struct.ecc_point { ptr @nist_p192_g_x, ptr @nist_p192_g_y, i8 3 }, ptr @nist_p192_p, ptr @nist_p192_n, ptr @nist_p192_a, ptr @nist_p192_b }, align 4
@nist_p256 = internal global %struct.ecc_curve { ptr @.str.3, %struct.ecc_point { ptr @nist_p256_g_x, ptr @nist_p256_g_y, i8 4 }, ptr @nist_p256_p, ptr @nist_p256_n, ptr @nist_p256_a, ptr @nist_p256_b }, align 4
@nist_p384 = internal global %struct.ecc_curve { ptr @.str.4, %struct.ecc_point { ptr @nist_p384_g_x, ptr @nist_p384_g_y, i8 6 }, ptr @nist_p384_p, ptr @nist_p384_n, ptr @nist_p384_a, ptr @nist_p384_b }, align 4
@__kstrtab_ecc_get_curve = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_get_curve = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_get_curve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_get_curve to i32), ptr @__kstrtab_ecc_get_curve, ptr @__kstrtabns_ecc_get_curve }, section "___ksymtab+ecc_get_curve", align 4
@__kstrtab_ecc_alloc_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_alloc_point = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_alloc_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_alloc_point to i32), ptr @__kstrtab_ecc_alloc_point, ptr @__kstrtabns_ecc_alloc_point }, section "___ksymtab+ecc_alloc_point", align 4
@__kstrtab_ecc_free_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_free_point = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_free_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_free_point to i32), ptr @__kstrtab_ecc_free_point, ptr @__kstrtabns_ecc_free_point }, section "___ksymtab+ecc_free_point", align 4
@__kstrtab_vli_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_is_zero to i32), ptr @__kstrtab_vli_is_zero, ptr @__kstrtabns_vli_is_zero }, section "___ksymtab+vli_is_zero", align 4
@__kstrtab_vli_num_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_num_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_num_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_num_bits to i32), ptr @__kstrtab_vli_num_bits, ptr @__kstrtabns_vli_num_bits }, section "___ksymtab+vli_num_bits", align 4
@__kstrtab_vli_from_be64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_from_be64 = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_from_be64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_from_be64 to i32), ptr @__kstrtab_vli_from_be64, ptr @__kstrtabns_vli_from_be64 }, section "___ksymtab+vli_from_be64", align 4
@__kstrtab_vli_from_le64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_from_le64 = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_from_le64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_from_le64 to i32), ptr @__kstrtab_vli_from_le64, ptr @__kstrtabns_vli_from_le64 }, section "___ksymtab+vli_from_le64", align 4
@__kstrtab_vli_cmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_cmp = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_cmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_cmp to i32), ptr @__kstrtab_vli_cmp, ptr @__kstrtabns_vli_cmp }, section "___ksymtab+vli_cmp", align 4
@__kstrtab_vli_sub = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_sub = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_sub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_sub to i32), ptr @__kstrtab_vli_sub, ptr @__kstrtabns_vli_sub }, section "___ksymtab+vli_sub", align 4
@__kstrtab_vli_mod_mult_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_mod_mult_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_mod_mult_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_mod_mult_slow to i32), ptr @__kstrtab_vli_mod_mult_slow, ptr @__kstrtabns_vli_mod_mult_slow }, section "___ksymtab+vli_mod_mult_slow", align 4
@__kstrtab_vli_mod_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_mod_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_mod_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_mod_inv to i32), ptr @__kstrtab_vli_mod_inv, ptr @__kstrtabns_vli_mod_inv }, section "___ksymtab+vli_mod_inv", align 4
@__kstrtab_ecc_point_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_point_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_point_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_point_is_zero to i32), ptr @__kstrtab_ecc_point_is_zero, ptr @__kstrtabns_ecc_point_is_zero }, section "___ksymtab+ecc_point_is_zero", align 4
@__kstrtab_ecc_point_mult_shamir = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_point_mult_shamir = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_point_mult_shamir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_point_mult_shamir to i32), ptr @__kstrtab_ecc_point_mult_shamir, ptr @__kstrtabns_ecc_point_mult_shamir }, section "___ksymtab+ecc_point_mult_shamir", align 4
@__kstrtab_ecc_is_key_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_key_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_key_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_key_valid to i32), ptr @__kstrtab_ecc_is_key_valid, ptr @__kstrtabns_ecc_is_key_valid }, section "___ksymtab+ecc_is_key_valid", align 4
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ecc_gen_privkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_gen_privkey = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_gen_privkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_gen_privkey to i32), ptr @__kstrtab_ecc_gen_privkey, ptr @__kstrtabns_ecc_gen_privkey }, section "___ksymtab+ecc_gen_privkey", align 4
@__kstrtab_ecc_make_pub_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_make_pub_key = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_make_pub_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_make_pub_key to i32), ptr @__kstrtab_ecc_make_pub_key, ptr @__kstrtabns_ecc_make_pub_key }, section "___ksymtab+ecc_make_pub_key", align 4
@.str = private unnamed_addr constant [13 x i8] c"crypto/ecc.c\00", align 1
@__kstrtab_ecc_is_pubkey_valid_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_pubkey_valid_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_pubkey_valid_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_pubkey_valid_partial to i32), ptr @__kstrtab_ecc_is_pubkey_valid_partial, ptr @__kstrtabns_ecc_is_pubkey_valid_partial }, section "___ksymtab+ecc_is_pubkey_valid_partial", align 4
@__kstrtab_ecc_is_pubkey_valid_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_pubkey_valid_full = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_pubkey_valid_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_pubkey_valid_full to i32), ptr @__kstrtab_ecc_is_pubkey_valid_full, ptr @__kstrtabns_ecc_is_pubkey_valid_full }, section "___ksymtab+ecc_is_pubkey_valid_full", align 4
@__kstrtab_crypto_ecdh_shared_secret = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_shared_secret = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_shared_secret = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_shared_secret to i32), ptr @__kstrtab_crypto_ecdh_shared_secret, ptr @__kstrtabns_crypto_ecdh_shared_secret }, section "___ksymtab+crypto_ecdh_shared_secret", align 4
@__UNIQUE_ID_license160 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"curve25519\00", align 1
@curve25519_g_x = internal global [4 x i64] [i64 9, i64 0, i64 0, i64 0], align 8
@curve25519_p = internal global [4 x i64] [i64 -19, i64 -1, i64 -1, i64 9223372036854775807], align 8
@curve25519_a = internal global [4 x i64] [i64 121665, i64 0, i64 0, i64 0], align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"nist_192\00", align 1
@nist_p192_g_x = internal global [3 x i64] [i64 -792902925453160430, i64 8988939576078862336, i64 1769255009665454326], align 8
@nist_p192_g_y = internal global [3 x i64] [i64 8356842117447370769, i64 7138225120784731605, i64 511487955924736632], align 8
@nist_p192_p = internal global [3 x i64] [i64 -1, i64 -2, i64 -1], align 8
@nist_p192_n = internal global [3 x i64] [i64 1471491468346665009, i64 -1713440714, i64 -1], align 8
@nist_p192_a = internal global [3 x i64] [i64 -4, i64 -2, i64 -1], align 8
@nist_p192_b = internal global [3 x i64] [i64 -92078683924809295, i64 1128127154243252297, i64 7215053686808805607], align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"nist_256\00", align 1
@nist_p256_g_x = internal global [4 x i64] [i64 -819310685055303018, i64 8575836109218198432, i64 -523289583788211982, i64 7716867327612699207], align 8
@nist_p256_g_y = internal global [4 x i64] [i64 -3767753221892779531, i64 3156516839386865358, i64 -8149286295562117610, i64 5756518291402817435], align 8
@nist_p256_p = internal global [4 x i64] [i64 -1, i64 4294967295, i64 0, i64 -4294967295], align 8
@nist_p256_n = internal global [4 x i64] [i64 -884452912994769583, i64 -4834901526196019580, i64 -1, i64 -4294967296], align 8
@nist_p256_a = internal global [4 x i64] [i64 -4, i64 4294967295, i64 0, i64 -4294967295], align 8
@nist_p256_b = internal global [4 x i64] [i64 4309448131093880907, i64 7285987128567378166, i64 -5482079946633869636, i64 6540974713487397863], align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"nist_384\00", align 1
@nist_p384_g_x = internal global [6 x i64] [i64 4203087948775033527, i64 6125724927633205612, i64 6482722621138151992, i64 7934563412932533144, i64 -8164525713704047244, i64 -6158731714831383241], align 8
@nist_p384_g_y = internal global [6 x i64] [i64 8809917716911230559, i64 747793036959711645, i64 -1595909157222827840, i64 -507748159718812548, i64 6745997240412855337, i64 3897828414440483951], align 8
@nist_p384_p = internal global [6 x i64] [i64 4294967295, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], align 8
@nist_p384_n = internal global [6 x i64] [i64 -1374695839762142861, i64 6348401684107011962, i64 -4079331616924160545, i64 -1, i64 -1, i64 -1], align 8
@nist_p384_a = internal global [6 x i64] [i64 4294967292, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], align 8
@nist_p384_b = internal global [6 x i64] [i64 3064076045283764975, i64 -4155070326131207779, i64 221811693264799578, i64 1737717031765098770, i64 -7454014372307260135, i64 -5534590068959811612], align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"nist_\00", align 1
@vli_mmod_fast._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.vli_mmod_fast = private unnamed_addr constant [14 x i8] c"vli_mmod_fast\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\013ecc: unsupported digits size!\0A\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_license160, ptr @__ksymtab_crypto_ecdh_shared_secret, ptr @__ksymtab_ecc_alloc_point, ptr @__ksymtab_ecc_free_point, ptr @__ksymtab_ecc_gen_privkey, ptr @__ksymtab_ecc_get_curve, ptr @__ksymtab_ecc_get_curve25519, ptr @__ksymtab_ecc_is_key_valid, ptr @__ksymtab_ecc_is_pubkey_valid_full, ptr @__ksymtab_ecc_is_pubkey_valid_partial, ptr @__ksymtab_ecc_make_pub_key, ptr @__ksymtab_ecc_point_is_zero, ptr @__ksymtab_ecc_point_mult_shamir, ptr @__ksymtab_vli_cmp, ptr @__ksymtab_vli_from_be64, ptr @__ksymtab_vli_from_le64, ptr @__ksymtab_vli_is_zero, ptr @__ksymtab_vli_mod_inv, ptr @__ksymtab_vli_mod_mult_slow, ptr @__ksymtab_vli_num_bits, ptr @__ksymtab_vli_sub], section "llvm.metadata"
@switch.table.crypto_ecdh_shared_secret = private unnamed_addr constant [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ecc_get_curve25519() #0 {
  ret ptr @ecc_25519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @ecc_get_curve(i32 noundef %0) #0 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ecc_alloc_point(i32 noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 12) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = shl i32 %0, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store ptr null, ptr %3, align 8
  br label %20

9:                                                ; preds = %5
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #19
  store ptr %10, ptr %3, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #19
  %14 = getelementptr inbounds %struct.ecc_point, ptr %3, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = trunc i32 %0 to i8
  %18 = getelementptr inbounds %struct.ecc_point, ptr %3, i32 0, i32 2
  store i8 %17, ptr %18, align 8
  br label %21

19:                                               ; preds = %12
  tail call void @kfree_sensitive(ptr noundef nonnull %10) #20
  br label %20

20:                                               ; preds = %19, %9, %8
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %21

21:                                               ; preds = %20, %16, %1
  %22 = phi ptr [ %3, %16 ], [ null, %20 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ecc_free_point(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.ecc_point, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #20
  tail call void @kfree_sensitive(ptr noundef nonnull %0) #20
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @vli_is_zero(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %9, %11 ], [ 0, %4 ]
  %9 = add nuw i32 %8, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i64, ptr %0, i32 %9
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %11, %7
  %16 = icmp uge i32 %9, %1
  br label %17

17:                                               ; preds = %15, %4, %2
  %18 = phi i1 [ true, %2 ], [ false, %4 ], [ %16, %15 ]
  ret i1 %18
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @vli_num_bits(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 -1) #20
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ %1, %2 ], [ %7, %9 ]
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr i64, ptr %0, i32 %7
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %5, label %19

13:                                               ; preds = %5
  %14 = icmp ult i32 %1, -2147483647
  br i1 %14, label %33, label %15

15:                                               ; preds = %13
  %16 = getelementptr i64, ptr %0, i32 %4
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %9
  %20 = phi i64 [ %17, %15 ], [ %11, %9 ]
  %21 = phi i32 [ %4, %15 ], [ %7, %9 ]
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i64 [ %25, %22 ], [ %20, %19 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %19 ]
  %25 = lshr i64 %23, 1
  %26 = add nuw nsw i32 %24, 1
  %27 = icmp ult i64 %23, 2
  br i1 %27, label %28, label %22

28:                                               ; preds = %22, %15
  %29 = phi i32 [ %4, %15 ], [ %21, %22 ]
  %30 = phi i32 [ 0, %15 ], [ %26, %22 ]
  %31 = shl i32 %29, 6
  %32 = add i32 %30, %31
  br label %33

33:                                               ; preds = %28, %13
  %34 = phi i32 [ %32, %28 ], [ 0, %13 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vli_from_be64(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %7 = xor i32 %6, -1
  %8 = add i32 %7, %2
  %9 = getelementptr i64, ptr %1, i32 %8
  %10 = load i64, ptr %9, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #20
  %12 = getelementptr i64, ptr %0, i32 %6
  store i64 %11, ptr %12, align 8
  %13 = add nuw i32 %6, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vli_from_le64(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = getelementptr i64, ptr %1, i32 %6
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr i64, ptr %0, i32 %6
  store i64 %8, ptr %9, align 8
  %10 = add nuw i32 %6, 1
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @vli_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  br label %4

4:                                                ; preds = %14, %3
  %5 = phi i32 [ %2, %3 ], [ %6, %14 ]
  %6 = add i32 %5, -1
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr i64, ptr %0, i32 %6
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr i64, ptr %1, i32 %6
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = icmp ult i64 %10, %12
  br i1 %15, label %16, label %4

16:                                               ; preds = %14, %8, %4
  %17 = phi i32 [ 1, %8 ], [ -1, %14 ], [ 0, %4 ]
  ret i32 %17
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vli_sub(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #7 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %20, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %18, %6 ], [ 0, %4 ]
  %9 = getelementptr i64, ptr %1, i32 %7
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr i64, ptr %2, i32 %7
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, %8
  %14 = sub i64 %10, %13
  %15 = icmp eq i64 %13, 0
  %16 = icmp ult i64 %10, %13
  %17 = zext i1 %16 to i64
  %18 = select i1 %15, i64 %8, i64 %17
  %19 = getelementptr i64, ptr %0, i32 %7
  store i64 %14, ptr %19, align 8
  %20 = add nuw i32 %7, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %22, label %6

22:                                               ; preds = %6, %4
  %23 = phi i64 [ 0, %4 ], [ %18, %6 ]
  ret i64 %23
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vli_mod_mult_slow(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) #8 {
  %6 = alloca [16 x i64], align 8
  %7 = alloca [16 x i64], align 8
  %8 = alloca [2 x ptr], align 8
  %9 = alloca [16 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i32 128, i1 false), !annotation !8
  %10 = shl i32 %4, 1
  %11 = add i32 %10, -1
  br label %12

12:                                               ; preds = %64, %5
  %13 = phi i32 [ 0, %5 ], [ %17, %64 ]
  %14 = phi i64 [ 0, %5 ], [ %67, %64 ]
  %15 = phi i64 [ 0, %5 ], [ %66, %64 ]
  %16 = icmp ult i32 %13, %4
  %17 = add nuw i32 %13, 1
  %18 = sub i32 %17, %4
  %19 = select i1 %16, i32 0, i32 %18
  %20 = icmp uge i32 %13, %19
  %21 = icmp ult i32 %19, %4
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %23, %12
  %24 = phi i32 [ %60, %23 ], [ %19, %12 ]
  %25 = phi i64 [ %59, %23 ], [ 0, %12 ]
  %26 = phi i64 [ %56, %23 ], [ %14, %12 ]
  %27 = phi i64 [ %52, %23 ], [ %15, %12 ]
  %28 = getelementptr i64, ptr %1, i32 %24
  %29 = load i64, ptr %28, align 8
  %30 = sub i32 %13, %24
  %31 = getelementptr i64, ptr %2, i32 %30
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %29, 4294967295
  %34 = lshr i64 %29, 32
  %35 = and i64 %32, 4294967295
  %36 = lshr i64 %32, 32
  %37 = mul nuw i64 %35, %33
  %38 = mul nuw i64 %36, %33
  %39 = mul nuw i64 %35, %34
  %40 = mul nuw i64 %36, %34
  %41 = lshr i64 %37, 32
  %42 = add i64 %38, %39
  %43 = add i64 %42, %41
  %44 = icmp ult i64 %43, %38
  %45 = add nuw i64 %40, 4294967296
  %46 = select i1 %44, i64 %45, i64 %40
  %47 = and i64 %37, 4294967295
  %48 = shl i64 %43, 32
  %49 = lshr i64 %43, 32
  %50 = add i64 %46, %49
  %51 = add i64 %47, %27
  %52 = add i64 %51, %48
  %53 = add i64 %50, %26
  %54 = icmp ult i64 %52, %27
  %55 = zext i1 %54 to i64
  %56 = add i64 %53, %55
  %57 = icmp ult i64 %56, %50
  %58 = zext i1 %57 to i64
  %59 = add i64 %25, %58
  %60 = add nuw i32 %24, 1
  %61 = icmp ugt i32 %13, %24
  %62 = icmp ult i32 %60, %4
  %63 = and i1 %61, %62
  br i1 %63, label %23, label %64

64:                                               ; preds = %23, %12
  %65 = phi i64 [ %15, %12 ], [ %52, %23 ]
  %66 = phi i64 [ %14, %12 ], [ %56, %23 ]
  %67 = phi i64 [ 0, %12 ], [ %59, %23 ]
  %68 = getelementptr i64, ptr %9, i32 %13
  store i64 %65, ptr %68, align 8
  %69 = icmp eq i32 %17, %11
  br i1 %69, label %70, label %12

70:                                               ; preds = %64
  %71 = getelementptr i64, ptr %9, i32 %11
  store i64 %66, ptr %71, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i32 128, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i32 128, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr %7, ptr %8, align 8
  %72 = getelementptr inbounds ptr, ptr %8, i32 1
  store ptr %9, ptr %72, align 4
  %73 = shl i32 %4, 7
  %74 = add i32 %4, -1
  %75 = call i32 @llvm.smin.i32(i32 %74, i32 -1) #20
  br label %76

76:                                               ; preds = %80, %70
  %77 = phi i32 [ %4, %70 ], [ %78, %80 ]
  %78 = add i32 %77, -1
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr i64, ptr %3, i32 %78
  %82 = load i64, ptr %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %76, label %90

84:                                               ; preds = %76
  %85 = icmp ult i32 %4, -2147483647
  br i1 %85, label %104, label %86

86:                                               ; preds = %84
  %87 = getelementptr i64, ptr %3, i32 %75
  %88 = load i64, ptr %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86, %80
  %91 = phi i64 [ %88, %86 ], [ %82, %80 ]
  %92 = phi i32 [ %75, %86 ], [ %78, %80 ]
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i64 [ %96, %93 ], [ %91, %90 ]
  %95 = phi i32 [ %97, %93 ], [ 0, %90 ]
  %96 = lshr i64 %94, 1
  %97 = add nuw nsw i32 %95, 1
  %98 = icmp ult i64 %94, 2
  br i1 %98, label %99, label %93

99:                                               ; preds = %93, %86
  %100 = phi i32 [ %75, %86 ], [ %92, %93 ]
  %101 = phi i32 [ 0, %86 ], [ %97, %93 ]
  %102 = shl i32 %100, 6
  %103 = add i32 %101, %102
  br label %104

104:                                              ; preds = %99, %84
  %105 = phi i32 [ %103, %99 ], [ 0, %84 ]
  %106 = sub i32 %73, %105
  %107 = freeze i32 %106
  %108 = sdiv i32 %107, 64
  %109 = mul i32 %108, 64
  %110 = sub i32 %107, %109
  %111 = add i32 %106, 63
  %112 = icmp ult i32 %111, 127
  br i1 %112, label %115, label %113

113:                                              ; preds = %104
  %114 = shl nuw nsw i32 %108, 3
  call void @llvm.memset.p0.i32(ptr nonnull align 8 %6, i8 0, i32 %114, i1 false) #20
  br label %115

115:                                              ; preds = %113, %104
  %116 = icmp sgt i32 %110, 0
  %117 = icmp eq i32 %4, 0
  br i1 %116, label %118, label %135

118:                                              ; preds = %115
  br i1 %117, label %139, label %119

119:                                              ; preds = %118
  %120 = zext i32 %110 to i64
  %121 = sub nuw nsw i32 64, %110
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %123, %119
  %124 = phi i32 [ 0, %119 ], [ %133, %123 ]
  %125 = phi i64 [ 0, %119 ], [ %132, %123 ]
  %126 = getelementptr i64, ptr %3, i32 %124
  %127 = load i64, ptr %126, align 8
  %128 = shl i64 %127, %120
  %129 = or i64 %128, %125
  %130 = add i32 %124, %108
  %131 = getelementptr [16 x i64], ptr %6, i32 0, i32 %130
  store i64 %129, ptr %131, align 8
  %132 = lshr i64 %127, %122
  %133 = add nuw i32 %124, 1
  %134 = icmp eq i32 %133, %4
  br i1 %134, label %139, label %123

135:                                              ; preds = %115
  br i1 %117, label %139, label %136

136:                                              ; preds = %135
  %137 = getelementptr i64, ptr %6, i32 %108
  %138 = shl nuw i32 %4, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %137, ptr align 8 %3, i32 %138, i1 false) #20
  br label %139

139:                                              ; preds = %136, %135, %123, %118
  %140 = icmp sgt i32 %106, -1
  br i1 %140, label %141, label %208

141:                                              ; preds = %139
  %142 = icmp eq i32 %10, 0
  %143 = getelementptr i64, ptr %6, i32 %4
  %144 = icmp ugt ptr %143, %6
  %145 = getelementptr [16 x i64], ptr %6, i32 0, i32 %74
  %146 = getelementptr i64, ptr %143, i32 %4
  br label %147

147:                                              ; preds = %205, %141
  %148 = phi i32 [ %106, %141 ], [ %206, %205 ]
  %149 = phi i32 [ 1, %141 ], [ %176, %205 ]
  br i1 %142, label %172, label %150

150:                                              ; preds = %147
  %151 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %149
  %152 = load ptr, ptr %151, align 4
  %153 = xor i32 %149, 1
  %154 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %153
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %156, %150
  %157 = phi i32 [ 0, %150 ], [ %170, %156 ]
  %158 = phi i64 [ 0, %150 ], [ %168, %156 ]
  %159 = getelementptr i64, ptr %152, i32 %157
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr [16 x i64], ptr %6, i32 0, i32 %157
  %162 = load i64, ptr %161, align 8
  %163 = add i64 %162, %158
  %164 = sub i64 %160, %163
  %165 = icmp eq i64 %163, 0
  %166 = icmp ult i64 %160, %163
  %167 = zext i1 %166 to i64
  %168 = select i1 %165, i64 %158, i64 %167
  %169 = getelementptr i64, ptr %155, i32 %157
  store i64 %164, ptr %169, align 8
  %170 = add nuw i32 %157, 1
  %171 = icmp eq i32 %170, %10
  br i1 %171, label %172, label %156

172:                                              ; preds = %156, %147
  %173 = phi i64 [ 0, %147 ], [ %168, %156 ]
  %174 = zext i32 %149 to i64
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  br i1 %144, label %182, label %177

177:                                              ; preds = %172
  %178 = load i64, ptr %143, align 8
  %179 = shl i64 %178, 63
  %180 = load i64, ptr %145, align 8
  %181 = or i64 %180, %179
  store i64 %181, ptr %145, align 8
  br label %205

182:                                              ; preds = %182, %172
  %183 = phi ptr [ %185, %182 ], [ %143, %172 ]
  %184 = phi i64 [ %189, %182 ], [ 0, %172 ]
  %185 = getelementptr i64, ptr %183, i32 -1
  %186 = load i64, ptr %185, align 8
  %187 = lshr i64 %186, 1
  %188 = or i64 %187, %184
  store i64 %188, ptr %185, align 8
  %189 = shl i64 %186, 63
  %190 = icmp ugt ptr %185, %6
  br i1 %190, label %182, label %191

191:                                              ; preds = %182
  %192 = load i64, ptr %143, align 8
  %193 = shl i64 %192, 63
  %194 = load i64, ptr %145, align 8
  %195 = or i64 %194, %193
  store i64 %195, ptr %145, align 8
  br label %196

196:                                              ; preds = %196, %191
  %197 = phi ptr [ %199, %196 ], [ %146, %191 ]
  %198 = phi i64 [ %203, %196 ], [ 0, %191 ]
  %199 = getelementptr i64, ptr %197, i32 -1
  %200 = load i64, ptr %199, align 8
  %201 = lshr i64 %200, 1
  %202 = or i64 %201, %198
  store i64 %202, ptr %199, align 8
  %203 = shl i64 %200, 63
  %204 = icmp ugt ptr %199, %143
  br i1 %204, label %196, label %205

205:                                              ; preds = %196, %177
  %206 = add nsw i32 %148, -1
  %207 = icmp sgt i32 %148, 0
  br i1 %207, label %147, label %208

208:                                              ; preds = %205, %139
  %209 = phi i32 [ 1, %139 ], [ %176, %205 ]
  %210 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %209
  %211 = load ptr, ptr %210, align 4
  br i1 %117, label %219, label %212

212:                                              ; preds = %212, %208
  %213 = phi i32 [ %217, %212 ], [ 0, %208 ]
  %214 = getelementptr i64, ptr %211, i32 %213
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr i64, ptr %0, i32 %213
  store i64 %215, ptr %216, align 8
  %217 = add nuw i32 %213, 1
  %218 = icmp eq i32 %217, %4
  br i1 %218, label %219, label %212

219:                                              ; preds = %212, %208
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vli_mod_inv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #8 {
  %5 = alloca [8 x i64], align 8
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %9 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !8
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %401, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %18, %11
  %15 = phi i32 [ %16, %18 ], [ 0, %11 ]
  %16 = add nuw i32 %15, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr i64, ptr %1, i32 %16
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %14
  %23 = icmp ult i32 %16, %3
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = shl nuw i32 %3, 3
  tail call void @llvm.memset.p0.i32(ptr align 8 %0, i8 0, i32 %25, i1 false) #20
  br label %401

26:                                               ; preds = %22, %11
  %27 = shl nuw i32 %3, 3
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %5, ptr align 8 %1, i32 %27, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 8 %2, i32 %27, i1 false)
  call void @llvm.memset.p0.i32(ptr nonnull align 8 %7, i8 0, i32 %27, i1 false) #20
  store i64 1, ptr %7, align 8
  call void @llvm.memset.p0.i32(ptr nonnull align 8 %8, i8 0, i32 %27, i1 false) #20
  %28 = getelementptr i64, ptr %6, i32 %3
  %29 = icmp ugt ptr %28, %6
  %30 = getelementptr i64, ptr %8, i32 %3
  %31 = icmp ugt ptr %30, %8
  %32 = add i32 %3, -1
  %33 = getelementptr [8 x i64], ptr %8, i32 0, i32 %32
  %34 = getelementptr i64, ptr %5, i32 %3
  %35 = icmp ugt ptr %34, %5
  %36 = getelementptr i64, ptr %7, i32 %3
  %37 = icmp ugt ptr %36, %7
  %38 = getelementptr [8 x i64], ptr %7, i32 0, i32 %32
  %39 = icmp eq i32 %3, 1
  %40 = icmp eq i32 %3, 1
  %41 = icmp eq i32 %3, 1
  %42 = icmp eq i32 %3, 1
  %43 = icmp eq i32 %3, 1
  %44 = icmp eq i32 %3, 1
  br label %45

45:                                               ; preds = %55, %26
  %46 = phi i32 [ %3, %26 ], [ %56, %55 ]
  %47 = add i32 %46, -1
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %399

49:                                               ; preds = %45
  %50 = getelementptr i64, ptr %5, i32 %47
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr i64, ptr %6, i32 %47
  %53 = load i64, ptr %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %395, %393, %281, %164, %110, %49
  %56 = phi i32 [ %47, %49 ], [ %3, %395 ], [ %3, %164 ], [ %3, %393 ], [ %3, %281 ], [ %3, %110 ]
  br label %45

57:                                               ; preds = %49
  %58 = icmp ugt i64 %51, %53
  %59 = load i64, ptr %5, align 8
  %60 = and i64 %59, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %57
  br i1 %35, label %63, label %72

63:                                               ; preds = %63, %62
  %64 = phi ptr [ %66, %63 ], [ %34, %62 ]
  %65 = phi i64 [ %70, %63 ], [ 0, %62 ]
  %66 = getelementptr i64, ptr %64, i32 -1
  %67 = load i64, ptr %66, align 8
  %68 = lshr i64 %67, 1
  %69 = or i64 %68, %65
  store i64 %69, ptr %66, align 8
  %70 = shl i64 %67, 63
  %71 = icmp ugt ptr %66, %5
  br i1 %71, label %63, label %72

72:                                               ; preds = %63, %62
  %73 = load i64, ptr %7, align 8
  %74 = and i64 %73, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %72
  %77 = load i64, ptr %2, align 8
  %78 = add i64 %73, %77
  %79 = icmp ne i64 %77, 0
  %80 = icmp ult i64 %78, %73
  %81 = select i1 %79, i1 %80, i1 false
  %82 = zext i1 %81 to i64
  store i64 %78, ptr %7, align 8
  br i1 %44, label %99, label %83

83:                                               ; preds = %83, %76
  %84 = phi i32 [ %97, %83 ], [ 1, %76 ]
  %85 = phi i64 [ %96, %83 ], [ %82, %76 ]
  %86 = getelementptr i64, ptr %7, i32 %84
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr i64, ptr %7, i32 %84
  %89 = getelementptr i64, ptr %2, i32 %84
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %87, %85
  %92 = add i64 %91, %90
  %93 = icmp eq i64 %92, %87
  %94 = icmp ult i64 %92, %87
  %95 = zext i1 %94 to i64
  %96 = select i1 %93, i64 %85, i64 %95
  store i64 %92, ptr %88, align 8
  %97 = add nuw i32 %84, 1
  %98 = icmp eq i32 %97, %3
  br i1 %98, label %99, label %83

99:                                               ; preds = %83, %76, %72
  %100 = phi i64 [ 0, %72 ], [ %82, %76 ], [ %96, %83 ]
  br i1 %37, label %101, label %110

101:                                              ; preds = %101, %99
  %102 = phi ptr [ %104, %101 ], [ %36, %99 ]
  %103 = phi i64 [ %108, %101 ], [ 0, %99 ]
  %104 = getelementptr i64, ptr %102, i32 -1
  %105 = load i64, ptr %104, align 8
  %106 = lshr i64 %105, 1
  %107 = or i64 %106, %103
  store i64 %107, ptr %104, align 8
  %108 = shl i64 %105, 63
  %109 = icmp ugt ptr %104, %7
  br i1 %109, label %101, label %110

110:                                              ; preds = %101, %99
  %111 = icmp eq i64 %100, 0
  br i1 %111, label %55, label %395

112:                                              ; preds = %57
  %113 = load i64, ptr %6, align 8
  %114 = and i64 %113, 1
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %166

116:                                              ; preds = %112
  br i1 %29, label %117, label %126

117:                                              ; preds = %117, %116
  %118 = phi ptr [ %120, %117 ], [ %28, %116 ]
  %119 = phi i64 [ %124, %117 ], [ 0, %116 ]
  %120 = getelementptr i64, ptr %118, i32 -1
  %121 = load i64, ptr %120, align 8
  %122 = lshr i64 %121, 1
  %123 = or i64 %122, %119
  store i64 %123, ptr %120, align 8
  %124 = shl i64 %121, 63
  %125 = icmp ugt ptr %120, %6
  br i1 %125, label %117, label %126

126:                                              ; preds = %117, %116
  %127 = load i64, ptr %8, align 8
  %128 = and i64 %127, 1
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %153, label %130

130:                                              ; preds = %126
  %131 = load i64, ptr %2, align 8
  %132 = add i64 %127, %131
  %133 = icmp ne i64 %131, 0
  %134 = icmp ult i64 %132, %127
  %135 = select i1 %133, i1 %134, i1 false
  %136 = zext i1 %135 to i64
  store i64 %132, ptr %8, align 8
  br i1 %43, label %153, label %137

137:                                              ; preds = %137, %130
  %138 = phi i32 [ %151, %137 ], [ 1, %130 ]
  %139 = phi i64 [ %150, %137 ], [ %136, %130 ]
  %140 = getelementptr i64, ptr %8, i32 %138
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr i64, ptr %8, i32 %138
  %143 = getelementptr i64, ptr %2, i32 %138
  %144 = load i64, ptr %143, align 8
  %145 = add i64 %141, %139
  %146 = add i64 %145, %144
  %147 = icmp eq i64 %146, %141
  %148 = icmp ult i64 %146, %141
  %149 = zext i1 %148 to i64
  %150 = select i1 %147, i64 %139, i64 %149
  store i64 %146, ptr %142, align 8
  %151 = add nuw i32 %138, 1
  %152 = icmp eq i32 %151, %3
  br i1 %152, label %153, label %137

153:                                              ; preds = %137, %130, %126
  %154 = phi i64 [ 0, %126 ], [ %136, %130 ], [ %150, %137 ]
  br i1 %31, label %155, label %164

155:                                              ; preds = %155, %153
  %156 = phi ptr [ %158, %155 ], [ %30, %153 ]
  %157 = phi i64 [ %162, %155 ], [ 0, %153 ]
  %158 = getelementptr i64, ptr %156, i32 -1
  %159 = load i64, ptr %158, align 8
  %160 = lshr i64 %159, 1
  %161 = or i64 %160, %157
  store i64 %161, ptr %158, align 8
  %162 = shl i64 %159, 63
  %163 = icmp ugt ptr %158, %8
  br i1 %163, label %155, label %164

164:                                              ; preds = %155, %153
  %165 = icmp eq i64 %154, 0
  br i1 %165, label %55, label %395

166:                                              ; preds = %112
  br i1 %58, label %169, label %167

167:                                              ; preds = %166
  %168 = sub i64 %113, %59
  store i64 %168, ptr %6, align 8
  br i1 %39, label %301, label %283

169:                                              ; preds = %166
  %170 = sub i64 %59, %113
  store i64 %170, ptr %5, align 8
  br i1 %41, label %189, label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %187, %171 ], [ 1, %169 ]
  %173 = phi i64 [ %185, %171 ], [ %113, %169 ]
  %174 = phi i64 [ %179, %171 ], [ 0, %169 ]
  %175 = phi i64 [ %181, %171 ], [ %59, %169 ]
  %176 = icmp eq i64 %173, 0
  %177 = icmp ult i64 %175, %173
  %178 = zext i1 %177 to i64
  %179 = select i1 %176, i64 %174, i64 %178
  %180 = getelementptr i64, ptr %5, i32 %172
  %181 = load i64, ptr %180, align 8
  %182 = getelementptr i64, ptr %6, i32 %172
  %183 = load i64, ptr %182, align 8
  %184 = getelementptr i64, ptr %5, i32 %172
  %185 = add i64 %183, %179
  %186 = sub i64 %181, %185
  store i64 %186, ptr %184, align 8
  %187 = add nuw i32 %172, 1
  %188 = icmp eq i32 %187, %3
  br i1 %188, label %189, label %171

189:                                              ; preds = %171, %169
  br i1 %35, label %190, label %199

190:                                              ; preds = %190, %189
  %191 = phi ptr [ %193, %190 ], [ %34, %189 ]
  %192 = phi i64 [ %197, %190 ], [ 0, %189 ]
  %193 = getelementptr i64, ptr %191, i32 -1
  %194 = load i64, ptr %193, align 8
  %195 = lshr i64 %194, 1
  %196 = or i64 %195, %192
  store i64 %196, ptr %193, align 8
  %197 = shl i64 %194, 63
  %198 = icmp ugt ptr %193, %5
  br i1 %198, label %190, label %199

199:                                              ; preds = %190, %189
  br label %200

200:                                              ; preds = %210, %199
  %201 = phi i32 [ %202, %210 ], [ %3, %199 ]
  %202 = add i32 %201, -1
  %203 = icmp sgt i32 %202, -1
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = getelementptr i64, ptr %7, i32 %202
  %206 = load i64, ptr %205, align 8
  %207 = getelementptr i64, ptr %8, i32 %202
  %208 = load i64, ptr %207, align 8
  %209 = icmp ugt i64 %206, %208
  br i1 %209, label %227, label %210

210:                                              ; preds = %204
  %211 = icmp ult i64 %206, %208
  br i1 %211, label %212, label %200

212:                                              ; preds = %212, %210
  %213 = phi i32 [ %225, %212 ], [ 0, %210 ]
  %214 = phi i64 [ %224, %212 ], [ 0, %210 ]
  %215 = getelementptr i64, ptr %7, i32 %213
  %216 = load i64, ptr %215, align 8
  %217 = getelementptr i64, ptr %2, i32 %213
  %218 = load i64, ptr %217, align 8
  %219 = add i64 %216, %214
  %220 = add i64 %219, %218
  %221 = icmp eq i64 %220, %216
  %222 = icmp ult i64 %220, %216
  %223 = zext i1 %222 to i64
  %224 = select i1 %221, i64 %214, i64 %223
  store i64 %220, ptr %215, align 8
  %225 = add nuw i32 %213, 1
  %226 = icmp eq i32 %225, %3
  br i1 %226, label %227, label %212

227:                                              ; preds = %212, %204, %200
  br label %228

228:                                              ; preds = %228, %227
  %229 = phi i32 [ %241, %228 ], [ 0, %227 ]
  %230 = phi i64 [ %240, %228 ], [ 0, %227 ]
  %231 = getelementptr i64, ptr %7, i32 %229
  %232 = load i64, ptr %231, align 8
  %233 = getelementptr i64, ptr %8, i32 %229
  %234 = load i64, ptr %233, align 8
  %235 = add i64 %234, %230
  %236 = sub i64 %232, %235
  %237 = icmp eq i64 %235, 0
  %238 = icmp ult i64 %232, %235
  %239 = zext i1 %238 to i64
  %240 = select i1 %237, i64 %230, i64 %239
  store i64 %236, ptr %231, align 8
  %241 = add nuw i32 %229, 1
  %242 = icmp eq i32 %241, %3
  br i1 %242, label %243, label %228

243:                                              ; preds = %228
  %244 = load i64, ptr %7, align 8
  %245 = and i64 %244, 1
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %270, label %247

247:                                              ; preds = %243
  %248 = load i64, ptr %2, align 8
  %249 = add i64 %244, %248
  %250 = icmp ne i64 %248, 0
  %251 = icmp ult i64 %249, %244
  %252 = select i1 %250, i1 %251, i1 false
  %253 = zext i1 %252 to i64
  store i64 %249, ptr %7, align 8
  br i1 %42, label %270, label %254

254:                                              ; preds = %254, %247
  %255 = phi i32 [ %268, %254 ], [ 1, %247 ]
  %256 = phi i64 [ %267, %254 ], [ %253, %247 ]
  %257 = getelementptr i64, ptr %7, i32 %255
  %258 = load i64, ptr %257, align 8
  %259 = getelementptr i64, ptr %7, i32 %255
  %260 = getelementptr i64, ptr %2, i32 %255
  %261 = load i64, ptr %260, align 8
  %262 = add i64 %258, %256
  %263 = add i64 %262, %261
  %264 = icmp eq i64 %263, %258
  %265 = icmp ult i64 %263, %258
  %266 = zext i1 %265 to i64
  %267 = select i1 %264, i64 %256, i64 %266
  store i64 %263, ptr %259, align 8
  %268 = add nuw i32 %255, 1
  %269 = icmp eq i32 %268, %3
  br i1 %269, label %270, label %254

270:                                              ; preds = %254, %247, %243
  %271 = phi i64 [ 0, %243 ], [ %253, %247 ], [ %267, %254 ]
  br i1 %37, label %272, label %281

272:                                              ; preds = %272, %270
  %273 = phi ptr [ %275, %272 ], [ %36, %270 ]
  %274 = phi i64 [ %279, %272 ], [ 0, %270 ]
  %275 = getelementptr i64, ptr %273, i32 -1
  %276 = load i64, ptr %275, align 8
  %277 = lshr i64 %276, 1
  %278 = or i64 %277, %274
  store i64 %278, ptr %275, align 8
  %279 = shl i64 %276, 63
  %280 = icmp ugt ptr %275, %7
  br i1 %280, label %272, label %281

281:                                              ; preds = %272, %270
  %282 = icmp eq i64 %271, 0
  br i1 %282, label %55, label %395

283:                                              ; preds = %283, %167
  %284 = phi i32 [ %299, %283 ], [ 1, %167 ]
  %285 = phi i64 [ %297, %283 ], [ %59, %167 ]
  %286 = phi i64 [ %291, %283 ], [ 0, %167 ]
  %287 = phi i64 [ %293, %283 ], [ %113, %167 ]
  %288 = icmp eq i64 %285, 0
  %289 = icmp ult i64 %287, %285
  %290 = zext i1 %289 to i64
  %291 = select i1 %288, i64 %286, i64 %290
  %292 = getelementptr i64, ptr %6, i32 %284
  %293 = load i64, ptr %292, align 8
  %294 = getelementptr i64, ptr %5, i32 %284
  %295 = load i64, ptr %294, align 8
  %296 = getelementptr i64, ptr %6, i32 %284
  %297 = add i64 %295, %291
  %298 = sub i64 %293, %297
  store i64 %298, ptr %296, align 8
  %299 = add nuw i32 %284, 1
  %300 = icmp eq i32 %299, %3
  br i1 %300, label %301, label %283

301:                                              ; preds = %283, %167
  br i1 %29, label %302, label %311

302:                                              ; preds = %302, %301
  %303 = phi ptr [ %305, %302 ], [ %28, %301 ]
  %304 = phi i64 [ %309, %302 ], [ 0, %301 ]
  %305 = getelementptr i64, ptr %303, i32 -1
  %306 = load i64, ptr %305, align 8
  %307 = lshr i64 %306, 1
  %308 = or i64 %307, %304
  store i64 %308, ptr %305, align 8
  %309 = shl i64 %306, 63
  %310 = icmp ugt ptr %305, %6
  br i1 %310, label %302, label %311

311:                                              ; preds = %302, %301
  br label %312

312:                                              ; preds = %322, %311
  %313 = phi i32 [ %314, %322 ], [ %3, %311 ]
  %314 = add i32 %313, -1
  %315 = icmp sgt i32 %314, -1
  br i1 %315, label %316, label %339

316:                                              ; preds = %312
  %317 = getelementptr i64, ptr %8, i32 %314
  %318 = load i64, ptr %317, align 8
  %319 = getelementptr i64, ptr %7, i32 %314
  %320 = load i64, ptr %319, align 8
  %321 = icmp ugt i64 %318, %320
  br i1 %321, label %339, label %322

322:                                              ; preds = %316
  %323 = icmp ult i64 %318, %320
  br i1 %323, label %324, label %312

324:                                              ; preds = %324, %322
  %325 = phi i32 [ %337, %324 ], [ 0, %322 ]
  %326 = phi i64 [ %336, %324 ], [ 0, %322 ]
  %327 = getelementptr i64, ptr %8, i32 %325
  %328 = load i64, ptr %327, align 8
  %329 = getelementptr i64, ptr %2, i32 %325
  %330 = load i64, ptr %329, align 8
  %331 = add i64 %328, %326
  %332 = add i64 %331, %330
  %333 = icmp eq i64 %332, %328
  %334 = icmp ult i64 %332, %328
  %335 = zext i1 %334 to i64
  %336 = select i1 %333, i64 %326, i64 %335
  store i64 %332, ptr %327, align 8
  %337 = add nuw i32 %325, 1
  %338 = icmp eq i32 %337, %3
  br i1 %338, label %339, label %324

339:                                              ; preds = %324, %316, %312
  br label %340

340:                                              ; preds = %340, %339
  %341 = phi i32 [ %353, %340 ], [ 0, %339 ]
  %342 = phi i64 [ %352, %340 ], [ 0, %339 ]
  %343 = getelementptr i64, ptr %8, i32 %341
  %344 = load i64, ptr %343, align 8
  %345 = getelementptr i64, ptr %7, i32 %341
  %346 = load i64, ptr %345, align 8
  %347 = add i64 %346, %342
  %348 = sub i64 %344, %347
  %349 = icmp eq i64 %347, 0
  %350 = icmp ult i64 %344, %347
  %351 = zext i1 %350 to i64
  %352 = select i1 %349, i64 %342, i64 %351
  store i64 %348, ptr %343, align 8
  %353 = add nuw i32 %341, 1
  %354 = icmp eq i32 %353, %3
  br i1 %354, label %355, label %340

355:                                              ; preds = %340
  %356 = load i64, ptr %8, align 8
  %357 = and i64 %356, 1
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %382, label %359

359:                                              ; preds = %355
  %360 = load i64, ptr %2, align 8
  %361 = add i64 %356, %360
  %362 = icmp ne i64 %360, 0
  %363 = icmp ult i64 %361, %356
  %364 = select i1 %362, i1 %363, i1 false
  %365 = zext i1 %364 to i64
  store i64 %361, ptr %8, align 8
  br i1 %40, label %382, label %366

366:                                              ; preds = %366, %359
  %367 = phi i32 [ %380, %366 ], [ 1, %359 ]
  %368 = phi i64 [ %379, %366 ], [ %365, %359 ]
  %369 = getelementptr i64, ptr %8, i32 %367
  %370 = load i64, ptr %369, align 8
  %371 = getelementptr i64, ptr %8, i32 %367
  %372 = getelementptr i64, ptr %2, i32 %367
  %373 = load i64, ptr %372, align 8
  %374 = add i64 %370, %368
  %375 = add i64 %374, %373
  %376 = icmp eq i64 %375, %370
  %377 = icmp ult i64 %375, %370
  %378 = zext i1 %377 to i64
  %379 = select i1 %376, i64 %368, i64 %378
  store i64 %375, ptr %371, align 8
  %380 = add nuw i32 %367, 1
  %381 = icmp eq i32 %380, %3
  br i1 %381, label %382, label %366

382:                                              ; preds = %366, %359, %355
  %383 = phi i64 [ 0, %355 ], [ %365, %359 ], [ %379, %366 ]
  br i1 %31, label %384, label %393

384:                                              ; preds = %384, %382
  %385 = phi ptr [ %387, %384 ], [ %30, %382 ]
  %386 = phi i64 [ %391, %384 ], [ 0, %382 ]
  %387 = getelementptr i64, ptr %385, i32 -1
  %388 = load i64, ptr %387, align 8
  %389 = lshr i64 %388, 1
  %390 = or i64 %389, %386
  store i64 %390, ptr %387, align 8
  %391 = shl i64 %388, 63
  %392 = icmp ugt ptr %387, %8
  br i1 %392, label %384, label %393

393:                                              ; preds = %384, %382
  %394 = icmp eq i64 %383, 0
  br i1 %394, label %55, label %395

395:                                              ; preds = %393, %281, %164, %110
  %396 = phi ptr [ %38, %110 ], [ %33, %164 ], [ %38, %281 ], [ %33, %393 ]
  %397 = load i64, ptr %396, align 8
  %398 = or i64 %397, -9223372036854775808
  store i64 %398, ptr %396, align 8
  br label %55

399:                                              ; preds = %45
  %400 = shl nuw i32 %3, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %0, ptr nonnull align 8 %7, i32 %400, i1 false)
  br label %401

401:                                              ; preds = %399, %24, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ecc_point_is_zero(ptr nocapture noundef readonly %0) #10 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ecc_point, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = load i64, ptr %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %14, %7
  %11 = phi i32 [ %12, %14 ], [ 0, %7 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr i64, ptr %2, i32 %12
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %10, label %18

18:                                               ; preds = %14, %10
  %19 = icmp ult i32 %12, %5
  br i1 %19, label %35, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ecc_point, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %29, %20
  %26 = phi i32 [ %27, %29 ], [ 0, %20 ]
  %27 = add nuw nsw i32 %26, 1
  %28 = icmp eq i32 %27, %5
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr i64, ptr %22, i32 %27
  %31 = load i64, ptr %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %25, label %33

33:                                               ; preds = %29, %25
  %34 = icmp uge i32 %27, %5
  br label %35

35:                                               ; preds = %33, %20, %18, %7, %1
  %36 = phi i1 [ false, %18 ], [ false, %7 ], [ true, %1 ], [ false, %20 ], [ %34, %33 ]
  ret i1 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ecc_point_mult_shamir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef readonly %5) #1 {
  %7 = alloca [8 x i64], align 8
  %8 = alloca [8 x i64], align 8
  %9 = alloca [8 x i64], align 8
  %10 = alloca [8 x i64], align 8
  %11 = alloca [8 x i64], align 8
  %12 = alloca [8 x i64], align 8
  %13 = alloca [8 x i64], align 8
  %14 = alloca [2 x [8 x i64]], align 8
  %15 = alloca %struct.ecc_point, align 4
  %16 = alloca [4 x ptr], align 4
  %17 = alloca [8 x i64], align 8
  %18 = alloca [8 x i64], align 8
  %19 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %14, i8 0, i32 128, i1 false), !annotation !8
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.ecc_point, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ecc_curve, ptr %5, i32 0, i32 1, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #20
  %26 = getelementptr inbounds i8, ptr %15, i32 8
  store i32 0, ptr %26, align 4, !annotation !8
  store ptr %14, ptr %15, align 4
  %27 = getelementptr inbounds %struct.ecc_point, ptr %15, i32 0, i32 1
  %28 = getelementptr inbounds [2 x [8 x i64]], ptr %14, i32 0, i32 1
  store ptr %28, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ecc_point, ptr %15, i32 0, i32 2
  store i8 %24, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i32 64, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i32 64, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i32 64, i1 false) #20, !annotation !8
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq i8 %24, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %32, %6
  %33 = phi i32 [ %37, %32 ], [ 0, %6 ]
  %34 = getelementptr i64, ptr %30, i32 %33
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i64, ptr %14, i32 %33
  store i64 %35, ptr %36, align 8
  %37 = add nuw nsw i32 %33, 1
  %38 = icmp eq i32 %37, %25
  br i1 %38, label %39, label %32

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ecc_point, ptr %4, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ %47, %42 ], [ 0, %39 ]
  %44 = getelementptr i64, ptr %41, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr i64, ptr %28, i32 %43
  store i64 %45, ptr %46, align 8
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %25
  br i1 %48, label %51, label %42

49:                                               ; preds = %6
  %50 = getelementptr inbounds %struct.ecc_curve, ptr %5, i32 0, i32 2
  br label %106

51:                                               ; preds = %42
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.ecc_curve, ptr %5, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %69, %55 ], [ 0, %51 ]
  %57 = phi i64 [ %67, %55 ], [ 0, %51 ]
  %58 = getelementptr i64, ptr %14, i32 %56
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr i64, ptr %52, i32 %56
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %57
  %63 = sub i64 %59, %62
  %64 = icmp eq i64 %62, 0
  %65 = icmp ult i64 %59, %62
  %66 = zext i1 %65 to i64
  %67 = select i1 %64, i64 %57, i64 %66
  %68 = getelementptr i64, ptr %10, i32 %56
  store i64 %63, ptr %68, align 8
  %69 = add nuw nsw i32 %56, 1
  %70 = icmp eq i32 %69, %25
  br i1 %70, label %71, label %55

71:                                               ; preds = %55
  %72 = icmp eq i64 %67, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ %86, %73 ], [ 0, %71 ]
  %75 = phi i64 [ %85, %73 ], [ 0, %71 ]
  %76 = getelementptr i64, ptr %10, i32 %74
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr i64, ptr %54, i32 %74
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %77, %75
  %81 = add i64 %80, %79
  %82 = icmp eq i64 %81, %77
  %83 = icmp ult i64 %81, %77
  %84 = zext i1 %83 to i64
  %85 = select i1 %82, i64 %75, i64 %84
  store i64 %81, ptr %76, align 8
  %86 = add nuw nsw i32 %74, 1
  %87 = icmp eq i32 %86, %25
  br i1 %87, label %88, label %73

88:                                               ; preds = %73, %71
  br label %89

89:                                               ; preds = %89, %88
  %90 = phi i32 [ %94, %89 ], [ 0, %88 ]
  %91 = getelementptr i64, ptr %52, i32 %90
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr i64, ptr %11, i32 %90
  store i64 %92, ptr %93, align 8
  %94 = add nuw nsw i32 %90, 1
  %95 = icmp eq i32 %94, %25
  br i1 %95, label %96, label %89

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.ecc_point, ptr %2, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %99, %96
  %100 = phi i32 [ %104, %99 ], [ 0, %96 ]
  %101 = getelementptr i64, ptr %98, i32 %100
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr i64, ptr %12, i32 %100
  store i64 %102, ptr %103, align 8
  %104 = add nuw nsw i32 %100, 1
  %105 = icmp eq i32 %104, %25
  br i1 %105, label %106, label %99

106:                                              ; preds = %99, %49
  %107 = phi ptr [ %50, %49 ], [ %53, %99 ]
  call fastcc void @xycz_add(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef %28, ptr noundef %5) #20
  %108 = load ptr, ptr %107, align 4
  call void @vli_mod_inv(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef %108, i32 noundef %25) #20
  %109 = load ptr, ptr %15, align 4
  %110 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %109, ptr noundef %109, ptr noundef nonnull %9, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %110, ptr noundef %110, ptr noundef nonnull %9, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #20
  store ptr null, ptr %16, align 4
  %111 = getelementptr inbounds [4 x ptr], ptr %16, i32 0, i32 1
  store ptr %2, ptr %111, align 4
  %112 = getelementptr inbounds [4 x ptr], ptr %16, i32 0, i32 2
  store ptr %4, ptr %112, align 4
  %113 = getelementptr inbounds [4 x ptr], ptr %16, i32 0, i32 3
  store ptr %15, ptr %113, align 4
  %114 = add nsw i32 %25, -1
  br label %115

115:                                              ; preds = %118, %106
  %116 = phi i32 [ %25, %106 ], [ %119, %118 ]
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = add nsw i32 %116, -1
  %120 = getelementptr i64, ptr %1, i32 %119
  %121 = load i64, ptr %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %115, label %123

123:                                              ; preds = %123, %118
  %124 = phi i64 [ %126, %123 ], [ %121, %118 ]
  %125 = phi i32 [ %127, %123 ], [ 0, %118 ]
  %126 = lshr i64 %124, 1
  %127 = add nuw nsw i32 %125, 1
  %128 = icmp ult i64 %124, 2
  br i1 %128, label %129, label %123

129:                                              ; preds = %123
  %130 = shl i32 %119, 6
  %131 = add i32 %127, %130
  br label %132

132:                                              ; preds = %129, %115
  %133 = phi i32 [ %131, %129 ], [ 0, %115 ]
  br label %134

134:                                              ; preds = %137, %132
  %135 = phi i32 [ %25, %132 ], [ %138, %137 ]
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = add nsw i32 %135, -1
  %139 = getelementptr i64, ptr %3, i32 %138
  %140 = load i64, ptr %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %134, label %142

142:                                              ; preds = %142, %137
  %143 = phi i64 [ %145, %142 ], [ %140, %137 ]
  %144 = phi i32 [ %146, %142 ], [ 0, %137 ]
  %145 = lshr i64 %143, 1
  %146 = add nuw nsw i32 %144, 1
  %147 = icmp ult i64 %143, 2
  br i1 %147, label %148, label %142

148:                                              ; preds = %142
  %149 = shl i32 %138, 6
  %150 = add i32 %146, %149
  br label %151

151:                                              ; preds = %148, %134
  %152 = phi i32 [ %150, %148 ], [ 0, %134 ]
  %153 = call i32 @llvm.umax.i32(i32 %133, i32 %152)
  %154 = add i32 %153, -1
  %155 = lshr i32 %154, 6
  %156 = getelementptr i64, ptr %1, i32 %155
  %157 = load i64, ptr %156, align 8
  %158 = and i32 %154, 63
  %159 = zext i32 %158 to i64
  %160 = shl nuw i64 1, %159
  %161 = and i64 %160, %157
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = getelementptr i64, ptr %3, i32 %155
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %160, %165
  %167 = icmp eq i64 %166, 0
  %168 = select i1 %167, i32 0, i32 2
  %169 = or i32 %168, %163
  %170 = getelementptr [4 x ptr], ptr %16, i32 0, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = load ptr, ptr %171, align 4
  br i1 %31, label %190, label %173

173:                                              ; preds = %173, %151
  %174 = phi i32 [ %178, %173 ], [ 0, %151 ]
  %175 = getelementptr i64, ptr %172, i32 %174
  %176 = load i64, ptr %175, align 8
  %177 = getelementptr i64, ptr %20, i32 %174
  store i64 %176, ptr %177, align 8
  %178 = add nuw nsw i32 %174, 1
  %179 = icmp eq i32 %178, %25
  br i1 %179, label %180, label %173

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ecc_point, ptr %171, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %183, %180
  %184 = phi i32 [ %188, %183 ], [ 0, %180 ]
  %185 = getelementptr i64, ptr %182, i32 %184
  %186 = load i64, ptr %185, align 8
  %187 = getelementptr i64, ptr %22, i32 %184
  store i64 %186, ptr %187, align 8
  %188 = add nuw nsw i32 %184, 1
  %189 = icmp eq i32 %188, %25
  br i1 %189, label %192, label %183

190:                                              ; preds = %151
  %191 = getelementptr inbounds i64, ptr %13, i32 1
  br label %195

192:                                              ; preds = %183
  %193 = getelementptr inbounds i64, ptr %13, i32 1
  %194 = icmp eq i32 %114, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192, %190
  %196 = phi ptr [ %191, %190 ], [ %193, %192 ]
  %197 = shl nuw nsw i32 %114, 3
  call void @llvm.memset.p0.i32(ptr align 8 %196, i8 0, i32 %197, i1 false) #20
  br label %198

198:                                              ; preds = %195, %192
  store i64 1, ptr %13, align 8
  %199 = add i32 %153, -2
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %201, label %281

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ecc_curve, ptr %5, i32 0, i32 2
  br label %203

203:                                              ; preds = %278, %201
  %204 = phi i32 [ %199, %201 ], [ %279, %278 ]
  call fastcc void @ecc_point_double_jacobian(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %13, ptr noundef %5)
  %205 = lshr i32 %204, 6
  %206 = getelementptr i64, ptr %1, i32 %205
  %207 = load i64, ptr %206, align 8
  %208 = and i32 %204, 63
  %209 = zext i32 %208 to i64
  %210 = shl nuw i64 1, %209
  %211 = and i64 %207, %210
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i32
  %214 = getelementptr i64, ptr %3, i32 %205
  %215 = load i64, ptr %214, align 8
  %216 = and i64 %215, %210
  %217 = icmp eq i64 %216, 0
  %218 = select i1 %217, i32 0, i32 2
  %219 = or i32 %218, %213
  %220 = getelementptr [4 x ptr], ptr %16, i32 0, i32 %219
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %278, label %223

223:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %17, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %19, i8 0, i32 64, i1 false), !annotation !8
  %224 = load ptr, ptr %221, align 4
  br i1 %31, label %242, label %225

225:                                              ; preds = %225, %223
  %226 = phi i32 [ %230, %225 ], [ 0, %223 ]
  %227 = getelementptr i64, ptr %224, i32 %226
  %228 = load i64, ptr %227, align 8
  %229 = getelementptr i64, ptr %17, i32 %226
  store i64 %228, ptr %229, align 8
  %230 = add nuw nsw i32 %226, 1
  %231 = icmp eq i32 %230, %25
  br i1 %231, label %232, label %225

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.ecc_point, ptr %221, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  br label %235

235:                                              ; preds = %235, %232
  %236 = phi i32 [ %240, %235 ], [ 0, %232 ]
  %237 = getelementptr i64, ptr %234, i32 %236
  %238 = load i64, ptr %237, align 8
  %239 = getelementptr i64, ptr %18, i32 %236
  store i64 %238, ptr %239, align 8
  %240 = add nuw nsw i32 %236, 1
  %241 = icmp eq i32 %240, %25
  br i1 %241, label %242, label %235

242:                                              ; preds = %235, %223
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %8, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %18, ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  %243 = load ptr, ptr %202, align 4
  br i1 %31, label %277, label %244

244:                                              ; preds = %244, %242
  %245 = phi i32 [ %258, %244 ], [ 0, %242 ]
  %246 = phi i64 [ %256, %244 ], [ 0, %242 ]
  %247 = getelementptr i64, ptr %20, i32 %245
  %248 = load i64, ptr %247, align 8
  %249 = getelementptr i64, ptr %17, i32 %245
  %250 = load i64, ptr %249, align 8
  %251 = add i64 %250, %246
  %252 = sub i64 %248, %251
  %253 = icmp eq i64 %251, 0
  %254 = icmp ult i64 %248, %251
  %255 = zext i1 %254 to i64
  %256 = select i1 %253, i64 %246, i64 %255
  %257 = getelementptr i64, ptr %19, i32 %245
  store i64 %252, ptr %257, align 8
  %258 = add nuw nsw i32 %245, 1
  %259 = icmp eq i32 %258, %25
  br i1 %259, label %260, label %244

260:                                              ; preds = %244
  %261 = icmp eq i64 %256, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %262, %260
  %263 = phi i32 [ %275, %262 ], [ 0, %260 ]
  %264 = phi i64 [ %274, %262 ], [ 0, %260 ]
  %265 = getelementptr i64, ptr %19, i32 %263
  %266 = load i64, ptr %265, align 8
  %267 = getelementptr i64, ptr %243, i32 %263
  %268 = load i64, ptr %267, align 8
  %269 = add i64 %266, %264
  %270 = add i64 %269, %268
  %271 = icmp eq i64 %270, %266
  %272 = icmp ult i64 %270, %266
  %273 = zext i1 %272 to i64
  %274 = select i1 %271, i64 %264, i64 %273
  store i64 %270, ptr %265, align 8
  %275 = add nuw nsw i32 %263, 1
  %276 = icmp eq i32 %275, %25
  br i1 %276, label %277, label %262

277:                                              ; preds = %262, %260, %242
  call fastcc void @xycz_add(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %20, ptr noundef %22, ptr noundef %5)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %19, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #20
  br label %278

278:                                              ; preds = %277, %203
  %279 = add i32 %204, -1
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %203, label %281

281:                                              ; preds = %278, %198
  %282 = getelementptr inbounds %struct.ecc_curve, ptr %5, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  call void @vli_mod_inv(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %283, i32 noundef %25)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %20, ptr noundef %20, ptr noundef nonnull %7, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef %5) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %22, ptr noundef %22, ptr noundef nonnull %7, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ecc_point_double_jacobian(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca [8 x i64], align 8
  %6 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 1, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %448, label %13

13:                                               ; preds = %4
  %14 = load i64, ptr %2, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %20, %13
  %17 = phi i32 [ %18, %20 ], [ 0, %13 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr i64, ptr %2, i32 %18
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %20, %16
  %25 = icmp ult i32 %18, %11
  br i1 %25, label %26, label %448

26:                                               ; preds = %24, %13
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %3)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %3)
  call fastcc void @vli_mod_mult_fast(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  call fastcc void @vli_mod_square_fast(ptr noundef %2, ptr noundef %2, ptr noundef %3)
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i32 [ %40, %27 ], [ 0, %26 ]
  %29 = phi i64 [ %39, %27 ], [ 0, %26 ]
  %30 = getelementptr i64, ptr %0, i32 %28
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr i64, ptr %2, i32 %28
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %31, %29
  %35 = add i64 %34, %33
  %36 = icmp eq i64 %35, %31
  %37 = icmp ult i64 %35, %31
  %38 = zext i1 %37 to i64
  %39 = select i1 %36, i64 %29, i64 %38
  store i64 %35, ptr %30, align 8
  %40 = add nuw i32 %28, 1
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %42, label %27

42:                                               ; preds = %27
  %43 = icmp eq i64 %39, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %49, %45, %42
  br label %57

45:                                               ; preds = %55, %42
  %46 = phi i32 [ %47, %55 ], [ %11, %42 ]
  %47 = add nsw i32 %46, -1
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %44

49:                                               ; preds = %45
  %50 = getelementptr i64, ptr %0, i32 %47
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr i64, ptr %8, i32 %47
  %53 = load i64, ptr %52, align 8
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %44, label %55

55:                                               ; preds = %49
  %56 = icmp ult i64 %51, %53
  br i1 %56, label %72, label %45

57:                                               ; preds = %57, %44
  %58 = phi i32 [ %70, %57 ], [ 0, %44 ]
  %59 = phi i64 [ %69, %57 ], [ 0, %44 ]
  %60 = getelementptr i64, ptr %0, i32 %58
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr i64, ptr %8, i32 %58
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, %59
  %65 = sub i64 %61, %64
  %66 = icmp eq i64 %64, 0
  %67 = icmp ult i64 %61, %64
  %68 = zext i1 %67 to i64
  %69 = select i1 %66, i64 %59, i64 %68
  store i64 %65, ptr %60, align 8
  %70 = add nuw nsw i32 %58, 1
  %71 = icmp eq i32 %70, %11
  br i1 %71, label %72, label %57

72:                                               ; preds = %57, %55
  br label %73

73:                                               ; preds = %73, %72
  %74 = phi i32 [ %84, %73 ], [ 0, %72 ]
  %75 = phi i64 [ %83, %73 ], [ 0, %72 ]
  %76 = getelementptr i64, ptr %2, i32 %74
  %77 = load i64, ptr %76, align 8
  %78 = shl i64 %77, 1
  %79 = add i64 %78, %75
  %80 = icmp eq i64 %79, %77
  %81 = icmp ult i64 %79, %77
  %82 = zext i1 %81 to i64
  %83 = select i1 %80, i64 %75, i64 %82
  store i64 %79, ptr %76, align 8
  %84 = add nuw nsw i32 %74, 1
  %85 = icmp eq i32 %84, %11
  br i1 %85, label %86, label %73

86:                                               ; preds = %73
  %87 = icmp eq i64 %83, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %93, %89, %86
  br label %101

89:                                               ; preds = %99, %86
  %90 = phi i32 [ %91, %99 ], [ %11, %86 ]
  %91 = add nsw i32 %90, -1
  %92 = icmp sgt i32 %90, 0
  br i1 %92, label %93, label %88

93:                                               ; preds = %89
  %94 = getelementptr i64, ptr %2, i32 %91
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr i64, ptr %8, i32 %91
  %97 = load i64, ptr %96, align 8
  %98 = icmp ugt i64 %95, %97
  br i1 %98, label %88, label %99

99:                                               ; preds = %93
  %100 = icmp ult i64 %95, %97
  br i1 %100, label %116, label %89

101:                                              ; preds = %101, %88
  %102 = phi i32 [ %114, %101 ], [ 0, %88 ]
  %103 = phi i64 [ %113, %101 ], [ 0, %88 ]
  %104 = getelementptr i64, ptr %2, i32 %102
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr i64, ptr %8, i32 %102
  %107 = load i64, ptr %106, align 8
  %108 = add i64 %107, %103
  %109 = sub i64 %105, %108
  %110 = icmp eq i64 %108, 0
  %111 = icmp ult i64 %105, %108
  %112 = zext i1 %111 to i64
  %113 = select i1 %110, i64 %103, i64 %112
  store i64 %109, ptr %104, align 8
  %114 = add nuw nsw i32 %102, 1
  %115 = icmp eq i32 %114, %11
  br i1 %115, label %116, label %101

116:                                              ; preds = %101, %99
  br label %117

117:                                              ; preds = %117, %116
  %118 = phi i32 [ %130, %117 ], [ 0, %116 ]
  %119 = phi i64 [ %129, %117 ], [ 0, %116 ]
  %120 = getelementptr i64, ptr %0, i32 %118
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr i64, ptr %2, i32 %118
  %123 = load i64, ptr %122, align 8
  %124 = add i64 %123, %119
  %125 = sub i64 %121, %124
  %126 = icmp eq i64 %124, 0
  %127 = icmp ult i64 %121, %124
  %128 = zext i1 %127 to i64
  %129 = select i1 %126, i64 %119, i64 %128
  store i64 %125, ptr %122, align 8
  %130 = add nuw nsw i32 %118, 1
  %131 = icmp eq i32 %130, %11
  br i1 %131, label %132, label %117

132:                                              ; preds = %117
  %133 = icmp eq i64 %129, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %134, %132
  %135 = phi i32 [ %147, %134 ], [ 0, %132 ]
  %136 = phi i64 [ %146, %134 ], [ 0, %132 ]
  %137 = getelementptr i64, ptr %2, i32 %135
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr i64, ptr %8, i32 %135
  %140 = load i64, ptr %139, align 8
  %141 = add i64 %138, %136
  %142 = add i64 %141, %140
  %143 = icmp eq i64 %142, %138
  %144 = icmp ult i64 %142, %138
  %145 = zext i1 %144 to i64
  %146 = select i1 %143, i64 %136, i64 %145
  store i64 %142, ptr %137, align 8
  %147 = add nuw nsw i32 %135, 1
  %148 = icmp eq i32 %147, %11
  br i1 %148, label %149, label %134

149:                                              ; preds = %134, %132
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef %2, ptr noundef %3)
  br label %150

150:                                              ; preds = %150, %149
  %151 = phi i32 [ %162, %150 ], [ 0, %149 ]
  %152 = phi i64 [ %160, %150 ], [ 0, %149 ]
  %153 = getelementptr i64, ptr %0, i32 %151
  %154 = load i64, ptr %153, align 8
  %155 = shl i64 %154, 1
  %156 = add i64 %155, %152
  %157 = icmp eq i64 %156, %154
  %158 = icmp ult i64 %156, %154
  %159 = zext i1 %158 to i64
  %160 = select i1 %157, i64 %152, i64 %159
  %161 = getelementptr i64, ptr %2, i32 %151
  store i64 %156, ptr %161, align 8
  %162 = add nuw nsw i32 %151, 1
  %163 = icmp eq i32 %162, %11
  br i1 %163, label %164, label %150

164:                                              ; preds = %150
  %165 = icmp eq i64 %160, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %171, %167, %164
  br label %179

167:                                              ; preds = %177, %164
  %168 = phi i32 [ %169, %177 ], [ %11, %164 ]
  %169 = add nsw i32 %168, -1
  %170 = icmp sgt i32 %168, 0
  br i1 %170, label %171, label %166

171:                                              ; preds = %167
  %172 = getelementptr i64, ptr %2, i32 %169
  %173 = load i64, ptr %172, align 8
  %174 = getelementptr i64, ptr %8, i32 %169
  %175 = load i64, ptr %174, align 8
  %176 = icmp ugt i64 %173, %175
  br i1 %176, label %166, label %177

177:                                              ; preds = %171
  %178 = icmp ult i64 %173, %175
  br i1 %178, label %194, label %167

179:                                              ; preds = %179, %166
  %180 = phi i32 [ %192, %179 ], [ 0, %166 ]
  %181 = phi i64 [ %191, %179 ], [ 0, %166 ]
  %182 = getelementptr i64, ptr %2, i32 %180
  %183 = load i64, ptr %182, align 8
  %184 = getelementptr i64, ptr %8, i32 %180
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %185, %181
  %187 = sub i64 %183, %186
  %188 = icmp eq i64 %186, 0
  %189 = icmp ult i64 %183, %186
  %190 = zext i1 %189 to i64
  %191 = select i1 %188, i64 %181, i64 %190
  store i64 %187, ptr %182, align 8
  %192 = add nuw nsw i32 %180, 1
  %193 = icmp eq i32 %192, %11
  br i1 %193, label %194, label %179

194:                                              ; preds = %179, %177
  br label %195

195:                                              ; preds = %195, %194
  %196 = phi i32 [ %208, %195 ], [ 0, %194 ]
  %197 = phi i64 [ %207, %195 ], [ 0, %194 ]
  %198 = getelementptr i64, ptr %0, i32 %196
  %199 = load i64, ptr %198, align 8
  %200 = getelementptr i64, ptr %2, i32 %196
  %201 = load i64, ptr %200, align 8
  %202 = add i64 %199, %197
  %203 = add i64 %202, %201
  %204 = icmp eq i64 %203, %199
  %205 = icmp ult i64 %203, %199
  %206 = zext i1 %205 to i64
  %207 = select i1 %204, i64 %197, i64 %206
  store i64 %203, ptr %198, align 8
  %208 = add nuw nsw i32 %196, 1
  %209 = icmp eq i32 %208, %11
  br i1 %209, label %210, label %195

210:                                              ; preds = %195
  %211 = icmp eq i64 %207, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %217, %213, %210
  br label %225

213:                                              ; preds = %223, %210
  %214 = phi i32 [ %215, %223 ], [ %11, %210 ]
  %215 = add nsw i32 %214, -1
  %216 = icmp sgt i32 %214, 0
  br i1 %216, label %217, label %212

217:                                              ; preds = %213
  %218 = getelementptr i64, ptr %0, i32 %215
  %219 = load i64, ptr %218, align 8
  %220 = getelementptr i64, ptr %8, i32 %215
  %221 = load i64, ptr %220, align 8
  %222 = icmp ugt i64 %219, %221
  br i1 %222, label %212, label %223

223:                                              ; preds = %217
  %224 = icmp ult i64 %219, %221
  br i1 %224, label %240, label %213

225:                                              ; preds = %225, %212
  %226 = phi i32 [ %238, %225 ], [ 0, %212 ]
  %227 = phi i64 [ %237, %225 ], [ 0, %212 ]
  %228 = getelementptr i64, ptr %0, i32 %226
  %229 = load i64, ptr %228, align 8
  %230 = getelementptr i64, ptr %8, i32 %226
  %231 = load i64, ptr %230, align 8
  %232 = add i64 %231, %227
  %233 = sub i64 %229, %232
  %234 = icmp eq i64 %232, 0
  %235 = icmp ult i64 %229, %232
  %236 = zext i1 %235 to i64
  %237 = select i1 %234, i64 %227, i64 %236
  store i64 %233, ptr %228, align 8
  %238 = add nuw nsw i32 %226, 1
  %239 = icmp eq i32 %238, %11
  br i1 %239, label %240, label %225

240:                                              ; preds = %225, %223
  %241 = load i64, ptr %0, align 8
  %242 = and i64 %241, 1
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %287, label %244

244:                                              ; preds = %240
  %245 = load i64, ptr %8, align 8
  %246 = add i64 %241, %245
  %247 = icmp ne i64 %245, 0
  %248 = icmp ult i64 %246, %241
  %249 = select i1 %247, i1 %248, i1 false
  %250 = zext i1 %249 to i64
  store i64 %246, ptr %0, align 8
  %251 = icmp eq i8 %10, 1
  br i1 %251, label %268, label %252

252:                                              ; preds = %252, %244
  %253 = phi i32 [ %266, %252 ], [ 1, %244 ]
  %254 = phi i64 [ %265, %252 ], [ %250, %244 ]
  %255 = getelementptr i64, ptr %0, i32 %253
  %256 = load i64, ptr %255, align 8
  %257 = getelementptr i64, ptr %0, i32 %253
  %258 = getelementptr i64, ptr %8, i32 %253
  %259 = load i64, ptr %258, align 8
  %260 = add i64 %256, %254
  %261 = add i64 %260, %259
  %262 = icmp eq i64 %261, %256
  %263 = icmp ult i64 %261, %256
  %264 = zext i1 %263 to i64
  %265 = select i1 %262, i64 %254, i64 %264
  store i64 %261, ptr %257, align 8
  %266 = add nuw nsw i32 %253, 1
  %267 = icmp eq i32 %266, %11
  br i1 %267, label %268, label %252

268:                                              ; preds = %252, %244
  %269 = phi i64 [ %250, %244 ], [ %265, %252 ]
  %270 = getelementptr i64, ptr %0, i32 %11
  %271 = icmp ugt ptr %270, %0
  br i1 %271, label %272, label %281

272:                                              ; preds = %272, %268
  %273 = phi ptr [ %275, %272 ], [ %270, %268 ]
  %274 = phi i64 [ %279, %272 ], [ 0, %268 ]
  %275 = getelementptr i64, ptr %273, i32 -1
  %276 = load i64, ptr %275, align 8
  %277 = lshr i64 %276, 1
  %278 = or i64 %277, %274
  store i64 %278, ptr %275, align 8
  %279 = shl i64 %276, 63
  %280 = icmp ugt ptr %275, %0
  br i1 %280, label %272, label %281

281:                                              ; preds = %272, %268
  %282 = shl i64 %269, 63
  %283 = add nsw i32 %11, -1
  %284 = getelementptr i64, ptr %0, i32 %283
  %285 = load i64, ptr %284, align 8
  %286 = or i64 %285, %282
  store i64 %286, ptr %284, align 8
  br label %299

287:                                              ; preds = %240
  %288 = getelementptr i64, ptr %0, i32 %11
  %289 = icmp ugt ptr %288, %0
  br i1 %289, label %290, label %299

290:                                              ; preds = %290, %287
  %291 = phi ptr [ %293, %290 ], [ %288, %287 ]
  %292 = phi i64 [ %297, %290 ], [ 0, %287 ]
  %293 = getelementptr i64, ptr %291, i32 -1
  %294 = load i64, ptr %293, align 8
  %295 = lshr i64 %294, 1
  %296 = or i64 %295, %292
  store i64 %296, ptr %293, align 8
  %297 = shl i64 %294, 63
  %298 = icmp ugt ptr %293, %0
  br i1 %298, label %290, label %299

299:                                              ; preds = %290, %287, %281
  call fastcc void @vli_mod_square_fast(ptr noundef %2, ptr noundef %0, ptr noundef %3)
  br label %300

300:                                              ; preds = %300, %299
  %301 = phi i32 [ %313, %300 ], [ 0, %299 ]
  %302 = phi i64 [ %312, %300 ], [ 0, %299 ]
  %303 = getelementptr i64, ptr %2, i32 %301
  %304 = load i64, ptr %303, align 8
  %305 = getelementptr i64, ptr %6, i32 %301
  %306 = load i64, ptr %305, align 8
  %307 = add i64 %306, %302
  %308 = sub i64 %304, %307
  %309 = icmp eq i64 %307, 0
  %310 = icmp ult i64 %304, %307
  %311 = zext i1 %310 to i64
  %312 = select i1 %309, i64 %302, i64 %311
  store i64 %308, ptr %303, align 8
  %313 = add nuw nsw i32 %301, 1
  %314 = icmp eq i32 %313, %11
  br i1 %314, label %315, label %300

315:                                              ; preds = %300
  %316 = icmp eq i64 %312, 0
  br i1 %316, label %332, label %317

317:                                              ; preds = %317, %315
  %318 = phi i32 [ %330, %317 ], [ 0, %315 ]
  %319 = phi i64 [ %329, %317 ], [ 0, %315 ]
  %320 = getelementptr i64, ptr %2, i32 %318
  %321 = load i64, ptr %320, align 8
  %322 = getelementptr i64, ptr %8, i32 %318
  %323 = load i64, ptr %322, align 8
  %324 = add i64 %321, %319
  %325 = add i64 %324, %323
  %326 = icmp eq i64 %325, %321
  %327 = icmp ult i64 %325, %321
  %328 = zext i1 %327 to i64
  %329 = select i1 %326, i64 %319, i64 %328
  store i64 %325, ptr %320, align 8
  %330 = add nuw nsw i32 %318, 1
  %331 = icmp eq i32 %330, %11
  br i1 %331, label %332, label %317

332:                                              ; preds = %317, %315
  br label %333

333:                                              ; preds = %333, %332
  %334 = phi i32 [ %346, %333 ], [ 0, %332 ]
  %335 = phi i64 [ %345, %333 ], [ 0, %332 ]
  %336 = getelementptr i64, ptr %2, i32 %334
  %337 = load i64, ptr %336, align 8
  %338 = getelementptr i64, ptr %6, i32 %334
  %339 = load i64, ptr %338, align 8
  %340 = add i64 %339, %335
  %341 = sub i64 %337, %340
  %342 = icmp eq i64 %340, 0
  %343 = icmp ult i64 %337, %340
  %344 = zext i1 %343 to i64
  %345 = select i1 %342, i64 %335, i64 %344
  store i64 %341, ptr %336, align 8
  %346 = add nuw nsw i32 %334, 1
  %347 = icmp eq i32 %346, %11
  br i1 %347, label %348, label %333

348:                                              ; preds = %333
  %349 = icmp eq i64 %345, 0
  br i1 %349, label %365, label %350

350:                                              ; preds = %350, %348
  %351 = phi i32 [ %363, %350 ], [ 0, %348 ]
  %352 = phi i64 [ %362, %350 ], [ 0, %348 ]
  %353 = getelementptr i64, ptr %2, i32 %351
  %354 = load i64, ptr %353, align 8
  %355 = getelementptr i64, ptr %8, i32 %351
  %356 = load i64, ptr %355, align 8
  %357 = add i64 %354, %352
  %358 = add i64 %357, %356
  %359 = icmp eq i64 %358, %354
  %360 = icmp ult i64 %358, %354
  %361 = zext i1 %360 to i64
  %362 = select i1 %359, i64 %352, i64 %361
  store i64 %358, ptr %353, align 8
  %363 = add nuw nsw i32 %351, 1
  %364 = icmp eq i32 %363, %11
  br i1 %364, label %365, label %350

365:                                              ; preds = %350, %348
  br label %366

366:                                              ; preds = %366, %365
  %367 = phi i32 [ %379, %366 ], [ 0, %365 ]
  %368 = phi i64 [ %378, %366 ], [ 0, %365 ]
  %369 = getelementptr i64, ptr %6, i32 %367
  %370 = load i64, ptr %369, align 8
  %371 = getelementptr i64, ptr %2, i32 %367
  %372 = load i64, ptr %371, align 8
  %373 = add i64 %372, %368
  %374 = sub i64 %370, %373
  %375 = icmp eq i64 %373, 0
  %376 = icmp ult i64 %370, %373
  %377 = zext i1 %376 to i64
  %378 = select i1 %375, i64 %368, i64 %377
  store i64 %374, ptr %369, align 8
  %379 = add nuw nsw i32 %367, 1
  %380 = icmp eq i32 %379, %11
  br i1 %380, label %381, label %366

381:                                              ; preds = %366
  %382 = icmp eq i64 %378, 0
  br i1 %382, label %398, label %383

383:                                              ; preds = %383, %381
  %384 = phi i32 [ %396, %383 ], [ 0, %381 ]
  %385 = phi i64 [ %395, %383 ], [ 0, %381 ]
  %386 = getelementptr i64, ptr %6, i32 %384
  %387 = load i64, ptr %386, align 8
  %388 = getelementptr i64, ptr %8, i32 %384
  %389 = load i64, ptr %388, align 8
  %390 = add i64 %387, %385
  %391 = add i64 %390, %389
  %392 = icmp eq i64 %391, %387
  %393 = icmp ult i64 %391, %387
  %394 = zext i1 %393 to i64
  %395 = select i1 %392, i64 %385, i64 %394
  store i64 %391, ptr %386, align 8
  %396 = add nuw nsw i32 %384, 1
  %397 = icmp eq i32 %396, %11
  br i1 %397, label %398, label %383

398:                                              ; preds = %383, %381
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %399

399:                                              ; preds = %399, %398
  %400 = phi i32 [ %412, %399 ], [ 0, %398 ]
  %401 = phi i64 [ %411, %399 ], [ 0, %398 ]
  %402 = getelementptr i64, ptr %0, i32 %400
  %403 = load i64, ptr %402, align 8
  %404 = getelementptr i64, ptr %5, i32 %400
  %405 = load i64, ptr %404, align 8
  %406 = add i64 %405, %401
  %407 = sub i64 %403, %406
  %408 = icmp eq i64 %406, 0
  %409 = icmp ult i64 %403, %406
  %410 = zext i1 %409 to i64
  %411 = select i1 %408, i64 %401, i64 %410
  store i64 %407, ptr %404, align 8
  %412 = add nuw nsw i32 %400, 1
  %413 = icmp eq i32 %412, %11
  br i1 %413, label %414, label %399

414:                                              ; preds = %399
  %415 = icmp eq i64 %411, 0
  br i1 %415, label %431, label %416

416:                                              ; preds = %416, %414
  %417 = phi i32 [ %429, %416 ], [ 0, %414 ]
  %418 = phi i64 [ %428, %416 ], [ 0, %414 ]
  %419 = getelementptr i64, ptr %5, i32 %417
  %420 = load i64, ptr %419, align 8
  %421 = getelementptr i64, ptr %8, i32 %417
  %422 = load i64, ptr %421, align 8
  %423 = add i64 %420, %418
  %424 = add i64 %423, %422
  %425 = icmp eq i64 %424, %420
  %426 = icmp ult i64 %424, %420
  %427 = zext i1 %426 to i64
  %428 = select i1 %425, i64 %418, i64 %427
  store i64 %424, ptr %419, align 8
  %429 = add nuw nsw i32 %417, 1
  %430 = icmp eq i32 %429, %11
  br i1 %430, label %431, label %416

431:                                              ; preds = %416, %414
  br label %432

432:                                              ; preds = %432, %431
  %433 = phi i32 [ %437, %432 ], [ 0, %431 ]
  %434 = getelementptr i64, ptr %2, i32 %433
  %435 = load i64, ptr %434, align 8
  %436 = getelementptr i64, ptr %0, i32 %433
  store i64 %435, ptr %436, align 8
  %437 = add nuw nsw i32 %433, 1
  %438 = icmp eq i32 %437, %11
  br i1 %438, label %439, label %432

439:                                              ; preds = %439, %432
  %440 = phi i32 [ %444, %439 ], [ 0, %432 ]
  %441 = getelementptr i64, ptr %1, i32 %440
  %442 = load i64, ptr %441, align 8
  %443 = getelementptr i64, ptr %2, i32 %440
  store i64 %442, ptr %443, align 8
  %444 = add nuw nsw i32 %440, 1
  %445 = icmp eq i32 %444, %11
  br i1 %445, label %446, label %439

446:                                              ; preds = %439
  %447 = shl nuw nsw i32 %11, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %1, ptr nonnull align 8 %5, i32 %447, i1 false)
  br label %448

448:                                              ; preds = %446, %24, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xycz_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 1, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %212, label %13

13:                                               ; preds = %13, %5
  %14 = phi i32 [ %27, %13 ], [ 0, %5 ]
  %15 = phi i64 [ %25, %13 ], [ 0, %5 ]
  %16 = getelementptr i64, ptr %2, i32 %14
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr i64, ptr %0, i32 %14
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %15
  %21 = sub i64 %17, %20
  %22 = icmp eq i64 %20, 0
  %23 = icmp ult i64 %17, %20
  %24 = zext i1 %23 to i64
  %25 = select i1 %22, i64 %15, i64 %24
  %26 = getelementptr i64, ptr %6, i32 %14
  store i64 %21, ptr %26, align 8
  %27 = add nuw nsw i32 %14, 1
  %28 = icmp eq i32 %27, %11
  br i1 %28, label %29, label %13

29:                                               ; preds = %13
  %30 = icmp eq i64 %25, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ %44, %31 ], [ 0, %29 ]
  %33 = phi i64 [ %43, %31 ], [ 0, %29 ]
  %34 = getelementptr i64, ptr %6, i32 %32
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i64, ptr %8, i32 %32
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %35, %33
  %39 = add i64 %38, %37
  %40 = icmp eq i64 %39, %35
  %41 = icmp ult i64 %39, %35
  %42 = zext i1 %41 to i64
  %43 = select i1 %40, i64 %33, i64 %42
  store i64 %39, ptr %34, align 8
  %44 = add nuw nsw i32 %32, 1
  %45 = icmp eq i32 %44, %11
  br i1 %45, label %46, label %31

46:                                               ; preds = %31, %29
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %4)
  br label %47

47:                                               ; preds = %47, %46
  %48 = phi i32 [ %60, %47 ], [ 0, %46 ]
  %49 = phi i64 [ %59, %47 ], [ 0, %46 ]
  %50 = getelementptr i64, ptr %3, i32 %48
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr i64, ptr %1, i32 %48
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %49
  %55 = sub i64 %51, %54
  %56 = icmp eq i64 %54, 0
  %57 = icmp ult i64 %51, %54
  %58 = zext i1 %57 to i64
  %59 = select i1 %56, i64 %49, i64 %58
  store i64 %55, ptr %50, align 8
  %60 = add nuw nsw i32 %48, 1
  %61 = icmp eq i32 %60, %11
  br i1 %61, label %62, label %47

62:                                               ; preds = %47
  %63 = icmp eq i64 %59, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ %77, %64 ], [ 0, %62 ]
  %66 = phi i64 [ %76, %64 ], [ 0, %62 ]
  %67 = getelementptr i64, ptr %3, i32 %65
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr i64, ptr %8, i32 %65
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %68, %66
  %72 = add i64 %71, %70
  %73 = icmp eq i64 %72, %68
  %74 = icmp ult i64 %72, %68
  %75 = zext i1 %74 to i64
  %76 = select i1 %73, i64 %66, i64 %75
  store i64 %72, ptr %67, align 8
  %77 = add nuw nsw i32 %65, 1
  %78 = icmp eq i32 %77, %11
  br i1 %78, label %79, label %64

79:                                               ; preds = %64, %62
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4)
  br label %80

80:                                               ; preds = %80, %79
  %81 = phi i32 [ %93, %80 ], [ 0, %79 ]
  %82 = phi i64 [ %92, %80 ], [ 0, %79 ]
  %83 = getelementptr i64, ptr %6, i32 %81
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr i64, ptr %0, i32 %81
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %82
  %88 = sub i64 %84, %87
  %89 = icmp eq i64 %87, 0
  %90 = icmp ult i64 %84, %87
  %91 = zext i1 %90 to i64
  %92 = select i1 %89, i64 %82, i64 %91
  store i64 %88, ptr %83, align 8
  %93 = add nuw nsw i32 %81, 1
  %94 = icmp eq i32 %93, %11
  br i1 %94, label %95, label %80

95:                                               ; preds = %80
  %96 = icmp eq i64 %92, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %97, %95
  %98 = phi i32 [ %110, %97 ], [ 0, %95 ]
  %99 = phi i64 [ %109, %97 ], [ 0, %95 ]
  %100 = getelementptr i64, ptr %6, i32 %98
  %101 = load i64, ptr %100, align 8
  %102 = getelementptr i64, ptr %8, i32 %98
  %103 = load i64, ptr %102, align 8
  %104 = add i64 %101, %99
  %105 = add i64 %104, %103
  %106 = icmp eq i64 %105, %101
  %107 = icmp ult i64 %105, %101
  %108 = zext i1 %107 to i64
  %109 = select i1 %106, i64 %99, i64 %108
  store i64 %105, ptr %100, align 8
  %110 = add nuw nsw i32 %98, 1
  %111 = icmp eq i32 %110, %11
  br i1 %111, label %112, label %97

112:                                              ; preds = %97, %95
  br label %113

113:                                              ; preds = %113, %112
  %114 = phi i32 [ %126, %113 ], [ 0, %112 ]
  %115 = phi i64 [ %125, %113 ], [ 0, %112 ]
  %116 = getelementptr i64, ptr %6, i32 %114
  %117 = load i64, ptr %116, align 8
  %118 = getelementptr i64, ptr %2, i32 %114
  %119 = load i64, ptr %118, align 8
  %120 = add i64 %119, %115
  %121 = sub i64 %117, %120
  %122 = icmp eq i64 %120, 0
  %123 = icmp ult i64 %117, %120
  %124 = zext i1 %123 to i64
  %125 = select i1 %122, i64 %115, i64 %124
  store i64 %121, ptr %116, align 8
  %126 = add nuw nsw i32 %114, 1
  %127 = icmp eq i32 %126, %11
  br i1 %127, label %128, label %113

128:                                              ; preds = %113
  %129 = icmp eq i64 %125, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %130, %128
  %131 = phi i32 [ %143, %130 ], [ 0, %128 ]
  %132 = phi i64 [ %142, %130 ], [ 0, %128 ]
  %133 = getelementptr i64, ptr %6, i32 %131
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr i64, ptr %8, i32 %131
  %136 = load i64, ptr %135, align 8
  %137 = add i64 %134, %132
  %138 = add i64 %137, %136
  %139 = icmp eq i64 %138, %134
  %140 = icmp ult i64 %138, %134
  %141 = zext i1 %140 to i64
  %142 = select i1 %139, i64 %132, i64 %141
  store i64 %138, ptr %133, align 8
  %143 = add nuw nsw i32 %131, 1
  %144 = icmp eq i32 %143, %11
  br i1 %144, label %145, label %130

145:                                              ; preds = %130, %128
  br label %146

146:                                              ; preds = %146, %145
  %147 = phi i32 [ %159, %146 ], [ 0, %145 ]
  %148 = phi i64 [ %158, %146 ], [ 0, %145 ]
  %149 = getelementptr i64, ptr %2, i32 %147
  %150 = load i64, ptr %149, align 8
  %151 = getelementptr i64, ptr %0, i32 %147
  %152 = load i64, ptr %151, align 8
  %153 = add i64 %152, %148
  %154 = sub i64 %150, %153
  %155 = icmp eq i64 %153, 0
  %156 = icmp ult i64 %150, %153
  %157 = zext i1 %156 to i64
  %158 = select i1 %155, i64 %148, i64 %157
  store i64 %154, ptr %149, align 8
  %159 = add nuw nsw i32 %147, 1
  %160 = icmp eq i32 %159, %11
  br i1 %160, label %161, label %146

161:                                              ; preds = %146
  %162 = icmp eq i64 %158, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ %176, %163 ], [ 0, %161 ]
  %165 = phi i64 [ %175, %163 ], [ 0, %161 ]
  %166 = getelementptr i64, ptr %2, i32 %164
  %167 = load i64, ptr %166, align 8
  %168 = getelementptr i64, ptr %8, i32 %164
  %169 = load i64, ptr %168, align 8
  %170 = add i64 %167, %165
  %171 = add i64 %170, %169
  %172 = icmp eq i64 %171, %167
  %173 = icmp ult i64 %171, %167
  %174 = zext i1 %173 to i64
  %175 = select i1 %172, i64 %165, i64 %174
  store i64 %171, ptr %166, align 8
  %176 = add nuw nsw i32 %164, 1
  %177 = icmp eq i32 %176, %11
  br i1 %177, label %178, label %163

178:                                              ; preds = %163, %161
  call fastcc void @vli_mod_mult_fast(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef %4)
  br label %179

179:                                              ; preds = %179, %178
  %180 = phi i32 [ %193, %179 ], [ 0, %178 ]
  %181 = phi i64 [ %191, %179 ], [ 0, %178 ]
  %182 = getelementptr i64, ptr %0, i32 %180
  %183 = load i64, ptr %182, align 8
  %184 = getelementptr i64, ptr %6, i32 %180
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %185, %181
  %187 = sub i64 %183, %186
  %188 = icmp eq i64 %186, 0
  %189 = icmp ult i64 %183, %186
  %190 = zext i1 %189 to i64
  %191 = select i1 %188, i64 %181, i64 %190
  %192 = getelementptr i64, ptr %2, i32 %180
  store i64 %187, ptr %192, align 8
  %193 = add nuw nsw i32 %180, 1
  %194 = icmp eq i32 %193, %11
  br i1 %194, label %195, label %179

195:                                              ; preds = %179
  %196 = icmp eq i64 %191, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %197, %195
  %198 = phi i32 [ %210, %197 ], [ 0, %195 ]
  %199 = phi i64 [ %209, %197 ], [ 0, %195 ]
  %200 = getelementptr i64, ptr %2, i32 %198
  %201 = load i64, ptr %200, align 8
  %202 = getelementptr i64, ptr %8, i32 %198
  %203 = load i64, ptr %202, align 8
  %204 = add i64 %201, %199
  %205 = add i64 %204, %203
  %206 = icmp eq i64 %205, %201
  %207 = icmp ult i64 %205, %201
  %208 = zext i1 %207 to i64
  %209 = select i1 %206, i64 %199, i64 %208
  store i64 %205, ptr %200, align 8
  %210 = add nuw nsw i32 %198, 1
  %211 = icmp eq i32 %210, %11
  br i1 %211, label %213, label %197

212:                                              ; preds = %5
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %3, ptr noundef %3, ptr noundef %2, ptr noundef %4)
  br label %248

213:                                              ; preds = %197, %195
  call fastcc void @vli_mod_mult_fast(ptr noundef %3, ptr noundef %3, ptr noundef %2, ptr noundef %4)
  br label %214

214:                                              ; preds = %214, %213
  %215 = phi i32 [ %227, %214 ], [ 0, %213 ]
  %216 = phi i64 [ %226, %214 ], [ 0, %213 ]
  %217 = getelementptr i64, ptr %3, i32 %215
  %218 = load i64, ptr %217, align 8
  %219 = getelementptr i64, ptr %1, i32 %215
  %220 = load i64, ptr %219, align 8
  %221 = add i64 %220, %216
  %222 = sub i64 %218, %221
  %223 = icmp eq i64 %221, 0
  %224 = icmp ult i64 %218, %221
  %225 = zext i1 %224 to i64
  %226 = select i1 %223, i64 %216, i64 %225
  store i64 %222, ptr %217, align 8
  %227 = add nuw nsw i32 %215, 1
  %228 = icmp eq i32 %227, %11
  br i1 %228, label %229, label %214

229:                                              ; preds = %214
  %230 = icmp eq i64 %226, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %231, %229
  %232 = phi i32 [ %244, %231 ], [ 0, %229 ]
  %233 = phi i64 [ %243, %231 ], [ 0, %229 ]
  %234 = getelementptr i64, ptr %3, i32 %232
  %235 = load i64, ptr %234, align 8
  %236 = getelementptr i64, ptr %8, i32 %232
  %237 = load i64, ptr %236, align 8
  %238 = add i64 %235, %233
  %239 = add i64 %238, %237
  %240 = icmp eq i64 %239, %235
  %241 = icmp ult i64 %239, %235
  %242 = zext i1 %241 to i64
  %243 = select i1 %240, i64 %233, i64 %242
  store i64 %239, ptr %234, align 8
  %244 = add nuw nsw i32 %232, 1
  %245 = icmp eq i32 %244, %11
  br i1 %245, label %246, label %231

246:                                              ; preds = %231, %229
  %247 = shl nuw nsw i32 %11, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %2, ptr nonnull align 8 %6, i32 %247, i1 false)
  br label %248

248:                                              ; preds = %246, %212
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca [16 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.ecc_curve, ptr %3, i32 0, i32 1, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = add nsw i32 %9, -1
  br label %11

11:                                               ; preds = %63, %4
  %12 = phi i32 [ 0, %4 ], [ %16, %63 ]
  %13 = phi i64 [ 0, %4 ], [ %66, %63 ]
  %14 = phi i64 [ 0, %4 ], [ %65, %63 ]
  %15 = icmp ult i32 %12, %8
  %16 = add nuw i32 %12, 1
  %17 = sub i32 %16, %8
  %18 = select i1 %15, i32 0, i32 %17
  %19 = icmp uge i32 %12, %18
  %20 = icmp ult i32 %18, %8
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %22, %11
  %23 = phi i32 [ %59, %22 ], [ %18, %11 ]
  %24 = phi i64 [ %58, %22 ], [ 0, %11 ]
  %25 = phi i64 [ %55, %22 ], [ %13, %11 ]
  %26 = phi i64 [ %51, %22 ], [ %14, %11 ]
  %27 = getelementptr i64, ptr %1, i32 %23
  %28 = load i64, ptr %27, align 8
  %29 = sub i32 %12, %23
  %30 = getelementptr i64, ptr %2, i32 %29
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %28, 4294967295
  %33 = lshr i64 %28, 32
  %34 = and i64 %31, 4294967295
  %35 = lshr i64 %31, 32
  %36 = mul nuw i64 %34, %32
  %37 = mul nuw i64 %35, %32
  %38 = mul nuw i64 %34, %33
  %39 = mul nuw i64 %35, %33
  %40 = lshr i64 %36, 32
  %41 = add i64 %37, %38
  %42 = add i64 %41, %40
  %43 = icmp ult i64 %42, %37
  %44 = add nuw i64 %39, 4294967296
  %45 = select i1 %43, i64 %44, i64 %39
  %46 = and i64 %36, 4294967295
  %47 = shl i64 %42, 32
  %48 = lshr i64 %42, 32
  %49 = add i64 %45, %48
  %50 = add i64 %46, %26
  %51 = add i64 %50, %47
  %52 = add i64 %49, %25
  %53 = icmp ult i64 %51, %26
  %54 = zext i1 %53 to i64
  %55 = add i64 %52, %54
  %56 = icmp ult i64 %55, %49
  %57 = zext i1 %56 to i64
  %58 = add i64 %24, %57
  %59 = add nuw nsw i32 %23, 1
  %60 = icmp ugt i32 %12, %23
  %61 = icmp ult i32 %59, %8
  %62 = and i1 %60, %61
  br i1 %62, label %22, label %63

63:                                               ; preds = %22, %11
  %64 = phi i64 [ %14, %11 ], [ %51, %22 ]
  %65 = phi i64 [ %13, %11 ], [ %55, %22 ]
  %66 = phi i64 [ 0, %11 ], [ %58, %22 ]
  %67 = getelementptr i64, ptr %5, i32 %12
  store i64 %64, ptr %67, align 8
  %68 = icmp eq i32 %16, %10
  br i1 %68, label %69, label %11

69:                                               ; preds = %63
  %70 = getelementptr i64, ptr %5, i32 %10
  store i64 %65, ptr %70, align 8
  call fastcc void @vli_mmod_fast(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ecc_is_key_valid(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #11 {
  %5 = add i32 %0, -1
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  %12 = shl i32 %1, 3
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @__ecc_is_key_valid(ptr noundef %11, ptr noundef %2, i32 noundef %1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %15, %14 ], [ -22, %10 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @__ecc_is_key_valid(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #11 {
  %4 = alloca [8 x i64], align 8
  %5 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 56, i1 false)
  store i64 1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 1, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %85

13:                                               ; preds = %23, %8
  %14 = phi i32 [ %15, %23 ], [ %2, %8 ]
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  %18 = getelementptr i64, ptr %4, i32 %15
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr i64, ptr %1, i32 %15
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %85, label %23

23:                                               ; preds = %17
  %24 = icmp ult i64 %19, %21
  br i1 %24, label %25, label %13

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = add i64 %30, -1
  store i64 %31, ptr %5, align 8
  %32 = icmp eq i32 %2, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %37, %29
  %34 = load i64, ptr %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, ptr %5, align 8
  %36 = icmp eq i32 %2, 1
  br i1 %36, label %72, label %55

37:                                               ; preds = %37, %29
  %38 = phi i32 [ %53, %37 ], [ 1, %29 ]
  %39 = phi i64 [ %50, %37 ], [ 1, %29 ]
  %40 = phi i64 [ %49, %37 ], [ %30, %29 ]
  %41 = phi i64 [ %45, %37 ], [ 0, %29 ]
  %42 = icmp eq i64 %39, 0
  %43 = icmp ult i64 %40, %39
  %44 = zext i1 %43 to i64
  %45 = select i1 %42, i64 %41, i64 %44
  %46 = getelementptr i64, ptr %4, i32 %38
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr i64, ptr %27, i32 %38
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %45
  %51 = sub i64 %49, %50
  %52 = getelementptr i64, ptr %5, i32 %38
  store i64 %51, ptr %52, align 8
  %53 = add nuw i32 %38, 1
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %33, label %37

55:                                               ; preds = %55, %33
  %56 = phi i32 [ %70, %55 ], [ 1, %33 ]
  %57 = phi i64 [ %68, %55 ], [ 1, %33 ]
  %58 = phi i64 [ %67, %55 ], [ %34, %33 ]
  %59 = phi i64 [ %63, %55 ], [ 0, %33 ]
  %60 = icmp eq i64 %57, 0
  %61 = icmp ult i64 %58, %57
  %62 = zext i1 %61 to i64
  %63 = select i1 %60, i64 %59, i64 %62
  %64 = getelementptr i64, ptr %4, i32 %56
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr i64, ptr %5, i32 %56
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %65, %63
  %69 = sub i64 %67, %68
  store i64 %69, ptr %66, align 8
  %70 = add nuw i32 %56, 1
  %71 = icmp eq i32 %70, %2
  br i1 %71, label %72, label %55

72:                                               ; preds = %55, %33, %25
  br label %73

73:                                               ; preds = %83, %72
  %74 = phi i32 [ %75, %83 ], [ %2, %72 ]
  %75 = add i32 %74, -1
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = getelementptr i64, ptr %5, i32 %75
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr i64, ptr %1, i32 %75
  %81 = load i64, ptr %80, align 8
  %82 = icmp ugt i64 %79, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = icmp ult i64 %79, %81
  br i1 %84, label %85, label %73

85:                                               ; preds = %83, %77, %73, %17, %13, %8, %3
  %86 = phi i32 [ -22, %3 ], [ -22, %8 ], [ -22, %73 ], [ -22, %83 ], [ 0, %77 ], [ -22, %17 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_gen_privkey(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca [8 x i64], align 8
  %5 = add i32 %0, -1
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %12 = shl i32 %1, 3
  %13 = getelementptr inbounds %struct.ecc_curve, ptr %11, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %1, -1
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 -1) #20
  br label %17

17:                                               ; preds = %21, %10
  %18 = phi i32 [ %1, %10 ], [ %19, %21 ]
  %19 = add i32 %18, -1
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr i64, ptr %14, i32 %19
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %17, label %31

25:                                               ; preds = %17
  %26 = icmp ult i32 %1, -2147483647
  br i1 %26, label %116, label %27

27:                                               ; preds = %25
  %28 = getelementptr i64, ptr %14, i32 %16
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %116, label %31

31:                                               ; preds = %27, %21
  %32 = phi i64 [ %29, %27 ], [ %23, %21 ]
  %33 = phi i32 [ %16, %27 ], [ %19, %21 ]
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ %37, %34 ], [ %32, %31 ]
  %36 = phi i32 [ %38, %34 ], [ 0, %31 ]
  %37 = lshr i64 %35, 1
  %38 = add nuw nsw i32 %36, 1
  %39 = icmp ult i64 %35, 2
  br i1 %39, label %40, label %34

40:                                               ; preds = %34
  %41 = shl i32 %33, 6
  %42 = add i32 %38, %41
  %43 = icmp ult i32 %42, 160
  %44 = icmp ugt i32 %1, 8
  %45 = or i1 %44, %43
  br i1 %45, label %116, label %46

46:                                               ; preds = %40
  %47 = tail call i32 @crypto_get_default_rng() #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %116

49:                                               ; preds = %46
  %50 = load ptr, ptr @crypto_default_rng, align 4
  %51 = getelementptr inbounds %struct.crypto_tfm, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -64
  %54 = load ptr, ptr %53, align 64
  %55 = call i32 %54(ptr noundef %50, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef %12) #20
  call void @crypto_put_default_rng() #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %49
  %58 = call fastcc i32 @__ecc_is_key_valid(ptr noundef %11, ptr noundef nonnull %4, i32 noundef %1)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %116

60:                                               ; preds = %57
  %61 = icmp eq i32 %1, 0
  br i1 %61, label %116, label %62

62:                                               ; preds = %60
  %63 = add i32 %1, -1
  %64 = getelementptr i64, ptr %4, i32 %63
  %65 = load i64, ptr %64, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #20
  store i64 %66, ptr %2, align 8
  %67 = icmp eq i32 %1, 1
  br i1 %67, label %116, label %68

68:                                               ; preds = %62
  %69 = add i32 %1, -2
  %70 = getelementptr i64, ptr %4, i32 %69
  %71 = load i64, ptr %70, align 8
  %72 = call i64 @llvm.bswap.i64(i64 %71) #20
  %73 = getelementptr i64, ptr %2, i32 1
  store i64 %72, ptr %73, align 8
  %74 = icmp eq i32 %1, 2
  br i1 %74, label %116, label %75

75:                                               ; preds = %68
  %76 = add i32 %1, -3
  %77 = getelementptr i64, ptr %4, i32 %76
  %78 = load i64, ptr %77, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78) #20
  %80 = getelementptr i64, ptr %2, i32 2
  store i64 %79, ptr %80, align 8
  %81 = icmp eq i32 %1, 3
  br i1 %81, label %116, label %82

82:                                               ; preds = %75
  %83 = add i32 %1, -4
  %84 = getelementptr i64, ptr %4, i32 %83
  %85 = load i64, ptr %84, align 8
  %86 = call i64 @llvm.bswap.i64(i64 %85) #20
  %87 = getelementptr i64, ptr %2, i32 3
  store i64 %86, ptr %87, align 8
  %88 = icmp eq i32 %1, 4
  br i1 %88, label %116, label %89

89:                                               ; preds = %82
  %90 = add i32 %1, -5
  %91 = getelementptr i64, ptr %4, i32 %90
  %92 = load i64, ptr %91, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92) #20
  %94 = getelementptr i64, ptr %2, i32 4
  store i64 %93, ptr %94, align 8
  %95 = icmp eq i32 %1, 5
  br i1 %95, label %116, label %96

96:                                               ; preds = %89
  %97 = add i32 %1, -6
  %98 = getelementptr i64, ptr %4, i32 %97
  %99 = load i64, ptr %98, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99) #20
  %101 = getelementptr i64, ptr %2, i32 5
  store i64 %100, ptr %101, align 8
  %102 = icmp eq i32 %1, 6
  br i1 %102, label %116, label %103

103:                                              ; preds = %96
  %104 = add i32 %1, -7
  %105 = getelementptr i64, ptr %4, i32 %104
  %106 = load i64, ptr %105, align 8
  %107 = call i64 @llvm.bswap.i64(i64 %106) #20
  %108 = getelementptr i64, ptr %2, i32 6
  store i64 %107, ptr %108, align 8
  %109 = icmp eq i32 %1, 7
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = add i32 %1, -8
  %112 = getelementptr i64, ptr %4, i32 %111
  %113 = load i64, ptr %112, align 8
  %114 = call i64 @llvm.bswap.i64(i64 %113) #20
  %115 = getelementptr i64, ptr %2, i32 7
  store i64 %114, ptr %115, align 8
  br label %116

116:                                              ; preds = %110, %103, %96, %89, %82, %75, %68, %62, %60, %57, %49, %46, %40, %27, %25
  %117 = phi i32 [ -22, %40 ], [ -14, %46 ], [ %55, %49 ], [ -22, %57 ], [ 0, %60 ], [ -22, %25 ], [ -22, %27 ], [ 0, %110 ], [ 0, %103 ], [ 0, %96 ], [ 0, %89 ], [ 0, %82 ], [ 0, %75 ], [ 0, %68 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_make_pub_key(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %6 = add i32 %0, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %108

8:                                                ; preds = %4
  %9 = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %2, null
  %12 = icmp ugt i32 %1, 8
  %13 = or i1 %12, %11
  br i1 %13, label %108, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %14
  %17 = add i32 %1, -1
  %18 = getelementptr i64, ptr %2, i32 %17
  %19 = load i64, ptr %18, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #20
  store i64 %20, ptr %5, align 8
  %21 = icmp eq i32 %1, 1
  br i1 %21, label %70, label %22

22:                                               ; preds = %16
  %23 = add i32 %1, -2
  %24 = getelementptr i64, ptr %2, i32 %23
  %25 = load i64, ptr %24, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #20
  %27 = getelementptr inbounds i64, ptr %5, i32 1
  store i64 %26, ptr %27, align 8
  %28 = icmp eq i32 %1, 2
  br i1 %28, label %70, label %29

29:                                               ; preds = %22
  %30 = add i32 %1, -3
  %31 = getelementptr i64, ptr %2, i32 %30
  %32 = load i64, ptr %31, align 1
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #20
  %34 = getelementptr inbounds i64, ptr %5, i32 2
  store i64 %33, ptr %34, align 8
  %35 = icmp eq i32 %1, 3
  br i1 %35, label %70, label %36

36:                                               ; preds = %29
  %37 = add i32 %1, -4
  %38 = getelementptr i64, ptr %2, i32 %37
  %39 = load i64, ptr %38, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #20
  %41 = getelementptr inbounds i64, ptr %5, i32 3
  store i64 %40, ptr %41, align 8
  %42 = icmp eq i32 %1, 4
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = add i32 %1, -5
  %45 = getelementptr i64, ptr %2, i32 %44
  %46 = load i64, ptr %45, align 1
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #20
  %48 = getelementptr inbounds i64, ptr %5, i32 4
  store i64 %47, ptr %48, align 8
  %49 = icmp eq i32 %1, 5
  br i1 %49, label %70, label %50

50:                                               ; preds = %43
  %51 = add i32 %1, -6
  %52 = getelementptr i64, ptr %2, i32 %51
  %53 = load i64, ptr %52, align 1
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #20
  %55 = getelementptr inbounds i64, ptr %5, i32 5
  store i64 %54, ptr %55, align 8
  %56 = icmp eq i32 %1, 6
  br i1 %56, label %70, label %57

57:                                               ; preds = %50
  %58 = add i32 %1, -7
  %59 = getelementptr i64, ptr %2, i32 %58
  %60 = load i64, ptr %59, align 1
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #20
  %62 = getelementptr inbounds i64, ptr %5, i32 6
  store i64 %61, ptr %62, align 8
  %63 = icmp eq i32 %1, 7
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = add i32 %1, -8
  %66 = getelementptr i64, ptr %2, i32 %65
  %67 = load i64, ptr %66, align 1
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #20
  %69 = getelementptr inbounds i64, ptr %5, i32 7
  store i64 %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %16, %14
  %71 = tail call ptr @ecc_alloc_point(i32 noundef %1)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %108, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ecc_curve, ptr %10, i32 0, i32 1
  call fastcc void @ecc_point_mult(ptr noundef nonnull %71, ptr noundef %74, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %10, i32 noundef %1)
  %75 = tail call i32 @ecc_is_pubkey_valid_full(ptr noundef nonnull %10, ptr noundef nonnull %71)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load ptr, ptr %71, align 4
  br i1 %15, label %103, label %79

79:                                               ; preds = %79, %77
  %80 = phi i32 [ %87, %79 ], [ 0, %77 ]
  %81 = xor i32 %80, -1
  %82 = add i32 %81, %1
  %83 = getelementptr i64, ptr %78, i32 %82
  %84 = load i64, ptr %83, align 1
  %85 = tail call i64 @llvm.bswap.i64(i64 %84) #20
  %86 = getelementptr i64, ptr %3, i32 %80
  store i64 %85, ptr %86, align 8
  %87 = add nuw i32 %80, 1
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %89, label %79

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.ecc_point, ptr %71, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i64, ptr %3, i32 %1
  br label %93

93:                                               ; preds = %93, %89
  %94 = phi i32 [ %101, %93 ], [ 0, %89 ]
  %95 = xor i32 %94, -1
  %96 = add i32 %95, %1
  %97 = getelementptr i64, ptr %91, i32 %96
  %98 = load i64, ptr %97, align 1
  %99 = tail call i64 @llvm.bswap.i64(i64 %98) #20
  %100 = getelementptr i64, ptr %92, i32 %94
  store i64 %99, ptr %100, align 8
  %101 = add nuw i32 %94, 1
  %102 = icmp eq i32 %101, %1
  br i1 %102, label %103, label %93

103:                                              ; preds = %93, %77, %73
  %104 = phi i32 [ -11, %73 ], [ 0, %77 ], [ 0, %93 ]
  %105 = load ptr, ptr %71, align 4
  tail call void @kfree_sensitive(ptr noundef %105) #20
  %106 = getelementptr inbounds %struct.ecc_point, ptr %71, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void @kfree_sensitive(ptr noundef %107) #20
  tail call void @kfree_sensitive(ptr noundef nonnull %71) #20
  br label %108

108:                                              ; preds = %103, %70, %8, %4
  %109 = phi i32 [ %104, %103 ], [ -22, %8 ], [ -12, %70 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ecc_point_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca [8 x i64], align 8
  %8 = alloca [8 x i64], align 8
  %9 = alloca [8 x i64], align 8
  %10 = alloca [8 x i64], align 8
  %11 = alloca [2 x [8 x i64]], align 8
  %12 = alloca [2 x [8 x i64]], align 8
  %13 = alloca [8 x i64], align 8
  %14 = alloca [2 x [8 x i64]], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %11, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %14, i8 0, i32 128, i1 false), !annotation !8
  %15 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %20, %6
  %21 = phi i32 [ %34, %20 ], [ 0, %6 ]
  %22 = phi i64 [ %32, %20 ], [ 0, %6 ]
  %23 = getelementptr i64, ptr %2, i32 %21
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr i64, ptr %18, i32 %21
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %24, %22
  %28 = add i64 %27, %26
  %29 = icmp eq i64 %28, %24
  %30 = icmp ult i64 %28, %24
  %31 = zext i1 %30 to i64
  %32 = select i1 %29, i64 %22, i64 %31
  %33 = getelementptr i64, ptr %14, i32 %21
  store i64 %28, ptr %33, align 8
  %34 = add nuw i32 %21, 1
  %35 = icmp eq i32 %34, %5
  br i1 %35, label %36, label %20

36:                                               ; preds = %20
  %37 = trunc i64 %32 to i32
  %38 = getelementptr inbounds [2 x [8 x i64]], ptr %14, i32 0, i32 1
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %53, %39 ], [ 0, %36 ]
  %41 = phi i64 [ %51, %39 ], [ 0, %36 ]
  %42 = getelementptr i64, ptr %14, i32 %40
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr i64, ptr %18, i32 %40
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %43, %41
  %47 = add i64 %46, %45
  %48 = icmp eq i64 %47, %43
  %49 = icmp ult i64 %47, %43
  %50 = zext i1 %49 to i64
  %51 = select i1 %48, i64 %41, i64 %50
  %52 = getelementptr i64, ptr %38, i32 %40
  store i64 %47, ptr %52, align 8
  %53 = add nuw i32 %40, 1
  %54 = icmp eq i32 %53, %5
  br i1 %54, label %55, label %39

55:                                               ; preds = %39
  %56 = icmp eq i32 %37, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr [2 x [8 x i64]], ptr %14, i32 0, i32 %57
  %59 = shl i32 %5, 6
  %60 = getelementptr inbounds [2 x [8 x i64]], ptr %11, i32 0, i32 1
  %61 = load ptr, ptr %1, align 4
  br label %62

62:                                               ; preds = %62, %55
  %63 = phi i32 [ %67, %62 ], [ 0, %55 ]
  %64 = getelementptr i64, ptr %61, i32 %63
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr i64, ptr %60, i32 %63
  store i64 %65, ptr %66, align 8
  %67 = add nuw i32 %63, 1
  %68 = icmp eq i32 %67, %5
  br i1 %68, label %74, label %62

69:                                               ; preds = %6
  %70 = getelementptr inbounds [2 x [8 x i64]], ptr %14, i32 0, i32 1
  %71 = getelementptr inbounds [2 x [8 x i64]], ptr %11, i32 0, i32 1
  %72 = getelementptr inbounds [2 x [8 x i64]], ptr %12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 1
  br label %87

74:                                               ; preds = %62
  %75 = getelementptr inbounds [2 x [8 x i64]], ptr %12, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %78, %74
  %79 = phi i32 [ %83, %78 ], [ 0, %74 ]
  %80 = getelementptr i64, ptr %77, i32 %79
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr i64, ptr %75, i32 %79
  store i64 %81, ptr %82, align 8
  %83 = add nuw i32 %79, 1
  %84 = icmp eq i32 %83, %5
  br i1 %84, label %85, label %78

85:                                               ; preds = %78
  %86 = add i32 %59, -1
  br label %87

87:                                               ; preds = %85, %69
  %88 = phi ptr [ %73, %69 ], [ %76, %85 ]
  %89 = phi ptr [ %72, %69 ], [ %75, %85 ]
  %90 = phi ptr [ %70, %69 ], [ %58, %85 ]
  %91 = phi i32 [ -1, %69 ], [ %86, %85 ]
  %92 = phi ptr [ %71, %69 ], [ %60, %85 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i32 64, i1 false) #20, !annotation !8
  %93 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 1, i32 2
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = icmp eq i8 %94, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds [2 x [8 x i64]], ptr %11, i32 0, i32 1
  br label %100

99:                                               ; preds = %87
  store i64 1, ptr %10, align 8
  br label %112

100:                                              ; preds = %100, %97
  %101 = phi i32 [ %105, %100 ], [ 0, %97 ]
  %102 = getelementptr i64, ptr %98, i32 %101
  %103 = load i64, ptr %102, align 8
  %104 = getelementptr i64, ptr %11, i32 %101
  store i64 %103, ptr %104, align 8
  %105 = add nuw nsw i32 %101, 1
  %106 = icmp eq i32 %105, %95
  br i1 %106, label %107, label %100

107:                                              ; preds = %100
  %108 = getelementptr inbounds [2 x [8 x i64]], ptr %12, i32 0, i32 1
  %109 = shl nuw nsw i32 %95, 3
  call void @llvm.memmove.p0.p0.i32(ptr nonnull align 8 %12, ptr align 8 %108, i32 %109, i1 false)
  call void @llvm.memset.p0.i32(ptr nonnull align 8 %10, i8 0, i32 %109, i1 false) #20
  store i64 1, ptr %10, align 8
  %110 = icmp eq ptr %3, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %10, ptr nonnull align 8 %3, i32 %109, i1 false) #20
  br label %112

112:                                              ; preds = %111, %107, %99
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %92, ptr noundef %92, ptr noundef nonnull %9, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef %89, ptr noundef %89, ptr noundef nonnull %9, ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call fastcc void @ecc_point_double_jacobian(ptr noundef %92, ptr noundef %89, ptr noundef nonnull %10, ptr noundef %4) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #20
  %113 = icmp sgt i32 %91, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %114, %112
  %115 = phi i32 [ %131, %114 ], [ %91, %112 ]
  %116 = lshr i32 %115, 6
  %117 = getelementptr i64, ptr %90, i32 %116
  %118 = load i64, ptr %117, align 8
  %119 = and i32 %115, 63
  %120 = zext i32 %119 to i64
  %121 = shl nuw i64 1, %120
  %122 = and i64 %118, %121
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = xor i1 %123, true
  %126 = zext i1 %125 to i32
  %127 = getelementptr [2 x [8 x i64]], ptr %11, i32 0, i32 %126
  %128 = getelementptr [2 x [8 x i64]], ptr %12, i32 0, i32 %126
  %129 = getelementptr [2 x [8 x i64]], ptr %11, i32 0, i32 %124
  %130 = getelementptr [2 x [8 x i64]], ptr %12, i32 0, i32 %124
  call fastcc void @xycz_add_c(ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %4)
  call fastcc void @xycz_add(ptr noundef %129, ptr noundef %130, ptr noundef %127, ptr noundef %128, ptr noundef %4)
  %131 = add nsw i32 %115, -1
  %132 = icmp ugt i32 %115, 1
  br i1 %132, label %114, label %133

133:                                              ; preds = %114, %112
  %134 = load i64, ptr %90, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 1
  %137 = xor i32 %136, 1
  %138 = getelementptr [2 x [8 x i64]], ptr %11, i32 0, i32 %136
  %139 = getelementptr [2 x [8 x i64]], ptr %12, i32 0, i32 %136
  %140 = getelementptr [2 x [8 x i64]], ptr %11, i32 0, i32 %137
  %141 = getelementptr [2 x [8 x i64]], ptr %12, i32 0, i32 %137
  call fastcc void @xycz_add_c(ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %4)
  br i1 %19, label %177, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds [2 x [8 x i64]], ptr %11, i32 0, i32 1
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i32 [ %158, %144 ], [ 0, %142 ]
  %146 = phi i64 [ %156, %144 ], [ 0, %142 ]
  %147 = getelementptr i64, ptr %143, i32 %145
  %148 = load i64, ptr %147, align 8
  %149 = getelementptr i64, ptr %11, i32 %145
  %150 = load i64, ptr %149, align 8
  %151 = add i64 %150, %146
  %152 = sub i64 %148, %151
  %153 = icmp eq i64 %151, 0
  %154 = icmp ult i64 %148, %151
  %155 = zext i1 %154 to i64
  %156 = select i1 %153, i64 %146, i64 %155
  %157 = getelementptr i64, ptr %13, i32 %145
  store i64 %152, ptr %157, align 8
  %158 = add nuw i32 %145, 1
  %159 = icmp eq i32 %158, %5
  br i1 %159, label %160, label %144

160:                                              ; preds = %144
  %161 = icmp eq i64 %156, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %162, %160
  %163 = phi i32 [ %175, %162 ], [ 0, %160 ]
  %164 = phi i64 [ %174, %162 ], [ 0, %160 ]
  %165 = getelementptr i64, ptr %13, i32 %163
  %166 = load i64, ptr %165, align 8
  %167 = getelementptr i64, ptr %16, i32 %163
  %168 = load i64, ptr %167, align 8
  %169 = add i64 %166, %164
  %170 = add i64 %169, %168
  %171 = icmp eq i64 %170, %166
  %172 = icmp ult i64 %170, %166
  %173 = zext i1 %172 to i64
  %174 = select i1 %171, i64 %164, i64 %173
  store i64 %170, ptr %165, align 8
  %175 = add nuw i32 %163, 1
  %176 = icmp eq i32 %175, %5
  br i1 %176, label %177, label %162

177:                                              ; preds = %162, %160, %133
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %139, ptr noundef %4)
  %178 = load ptr, ptr %1, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %178, ptr noundef %4)
  %179 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 2
  %180 = load i8, ptr %179, align 4
  %181 = zext i8 %180 to i32
  call void @vli_mod_inv(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %16, i32 noundef %181)
  %182 = load ptr, ptr %88, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %182, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef %138, ptr noundef %4)
  call fastcc void @xycz_add(ptr noundef %140, ptr noundef %141, ptr noundef %138, ptr noundef %139, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false) #20, !annotation !8
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef %4) #20
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  %183 = load ptr, ptr %0, align 4
  br i1 %19, label %201, label %184

184:                                              ; preds = %184, %177
  %185 = phi i32 [ %189, %184 ], [ 0, %177 ]
  %186 = getelementptr i64, ptr %11, i32 %185
  %187 = load i64, ptr %186, align 8
  %188 = getelementptr i64, ptr %183, i32 %185
  store i64 %187, ptr %188, align 8
  %189 = add nuw i32 %185, 1
  %190 = icmp eq i32 %189, %5
  br i1 %190, label %191, label %184

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.ecc_point, ptr %0, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  br label %194

194:                                              ; preds = %194, %191
  %195 = phi i32 [ %199, %194 ], [ 0, %191 ]
  %196 = getelementptr i64, ptr %12, i32 %195
  %197 = load i64, ptr %196, align 8
  %198 = getelementptr i64, ptr %193, i32 %195
  store i64 %197, ptr %198, align 8
  %199 = add nuw i32 %195, 1
  %200 = icmp eq i32 %199, %5
  br i1 %200, label %201, label %194

201:                                              ; preds = %194, %177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_is_pubkey_valid_full(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call i32 @ecc_is_pubkey_valid_partial(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call ptr @ecc_alloc_point(i32 noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %6, align 4
  %15 = zext i8 %14 to i32
  tail call fastcc void @ecc_point_mult(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %13, ptr noundef null, ptr noundef %0, i32 noundef %15)
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.ecc_point, ptr %9, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %11
  %22 = load i64, ptr %16, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %28, %21
  %25 = phi i32 [ %26, %28 ], [ 0, %21 ]
  %26 = add nuw nsw i32 %25, 1
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr i64, ptr %16, i32 %26
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %24, label %32

32:                                               ; preds = %28
  %33 = icmp ult i32 %26, %19
  br i1 %33, label %50, label %34

34:                                               ; preds = %32, %24
  %35 = getelementptr inbounds %struct.ecc_point, ptr %9, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %43, %34
  %40 = phi i32 [ %41, %43 ], [ 0, %34 ]
  %41 = add nuw nsw i32 %40, 1
  %42 = icmp eq i32 %41, %19
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr i64, ptr %36, i32 %41
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %39, label %47

47:                                               ; preds = %43
  %48 = icmp ult i32 %41, %19
  br i1 %48, label %50, label %49

49:                                               ; preds = %47, %39, %11
  br label %50

50:                                               ; preds = %49, %47, %34, %32, %21
  %51 = phi i32 [ 0, %49 ], [ -22, %47 ], [ -22, %32 ], [ -22, %21 ], [ -22, %34 ]
  tail call void @kfree_sensitive(ptr noundef %16) #20
  %52 = getelementptr inbounds %struct.ecc_point, ptr %9, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree_sensitive(ptr noundef %53) #20
  tail call void @kfree_sensitive(ptr noundef nonnull %9) #20
  br label %54

54:                                               ; preds = %50, %5, %2
  %55 = phi i32 [ %51, %50 ], [ %3, %2 ], [ -12, %5 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ecc_is_pubkey_valid_partial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [8 x i64], align 8
  %4 = alloca [8 x i64], align 8
  %5 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 1, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %7, %9
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1553, i32 noundef 9, ptr noundef null) #20
  br label %190

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  %14 = zext i8 %7 to i32
  %15 = icmp eq i8 %7, 0
  br i1 %15, label %190, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %13, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %21, %23 ], [ 0, %16 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i64, ptr %13, i32 %21
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %19, label %27

27:                                               ; preds = %23
  %28 = icmp ult i32 %21, %14
  br i1 %28, label %44, label %29

29:                                               ; preds = %27, %19
  %30 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %38, %29
  %35 = phi i32 [ %36, %38 ], [ 0, %29 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = icmp eq i32 %36, %14
  br i1 %37, label %190, label %38

38:                                               ; preds = %34
  %39 = getelementptr i64, ptr %31, i32 %36
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %34, label %42

42:                                               ; preds = %38
  %43 = icmp ult i32 %36, %14
  br i1 %43, label %44, label %190

44:                                               ; preds = %42, %29, %27, %16
  %45 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %57, %44
  %48 = phi i32 [ %14, %44 ], [ %49, %57 ]
  %49 = add nsw i32 %48, -1
  %50 = icmp sgt i32 %48, 0
  br i1 %50, label %51, label %190

51:                                               ; preds = %47
  %52 = getelementptr i64, ptr %46, i32 %49
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr i64, ptr %13, i32 %49
  %55 = load i64, ptr %54, align 8
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = icmp ult i64 %53, %55
  br i1 %58, label %190, label %47

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ecc_point, ptr %1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %72, %59
  %63 = phi i32 [ %14, %59 ], [ %64, %72 ]
  %64 = add nsw i32 %63, -1
  %65 = icmp sgt i32 %63, 0
  br i1 %65, label %66, label %190

66:                                               ; preds = %62
  %67 = getelementptr i64, ptr %46, i32 %64
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr i64, ptr %61, i32 %64
  %70 = load i64, ptr %69, align 8
  %71 = icmp ugt i64 %68, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = icmp ult i64 %68, %70
  br i1 %73, label %190, label %62

74:                                               ; preds = %66
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %3, ptr noundef %61, ptr noundef %0)
  %75 = load ptr, ptr %1, align 4
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %4, ptr noundef %75, ptr noundef %0)
  %76 = load ptr, ptr %1, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %76, ptr noundef %0)
  %77 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %1, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %5, ptr noundef %78, ptr noundef %79, ptr noundef %0)
  %80 = getelementptr inbounds %struct.ecc_curve, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %45, align 4
  %83 = load i8, ptr %6, align 4
  %84 = zext i8 %83 to i32
  %85 = icmp eq i8 %83, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %86, %74
  %87 = phi i32 [ %99, %86 ], [ 0, %74 ]
  %88 = phi i64 [ %98, %86 ], [ 0, %74 ]
  %89 = getelementptr i64, ptr %5, i32 %87
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr i64, ptr %81, i32 %87
  %92 = load i64, ptr %91, align 8
  %93 = add i64 %90, %88
  %94 = add i64 %93, %92
  %95 = icmp eq i64 %94, %90
  %96 = icmp ult i64 %94, %90
  %97 = zext i1 %96 to i64
  %98 = select i1 %95, i64 %88, i64 %97
  store i64 %94, ptr %89, align 8
  %99 = add nuw nsw i32 %87, 1
  %100 = icmp eq i32 %99, %84
  br i1 %100, label %101, label %86

101:                                              ; preds = %86
  %102 = icmp eq i64 %98, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %101, %74
  br label %104

104:                                              ; preds = %114, %103
  %105 = phi i32 [ %106, %114 ], [ %84, %103 ]
  %106 = add nsw i32 %105, -1
  %107 = icmp sgt i32 %105, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr i64, ptr %5, i32 %106
  %110 = load i64, ptr %109, align 8
  %111 = getelementptr i64, ptr %82, i32 %106
  %112 = load i64, ptr %111, align 8
  %113 = icmp ugt i64 %110, %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = icmp ult i64 %110, %112
  br i1 %115, label %132, label %104

116:                                              ; preds = %108, %104, %101
  br i1 %85, label %150, label %117

117:                                              ; preds = %117, %116
  %118 = phi i32 [ %130, %117 ], [ 0, %116 ]
  %119 = phi i64 [ %129, %117 ], [ 0, %116 ]
  %120 = getelementptr i64, ptr %5, i32 %118
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr i64, ptr %82, i32 %118
  %123 = load i64, ptr %122, align 8
  %124 = add i64 %123, %119
  %125 = sub i64 %121, %124
  %126 = icmp eq i64 %124, 0
  %127 = icmp ult i64 %121, %124
  %128 = zext i1 %127 to i64
  %129 = select i1 %126, i64 %119, i64 %128
  store i64 %125, ptr %120, align 8
  %130 = add nuw nsw i32 %118, 1
  %131 = icmp eq i32 %130, %84
  br i1 %131, label %132, label %117

132:                                              ; preds = %117, %114
  br i1 %85, label %150, label %133

133:                                              ; preds = %133, %132
  %134 = phi i32 [ %146, %133 ], [ 0, %132 ]
  %135 = phi i64 [ %145, %133 ], [ 0, %132 ]
  %136 = getelementptr i64, ptr %5, i32 %134
  %137 = load i64, ptr %136, align 8
  %138 = getelementptr i64, ptr %4, i32 %134
  %139 = load i64, ptr %138, align 8
  %140 = add i64 %137, %135
  %141 = add i64 %140, %139
  %142 = icmp eq i64 %141, %137
  %143 = icmp ult i64 %141, %137
  %144 = zext i1 %143 to i64
  %145 = select i1 %142, i64 %135, i64 %144
  store i64 %141, ptr %136, align 8
  %146 = add nuw nsw i32 %134, 1
  %147 = icmp eq i32 %146, %84
  br i1 %147, label %148, label %133

148:                                              ; preds = %133
  %149 = icmp eq i64 %145, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %148, %132, %116
  br label %151

151:                                              ; preds = %161, %150
  %152 = phi i32 [ %153, %161 ], [ %84, %150 ]
  %153 = add nsw i32 %152, -1
  %154 = icmp sgt i32 %152, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = getelementptr i64, ptr %5, i32 %153
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr i64, ptr %82, i32 %153
  %159 = load i64, ptr %158, align 8
  %160 = icmp ugt i64 %157, %159
  br i1 %160, label %163, label %161

161:                                              ; preds = %155
  %162 = icmp ult i64 %157, %159
  br i1 %162, label %179, label %151

163:                                              ; preds = %155, %151, %148
  br i1 %85, label %179, label %164

164:                                              ; preds = %164, %163
  %165 = phi i32 [ %177, %164 ], [ 0, %163 ]
  %166 = phi i64 [ %176, %164 ], [ 0, %163 ]
  %167 = getelementptr i64, ptr %5, i32 %165
  %168 = load i64, ptr %167, align 8
  %169 = getelementptr i64, ptr %82, i32 %165
  %170 = load i64, ptr %169, align 8
  %171 = add i64 %170, %166
  %172 = sub i64 %168, %171
  %173 = icmp eq i64 %171, 0
  %174 = icmp ult i64 %168, %171
  %175 = zext i1 %174 to i64
  %176 = select i1 %173, i64 %166, i64 %175
  store i64 %172, ptr %167, align 8
  %177 = add nuw nsw i32 %165, 1
  %178 = icmp eq i32 %177, %84
  br i1 %178, label %179, label %164

179:                                              ; preds = %164, %163, %161
  br label %180

180:                                              ; preds = %183, %179
  %181 = phi i32 [ %184, %183 ], [ %84, %179 ]
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = add nsw i32 %181, -1
  %185 = getelementptr i64, ptr %3, i32 %184
  %186 = load i64, ptr %185, align 8
  %187 = getelementptr i64, ptr %5, i32 %184
  %188 = load i64, ptr %187, align 8
  %189 = icmp eq i64 %186, %188
  br i1 %189, label %180, label %190

190:                                              ; preds = %183, %180, %72, %62, %57, %47, %42, %34, %12, %11
  %191 = phi i32 [ -22, %11 ], [ -22, %42 ], [ -22, %12 ], [ -22, %183 ], [ 0, %180 ], [ -22, %72 ], [ -22, %62 ], [ -22, %57 ], [ -22, %47 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret i32 %191
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vli_mod_square_fast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca [16 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.ecc_curve, ptr %2, i32 0, i32 1, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = add nsw i32 %8, -1
  br label %10

10:                                               ; preds = %70, %3
  %11 = phi i32 [ 0, %3 ], [ %15, %70 ]
  %12 = phi i64 [ 0, %3 ], [ %73, %70 ]
  %13 = phi i64 [ 0, %3 ], [ %72, %70 ]
  %14 = icmp ult i32 %11, %7
  %15 = add nuw i32 %11, 1
  %16 = sub i32 %15, %7
  %17 = select i1 %14, i32 0, i32 %16
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %70, label %19

19:                                               ; preds = %56, %10
  %20 = phi i32 [ %68, %56 ], [ %17, %10 ]
  %21 = phi i64 [ %67, %56 ], [ 0, %10 ]
  %22 = phi i64 [ %64, %56 ], [ %12, %10 ]
  %23 = phi i64 [ %60, %56 ], [ %13, %10 ]
  %24 = sub i32 %11, %20
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %70, label %26

26:                                               ; preds = %19
  %27 = getelementptr i64, ptr %1, i32 %20
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr i64, ptr %1, i32 %24
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %28, 4294967295
  %32 = lshr i64 %28, 32
  %33 = and i64 %30, 4294967295
  %34 = lshr i64 %30, 32
  %35 = mul nuw i64 %33, %31
  %36 = mul nuw i64 %34, %31
  %37 = mul nuw i64 %33, %32
  %38 = mul nuw i64 %34, %32
  %39 = lshr i64 %35, 32
  %40 = add i64 %36, %37
  %41 = add i64 %40, %39
  %42 = icmp ult i64 %41, %36
  %43 = add nuw i64 %38, 4294967296
  %44 = select i1 %42, i64 %43, i64 %38
  %45 = and i64 %35, 4294967295
  %46 = shl i64 %41, 32
  %47 = or i64 %46, %45
  %48 = lshr i64 %41, 32
  %49 = add i64 %44, %48
  %50 = icmp slt i32 %20, %24
  br i1 %50, label %51, label %56

51:                                               ; preds = %26
  %52 = lshr i64 %49, 63
  %53 = add i64 %52, %21
  %54 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %46, i64 1) #20
  %55 = shl i64 %47, 1
  br label %56

56:                                               ; preds = %51, %26
  %57 = phi i64 [ %53, %51 ], [ %21, %26 ]
  %58 = phi i64 [ %55, %51 ], [ %47, %26 ]
  %59 = phi i64 [ %54, %51 ], [ %49, %26 ]
  %60 = add i64 %58, %23
  %61 = add i64 %59, %22
  %62 = icmp ult i64 %60, %23
  %63 = zext i1 %62 to i64
  %64 = add i64 %61, %63
  %65 = icmp ult i64 %64, %59
  %66 = zext i1 %65 to i64
  %67 = add i64 %57, %66
  %68 = add i32 %20, 1
  %69 = icmp slt i32 %11, %68
  br i1 %69, label %70, label %19

70:                                               ; preds = %56, %19, %10
  %71 = phi i64 [ %13, %10 ], [ %23, %19 ], [ %60, %56 ]
  %72 = phi i64 [ %12, %10 ], [ %22, %19 ], [ %64, %56 ]
  %73 = phi i64 [ 0, %10 ], [ %21, %19 ], [ %67, %56 ]
  %74 = getelementptr i64, ptr %4, i32 %11
  store i64 %71, ptr %74, align 8
  %75 = icmp eq i32 %15, %9
  br i1 %75, label %76, label %10

76:                                               ; preds = %70
  %77 = getelementptr i64, ptr %4, i32 %9
  store i64 %72, ptr %77, align 8
  call fastcc void @vli_mmod_fast(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_ecdh_shared_secret(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4) #1 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  %8 = add i32 %0, -1
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %173

10:                                               ; preds = %5
  %11 = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = or i1 %13, %14
  %16 = icmp ugt i32 %1, 8
  %17 = or i1 %16, %15
  br i1 %17, label %173, label %18

18:                                               ; preds = %10
  %19 = shl nuw nsw i32 %1, 3
  call void @get_random_bytes(ptr noundef nonnull %7, i32 noundef %19) #20
  %20 = call ptr @ecc_alloc_point(i32 noundef %1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %173, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 4
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %96, label %25

25:                                               ; preds = %22
  %26 = add i32 %1, -1
  %27 = getelementptr i64, ptr %3, i32 %26
  %28 = load i64, ptr %27, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28) #20
  store i64 %29, ptr %23, align 8
  %30 = icmp eq i32 %1, 1
  br i1 %30, label %79, label %31

31:                                               ; preds = %25
  %32 = add i32 %1, -2
  %33 = getelementptr i64, ptr %3, i32 %32
  %34 = load i64, ptr %33, align 1
  %35 = call i64 @llvm.bswap.i64(i64 %34) #20
  %36 = getelementptr i64, ptr %23, i32 1
  store i64 %35, ptr %36, align 8
  %37 = icmp eq i32 %1, 2
  br i1 %37, label %79, label %38

38:                                               ; preds = %31
  %39 = add i32 %1, -3
  %40 = getelementptr i64, ptr %3, i32 %39
  %41 = load i64, ptr %40, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #20
  %43 = getelementptr i64, ptr %23, i32 2
  store i64 %42, ptr %43, align 8
  %44 = icmp eq i32 %1, 3
  br i1 %44, label %79, label %45

45:                                               ; preds = %38
  %46 = add i32 %1, -4
  %47 = getelementptr i64, ptr %3, i32 %46
  %48 = load i64, ptr %47, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48) #20
  %50 = getelementptr i64, ptr %23, i32 3
  store i64 %49, ptr %50, align 8
  %51 = icmp eq i32 %1, 4
  br i1 %51, label %79, label %52

52:                                               ; preds = %45
  %53 = add i32 %1, -5
  %54 = getelementptr i64, ptr %3, i32 %53
  %55 = load i64, ptr %54, align 1
  %56 = call i64 @llvm.bswap.i64(i64 %55) #20
  %57 = getelementptr i64, ptr %23, i32 4
  store i64 %56, ptr %57, align 8
  %58 = icmp eq i32 %1, 5
  br i1 %58, label %79, label %59

59:                                               ; preds = %52
  %60 = add i32 %1, -6
  %61 = getelementptr i64, ptr %3, i32 %60
  %62 = load i64, ptr %61, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62) #20
  %64 = getelementptr i64, ptr %23, i32 5
  store i64 %63, ptr %64, align 8
  %65 = icmp eq i32 %1, 6
  br i1 %65, label %79, label %66

66:                                               ; preds = %59
  %67 = add i32 %1, -7
  %68 = getelementptr i64, ptr %3, i32 %67
  %69 = load i64, ptr %68, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69) #20
  %71 = getelementptr i64, ptr %23, i32 6
  store i64 %70, ptr %71, align 8
  %72 = icmp eq i32 %1, 7
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = add i32 %1, -8
  %75 = getelementptr i64, ptr %3, i32 %74
  %76 = load i64, ptr %75, align 1
  %77 = call i64 @llvm.bswap.i64(i64 %76) #20
  %78 = getelementptr i64, ptr %23, i32 7
  store i64 %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %73, %66, %59, %52, %45, %38, %31, %25
  %80 = getelementptr i64, ptr %3, i32 %1
  %81 = getelementptr inbounds %struct.ecc_point, ptr %20, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %91, %83 ], [ 0, %79 ]
  %85 = xor i32 %84, -1
  %86 = add i32 %85, %1
  %87 = getelementptr i64, ptr %80, i32 %86
  %88 = load i64, ptr %87, align 1
  %89 = call i64 @llvm.bswap.i64(i64 %88) #20
  %90 = getelementptr i64, ptr %82, i32 %84
  store i64 %89, ptr %90, align 8
  %91 = add nuw nsw i32 %84, 1
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %93, label %83

93:                                               ; preds = %83
  %94 = call i32 @ecc_is_pubkey_valid_partial(ptr noundef nonnull %12, ptr noundef nonnull %20)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %168

96:                                               ; preds = %22
  %97 = getelementptr inbounds %struct.ecc_point, ptr %20, i32 0, i32 1
  %98 = call i32 @ecc_is_pubkey_valid_partial(ptr noundef nonnull %12, ptr noundef nonnull %20)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %168

100:                                              ; preds = %93
  br i1 %24, label %111, label %101

101:                                              ; preds = %101, %100
  %102 = phi i32 [ %109, %101 ], [ 0, %100 ]
  %103 = xor i32 %102, -1
  %104 = add i32 %103, %1
  %105 = getelementptr i64, ptr %2, i32 %104
  %106 = load i64, ptr %105, align 1
  %107 = call i64 @llvm.bswap.i64(i64 %106) #20
  %108 = getelementptr i64, ptr %6, i32 %102
  store i64 %107, ptr %108, align 8
  %109 = add nuw i32 %102, 1
  %110 = icmp eq i32 %109, %1
  br i1 %110, label %111, label %101

111:                                              ; preds = %101, %100, %96
  %112 = phi ptr [ %81, %100 ], [ %97, %96 ], [ %81, %101 ]
  %113 = call ptr @ecc_alloc_point(i32 noundef %1)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %168, label %115

115:                                              ; preds = %111
  call fastcc void @ecc_point_mult(ptr noundef nonnull %113, ptr noundef nonnull %20, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %12, i32 noundef %1)
  %116 = load ptr, ptr %113, align 4
  %117 = getelementptr inbounds %struct.ecc_point, ptr %113, i32 0, i32 2
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i32
  %120 = icmp eq i8 %118, 0
  br i1 %120, label %163, label %121

121:                                              ; preds = %115
  %122 = load i64, ptr %116, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %128, %121
  %125 = phi i32 [ %126, %128 ], [ 0, %121 ]
  %126 = add nuw nsw i32 %125, 1
  %127 = icmp eq i32 %126, %119
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr i64, ptr %116, i32 %126
  %130 = load i64, ptr %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %124, label %132

132:                                              ; preds = %128
  %133 = icmp ult i32 %126, %119
  br i1 %133, label %151, label %134

134:                                              ; preds = %132, %124
  %135 = getelementptr inbounds %struct.ecc_point, ptr %113, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load i64, ptr %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %143, %134
  %140 = phi i32 [ %141, %143 ], [ 0, %134 ]
  %141 = add nuw nsw i32 %140, 1
  %142 = icmp eq i32 %141, %119
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = getelementptr i64, ptr %136, i32 %141
  %145 = load i64, ptr %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %139, label %147

147:                                              ; preds = %143
  %148 = icmp uge i32 %141, %119
  %149 = or i1 %24, %148
  %150 = select i1 %148, i32 -14, i32 0
  br i1 %149, label %163, label %152

151:                                              ; preds = %134, %132, %121
  br i1 %24, label %163, label %152

152:                                              ; preds = %151, %147
  br label %153

153:                                              ; preds = %153, %152
  %154 = phi i32 [ %161, %153 ], [ 0, %152 ]
  %155 = xor i32 %154, -1
  %156 = add i32 %155, %1
  %157 = getelementptr i64, ptr %116, i32 %156
  %158 = load i64, ptr %157, align 1
  %159 = call i64 @llvm.bswap.i64(i64 %158) #20
  %160 = getelementptr i64, ptr %4, i32 %154
  store i64 %159, ptr %160, align 8
  %161 = add nuw i32 %154, 1
  %162 = icmp eq i32 %161, %1
  br i1 %162, label %163, label %153

163:                                              ; preds = %153, %151, %147, %139, %115
  %164 = phi i32 [ %150, %147 ], [ 0, %151 ], [ -14, %115 ], [ 0, %153 ], [ -14, %139 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false) #20
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %6) #20, !srcloc !10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false) #20
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %7) #20, !srcloc !10
  %165 = load ptr, ptr %113, align 4
  call void @kfree_sensitive(ptr noundef %165) #20
  %166 = getelementptr inbounds %struct.ecc_point, ptr %113, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  call void @kfree_sensitive(ptr noundef %167) #20
  call void @kfree_sensitive(ptr noundef nonnull %113) #20
  br label %168

168:                                              ; preds = %163, %111, %96, %93
  %169 = phi ptr [ %81, %93 ], [ %112, %163 ], [ %112, %111 ], [ %97, %96 ]
  %170 = phi i32 [ %94, %93 ], [ %164, %163 ], [ -12, %111 ], [ %98, %96 ]
  %171 = load ptr, ptr %20, align 4
  call void @kfree_sensitive(ptr noundef %171) #20
  %172 = load ptr, ptr %169, align 4
  call void @kfree_sensitive(ptr noundef %172) #20
  call void @kfree_sensitive(ptr noundef nonnull %20) #20
  br label %173

173:                                              ; preds = %168, %18, %10, %5
  %174 = phi i32 [ %170, %168 ], [ -22, %10 ], [ -12, %18 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vli_mmod_fast(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca [16 x i64], align 8
  %5 = alloca [16 x i64], align 8
  %6 = alloca [8 x i64], align 8
  %7 = alloca [16 x i64], align 8
  %8 = alloca [16 x i64], align 8
  %9 = alloca [16 x i64], align 8
  %10 = alloca [16 x i64], align 8
  %11 = alloca [16 x i64], align 8
  %12 = getelementptr inbounds %struct.ecc_curve, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ecc_curve, ptr %2, i32 0, i32 1, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %596, label %20

20:                                               ; preds = %3
  %21 = add nsw i32 %16, -1
  %22 = getelementptr i64, ptr %13, i32 %21
  %23 = load i64, ptr %22, align 8
  switch i64 %23, label %366 [
    i64 -1, label %24
    i64 -9223372036854775808, label %135
  ]

24:                                               ; preds = %20
  %25 = load i64, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %10, i8 0, i32 128, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %11, i8 0, i32 128, i1 false) #20, !annotation !8
  %26 = shl nuw nsw i32 %16, 1
  %27 = icmp eq i8 %15, 0
  br i1 %27, label %100, label %28

28:                                               ; preds = %24
  %29 = shl nuw nsw i32 %16, 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %11, ptr align 8 %1, i32 %29, i1 false) #20
  %30 = getelementptr i64, ptr %11, i32 %16
  %31 = trunc i64 %25 to i32
  %32 = sub i32 0, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr i64, ptr %10, i32 %16
  %35 = add nuw nsw i32 %16, 1
  %36 = icmp ult i32 %35, %26
  %37 = shl nuw nsw i32 %16, 3
  %38 = add nuw nsw i32 %37, 8
  %39 = getelementptr i8, ptr %10, i32 %38
  %40 = xor i32 %16, -1
  %41 = add nsw i32 %26, %40
  %42 = shl nuw nsw i32 %41, 3
  br label %43

43:                                               ; preds = %84, %28
  %44 = load i64, ptr %30, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %50, %43
  %47 = phi i32 [ %48, %50 ], [ 0, %43 ]
  %48 = add nuw nsw i32 %47, 1
  %49 = icmp eq i32 %48, %16
  br i1 %49, label %99, label %50

50:                                               ; preds = %46
  %51 = getelementptr i64, ptr %30, i32 %48
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %46, label %54

54:                                               ; preds = %50
  %55 = icmp ult i32 %48, %16
  br i1 %55, label %56, label %99

56:                                               ; preds = %54, %43
  br label %57

57:                                               ; preds = %78, %56
  %58 = phi i64 [ %80, %78 ], [ %44, %56 ]
  %59 = phi i32 [ %76, %78 ], [ 0, %56 ]
  %60 = phi i64 [ %74, %78 ], [ 0, %56 ]
  %61 = and i64 %58, 4294967295
  %62 = lshr i64 %58, 32
  %63 = mul nuw i64 %61, %33
  %64 = mul nuw i64 %62, %33
  %65 = lshr i64 %63, 32
  %66 = add nuw i64 %65, %64
  %67 = and i64 %63, 4294967295
  %68 = shl i64 %66, 32
  %69 = lshr i64 %66, 32
  %70 = add nuw nsw i64 %67, %60
  %71 = add i64 %70, %68
  %72 = icmp ult i64 %71, %60
  %73 = zext i1 %72 to i64
  %74 = add nuw nsw i64 %69, %73
  %75 = getelementptr i64, ptr %10, i32 %59
  store i64 %71, ptr %75, align 8
  %76 = add nuw nsw i32 %59, 1
  %77 = icmp eq i32 %76, %16
  br i1 %77, label %81, label %78

78:                                               ; preds = %57
  %79 = getelementptr i64, ptr %30, i32 %76
  %80 = load i64, ptr %79, align 8
  br label %57

81:                                               ; preds = %57
  store i64 %74, ptr %34, align 8
  br i1 %36, label %82, label %83

82:                                               ; preds = %81
  call void @llvm.memset.p0.i32(ptr align 8 %39, i8 0, i32 %42, i1 false) #20
  br label %83

83:                                               ; preds = %82, %81
  call void @llvm.memset.p0.i32(ptr align 8 %30, i8 0, i32 %37, i1 false) #20
  br label %84

84:                                               ; preds = %84, %83
  %85 = phi i32 [ %97, %84 ], [ 0, %83 ]
  %86 = phi i64 [ %96, %84 ], [ 0, %83 ]
  %87 = getelementptr i64, ptr %11, i32 %85
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr i64, ptr %10, i32 %85
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %88, %86
  %92 = add i64 %91, %90
  %93 = icmp eq i64 %92, %88
  %94 = icmp ult i64 %92, %88
  %95 = zext i1 %94 to i64
  %96 = select i1 %93, i64 %86, i64 %95
  store i64 %92, ptr %87, align 8
  %97 = add nuw nsw i32 %85, 1
  %98 = icmp eq i32 %97, %26
  br i1 %98, label %43, label %84

99:                                               ; preds = %54, %46
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %10, ptr align 8 %13, i32 %37, i1 false) #20
  call void @llvm.memset.p0.i32(ptr align 8 %34, i8 0, i32 %37, i1 false) #20
  br label %100

100:                                              ; preds = %99, %24
  br label %101

101:                                              ; preds = %113, %100
  %102 = phi i32 [ %26, %100 ], [ %114, %113 ]
  %103 = add nsw i32 %102, -1
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = getelementptr i64, ptr %11, i32 %103
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr i64, ptr %10, i32 %103
  %109 = load i64, ptr %108, align 8
  %110 = icmp ugt i64 %107, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = icmp ult i64 %107, %109
  br i1 %112, label %131, label %113

113:                                              ; preds = %116, %115, %111
  %114 = phi i32 [ %103, %111 ], [ %26, %115 ], [ %26, %116 ]
  br label %101

115:                                              ; preds = %105, %101
  br i1 %27, label %113, label %116

116:                                              ; preds = %116, %115
  %117 = phi i32 [ %129, %116 ], [ 0, %115 ]
  %118 = phi i64 [ %128, %116 ], [ 0, %115 ]
  %119 = getelementptr i64, ptr %11, i32 %117
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr i64, ptr %10, i32 %117
  %122 = load i64, ptr %121, align 8
  %123 = add i64 %122, %118
  %124 = sub i64 %120, %123
  %125 = icmp eq i64 %123, 0
  %126 = icmp ult i64 %120, %123
  %127 = zext i1 %126 to i64
  %128 = select i1 %125, i64 %118, i64 %127
  store i64 %124, ptr %119, align 8
  %129 = add nuw nsw i32 %117, 1
  %130 = icmp eq i32 %129, %26
  br i1 %130, label %113, label %116

131:                                              ; preds = %111
  br i1 %27, label %134, label %132

132:                                              ; preds = %131
  %133 = shl nuw nsw i32 %16, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %0, ptr nonnull align 8 %11, i32 %133, i1 false) #20
  br label %134

134:                                              ; preds = %132, %131
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #20
  br label %1564

135:                                              ; preds = %20
  %136 = add nsw i32 %16, -2
  %137 = getelementptr i64, ptr %13, i32 %136
  %138 = load i64, ptr %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %366

140:                                              ; preds = %135
  %141 = load i64, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i32 128, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %8, i8 0, i32 128, i1 false) #20, !annotation !8
  %142 = icmp eq i8 %15, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = shl nuw nsw i32 %16, 3
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %8, ptr align 8 %13, i32 %144, i1 false) #20
  %145 = getelementptr i64, ptr %8, i32 %16
  call void @llvm.memset.p0.i32(ptr align 8 %145, i8 0, i32 %144, i1 false) #20
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %7, ptr align 8 %1, i32 %144, i1 false) #20
  %146 = getelementptr i64, ptr %1, i32 %16
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 8 %146, i32 %144, i1 false) #20
  %147 = getelementptr i64, ptr %7, i32 %16
  call void @llvm.memset.p0.i32(ptr align 8 %147, i8 0, i32 %144, i1 false) #20
  br label %148

148:                                              ; preds = %143, %140
  %149 = add nuw nsw i32 %16, 67108863
  %150 = and i32 %149, 67108863
  %151 = getelementptr i64, ptr %7, i32 %150
  %152 = load i64, ptr %151, align 8
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = getelementptr [16 x i64], ptr %7, i32 0, i32 %21
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 9223372036854775807
  store i64 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %148
  %159 = trunc i64 %141 to i32
  %160 = shl i32 %159, 1
  %161 = zext i32 %160 to i64
  %162 = getelementptr i64, ptr %9, i32 %16
  %163 = shl nuw nsw i32 %16, 1
  %164 = add nuw nsw i32 %16, 1
  %165 = icmp ult i32 %164, %163
  %166 = shl nuw nsw i32 %16, 3
  %167 = add nuw nsw i32 %166, 8
  %168 = getelementptr i8, ptr %9, i32 %167
  %169 = xor i32 %16, -1
  %170 = add nsw i32 %163, %169
  %171 = shl nuw nsw i32 %170, 3
  %172 = getelementptr i64, ptr %9, i32 %150
  %173 = getelementptr [16 x i64], ptr %9, i32 0, i32 %21
  br label %174

174:                                              ; preds = %308, %158
  %175 = phi i1 [ %153, %158 ], [ %269, %308 ]
  %176 = phi i32 [ 1, %158 ], [ %309, %308 ]
  br i1 %175, label %197, label %177

177:                                              ; preds = %174
  br i1 %142, label %181, label %178

178:                                              ; preds = %177
  %179 = load i64, ptr %6, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %187, label %237

181:                                              ; preds = %195, %187, %177
  %182 = add nuw nsw i32 %163, 67108863
  %183 = and i32 %182, 67108863
  %184 = getelementptr i64, ptr %7, i32 %183
  %185 = load i64, ptr %184, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %310, label %332

187:                                              ; preds = %191, %178
  %188 = phi i32 [ %189, %191 ], [ 0, %178 ]
  %189 = add nuw nsw i32 %188, 1
  %190 = icmp eq i32 %189, %16
  br i1 %190, label %181, label %191

191:                                              ; preds = %187
  %192 = getelementptr i64, ptr %6, i32 %189
  %193 = load i64, ptr %192, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %187, label %195

195:                                              ; preds = %191
  %196 = icmp ult i32 %189, %16
  br i1 %196, label %236, label %181

197:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i32 128, i1 false) #20, !annotation !8
  br i1 %142, label %220, label %198

198:                                              ; preds = %198, %197
  %199 = phi i32 [ %218, %198 ], [ 0, %197 ]
  %200 = phi i64 [ %216, %198 ], [ 0, %197 ]
  %201 = getelementptr i64, ptr %6, i32 %199
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 4294967295
  %204 = lshr i64 %202, 32
  %205 = mul nuw i64 %203, %161
  %206 = mul nuw i64 %204, %161
  %207 = lshr i64 %205, 32
  %208 = add nuw i64 %207, %206
  %209 = and i64 %205, 4294967294
  %210 = shl i64 %208, 32
  %211 = lshr i64 %208, 32
  %212 = add nuw nsw i64 %209, %200
  %213 = add i64 %212, %210
  %214 = icmp ult i64 %213, %200
  %215 = zext i1 %214 to i64
  %216 = add nuw nsw i64 %211, %215
  %217 = getelementptr i64, ptr %9, i32 %199
  store i64 %213, ptr %217, align 8
  %218 = add nuw nsw i32 %199, 1
  %219 = icmp eq i32 %218, %16
  br i1 %219, label %220, label %198

220:                                              ; preds = %198, %197
  %221 = phi i64 [ 0, %197 ], [ %216, %198 ]
  store i64 %221, ptr %162, align 8
  br i1 %165, label %222, label %223

222:                                              ; preds = %220
  call void @llvm.memset.p0.i32(ptr align 8 %168, i8 0, i32 %171, i1 false) #20
  br label %223

223:                                              ; preds = %222, %220
  br i1 %142, label %267, label %224

224:                                              ; preds = %224, %223
  %225 = phi i32 [ %234, %224 ], [ 0, %223 ]
  %226 = phi i64 [ %233, %224 ], [ %141, %223 ]
  %227 = getelementptr i64, ptr %9, i32 %225
  %228 = load i64, ptr %227, align 8
  %229 = add i64 %228, %226
  %230 = icmp ne i64 %226, 0
  %231 = icmp ult i64 %229, %228
  %232 = select i1 %230, i1 %231, i1 false
  %233 = zext i1 %232 to i64
  store i64 %229, ptr %227, align 8
  %234 = add nuw nsw i32 %225, 1
  %235 = icmp eq i32 %234, %163
  br i1 %235, label %265, label %224

236:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #20
  br label %238

237:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #20
  br label %238

238:                                              ; preds = %237, %236
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %9, i8 0, i32 128, i1 false) #20
  br label %239

239:                                              ; preds = %260, %238
  %240 = phi i64 [ %179, %238 ], [ %262, %260 ]
  %241 = phi i32 [ 0, %238 ], [ %258, %260 ]
  %242 = phi i64 [ 0, %238 ], [ %256, %260 ]
  %243 = and i64 %240, 4294967295
  %244 = lshr i64 %240, 32
  %245 = mul nuw i64 %243, %161
  %246 = mul nuw i64 %244, %161
  %247 = lshr i64 %245, 32
  %248 = add nuw i64 %247, %246
  %249 = and i64 %245, 4294967294
  %250 = shl i64 %248, 32
  %251 = lshr i64 %248, 32
  %252 = add nuw nsw i64 %249, %242
  %253 = add i64 %252, %250
  %254 = icmp ult i64 %253, %242
  %255 = zext i1 %254 to i64
  %256 = add nuw nsw i64 %251, %255
  %257 = getelementptr i64, ptr %9, i32 %241
  store i64 %253, ptr %257, align 8
  %258 = add nuw i32 %241, 1
  %259 = icmp eq i32 %258, %16
  br i1 %259, label %263, label %260

260:                                              ; preds = %239
  %261 = getelementptr i64, ptr %6, i32 %258
  %262 = load i64, ptr %261, align 8
  br label %239

263:                                              ; preds = %239
  store i64 %256, ptr %162, align 8
  br i1 %165, label %264, label %265

264:                                              ; preds = %263
  call void @llvm.memset.p0.i32(ptr align 8 %168, i8 0, i32 %171, i1 false) #20
  br label %265

265:                                              ; preds = %264, %263, %224
  br i1 %142, label %267, label %266

266:                                              ; preds = %265
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 8 %162, i32 %166, i1 false) #20
  call void @llvm.memset.p0.i32(ptr align 8 %162, i8 0, i32 %166, i1 false) #20
  br label %267

267:                                              ; preds = %266, %265, %223
  %268 = load i64, ptr %172, align 8
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i64, ptr %173, align 8
  %272 = and i64 %271, 9223372036854775807
  store i64 %272, ptr %173, align 8
  br label %273

273:                                              ; preds = %270, %267
  %274 = and i32 %176, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %292, label %276

276:                                              ; preds = %273
  br i1 %142, label %308, label %277

277:                                              ; preds = %277, %276
  %278 = phi i32 [ %290, %277 ], [ 0, %276 ]
  %279 = phi i64 [ %289, %277 ], [ 0, %276 ]
  %280 = getelementptr i64, ptr %7, i32 %278
  %281 = load i64, ptr %280, align 8
  %282 = getelementptr i64, ptr %9, i32 %278
  %283 = load i64, ptr %282, align 8
  %284 = add i64 %283, %279
  %285 = sub i64 %281, %284
  %286 = icmp eq i64 %284, 0
  %287 = icmp ult i64 %281, %284
  %288 = zext i1 %287 to i64
  %289 = select i1 %286, i64 %279, i64 %288
  store i64 %285, ptr %280, align 8
  %290 = add nuw nsw i32 %278, 1
  %291 = icmp eq i32 %290, %163
  br i1 %291, label %308, label %277

292:                                              ; preds = %273
  br i1 %142, label %308, label %293

293:                                              ; preds = %293, %292
  %294 = phi i32 [ %306, %293 ], [ 0, %292 ]
  %295 = phi i64 [ %305, %293 ], [ 0, %292 ]
  %296 = getelementptr i64, ptr %7, i32 %294
  %297 = load i64, ptr %296, align 8
  %298 = getelementptr i64, ptr %9, i32 %294
  %299 = load i64, ptr %298, align 8
  %300 = add i64 %297, %295
  %301 = add i64 %300, %299
  %302 = icmp eq i64 %301, %297
  %303 = icmp ult i64 %301, %297
  %304 = zext i1 %303 to i64
  %305 = select i1 %302, i64 %295, i64 %304
  store i64 %301, ptr %296, align 8
  %306 = add nuw nsw i32 %294, 1
  %307 = icmp eq i32 %306, %163
  br i1 %307, label %308, label %293

308:                                              ; preds = %293, %292, %277, %276
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #20
  %309 = add i32 %176, 1
  br label %174

310:                                              ; preds = %329, %181
  %311 = phi i64 [ %330, %329 ], [ %185, %181 ]
  br i1 %142, label %329, label %312

312:                                              ; preds = %312, %310
  %313 = phi i32 [ %325, %312 ], [ 0, %310 ]
  %314 = phi i64 [ %324, %312 ], [ 0, %310 ]
  %315 = getelementptr i64, ptr %7, i32 %313
  %316 = load i64, ptr %315, align 8
  %317 = getelementptr i64, ptr %8, i32 %313
  %318 = load i64, ptr %317, align 8
  %319 = add i64 %316, %314
  %320 = add i64 %319, %318
  %321 = icmp eq i64 %320, %316
  %322 = icmp ult i64 %320, %316
  %323 = zext i1 %322 to i64
  %324 = select i1 %321, i64 %314, i64 %323
  store i64 %320, ptr %315, align 8
  %325 = add nuw nsw i32 %313, 1
  %326 = icmp eq i32 %325, %163
  br i1 %326, label %327, label %312

327:                                              ; preds = %312
  %328 = load i64, ptr %184, align 8
  br label %329

329:                                              ; preds = %327, %310
  %330 = phi i64 [ %328, %327 ], [ %311, %310 ]
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %310, label %332

332:                                              ; preds = %329, %181
  br label %333

333:                                              ; preds = %345, %332
  %334 = phi i32 [ %163, %332 ], [ %346, %345 ]
  %335 = add nsw i32 %334, -1
  %336 = icmp sgt i32 %334, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %333
  %338 = getelementptr i64, ptr %7, i32 %335
  %339 = load i64, ptr %338, align 8
  %340 = getelementptr i64, ptr %8, i32 %335
  %341 = load i64, ptr %340, align 8
  %342 = icmp ugt i64 %339, %341
  br i1 %342, label %347, label %343

343:                                              ; preds = %337
  %344 = icmp ult i64 %339, %341
  br i1 %344, label %363, label %345

345:                                              ; preds = %348, %347, %343
  %346 = phi i32 [ %335, %343 ], [ %163, %347 ], [ %163, %348 ]
  br label %333

347:                                              ; preds = %337, %333
  br i1 %142, label %345, label %348

348:                                              ; preds = %348, %347
  %349 = phi i32 [ %361, %348 ], [ 0, %347 ]
  %350 = phi i64 [ %360, %348 ], [ 0, %347 ]
  %351 = getelementptr i64, ptr %7, i32 %349
  %352 = load i64, ptr %351, align 8
  %353 = getelementptr i64, ptr %8, i32 %349
  %354 = load i64, ptr %353, align 8
  %355 = add i64 %354, %350
  %356 = sub i64 %352, %355
  %357 = icmp eq i64 %355, 0
  %358 = icmp ult i64 %352, %355
  %359 = zext i1 %358 to i64
  %360 = select i1 %357, i64 %350, i64 %359
  store i64 %356, ptr %351, align 8
  %361 = add nuw nsw i32 %349, 1
  %362 = icmp eq i32 %361, %163
  br i1 %362, label %345, label %348

363:                                              ; preds = %343
  br i1 %142, label %365, label %364

364:                                              ; preds = %363
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %0, ptr nonnull align 8 %7, i32 %166, i1 false) #20
  br label %365

365:                                              ; preds = %364, %363
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  br label %1564

366:                                              ; preds = %135, %20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false) #20, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i32 128, i1 false) #20, !annotation !8
  %367 = getelementptr i64, ptr %13, i32 %16
  %368 = getelementptr i64, ptr %1, i32 %16
  %369 = shl nuw nsw i32 %16, 1
  %370 = add nsw i32 %369, -1
  br label %371

371:                                              ; preds = %423, %366
  %372 = phi i32 [ 0, %366 ], [ %376, %423 ]
  %373 = phi i64 [ 0, %366 ], [ %426, %423 ]
  %374 = phi i64 [ 0, %366 ], [ %425, %423 ]
  %375 = icmp ult i32 %372, %16
  %376 = add nuw i32 %372, 1
  %377 = sub i32 %376, %16
  %378 = select i1 %375, i32 0, i32 %377
  %379 = icmp uge i32 %372, %378
  %380 = icmp ult i32 %378, %16
  %381 = and i1 %379, %380
  br i1 %381, label %382, label %423

382:                                              ; preds = %382, %371
  %383 = phi i32 [ %419, %382 ], [ %378, %371 ]
  %384 = phi i64 [ %418, %382 ], [ 0, %371 ]
  %385 = phi i64 [ %415, %382 ], [ %373, %371 ]
  %386 = phi i64 [ %411, %382 ], [ %374, %371 ]
  %387 = getelementptr i64, ptr %368, i32 %383
  %388 = load i64, ptr %387, align 8
  %389 = sub i32 %372, %383
  %390 = getelementptr i64, ptr %367, i32 %389
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %388, 4294967295
  %393 = lshr i64 %388, 32
  %394 = and i64 %391, 4294967295
  %395 = lshr i64 %391, 32
  %396 = mul nuw i64 %394, %392
  %397 = mul nuw i64 %395, %392
  %398 = mul nuw i64 %394, %393
  %399 = mul nuw i64 %395, %393
  %400 = lshr i64 %396, 32
  %401 = add i64 %397, %398
  %402 = add i64 %401, %400
  %403 = icmp ult i64 %402, %397
  %404 = add nuw i64 %399, 4294967296
  %405 = select i1 %403, i64 %404, i64 %399
  %406 = and i64 %396, 4294967295
  %407 = shl i64 %402, 32
  %408 = lshr i64 %402, 32
  %409 = add i64 %405, %408
  %410 = add i64 %406, %386
  %411 = add i64 %410, %407
  %412 = add i64 %409, %385
  %413 = icmp ult i64 %411, %386
  %414 = zext i1 %413 to i64
  %415 = add i64 %412, %414
  %416 = icmp ult i64 %415, %409
  %417 = zext i1 %416 to i64
  %418 = add i64 %384, %417
  %419 = add nuw nsw i32 %383, 1
  %420 = icmp ugt i32 %372, %383
  %421 = icmp ult i32 %419, %16
  %422 = and i1 %420, %421
  br i1 %422, label %382, label %423

423:                                              ; preds = %382, %371
  %424 = phi i64 [ %374, %371 ], [ %411, %382 ]
  %425 = phi i64 [ %373, %371 ], [ %415, %382 ]
  %426 = phi i64 [ 0, %371 ], [ %418, %382 ]
  %427 = getelementptr i64, ptr %4, i32 %372
  store i64 %424, ptr %427, align 8
  %428 = icmp eq i32 %376, %370
  br i1 %428, label %429, label %371

429:                                              ; preds = %423
  %430 = getelementptr i64, ptr %4, i32 %370
  store i64 %425, ptr %430, align 8
  %431 = getelementptr i64, ptr %367, i32 %16
  %432 = load i64, ptr %431, align 8
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %452, label %434

434:                                              ; preds = %429
  %435 = getelementptr i64, ptr %4, i32 %16
  %436 = icmp eq i8 %15, 0
  br i1 %436, label %452, label %437

437:                                              ; preds = %437, %434
  %438 = phi i32 [ %450, %437 ], [ 0, %434 ]
  %439 = phi i64 [ %449, %437 ], [ 0, %434 ]
  %440 = getelementptr i64, ptr %435, i32 %438
  %441 = load i64, ptr %440, align 8
  %442 = getelementptr i64, ptr %368, i32 %438
  %443 = load i64, ptr %442, align 8
  %444 = add i64 %441, %439
  %445 = add i64 %444, %443
  %446 = icmp eq i64 %445, %441
  %447 = icmp ult i64 %445, %441
  %448 = zext i1 %447 to i64
  %449 = select i1 %446, i64 %439, i64 %448
  store i64 %445, ptr %440, align 8
  %450 = add nuw nsw i32 %438, 1
  %451 = icmp eq i32 %450, %16
  br i1 %451, label %452, label %437

452:                                              ; preds = %437, %434, %429
  %453 = getelementptr i64, ptr %4, i32 %16
  br label %454

454:                                              ; preds = %506, %452
  %455 = phi i32 [ 0, %452 ], [ %459, %506 ]
  %456 = phi i64 [ 0, %452 ], [ %509, %506 ]
  %457 = phi i64 [ 0, %452 ], [ %508, %506 ]
  %458 = icmp ult i32 %455, %16
  %459 = add nuw i32 %455, 1
  %460 = sub i32 %459, %16
  %461 = select i1 %458, i32 0, i32 %460
  %462 = icmp uge i32 %455, %461
  %463 = icmp ult i32 %461, %16
  %464 = and i1 %462, %463
  br i1 %464, label %465, label %506

465:                                              ; preds = %465, %454
  %466 = phi i32 [ %502, %465 ], [ %461, %454 ]
  %467 = phi i64 [ %501, %465 ], [ 0, %454 ]
  %468 = phi i64 [ %498, %465 ], [ %456, %454 ]
  %469 = phi i64 [ %494, %465 ], [ %457, %454 ]
  %470 = getelementptr i64, ptr %13, i32 %466
  %471 = load i64, ptr %470, align 8
  %472 = sub i32 %455, %466
  %473 = getelementptr i64, ptr %453, i32 %472
  %474 = load i64, ptr %473, align 8
  %475 = and i64 %471, 4294967295
  %476 = lshr i64 %471, 32
  %477 = and i64 %474, 4294967295
  %478 = lshr i64 %474, 32
  %479 = mul nuw i64 %477, %475
  %480 = mul nuw i64 %478, %475
  %481 = mul nuw i64 %477, %476
  %482 = mul nuw i64 %478, %476
  %483 = lshr i64 %479, 32
  %484 = add i64 %480, %481
  %485 = add i64 %484, %483
  %486 = icmp ult i64 %485, %480
  %487 = add nuw i64 %482, 4294967296
  %488 = select i1 %486, i64 %487, i64 %482
  %489 = and i64 %479, 4294967295
  %490 = shl i64 %485, 32
  %491 = lshr i64 %485, 32
  %492 = add i64 %488, %491
  %493 = add i64 %489, %469
  %494 = add i64 %493, %490
  %495 = add i64 %492, %468
  %496 = icmp ult i64 %494, %469
  %497 = zext i1 %496 to i64
  %498 = add i64 %495, %497
  %499 = icmp ult i64 %498, %492
  %500 = zext i1 %499 to i64
  %501 = add i64 %467, %500
  %502 = add nuw nsw i32 %466, 1
  %503 = icmp ugt i32 %455, %466
  %504 = icmp ult i32 %502, %16
  %505 = and i1 %503, %504
  br i1 %505, label %465, label %506

506:                                              ; preds = %465, %454
  %507 = phi i64 [ %457, %454 ], [ %494, %465 ]
  %508 = phi i64 [ %456, %454 ], [ %498, %465 ]
  %509 = phi i64 [ 0, %454 ], [ %501, %465 ]
  %510 = getelementptr i64, ptr %5, i32 %455
  store i64 %507, ptr %510, align 8
  %511 = icmp eq i32 %459, %370
  br i1 %511, label %512, label %454

512:                                              ; preds = %506
  %513 = getelementptr i64, ptr %5, i32 %370
  store i64 %508, ptr %513, align 8
  %514 = icmp eq i8 %15, 0
  br i1 %514, label %530, label %515

515:                                              ; preds = %515, %512
  %516 = phi i32 [ %528, %515 ], [ 0, %512 ]
  %517 = phi i64 [ %527, %515 ], [ 0, %512 ]
  %518 = getelementptr i64, ptr %1, i32 %516
  %519 = load i64, ptr %518, align 8
  %520 = getelementptr i64, ptr %5, i32 %516
  %521 = load i64, ptr %520, align 8
  %522 = add i64 %521, %517
  %523 = sub i64 %519, %522
  %524 = icmp eq i64 %522, 0
  %525 = icmp ult i64 %519, %522
  %526 = zext i1 %525 to i64
  %527 = select i1 %524, i64 %517, i64 %526
  store i64 %523, ptr %520, align 8
  %528 = add nuw nsw i32 %516, 1
  %529 = icmp eq i32 %528, %369
  br i1 %529, label %530, label %515

530:                                              ; preds = %515, %512
  %531 = getelementptr i64, ptr %5, i32 %16
  br label %532

532:                                              ; preds = %580, %530
  br i1 %514, label %547, label %533

533:                                              ; preds = %532
  %534 = load i64, ptr %531, align 8
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %536, label %563

536:                                              ; preds = %540, %533
  %537 = phi i32 [ %538, %540 ], [ 0, %533 ]
  %538 = add nuw nsw i32 %537, 1
  %539 = icmp eq i32 %538, %16
  br i1 %539, label %547, label %540

540:                                              ; preds = %536
  %541 = getelementptr i64, ptr %531, i32 %538
  %542 = load i64, ptr %541, align 8
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %536, label %544

544:                                              ; preds = %540
  %545 = icmp uge i32 %538, %16
  %546 = or i1 %545, %514
  br i1 %546, label %547, label %563

547:                                              ; preds = %579, %544, %536, %532
  br label %548

548:                                              ; preds = %560, %547
  %549 = phi i32 [ %16, %547 ], [ %561, %560 ]
  %550 = add nsw i32 %549, -1
  %551 = icmp sgt i32 %549, 0
  br i1 %551, label %552, label %562

552:                                              ; preds = %548
  %553 = getelementptr i64, ptr %5, i32 %550
  %554 = load i64, ptr %553, align 8
  %555 = getelementptr i64, ptr %13, i32 %550
  %556 = load i64, ptr %555, align 8
  %557 = icmp ugt i64 %554, %556
  br i1 %557, label %562, label %558

558:                                              ; preds = %552
  %559 = icmp ult i64 %554, %556
  br i1 %559, label %592, label %560

560:                                              ; preds = %562, %558
  %561 = phi i32 [ %550, %558 ], [ %16, %562 ]
  br label %548

562:                                              ; preds = %552, %548
  br i1 %514, label %560, label %563

563:                                              ; preds = %562, %544, %533
  br label %564

564:                                              ; preds = %564, %563
  %565 = phi i32 [ %577, %564 ], [ 0, %563 ]
  %566 = phi i64 [ %576, %564 ], [ 0, %563 ]
  %567 = getelementptr i64, ptr %5, i32 %565
  %568 = load i64, ptr %567, align 8
  %569 = getelementptr i64, ptr %13, i32 %565
  %570 = load i64, ptr %569, align 8
  %571 = add i64 %570, %566
  %572 = sub i64 %568, %571
  %573 = icmp eq i64 %571, 0
  %574 = icmp ult i64 %568, %571
  %575 = zext i1 %574 to i64
  %576 = select i1 %573, i64 %566, i64 %575
  store i64 %572, ptr %567, align 8
  %577 = add nuw i32 %565, 1
  %578 = icmp eq i32 %577, %16
  br i1 %578, label %579, label %564

579:                                              ; preds = %564
  br i1 %514, label %547, label %580

580:                                              ; preds = %580, %579
  %581 = phi i32 [ %590, %580 ], [ 0, %579 ]
  %582 = phi i64 [ %589, %580 ], [ %576, %579 ]
  %583 = getelementptr i64, ptr %531, i32 %581
  %584 = load i64, ptr %583, align 8
  %585 = sub i64 %584, %582
  %586 = icmp ne i64 %582, 0
  %587 = icmp ult i64 %584, %582
  %588 = select i1 %586, i1 %587, i1 false
  %589 = zext i1 %588 to i64
  store i64 %585, ptr %583, align 8
  %590 = add nuw nsw i32 %581, 1
  %591 = icmp eq i32 %590, %16
  br i1 %591, label %532, label %580

592:                                              ; preds = %558
  br i1 %514, label %595, label %593

593:                                              ; preds = %592
  %594 = shl nuw nsw i32 %16, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %0, ptr nonnull align 8 %5, i32 %594, i1 false) #20
  br label %595

595:                                              ; preds = %593, %592
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  br label %1564

596:                                              ; preds = %3
  switch i8 %15, label %1559 [
    i8 3, label %597
    i8 4, label %705
    i8 6, label %1056
  ]

597:                                              ; preds = %596
  %598 = load i64, ptr %1, align 8
  store i64 %598, ptr %0, align 8
  %599 = getelementptr i64, ptr %1, i32 1
  %600 = load i64, ptr %599, align 8
  %601 = getelementptr i64, ptr %0, i32 1
  store i64 %600, ptr %601, align 8
  %602 = getelementptr i64, ptr %1, i32 2
  %603 = load i64, ptr %602, align 8
  %604 = getelementptr i64, ptr %0, i32 2
  store i64 %603, ptr %604, align 8
  %605 = getelementptr i64, ptr %1, i32 3
  %606 = load i64, ptr %605, align 8
  %607 = getelementptr i64, ptr %1, i32 4
  %608 = load i64, ptr %607, align 8
  %609 = getelementptr i64, ptr %1, i32 5
  %610 = load i64, ptr %609, align 8
  %611 = add i64 %606, %598
  %612 = icmp ne i64 %606, 0
  %613 = icmp ult i64 %611, %598
  %614 = select i1 %612, i1 %613, i1 false
  %615 = zext i1 %614 to i64
  store i64 %611, ptr %0, align 8
  %616 = add i64 %608, %600
  %617 = add i64 %616, %615
  %618 = icmp eq i64 %617, %600
  %619 = icmp ult i64 %617, %600
  %620 = zext i1 %619 to i64
  %621 = select i1 %618, i64 %615, i64 %620
  store i64 %617, ptr %601, align 8
  %622 = add i64 %610, %603
  %623 = add i64 %622, %621
  %624 = icmp ult i64 %623, %603
  %625 = zext i1 %624 to i64
  store i64 %623, ptr %604, align 8
  %626 = load i64, ptr %605, align 8
  %627 = load i64, ptr %607, align 8
  %628 = add i64 %617, %626
  %629 = icmp ne i64 %626, 0
  %630 = icmp ult i64 %628, %617
  %631 = select i1 %629, i1 %630, i1 false
  %632 = zext i1 %631 to i64
  store i64 %628, ptr %601, align 8
  %633 = add i64 %627, %632
  %634 = add i64 %633, %623
  %635 = icmp ult i64 %634, %623
  %636 = zext i1 %635 to i64
  store i64 %634, ptr %604, align 8
  %637 = icmp eq i64 %623, %603
  %638 = select i1 %637, i64 %621, i64 %625
  %639 = load i64, ptr %609, align 8
  %640 = add i64 %639, %611
  %641 = icmp ne i64 %639, 0
  %642 = icmp ult i64 %640, %611
  %643 = select i1 %641, i1 %642, i1 false
  %644 = zext i1 %643 to i64
  store i64 %640, ptr %0, align 8
  %645 = add i64 %639, %628
  %646 = add i64 %645, %644
  %647 = icmp eq i64 %646, %628
  %648 = icmp ult i64 %646, %628
  %649 = zext i1 %648 to i64
  %650 = select i1 %647, i64 %644, i64 %649
  store i64 %646, ptr %601, align 8
  %651 = add i64 %650, %634
  %652 = select i1 %647, i1 %643, i1 %648
  %653 = icmp ult i64 %651, %634
  %654 = select i1 %652, i1 %653, i1 false
  %655 = zext i1 %654 to i64
  store i64 %651, ptr %604, align 8
  %656 = icmp eq i64 %633, 0
  %657 = select i1 %656, i64 %632, i64 %636
  %658 = add nuw nsw i64 %657, %638
  %659 = add nuw nsw i64 %658, %655
  %660 = trunc i64 %659 to i32
  %661 = getelementptr i64, ptr %13, i32 2
  %662 = getelementptr i64, ptr %13, i32 1
  br label %663

663:                                              ; preds = %682, %597
  %664 = phi i64 [ %640, %597 ], [ %684, %682 ]
  %665 = phi i64 [ %646, %597 ], [ %691, %682 ]
  %666 = phi i64 [ %651, %597 ], [ %698, %682 ]
  %667 = phi i32 [ %660, %597 ], [ %704, %682 ]
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %682

669:                                              ; preds = %663
  %670 = load i64, ptr %661, align 8
  %671 = icmp ugt i64 %670, %666
  br i1 %671, label %1564, label %672

672:                                              ; preds = %669
  %673 = icmp ult i64 %670, %666
  br i1 %673, label %682, label %674

674:                                              ; preds = %672
  %675 = load i64, ptr %662, align 8
  %676 = icmp ugt i64 %675, %665
  br i1 %676, label %1564, label %677

677:                                              ; preds = %674
  %678 = icmp ult i64 %675, %665
  br i1 %678, label %682, label %679

679:                                              ; preds = %677
  %680 = load i64, ptr %13, align 8
  %681 = icmp ugt i64 %680, %664
  br i1 %681, label %1564, label %682

682:                                              ; preds = %679, %677, %672, %663
  %683 = load i64, ptr %13, align 8
  %684 = sub i64 %664, %683
  %685 = icmp ne i64 %683, 0
  %686 = icmp ult i64 %664, %683
  %687 = select i1 %685, i1 %686, i1 false
  %688 = zext i1 %687 to i64
  store i64 %684, ptr %0, align 8
  %689 = load i64, ptr %662, align 8
  %690 = add i64 %689, %688
  %691 = sub i64 %665, %690
  %692 = icmp eq i64 %690, 0
  %693 = icmp ult i64 %665, %690
  %694 = zext i1 %693 to i64
  %695 = select i1 %692, i64 %688, i64 %694
  store i64 %691, ptr %601, align 8
  %696 = load i64, ptr %661, align 8
  %697 = add i64 %695, %696
  %698 = sub i64 %666, %697
  %699 = icmp eq i64 %697, 0
  %700 = icmp ult i64 %666, %697
  %701 = zext i1 %700 to i64
  %702 = select i1 %699, i64 %695, i64 %701
  store i64 %698, ptr %604, align 8
  %703 = trunc i64 %702 to i32
  %704 = sub i32 %667, %703
  br label %663

705:                                              ; preds = %596
  %706 = load i64, ptr %1, align 8
  store i64 %706, ptr %0, align 8
  %707 = getelementptr i64, ptr %1, i32 1
  %708 = load i64, ptr %707, align 8
  %709 = getelementptr i64, ptr %0, i32 1
  store i64 %708, ptr %709, align 8
  %710 = getelementptr i64, ptr %1, i32 2
  %711 = load i64, ptr %710, align 8
  %712 = getelementptr i64, ptr %0, i32 2
  store i64 %711, ptr %712, align 8
  %713 = getelementptr i64, ptr %1, i32 3
  %714 = load i64, ptr %713, align 8
  %715 = getelementptr i64, ptr %0, i32 3
  store i64 %714, ptr %715, align 8
  %716 = getelementptr i64, ptr %1, i32 5
  %717 = load i64, ptr %716, align 8
  %718 = getelementptr i64, ptr %1, i32 6
  %719 = load i64, ptr %718, align 8
  %720 = getelementptr i64, ptr %1, i32 7
  %721 = load i64, ptr %720, align 8
  %722 = shl i64 %717, 1
  %723 = and i64 %722, -8589934592
  %724 = tail call i64 @llvm.fshl.i64(i64 %719, i64 %717, i64 1) #20
  %725 = tail call i64 @llvm.fshl.i64(i64 %721, i64 %719, i64 1) #20
  %726 = add i64 %723, %708
  %727 = icmp ne i64 %723, 0
  %728 = icmp ult i64 %726, %708
  %729 = select i1 %727, i1 %728, i1 false
  %730 = zext i1 %729 to i64
  store i64 %726, ptr %709, align 8
  %731 = add i64 %724, %711
  %732 = add i64 %731, %730
  %733 = icmp eq i64 %732, %711
  %734 = icmp ult i64 %732, %711
  %735 = zext i1 %734 to i64
  %736 = select i1 %733, i64 %730, i64 %735
  store i64 %732, ptr %712, align 8
  %737 = add i64 %725, %714
  %738 = add i64 %737, %736
  %739 = icmp ult i64 %738, %714
  %740 = zext i1 %739 to i64
  store i64 %738, ptr %715, align 8
  %741 = load i64, ptr %718, align 8
  %742 = shl i64 %741, 32
  %743 = load i64, ptr %720, align 8
  %744 = tail call i64 @llvm.fshl.i64(i64 %743, i64 %741, i64 32) #20
  %745 = lshr i64 %743, 32
  %746 = shl i64 %741, 33
  %747 = tail call i64 @llvm.fshl.i64(i64 %744, i64 %742, i64 1) #20
  %748 = tail call i64 @llvm.fshl.i64(i64 %745, i64 %744, i64 1) #20
  %749 = icmp eq i64 %738, %714
  %750 = select i1 %749, i64 %736, i64 %740
  store i64 %706, ptr %0, align 8
  %751 = add i64 %746, %726
  %752 = icmp ne i64 %746, 0
  %753 = icmp ult i64 %751, %726
  %754 = select i1 %752, i1 %753, i1 false
  %755 = zext i1 %754 to i64
  store i64 %751, ptr %709, align 8
  %756 = add i64 %747, %732
  %757 = add i64 %756, %755
  %758 = icmp eq i64 %757, %732
  %759 = icmp ult i64 %757, %732
  %760 = zext i1 %759 to i64
  %761 = select i1 %758, i64 %755, i64 %760
  store i64 %757, ptr %712, align 8
  %762 = add i64 %738, %748
  %763 = add i64 %762, %761
  %764 = icmp ult i64 %763, %738
  %765 = zext i1 %764 to i64
  store i64 %763, ptr %715, align 8
  %766 = getelementptr i64, ptr %1, i32 4
  %767 = load i64, ptr %766, align 8
  %768 = load i64, ptr %716, align 8
  %769 = and i64 %768, 4294967295
  %770 = load i64, ptr %720, align 8
  %771 = add i64 %767, %706
  %772 = icmp ne i64 %767, 0
  %773 = icmp ult i64 %771, %706
  %774 = select i1 %772, i1 %773, i1 false
  %775 = zext i1 %774 to i64
  store i64 %771, ptr %0, align 8
  %776 = add i64 %769, %751
  %777 = add i64 %776, %775
  %778 = icmp eq i64 %777, %751
  %779 = icmp ult i64 %777, %751
  %780 = zext i1 %779 to i64
  %781 = select i1 %778, i64 %775, i64 %780
  store i64 %777, ptr %709, align 8
  %782 = add i64 %781, %757
  %783 = select i1 %778, i1 %774, i1 %779
  %784 = icmp ult i64 %782, %757
  %785 = select i1 %783, i1 %784, i1 false
  %786 = zext i1 %785 to i64
  store i64 %782, ptr %712, align 8
  %787 = add i64 %763, %770
  %788 = add i64 %787, %786
  %789 = icmp ult i64 %788, %763
  %790 = zext i1 %789 to i64
  store i64 %788, ptr %715, align 8
  %791 = icmp eq i64 %763, %738
  %792 = select i1 %791, i64 %761, i64 %765
  %793 = load i64, ptr %766, align 8
  %794 = load i64, ptr %716, align 8
  %795 = tail call i64 @llvm.fshl.i64(i64 %794, i64 %793, i64 32) #20
  %796 = lshr i64 %794, 32
  %797 = load i64, ptr %718, align 8
  %798 = and i64 %797, -4294967296
  %799 = or i64 %798, %796
  %800 = load i64, ptr %720, align 8
  %801 = tail call i64 @llvm.fshl.i64(i64 %793, i64 %797, i64 32) #20
  %802 = add i64 %795, %771
  %803 = icmp ne i64 %795, 0
  %804 = icmp ult i64 %802, %771
  %805 = select i1 %803, i1 %804, i1 false
  %806 = zext i1 %805 to i64
  store i64 %802, ptr %0, align 8
  %807 = add i64 %799, %777
  %808 = add i64 %807, %806
  %809 = icmp eq i64 %808, %777
  %810 = icmp ult i64 %808, %777
  %811 = zext i1 %810 to i64
  %812 = select i1 %809, i64 %806, i64 %811
  store i64 %808, ptr %709, align 8
  %813 = add i64 %800, %782
  %814 = add i64 %813, %812
  %815 = icmp eq i64 %814, %782
  %816 = icmp ult i64 %814, %782
  %817 = zext i1 %816 to i64
  %818 = select i1 %815, i64 %812, i64 %817
  store i64 %814, ptr %712, align 8
  %819 = add i64 %788, %801
  %820 = add i64 %819, %818
  %821 = icmp ult i64 %820, %788
  %822 = zext i1 %821 to i64
  store i64 %820, ptr %715, align 8
  %823 = icmp eq i64 %788, %763
  %824 = select i1 %823, i64 %786, i64 %790
  %825 = load i64, ptr %716, align 8
  %826 = load i64, ptr %718, align 8
  %827 = tail call i64 @llvm.fshl.i64(i64 %826, i64 %825, i64 32) #20
  %828 = lshr i64 %826, 32
  %829 = load i64, ptr %766, align 8
  %830 = and i64 %829, 4294967295
  %831 = shl i64 %825, 32
  %832 = or i64 %830, %831
  %833 = sub i64 %802, %827
  %834 = icmp ne i64 %827, 0
  %835 = icmp ult i64 %802, %827
  %836 = select i1 %834, i1 %835, i1 false
  %837 = zext i1 %836 to i64
  store i64 %833, ptr %0, align 8
  %838 = add nuw nsw i64 %828, %837
  %839 = sub i64 %808, %838
  %840 = icmp eq i64 %838, 0
  %841 = icmp ult i64 %808, %838
  %842 = zext i1 %841 to i64
  %843 = select i1 %840, i64 %837, i64 %842
  store i64 %839, ptr %709, align 8
  %844 = sub i64 %814, %843
  %845 = select i1 %840, i1 %836, i1 %841
  %846 = icmp ult i64 %814, %843
  %847 = select i1 %845, i1 %846, i1 false
  %848 = zext i1 %847 to i64
  store i64 %844, ptr %712, align 8
  %849 = add i64 %832, %848
  %850 = sub i64 %820, %849
  %851 = icmp ult i64 %820, %849
  store i64 %850, ptr %715, align 8
  %852 = icmp eq i64 %820, %788
  %853 = select i1 %852, i64 %818, i64 %822
  %854 = load i64, ptr %718, align 8
  %855 = load i64, ptr %720, align 8
  %856 = load i64, ptr %766, align 8
  %857 = lshr i64 %856, 32
  %858 = load i64, ptr %716, align 8
  %859 = and i64 %858, -4294967296
  %860 = or i64 %859, %857
  %861 = sub i64 %833, %854
  %862 = icmp ne i64 %854, 0
  %863 = icmp ult i64 %833, %854
  %864 = select i1 %862, i1 %863, i1 false
  %865 = zext i1 %864 to i64
  store i64 %861, ptr %0, align 8
  %866 = add i64 %855, %865
  %867 = sub i64 %839, %866
  %868 = icmp eq i64 %866, 0
  %869 = icmp ult i64 %839, %866
  %870 = zext i1 %869 to i64
  %871 = select i1 %868, i64 %865, i64 %870
  store i64 %867, ptr %709, align 8
  %872 = sub i64 %844, %871
  %873 = select i1 %868, i1 %864, i1 %869
  %874 = icmp ult i64 %844, %871
  %875 = select i1 %873, i1 %874, i1 false
  %876 = zext i1 %875 to i64
  store i64 %872, ptr %712, align 8
  %877 = add i64 %860, %876
  %878 = sub i64 %850, %877
  %879 = icmp ult i64 %850, %877
  store i64 %878, ptr %715, align 8
  %880 = icmp eq i64 %849, 0
  %881 = select i1 %880, i1 %847, i1 %851
  %882 = sext i1 %881 to i64
  %883 = load i64, ptr %718, align 8
  %884 = load i64, ptr %720, align 8
  %885 = tail call i64 @llvm.fshl.i64(i64 %884, i64 %883, i64 32) #20
  %886 = load i64, ptr %766, align 8
  %887 = tail call i64 @llvm.fshl.i64(i64 %886, i64 %884, i64 32) #20
  %888 = load i64, ptr %716, align 8
  %889 = tail call i64 @llvm.fshl.i64(i64 %888, i64 %886, i64 32) #20
  %890 = shl i64 %883, 32
  %891 = sub i64 %861, %885
  %892 = icmp ne i64 %885, 0
  %893 = icmp ult i64 %861, %885
  %894 = select i1 %892, i1 %893, i1 false
  %895 = zext i1 %894 to i64
  store i64 %891, ptr %0, align 8
  %896 = add i64 %887, %895
  %897 = sub i64 %867, %896
  %898 = icmp eq i64 %896, 0
  %899 = icmp ult i64 %867, %896
  %900 = zext i1 %899 to i64
  %901 = select i1 %898, i64 %895, i64 %900
  store i64 %897, ptr %709, align 8
  %902 = add i64 %901, %889
  %903 = sub i64 %872, %902
  %904 = icmp eq i64 %902, 0
  %905 = icmp ult i64 %872, %902
  %906 = zext i1 %905 to i64
  %907 = select i1 %904, i64 %901, i64 %906
  store i64 %903, ptr %712, align 8
  %908 = or i64 %907, %890
  %909 = sub i64 %878, %908
  %910 = icmp ult i64 %878, %908
  %911 = zext i1 %910 to i64
  store i64 %909, ptr %715, align 8
  %912 = icmp eq i64 %877, 0
  %913 = select i1 %912, i1 %875, i1 %879
  %914 = sext i1 %913 to i64
  %915 = load i64, ptr %720, align 8
  %916 = load i64, ptr %766, align 8
  %917 = and i64 %916, -4294967296
  %918 = load i64, ptr %716, align 8
  %919 = load i64, ptr %718, align 8
  %920 = and i64 %919, -4294967296
  %921 = sub i64 %891, %915
  %922 = icmp ne i64 %915, 0
  %923 = icmp ult i64 %891, %915
  %924 = select i1 %922, i1 %923, i1 false
  %925 = zext i1 %924 to i64
  store i64 %921, ptr %0, align 8
  %926 = or i64 %917, %925
  %927 = sub i64 %897, %926
  %928 = icmp eq i64 %926, 0
  %929 = icmp ult i64 %897, %926
  %930 = zext i1 %929 to i64
  %931 = select i1 %928, i64 %925, i64 %930
  store i64 %927, ptr %709, align 8
  %932 = add i64 %931, %918
  %933 = sub i64 %903, %932
  %934 = icmp eq i64 %932, 0
  %935 = icmp ult i64 %903, %932
  %936 = zext i1 %935 to i64
  %937 = select i1 %934, i64 %931, i64 %936
  store i64 %933, ptr %712, align 8
  %938 = or i64 %937, %920
  %939 = sub i64 %909, %938
  %940 = icmp eq i64 %938, 0
  %941 = icmp ult i64 %909, %938
  %942 = zext i1 %941 to i64
  %943 = select i1 %940, i64 %937, i64 %942
  store i64 %939, ptr %715, align 8
  %944 = icmp eq i64 %908, 0
  %945 = select i1 %944, i64 %907, i64 %911
  %946 = lshr i64 %721, 63
  %947 = add nuw nsw i64 %750, %946
  %948 = add nuw nsw i64 %947, %792
  %949 = add nuw nsw i64 %948, %824
  %950 = add nuw nsw i64 %949, %853
  %951 = add nsw i64 %950, %882
  %952 = add nsw i64 %951, %914
  %953 = add nuw nsw i64 %945, %943
  %954 = sub nsw i64 %952, %953
  %955 = trunc i64 %954 to i32
  %956 = icmp slt i32 %955, 0
  br i1 %956, label %961, label %957

957:                                              ; preds = %705
  %958 = getelementptr i64, ptr %13, i32 3
  %959 = getelementptr i64, ptr %13, i32 2
  %960 = getelementptr i64, ptr %13, i32 1
  br label %1001

961:                                              ; preds = %705
  %962 = getelementptr i64, ptr %13, i32 1
  %963 = getelementptr i64, ptr %13, i32 2
  %964 = getelementptr i64, ptr %13, i32 3
  br label %965

965:                                              ; preds = %965, %961
  %966 = phi i64 [ %993, %965 ], [ %939, %961 ]
  %967 = phi i64 [ %986, %965 ], [ %933, %961 ]
  %968 = phi i64 [ %979, %965 ], [ %927, %961 ]
  %969 = phi i64 [ %972, %965 ], [ %921, %961 ]
  %970 = phi i32 [ %999, %965 ], [ %955, %961 ]
  %971 = load i64, ptr %13, align 8
  %972 = add i64 %971, %969
  %973 = icmp ne i64 %971, 0
  %974 = icmp ult i64 %972, %969
  %975 = select i1 %973, i1 %974, i1 false
  %976 = zext i1 %975 to i64
  store i64 %972, ptr %0, align 8
  %977 = load i64, ptr %962, align 8
  %978 = add i64 %977, %968
  %979 = add i64 %978, %976
  %980 = icmp eq i64 %979, %968
  %981 = icmp ult i64 %979, %968
  %982 = zext i1 %981 to i64
  %983 = select i1 %980, i64 %976, i64 %982
  store i64 %979, ptr %709, align 8
  %984 = load i64, ptr %963, align 8
  %985 = add i64 %984, %967
  %986 = add i64 %985, %983
  %987 = icmp eq i64 %986, %967
  %988 = icmp ult i64 %986, %967
  %989 = zext i1 %988 to i64
  %990 = select i1 %987, i64 %983, i64 %989
  store i64 %986, ptr %712, align 8
  %991 = load i64, ptr %964, align 8
  %992 = add i64 %991, %966
  %993 = add i64 %992, %990
  %994 = icmp eq i64 %993, %966
  %995 = icmp ult i64 %993, %966
  %996 = zext i1 %995 to i64
  %997 = select i1 %994, i64 %990, i64 %996
  store i64 %993, ptr %715, align 8
  %998 = trunc i64 %997 to i32
  %999 = add nsw i32 %970, %998
  %1000 = icmp slt i32 %999, 0
  br i1 %1000, label %965, label %1564

1001:                                             ; preds = %1026, %957
  %1002 = phi i64 [ %1028, %1026 ], [ %921, %957 ]
  %1003 = phi i64 [ %1035, %1026 ], [ %927, %957 ]
  %1004 = phi i64 [ %1042, %1026 ], [ %933, %957 ]
  %1005 = phi i64 [ %1049, %1026 ], [ %939, %957 ]
  %1006 = phi i32 [ %1055, %1026 ], [ %955, %957 ]
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1026

1008:                                             ; preds = %1001
  %1009 = load i64, ptr %958, align 8
  %1010 = icmp ugt i64 %1009, %1005
  br i1 %1010, label %1564, label %1011

1011:                                             ; preds = %1008
  %1012 = icmp ult i64 %1009, %1005
  br i1 %1012, label %1026, label %1013

1013:                                             ; preds = %1011
  %1014 = load i64, ptr %959, align 8
  %1015 = icmp ugt i64 %1014, %1004
  br i1 %1015, label %1564, label %1016

1016:                                             ; preds = %1013
  %1017 = icmp ult i64 %1014, %1004
  br i1 %1017, label %1026, label %1018

1018:                                             ; preds = %1016
  %1019 = load i64, ptr %960, align 8
  %1020 = icmp ugt i64 %1019, %1003
  br i1 %1020, label %1564, label %1021

1021:                                             ; preds = %1018
  %1022 = icmp ult i64 %1019, %1003
  br i1 %1022, label %1026, label %1023

1023:                                             ; preds = %1021
  %1024 = load i64, ptr %13, align 8
  %1025 = icmp ugt i64 %1024, %1002
  br i1 %1025, label %1564, label %1026

1026:                                             ; preds = %1023, %1021, %1016, %1011, %1001
  %1027 = load i64, ptr %13, align 8
  %1028 = sub i64 %1002, %1027
  %1029 = icmp ne i64 %1027, 0
  %1030 = icmp ult i64 %1002, %1027
  %1031 = select i1 %1029, i1 %1030, i1 false
  %1032 = zext i1 %1031 to i64
  store i64 %1028, ptr %0, align 8
  %1033 = load i64, ptr %960, align 8
  %1034 = add i64 %1033, %1032
  %1035 = sub i64 %1003, %1034
  %1036 = icmp eq i64 %1034, 0
  %1037 = icmp ult i64 %1003, %1034
  %1038 = zext i1 %1037 to i64
  %1039 = select i1 %1036, i64 %1032, i64 %1038
  store i64 %1035, ptr %709, align 8
  %1040 = load i64, ptr %959, align 8
  %1041 = add i64 %1039, %1040
  %1042 = sub i64 %1004, %1041
  %1043 = icmp eq i64 %1041, 0
  %1044 = icmp ult i64 %1004, %1041
  %1045 = zext i1 %1044 to i64
  %1046 = select i1 %1043, i64 %1039, i64 %1045
  store i64 %1042, ptr %712, align 8
  %1047 = load i64, ptr %958, align 8
  %1048 = add i64 %1046, %1047
  %1049 = sub i64 %1005, %1048
  %1050 = icmp eq i64 %1048, 0
  %1051 = icmp ult i64 %1005, %1048
  %1052 = zext i1 %1051 to i64
  %1053 = select i1 %1050, i64 %1046, i64 %1052
  store i64 %1049, ptr %715, align 8
  %1054 = trunc i64 %1053 to i32
  %1055 = sub i32 %1006, %1054
  br label %1001

1056:                                             ; preds = %596
  %1057 = load i64, ptr %1, align 8
  store i64 %1057, ptr %0, align 8
  %1058 = getelementptr i64, ptr %1, i32 1
  %1059 = load i64, ptr %1058, align 8
  %1060 = getelementptr i64, ptr %0, i32 1
  store i64 %1059, ptr %1060, align 8
  %1061 = getelementptr i64, ptr %1, i32 2
  %1062 = load i64, ptr %1061, align 8
  %1063 = getelementptr i64, ptr %0, i32 2
  store i64 %1062, ptr %1063, align 8
  %1064 = getelementptr i64, ptr %1, i32 3
  %1065 = load i64, ptr %1064, align 8
  %1066 = getelementptr i64, ptr %0, i32 3
  store i64 %1065, ptr %1066, align 8
  %1067 = getelementptr i64, ptr %1, i32 4
  %1068 = load i64, ptr %1067, align 8
  %1069 = getelementptr i64, ptr %0, i32 4
  store i64 %1068, ptr %1069, align 8
  %1070 = getelementptr i64, ptr %1, i32 5
  %1071 = load i64, ptr %1070, align 8
  %1072 = getelementptr i64, ptr %0, i32 5
  store i64 %1071, ptr %1072, align 8
  %1073 = getelementptr i64, ptr %1, i32 11
  %1074 = load i64, ptr %1073, align 8
  %1075 = getelementptr i64, ptr %1, i32 10
  %1076 = load i64, ptr %1075, align 8
  %1077 = tail call i64 @llvm.fshl.i64(i64 %1074, i64 %1076, i64 32) #20
  %1078 = lshr i64 %1074, 32
  %1079 = shl i64 %1077, 1
  %1080 = tail call i64 @llvm.fshl.i64(i64 %1078, i64 %1077, i64 1) #20
  store i64 %1059, ptr %1060, align 8
  %1081 = add i64 %1079, %1062
  %1082 = icmp ne i64 %1079, 0
  %1083 = icmp ult i64 %1081, %1062
  %1084 = select i1 %1082, i1 %1083, i1 false
  %1085 = zext i1 %1084 to i64
  store i64 %1081, ptr %1063, align 8
  %1086 = add i64 %1080, %1065
  %1087 = add i64 %1086, %1085
  %1088 = icmp eq i64 %1087, %1065
  %1089 = icmp ult i64 %1087, %1065
  %1090 = zext i1 %1089 to i64
  %1091 = select i1 %1088, i64 %1085, i64 %1090
  store i64 %1087, ptr %1066, align 8
  %1092 = add i64 %1091, %1068
  %1093 = select i1 %1088, i1 %1084, i1 %1089
  %1094 = icmp ult i64 %1092, %1068
  %1095 = select i1 %1093, i1 %1094, i1 false
  %1096 = zext i1 %1095 to i64
  store i64 %1092, ptr %1069, align 8
  %1097 = add i64 %1071, %1096
  %1098 = icmp ult i64 %1097, %1071
  %1099 = zext i1 %1098 to i64
  store i64 %1097, ptr %1072, align 8
  %1100 = getelementptr i64, ptr %1, i32 6
  %1101 = load i64, ptr %1100, align 8
  %1102 = getelementptr i64, ptr %1, i32 7
  %1103 = load i64, ptr %1102, align 8
  %1104 = getelementptr i64, ptr %1, i32 8
  %1105 = load i64, ptr %1104, align 8
  %1106 = getelementptr i64, ptr %1, i32 9
  %1107 = load i64, ptr %1106, align 8
  %1108 = load i64, ptr %1075, align 8
  %1109 = load i64, ptr %1073, align 8
  %1110 = add i64 %1101, %1057
  %1111 = icmp ne i64 %1101, 0
  %1112 = icmp ult i64 %1110, %1057
  %1113 = select i1 %1111, i1 %1112, i1 false
  %1114 = zext i1 %1113 to i64
  store i64 %1110, ptr %0, align 8
  %1115 = add i64 %1103, %1059
  %1116 = add i64 %1115, %1114
  %1117 = icmp eq i64 %1116, %1059
  %1118 = icmp ult i64 %1116, %1059
  %1119 = zext i1 %1118 to i64
  %1120 = select i1 %1117, i64 %1114, i64 %1119
  store i64 %1116, ptr %1060, align 8
  %1121 = add i64 %1105, %1081
  %1122 = add i64 %1121, %1120
  %1123 = icmp eq i64 %1122, %1081
  %1124 = icmp ult i64 %1122, %1081
  %1125 = zext i1 %1124 to i64
  %1126 = select i1 %1123, i64 %1120, i64 %1125
  store i64 %1122, ptr %1063, align 8
  %1127 = add i64 %1107, %1087
  %1128 = add i64 %1127, %1126
  %1129 = icmp eq i64 %1128, %1087
  %1130 = icmp ult i64 %1128, %1087
  %1131 = zext i1 %1130 to i64
  %1132 = select i1 %1129, i64 %1126, i64 %1131
  store i64 %1128, ptr %1066, align 8
  %1133 = add i64 %1092, %1108
  %1134 = add i64 %1133, %1132
  %1135 = icmp eq i64 %1134, %1092
  %1136 = icmp ult i64 %1134, %1092
  %1137 = zext i1 %1136 to i64
  %1138 = select i1 %1135, i64 %1132, i64 %1137
  store i64 %1134, ptr %1069, align 8
  %1139 = add i64 %1097, %1109
  %1140 = add i64 %1139, %1138
  %1141 = icmp ult i64 %1140, %1097
  %1142 = zext i1 %1141 to i64
  store i64 %1140, ptr %1072, align 8
  %1143 = select i1 %1095, i64 %1099, i64 %1096
  %1144 = load i64, ptr %1073, align 8
  %1145 = load i64, ptr %1075, align 8
  %1146 = tail call i64 @llvm.fshl.i64(i64 %1144, i64 %1145, i64 32) #20
  %1147 = load i64, ptr %1100, align 8
  %1148 = tail call i64 @llvm.fshl.i64(i64 %1147, i64 %1144, i64 32) #20
  %1149 = load i64, ptr %1102, align 8
  %1150 = tail call i64 @llvm.fshl.i64(i64 %1149, i64 %1147, i64 32) #20
  %1151 = load i64, ptr %1104, align 8
  %1152 = tail call i64 @llvm.fshl.i64(i64 %1151, i64 %1149, i64 32) #20
  %1153 = load i64, ptr %1106, align 8
  %1154 = tail call i64 @llvm.fshl.i64(i64 %1153, i64 %1151, i64 32) #20
  %1155 = tail call i64 @llvm.fshl.i64(i64 %1145, i64 %1153, i64 32) #20
  %1156 = add i64 %1146, %1110
  %1157 = icmp ne i64 %1146, 0
  %1158 = icmp ult i64 %1156, %1110
  %1159 = select i1 %1157, i1 %1158, i1 false
  %1160 = zext i1 %1159 to i64
  store i64 %1156, ptr %0, align 8
  %1161 = add i64 %1148, %1116
  %1162 = add i64 %1161, %1160
  %1163 = icmp eq i64 %1162, %1116
  %1164 = icmp ult i64 %1162, %1116
  %1165 = zext i1 %1164 to i64
  %1166 = select i1 %1163, i64 %1160, i64 %1165
  store i64 %1162, ptr %1060, align 8
  %1167 = add i64 %1150, %1122
  %1168 = add i64 %1167, %1166
  %1169 = icmp eq i64 %1168, %1122
  %1170 = icmp ult i64 %1168, %1122
  %1171 = zext i1 %1170 to i64
  %1172 = select i1 %1169, i64 %1166, i64 %1171
  store i64 %1168, ptr %1063, align 8
  %1173 = add i64 %1152, %1128
  %1174 = add i64 %1173, %1172
  %1175 = icmp eq i64 %1174, %1128
  %1176 = icmp ult i64 %1174, %1128
  %1177 = zext i1 %1176 to i64
  %1178 = select i1 %1175, i64 %1172, i64 %1177
  store i64 %1174, ptr %1066, align 8
  %1179 = add i64 %1134, %1154
  %1180 = add i64 %1179, %1178
  %1181 = icmp eq i64 %1180, %1134
  %1182 = icmp ult i64 %1180, %1134
  %1183 = zext i1 %1182 to i64
  %1184 = select i1 %1181, i64 %1178, i64 %1183
  store i64 %1180, ptr %1069, align 8
  %1185 = add i64 %1140, %1155
  %1186 = add i64 %1185, %1184
  %1187 = icmp ult i64 %1186, %1140
  %1188 = zext i1 %1187 to i64
  store i64 %1186, ptr %1072, align 8
  %1189 = icmp eq i64 %1140, %1097
  %1190 = select i1 %1189, i64 %1138, i64 %1142
  %1191 = load i64, ptr %1073, align 8
  %1192 = and i64 %1191, -4294967296
  %1193 = load i64, ptr %1075, align 8
  %1194 = shl i64 %1193, 32
  %1195 = load i64, ptr %1100, align 8
  %1196 = load i64, ptr %1102, align 8
  %1197 = load i64, ptr %1104, align 8
  %1198 = load i64, ptr %1106, align 8
  %1199 = add i64 %1192, %1156
  %1200 = icmp ne i64 %1192, 0
  %1201 = icmp ult i64 %1199, %1156
  %1202 = select i1 %1200, i1 %1201, i1 false
  %1203 = zext i1 %1202 to i64
  store i64 %1199, ptr %0, align 8
  %1204 = add i64 %1194, %1162
  %1205 = add i64 %1204, %1203
  %1206 = icmp eq i64 %1205, %1162
  %1207 = icmp ult i64 %1205, %1162
  %1208 = zext i1 %1207 to i64
  %1209 = select i1 %1206, i64 %1203, i64 %1208
  store i64 %1205, ptr %1060, align 8
  %1210 = add i64 %1195, %1168
  %1211 = add i64 %1210, %1209
  %1212 = icmp eq i64 %1211, %1168
  %1213 = icmp ult i64 %1211, %1168
  %1214 = zext i1 %1213 to i64
  %1215 = select i1 %1212, i64 %1209, i64 %1214
  store i64 %1211, ptr %1063, align 8
  %1216 = add i64 %1174, %1196
  %1217 = add i64 %1216, %1215
  %1218 = icmp eq i64 %1217, %1174
  %1219 = icmp ult i64 %1217, %1174
  %1220 = zext i1 %1219 to i64
  %1221 = select i1 %1218, i64 %1215, i64 %1220
  store i64 %1217, ptr %1066, align 8
  %1222 = add i64 %1180, %1197
  %1223 = add i64 %1222, %1221
  %1224 = icmp eq i64 %1223, %1180
  %1225 = icmp ult i64 %1223, %1180
  %1226 = zext i1 %1225 to i64
  %1227 = select i1 %1224, i64 %1221, i64 %1226
  store i64 %1223, ptr %1069, align 8
  %1228 = add i64 %1186, %1198
  %1229 = add i64 %1228, %1227
  %1230 = icmp ult i64 %1229, %1186
  %1231 = zext i1 %1230 to i64
  store i64 %1229, ptr %1072, align 8
  %1232 = icmp eq i64 %1186, %1140
  %1233 = select i1 %1232, i64 %1184, i64 %1188
  %1234 = load i64, ptr %1075, align 8
  %1235 = load i64, ptr %1073, align 8
  %1236 = add i64 %1211, %1234
  %1237 = icmp ne i64 %1234, 0
  %1238 = icmp ult i64 %1236, %1211
  %1239 = select i1 %1237, i1 %1238, i1 false
  %1240 = zext i1 %1239 to i64
  store i64 %1236, ptr %1063, align 8
  %1241 = add i64 %1235, %1240
  %1242 = add i64 %1241, %1217
  %1243 = icmp eq i64 %1241, 0
  %1244 = icmp ult i64 %1242, %1217
  %1245 = zext i1 %1244 to i64
  %1246 = select i1 %1243, i64 %1240, i64 %1245
  store i64 %1242, ptr %1066, align 8
  %1247 = add i64 %1223, %1246
  %1248 = select i1 %1243, i1 %1239, i1 %1244
  %1249 = icmp ult i64 %1247, %1223
  %1250 = select i1 %1248, i1 %1249, i1 false
  %1251 = zext i1 %1250 to i64
  store i64 %1247, ptr %1069, align 8
  %1252 = add i64 %1229, %1251
  %1253 = icmp ult i64 %1252, %1229
  %1254 = zext i1 %1253 to i64
  store i64 %1252, ptr %1072, align 8
  %1255 = icmp eq i64 %1229, %1186
  %1256 = select i1 %1255, i64 %1227, i64 %1231
  %1257 = load i64, ptr %1075, align 8
  %1258 = and i64 %1257, 4294967295
  %1259 = and i64 %1257, -4294967296
  %1260 = load i64, ptr %1073, align 8
  %1261 = add i64 %1258, %1199
  %1262 = icmp ne i64 %1258, 0
  %1263 = icmp ult i64 %1261, %1199
  %1264 = select i1 %1262, i1 %1263, i1 false
  %1265 = zext i1 %1264 to i64
  store i64 %1261, ptr %0, align 8
  %1266 = add i64 %1259, %1205
  %1267 = add i64 %1266, %1265
  %1268 = icmp eq i64 %1267, %1205
  %1269 = icmp ult i64 %1267, %1205
  %1270 = zext i1 %1269 to i64
  %1271 = select i1 %1268, i64 %1265, i64 %1270
  store i64 %1267, ptr %1060, align 8
  %1272 = add i64 %1260, %1236
  %1273 = add i64 %1272, %1271
  %1274 = icmp eq i64 %1273, %1236
  %1275 = icmp ult i64 %1273, %1236
  %1276 = zext i1 %1275 to i64
  %1277 = select i1 %1274, i64 %1271, i64 %1276
  store i64 %1273, ptr %1063, align 8
  %1278 = add i64 %1277, %1242
  %1279 = icmp ne i64 %1277, 0
  %1280 = icmp ult i64 %1278, %1242
  %1281 = select i1 %1279, i1 %1280, i1 false
  %1282 = zext i1 %1281 to i64
  store i64 %1278, ptr %1066, align 8
  %1283 = add i64 %1247, %1282
  %1284 = icmp ult i64 %1283, %1247
  %1285 = zext i1 %1284 to i64
  %1286 = select i1 %1281, i64 %1285, i64 %1282
  store i64 %1283, ptr %1069, align 8
  %1287 = add i64 %1286, %1252
  %1288 = icmp ult i64 %1287, %1252
  store i64 %1287, ptr %1072, align 8
  %1289 = select i1 %1250, i64 %1254, i64 %1251
  %1290 = load i64, ptr %1100, align 8
  %1291 = load i64, ptr %1073, align 8
  %1292 = tail call i64 @llvm.fshl.i64(i64 %1290, i64 %1291, i64 32) #20
  %1293 = load i64, ptr %1102, align 8
  %1294 = tail call i64 @llvm.fshl.i64(i64 %1293, i64 %1290, i64 32) #20
  %1295 = load i64, ptr %1104, align 8
  %1296 = tail call i64 @llvm.fshl.i64(i64 %1295, i64 %1293, i64 32) #20
  %1297 = load i64, ptr %1106, align 8
  %1298 = tail call i64 @llvm.fshl.i64(i64 %1297, i64 %1295, i64 32) #20
  %1299 = load i64, ptr %1075, align 8
  %1300 = tail call i64 @llvm.fshl.i64(i64 %1299, i64 %1297, i64 32) #20
  %1301 = tail call i64 @llvm.fshl.i64(i64 %1291, i64 %1299, i64 32) #20
  %1302 = sub i64 %1261, %1292
  %1303 = icmp ne i64 %1292, 0
  %1304 = icmp ult i64 %1261, %1292
  %1305 = select i1 %1303, i1 %1304, i1 false
  %1306 = zext i1 %1305 to i64
  store i64 %1302, ptr %0, align 8
  %1307 = add i64 %1294, %1306
  %1308 = sub i64 %1267, %1307
  %1309 = icmp eq i64 %1307, 0
  %1310 = icmp ult i64 %1267, %1307
  %1311 = zext i1 %1310 to i64
  %1312 = select i1 %1309, i64 %1306, i64 %1311
  store i64 %1308, ptr %1060, align 8
  %1313 = add i64 %1312, %1296
  %1314 = sub i64 %1273, %1313
  %1315 = icmp eq i64 %1313, 0
  %1316 = icmp ult i64 %1273, %1313
  %1317 = zext i1 %1316 to i64
  %1318 = select i1 %1315, i64 %1312, i64 %1317
  store i64 %1314, ptr %1063, align 8
  %1319 = add i64 %1318, %1298
  %1320 = sub i64 %1278, %1319
  %1321 = icmp eq i64 %1319, 0
  %1322 = icmp ult i64 %1278, %1319
  %1323 = zext i1 %1322 to i64
  %1324 = select i1 %1321, i64 %1318, i64 %1323
  store i64 %1320, ptr %1066, align 8
  %1325 = add i64 %1324, %1300
  %1326 = sub i64 %1283, %1325
  %1327 = icmp eq i64 %1325, 0
  %1328 = icmp ult i64 %1283, %1325
  %1329 = zext i1 %1328 to i64
  %1330 = select i1 %1327, i64 %1324, i64 %1329
  store i64 %1326, ptr %1069, align 8
  %1331 = add i64 %1330, %1301
  %1332 = sub i64 %1287, %1331
  %1333 = icmp ult i64 %1287, %1331
  %1334 = zext i1 %1333 to i64
  store i64 %1332, ptr %1072, align 8
  %1335 = select i1 %1281, i1 %1284, i1 false
  %1336 = select i1 %1335, i1 %1288, i1 false
  %1337 = zext i1 %1336 to i64
  %1338 = load i64, ptr %1075, align 8
  %1339 = shl i64 %1338, 32
  %1340 = load i64, ptr %1073, align 8
  %1341 = tail call i64 @llvm.fshl.i64(i64 %1340, i64 %1338, i64 32) #20
  %1342 = lshr i64 %1340, 32
  %1343 = sub i64 %1302, %1339
  %1344 = icmp ne i64 %1339, 0
  %1345 = icmp ult i64 %1302, %1339
  %1346 = select i1 %1344, i1 %1345, i1 false
  %1347 = zext i1 %1346 to i64
  store i64 %1343, ptr %0, align 8
  %1348 = add i64 %1341, %1347
  %1349 = sub i64 %1308, %1348
  %1350 = icmp eq i64 %1348, 0
  %1351 = icmp ult i64 %1308, %1348
  %1352 = zext i1 %1351 to i64
  %1353 = select i1 %1350, i64 %1347, i64 %1352
  store i64 %1349, ptr %1060, align 8
  %1354 = add nuw nsw i64 %1353, %1342
  %1355 = sub i64 %1314, %1354
  %1356 = icmp eq i64 %1354, 0
  %1357 = icmp ult i64 %1314, %1354
  %1358 = zext i1 %1357 to i64
  %1359 = select i1 %1356, i64 %1353, i64 %1358
  store i64 %1355, ptr %1063, align 8
  %1360 = sub i64 %1320, %1359
  %1361 = icmp ne i64 %1359, 0
  %1362 = icmp ult i64 %1320, %1359
  %1363 = select i1 %1361, i1 %1362, i1 false
  %1364 = zext i1 %1363 to i64
  store i64 %1360, ptr %1066, align 8
  %1365 = sub i64 %1326, %1364
  %1366 = icmp ult i64 %1326, %1364
  %1367 = zext i1 %1366 to i64
  %1368 = select i1 %1363, i64 %1367, i64 %1364
  store i64 %1365, ptr %1069, align 8
  %1369 = sub i64 %1332, %1368
  %1370 = icmp ult i64 %1332, %1368
  store i64 %1369, ptr %1072, align 8
  %1371 = icmp eq i64 %1331, 0
  %1372 = select i1 %1371, i64 %1330, i64 %1334
  %1373 = load i64, ptr %1073, align 8
  %1374 = and i64 %1373, -4294967296
  %1375 = lshr i64 %1373, 32
  %1376 = sub i64 %1349, %1374
  %1377 = icmp ne i64 %1374, 0
  %1378 = icmp ult i64 %1349, %1374
  %1379 = select i1 %1377, i1 %1378, i1 false
  %1380 = zext i1 %1379 to i64
  store i64 %1376, ptr %1060, align 8
  %1381 = add nuw nsw i64 %1375, %1380
  %1382 = sub i64 %1355, %1381
  %1383 = icmp eq i64 %1381, 0
  %1384 = icmp ult i64 %1355, %1381
  %1385 = zext i1 %1384 to i64
  %1386 = select i1 %1383, i64 %1380, i64 %1385
  store i64 %1382, ptr %1063, align 8
  %1387 = sub i64 %1360, %1386
  %1388 = select i1 %1383, i1 %1379, i1 %1384
  %1389 = icmp ult i64 %1360, %1386
  %1390 = select i1 %1388, i1 %1389, i1 false
  %1391 = zext i1 %1390 to i64
  store i64 %1387, ptr %1066, align 8
  %1392 = sub i64 %1365, %1391
  %1393 = icmp ult i64 %1365, %1391
  %1394 = zext i1 %1393 to i64
  %1395 = select i1 %1390, i64 %1394, i64 %1391
  store i64 %1392, ptr %1069, align 8
  %1396 = sub i64 %1369, %1395
  %1397 = select i1 %1390, i1 %1393, i1 false
  %1398 = icmp ult i64 %1369, %1395
  %1399 = select i1 %1397, i1 %1398, i1 false
  %1400 = sext i1 %1399 to i64
  store i64 %1396, ptr %1072, align 8
  %1401 = select i1 %1363, i1 %1366, i1 false
  %1402 = select i1 %1401, i1 %1370, i1 false
  %1403 = sext i1 %1402 to i64
  %1404 = add nuw nsw i64 %1190, %1143
  %1405 = add nuw nsw i64 %1404, %1233
  %1406 = add nuw nsw i64 %1405, %1256
  %1407 = add nuw nsw i64 %1406, %1289
  %1408 = add nuw nsw i64 %1407, %1337
  %1409 = sub nsw i64 %1408, %1372
  %1410 = add nsw i64 %1409, %1403
  %1411 = add nsw i64 %1410, %1400
  %1412 = trunc i64 %1411 to i32
  %1413 = icmp slt i32 %1412, 0
  br i1 %1413, label %1420, label %1414

1414:                                             ; preds = %1056
  %1415 = getelementptr i64, ptr %13, i32 5
  %1416 = getelementptr i64, ptr %13, i32 4
  %1417 = getelementptr i64, ptr %13, i32 3
  %1418 = getelementptr i64, ptr %13, i32 2
  %1419 = getelementptr i64, ptr %13, i32 1
  br label %1478

1420:                                             ; preds = %1056
  %1421 = getelementptr i64, ptr %13, i32 1
  %1422 = getelementptr i64, ptr %13, i32 2
  %1423 = getelementptr i64, ptr %13, i32 3
  %1424 = getelementptr i64, ptr %13, i32 4
  %1425 = getelementptr i64, ptr %13, i32 5
  br label %1426

1426:                                             ; preds = %1426, %1420
  %1427 = phi i64 [ %1470, %1426 ], [ %1396, %1420 ]
  %1428 = phi i64 [ %1463, %1426 ], [ %1392, %1420 ]
  %1429 = phi i64 [ %1456, %1426 ], [ %1387, %1420 ]
  %1430 = phi i64 [ %1449, %1426 ], [ %1382, %1420 ]
  %1431 = phi i64 [ %1442, %1426 ], [ %1376, %1420 ]
  %1432 = phi i64 [ %1435, %1426 ], [ %1343, %1420 ]
  %1433 = phi i32 [ %1476, %1426 ], [ %1412, %1420 ]
  %1434 = load i64, ptr %13, align 8
  %1435 = add i64 %1434, %1432
  %1436 = icmp ne i64 %1434, 0
  %1437 = icmp ult i64 %1435, %1432
  %1438 = select i1 %1436, i1 %1437, i1 false
  %1439 = zext i1 %1438 to i64
  store i64 %1435, ptr %0, align 8
  %1440 = load i64, ptr %1421, align 8
  %1441 = add i64 %1440, %1431
  %1442 = add i64 %1441, %1439
  %1443 = icmp eq i64 %1442, %1431
  %1444 = icmp ult i64 %1442, %1431
  %1445 = zext i1 %1444 to i64
  %1446 = select i1 %1443, i64 %1439, i64 %1445
  store i64 %1442, ptr %1060, align 8
  %1447 = load i64, ptr %1422, align 8
  %1448 = add i64 %1447, %1430
  %1449 = add i64 %1448, %1446
  %1450 = icmp eq i64 %1449, %1430
  %1451 = icmp ult i64 %1449, %1430
  %1452 = zext i1 %1451 to i64
  %1453 = select i1 %1450, i64 %1446, i64 %1452
  store i64 %1449, ptr %1063, align 8
  %1454 = load i64, ptr %1423, align 8
  %1455 = add i64 %1454, %1429
  %1456 = add i64 %1455, %1453
  %1457 = icmp eq i64 %1456, %1429
  %1458 = icmp ult i64 %1456, %1429
  %1459 = zext i1 %1458 to i64
  %1460 = select i1 %1457, i64 %1453, i64 %1459
  store i64 %1456, ptr %1066, align 8
  %1461 = load i64, ptr %1424, align 8
  %1462 = add i64 %1461, %1428
  %1463 = add i64 %1462, %1460
  %1464 = icmp eq i64 %1463, %1428
  %1465 = icmp ult i64 %1463, %1428
  %1466 = zext i1 %1465 to i64
  %1467 = select i1 %1464, i64 %1460, i64 %1466
  store i64 %1463, ptr %1069, align 8
  %1468 = load i64, ptr %1425, align 8
  %1469 = add i64 %1468, %1427
  %1470 = add i64 %1469, %1467
  %1471 = icmp eq i64 %1470, %1427
  %1472 = icmp ult i64 %1470, %1427
  %1473 = zext i1 %1472 to i64
  %1474 = select i1 %1471, i64 %1467, i64 %1473
  store i64 %1470, ptr %1072, align 8
  %1475 = trunc i64 %1474 to i32
  %1476 = add nsw i32 %1433, %1475
  %1477 = icmp slt i32 %1476, 0
  br i1 %1477, label %1426, label %1564

1478:                                             ; preds = %1515, %1414
  %1479 = phi i64 [ %1517, %1515 ], [ %1343, %1414 ]
  %1480 = phi i64 [ %1524, %1515 ], [ %1376, %1414 ]
  %1481 = phi i64 [ %1531, %1515 ], [ %1382, %1414 ]
  %1482 = phi i64 [ %1538, %1515 ], [ %1387, %1414 ]
  %1483 = phi i64 [ %1545, %1515 ], [ %1392, %1414 ]
  %1484 = phi i64 [ %1552, %1515 ], [ %1396, %1414 ]
  %1485 = phi i32 [ %1558, %1515 ], [ %1412, %1414 ]
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1487, label %1515

1487:                                             ; preds = %1478
  %1488 = load i64, ptr %1415, align 8
  %1489 = icmp ugt i64 %1488, %1484
  br i1 %1489, label %1564, label %1490

1490:                                             ; preds = %1487
  %1491 = icmp ult i64 %1488, %1484
  br i1 %1491, label %1515, label %1492

1492:                                             ; preds = %1490
  %1493 = load i64, ptr %1416, align 8
  %1494 = icmp ugt i64 %1493, %1483
  br i1 %1494, label %1564, label %1495

1495:                                             ; preds = %1492
  %1496 = icmp ult i64 %1493, %1483
  br i1 %1496, label %1515, label %1497

1497:                                             ; preds = %1495
  %1498 = load i64, ptr %1417, align 8
  %1499 = icmp ugt i64 %1498, %1482
  br i1 %1499, label %1564, label %1500

1500:                                             ; preds = %1497
  %1501 = icmp ult i64 %1498, %1482
  br i1 %1501, label %1515, label %1502

1502:                                             ; preds = %1500
  %1503 = load i64, ptr %1418, align 8
  %1504 = icmp ugt i64 %1503, %1481
  br i1 %1504, label %1564, label %1505

1505:                                             ; preds = %1502
  %1506 = icmp ult i64 %1503, %1481
  br i1 %1506, label %1515, label %1507

1507:                                             ; preds = %1505
  %1508 = load i64, ptr %1419, align 8
  %1509 = icmp ugt i64 %1508, %1480
  br i1 %1509, label %1564, label %1510

1510:                                             ; preds = %1507
  %1511 = icmp ult i64 %1508, %1480
  br i1 %1511, label %1515, label %1512

1512:                                             ; preds = %1510
  %1513 = load i64, ptr %13, align 8
  %1514 = icmp ugt i64 %1513, %1479
  br i1 %1514, label %1564, label %1515

1515:                                             ; preds = %1512, %1510, %1505, %1500, %1495, %1490, %1478
  %1516 = load i64, ptr %13, align 8
  %1517 = sub i64 %1479, %1516
  %1518 = icmp ne i64 %1516, 0
  %1519 = icmp ult i64 %1479, %1516
  %1520 = select i1 %1518, i1 %1519, i1 false
  %1521 = zext i1 %1520 to i64
  store i64 %1517, ptr %0, align 8
  %1522 = load i64, ptr %1419, align 8
  %1523 = add i64 %1522, %1521
  %1524 = sub i64 %1480, %1523
  %1525 = icmp eq i64 %1523, 0
  %1526 = icmp ult i64 %1480, %1523
  %1527 = zext i1 %1526 to i64
  %1528 = select i1 %1525, i64 %1521, i64 %1527
  store i64 %1524, ptr %1060, align 8
  %1529 = load i64, ptr %1418, align 8
  %1530 = add i64 %1528, %1529
  %1531 = sub i64 %1481, %1530
  %1532 = icmp eq i64 %1530, 0
  %1533 = icmp ult i64 %1481, %1530
  %1534 = zext i1 %1533 to i64
  %1535 = select i1 %1532, i64 %1528, i64 %1534
  store i64 %1531, ptr %1063, align 8
  %1536 = load i64, ptr %1417, align 8
  %1537 = add i64 %1535, %1536
  %1538 = sub i64 %1482, %1537
  %1539 = icmp eq i64 %1537, 0
  %1540 = icmp ult i64 %1482, %1537
  %1541 = zext i1 %1540 to i64
  %1542 = select i1 %1539, i64 %1535, i64 %1541
  store i64 %1538, ptr %1066, align 8
  %1543 = load i64, ptr %1416, align 8
  %1544 = add i64 %1542, %1543
  %1545 = sub i64 %1483, %1544
  %1546 = icmp eq i64 %1544, 0
  %1547 = icmp ult i64 %1483, %1544
  %1548 = zext i1 %1547 to i64
  %1549 = select i1 %1546, i64 %1542, i64 %1548
  store i64 %1545, ptr %1069, align 8
  %1550 = load i64, ptr %1415, align 8
  %1551 = add i64 %1549, %1550
  %1552 = sub i64 %1484, %1551
  %1553 = icmp eq i64 %1551, 0
  %1554 = icmp ult i64 %1484, %1551
  %1555 = zext i1 %1554 to i64
  %1556 = select i1 %1553, i64 %1549, i64 %1555
  store i64 %1552, ptr %1072, align 8
  %1557 = trunc i64 %1556 to i32
  %1558 = sub i32 %1485, %1557
  br label %1478

1559:                                             ; preds = %596
  %1560 = tail call i32 @___ratelimit(ptr noundef nonnull @vli_mmod_fast._rs, ptr noundef nonnull @__func__.vli_mmod_fast) #20
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1564, label %1562

1562:                                             ; preds = %1559
  %1563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %1564

1564:                                             ; preds = %1562, %1559, %1512, %1507, %1502, %1497, %1492, %1487, %1426, %1023, %1018, %1013, %1008, %965, %679, %674, %669, %595, %365, %134
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xycz_add_c(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = alloca [8 x i64], align 8
  %7 = alloca [8 x i64], align 8
  %8 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ecc_curve, ptr %4, i32 0, i32 1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %15, %5
  %16 = phi i32 [ %29, %15 ], [ 0, %5 ]
  %17 = phi i64 [ %27, %15 ], [ 0, %5 ]
  %18 = getelementptr i64, ptr %2, i32 %16
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr i64, ptr %0, i32 %16
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %17
  %23 = sub i64 %19, %22
  %24 = icmp eq i64 %22, 0
  %25 = icmp ult i64 %19, %22
  %26 = zext i1 %25 to i64
  %27 = select i1 %24, i64 %17, i64 %26
  %28 = getelementptr i64, ptr %6, i32 %16
  store i64 %23, ptr %28, align 8
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %31, label %15

31:                                               ; preds = %15
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ %46, %33 ], [ 0, %31 ]
  %35 = phi i64 [ %45, %33 ], [ 0, %31 ]
  %36 = getelementptr i64, ptr %6, i32 %34
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr i64, ptr %10, i32 %34
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %37, %35
  %41 = add i64 %40, %39
  %42 = icmp eq i64 %41, %37
  %43 = icmp ult i64 %41, %37
  %44 = zext i1 %43 to i64
  %45 = select i1 %42, i64 %35, i64 %44
  store i64 %41, ptr %36, align 8
  %46 = add nuw nsw i32 %34, 1
  %47 = icmp eq i32 %46, %13
  br i1 %47, label %48, label %33

48:                                               ; preds = %33, %31
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %4)
  br label %49

49:                                               ; preds = %49, %48
  %50 = phi i32 [ %63, %49 ], [ 0, %48 ]
  %51 = phi i64 [ %61, %49 ], [ 0, %48 ]
  %52 = getelementptr i64, ptr %3, i32 %50
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr i64, ptr %1, i32 %50
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %53, %51
  %57 = add i64 %56, %55
  %58 = icmp eq i64 %57, %53
  %59 = icmp ult i64 %57, %53
  %60 = zext i1 %59 to i64
  %61 = select i1 %58, i64 %51, i64 %60
  %62 = getelementptr i64, ptr %6, i32 %50
  store i64 %57, ptr %62, align 8
  %63 = add nuw nsw i32 %50, 1
  %64 = icmp eq i32 %63, %13
  br i1 %64, label %65, label %49

65:                                               ; preds = %49
  %66 = icmp eq i64 %61, 0
  br i1 %66, label %68, label %81

67:                                               ; preds = %5
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %4)
  br label %68

68:                                               ; preds = %67, %65
  br label %69

69:                                               ; preds = %79, %68
  %70 = phi i32 [ %71, %79 ], [ %13, %68 ]
  %71 = add nsw i32 %70, -1
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = getelementptr i64, ptr %6, i32 %71
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr i64, ptr %10, i32 %71
  %77 = load i64, ptr %76, align 8
  %78 = icmp ugt i64 %75, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = icmp ult i64 %75, %77
  br i1 %80, label %97, label %69

81:                                               ; preds = %73, %69, %65
  br i1 %14, label %164, label %82

82:                                               ; preds = %82, %81
  %83 = phi i32 [ %95, %82 ], [ 0, %81 ]
  %84 = phi i64 [ %94, %82 ], [ 0, %81 ]
  %85 = getelementptr i64, ptr %6, i32 %83
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr i64, ptr %10, i32 %83
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %88, %84
  %90 = sub i64 %86, %89
  %91 = icmp eq i64 %89, 0
  %92 = icmp ult i64 %86, %89
  %93 = zext i1 %92 to i64
  %94 = select i1 %91, i64 %84, i64 %93
  store i64 %90, ptr %85, align 8
  %95 = add nuw nsw i32 %83, 1
  %96 = icmp eq i32 %95, %13
  br i1 %96, label %97, label %82

97:                                               ; preds = %82, %79
  br i1 %14, label %164, label %98

98:                                               ; preds = %98, %97
  %99 = phi i32 [ %111, %98 ], [ 0, %97 ]
  %100 = phi i64 [ %110, %98 ], [ 0, %97 ]
  %101 = getelementptr i64, ptr %3, i32 %99
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr i64, ptr %1, i32 %99
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, %100
  %106 = sub i64 %102, %105
  %107 = icmp eq i64 %105, 0
  %108 = icmp ult i64 %102, %105
  %109 = zext i1 %108 to i64
  %110 = select i1 %107, i64 %100, i64 %109
  store i64 %106, ptr %101, align 8
  %111 = add nuw nsw i32 %99, 1
  %112 = icmp eq i32 %111, %13
  br i1 %112, label %113, label %98

113:                                              ; preds = %98
  %114 = icmp eq i64 %110, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %115, %113
  %116 = phi i32 [ %128, %115 ], [ 0, %113 ]
  %117 = phi i64 [ %127, %115 ], [ 0, %113 ]
  %118 = getelementptr i64, ptr %3, i32 %116
  %119 = load i64, ptr %118, align 8
  %120 = getelementptr i64, ptr %10, i32 %116
  %121 = load i64, ptr %120, align 8
  %122 = add i64 %119, %117
  %123 = add i64 %122, %121
  %124 = icmp eq i64 %123, %119
  %125 = icmp ult i64 %123, %119
  %126 = zext i1 %125 to i64
  %127 = select i1 %124, i64 %117, i64 %126
  store i64 %123, ptr %118, align 8
  %128 = add nuw nsw i32 %116, 1
  %129 = icmp eq i32 %128, %13
  br i1 %129, label %130, label %115

130:                                              ; preds = %115, %113
  br label %131

131:                                              ; preds = %131, %130
  %132 = phi i32 [ %145, %131 ], [ 0, %130 ]
  %133 = phi i64 [ %143, %131 ], [ 0, %130 ]
  %134 = getelementptr i64, ptr %2, i32 %132
  %135 = load i64, ptr %134, align 8
  %136 = getelementptr i64, ptr %0, i32 %132
  %137 = load i64, ptr %136, align 8
  %138 = add i64 %137, %133
  %139 = sub i64 %135, %138
  %140 = icmp eq i64 %138, 0
  %141 = icmp ult i64 %135, %138
  %142 = zext i1 %141 to i64
  %143 = select i1 %140, i64 %133, i64 %142
  %144 = getelementptr i64, ptr %7, i32 %132
  store i64 %139, ptr %144, align 8
  %145 = add nuw nsw i32 %132, 1
  %146 = icmp eq i32 %145, %13
  br i1 %146, label %147, label %131

147:                                              ; preds = %131
  %148 = icmp eq i64 %143, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ %162, %149 ], [ 0, %147 ]
  %151 = phi i64 [ %161, %149 ], [ 0, %147 ]
  %152 = getelementptr i64, ptr %7, i32 %150
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr i64, ptr %10, i32 %150
  %155 = load i64, ptr %154, align 8
  %156 = add i64 %153, %151
  %157 = add i64 %156, %155
  %158 = icmp eq i64 %157, %153
  %159 = icmp ult i64 %157, %153
  %160 = zext i1 %159 to i64
  %161 = select i1 %158, i64 %151, i64 %160
  store i64 %157, ptr %152, align 8
  %162 = add nuw nsw i32 %150, 1
  %163 = icmp eq i32 %162, %13
  br i1 %163, label %165, label %149

164:                                              ; preds = %97, %81
  call fastcc void @vli_mod_mult_fast(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %4)
  br label %184

165:                                              ; preds = %149, %147
  call fastcc void @vli_mod_mult_fast(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %4)
  br label %166

166:                                              ; preds = %166, %165
  %167 = phi i32 [ %180, %166 ], [ 0, %165 ]
  %168 = phi i64 [ %178, %166 ], [ 0, %165 ]
  %169 = getelementptr i64, ptr %0, i32 %167
  %170 = load i64, ptr %169, align 8
  %171 = getelementptr i64, ptr %2, i32 %167
  %172 = load i64, ptr %171, align 8
  %173 = add i64 %170, %168
  %174 = add i64 %173, %172
  %175 = icmp eq i64 %174, %170
  %176 = icmp ult i64 %174, %170
  %177 = zext i1 %176 to i64
  %178 = select i1 %175, i64 %168, i64 %177
  %179 = getelementptr i64, ptr %7, i32 %167
  store i64 %174, ptr %179, align 8
  %180 = add nuw nsw i32 %167, 1
  %181 = icmp eq i32 %180, %13
  br i1 %181, label %182, label %166

182:                                              ; preds = %166
  %183 = icmp eq i64 %178, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %182, %164
  br label %185

185:                                              ; preds = %195, %184
  %186 = phi i32 [ %187, %195 ], [ %13, %184 ]
  %187 = add nsw i32 %186, -1
  %188 = icmp sgt i32 %186, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = getelementptr i64, ptr %7, i32 %187
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr i64, ptr %10, i32 %187
  %193 = load i64, ptr %192, align 8
  %194 = icmp ugt i64 %191, %193
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = icmp ult i64 %191, %193
  br i1 %196, label %214, label %185

197:                                              ; preds = %189, %185, %182
  br i1 %14, label %198, label %199

198:                                              ; preds = %197
  call fastcc void @vli_mod_square_fast(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %381

199:                                              ; preds = %199, %197
  %200 = phi i32 [ %212, %199 ], [ 0, %197 ]
  %201 = phi i64 [ %211, %199 ], [ 0, %197 ]
  %202 = getelementptr i64, ptr %7, i32 %200
  %203 = load i64, ptr %202, align 8
  %204 = getelementptr i64, ptr %10, i32 %200
  %205 = load i64, ptr %204, align 8
  %206 = add i64 %205, %201
  %207 = sub i64 %203, %206
  %208 = icmp eq i64 %206, 0
  %209 = icmp ult i64 %203, %206
  %210 = zext i1 %209 to i64
  %211 = select i1 %208, i64 %201, i64 %210
  store i64 %207, ptr %202, align 8
  %212 = add nuw nsw i32 %200, 1
  %213 = icmp eq i32 %212, %13
  br i1 %213, label %214, label %199

214:                                              ; preds = %199, %195
  call fastcc void @vli_mod_square_fast(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br i1 %14, label %381, label %215

215:                                              ; preds = %215, %214
  %216 = phi i32 [ %228, %215 ], [ 0, %214 ]
  %217 = phi i64 [ %227, %215 ], [ 0, %214 ]
  %218 = getelementptr i64, ptr %2, i32 %216
  %219 = load i64, ptr %218, align 8
  %220 = getelementptr i64, ptr %7, i32 %216
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %221, %217
  %223 = sub i64 %219, %222
  %224 = icmp eq i64 %222, 0
  %225 = icmp ult i64 %219, %222
  %226 = zext i1 %225 to i64
  %227 = select i1 %224, i64 %217, i64 %226
  store i64 %223, ptr %218, align 8
  %228 = add nuw nsw i32 %216, 1
  %229 = icmp eq i32 %228, %13
  br i1 %229, label %230, label %215

230:                                              ; preds = %215
  %231 = icmp eq i64 %227, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %232, %230
  %233 = phi i32 [ %245, %232 ], [ 0, %230 ]
  %234 = phi i64 [ %244, %232 ], [ 0, %230 ]
  %235 = getelementptr i64, ptr %2, i32 %233
  %236 = load i64, ptr %235, align 8
  %237 = getelementptr i64, ptr %10, i32 %233
  %238 = load i64, ptr %237, align 8
  %239 = add i64 %236, %234
  %240 = add i64 %239, %238
  %241 = icmp eq i64 %240, %236
  %242 = icmp ult i64 %240, %236
  %243 = zext i1 %242 to i64
  %244 = select i1 %241, i64 %234, i64 %243
  store i64 %240, ptr %235, align 8
  %245 = add nuw nsw i32 %233, 1
  %246 = icmp eq i32 %245, %13
  br i1 %246, label %247, label %232

247:                                              ; preds = %232, %230
  br label %248

248:                                              ; preds = %248, %247
  %249 = phi i32 [ %262, %248 ], [ 0, %247 ]
  %250 = phi i64 [ %260, %248 ], [ 0, %247 ]
  %251 = getelementptr i64, ptr %0, i32 %249
  %252 = load i64, ptr %251, align 8
  %253 = getelementptr i64, ptr %2, i32 %249
  %254 = load i64, ptr %253, align 8
  %255 = add i64 %254, %250
  %256 = sub i64 %252, %255
  %257 = icmp eq i64 %255, 0
  %258 = icmp ult i64 %252, %255
  %259 = zext i1 %258 to i64
  %260 = select i1 %257, i64 %250, i64 %259
  %261 = getelementptr i64, ptr %8, i32 %249
  store i64 %256, ptr %261, align 8
  %262 = add nuw nsw i32 %249, 1
  %263 = icmp eq i32 %262, %13
  br i1 %263, label %264, label %248

264:                                              ; preds = %248
  %265 = icmp eq i64 %260, 0
  br i1 %265, label %281, label %266

266:                                              ; preds = %266, %264
  %267 = phi i32 [ %279, %266 ], [ 0, %264 ]
  %268 = phi i64 [ %278, %266 ], [ 0, %264 ]
  %269 = getelementptr i64, ptr %8, i32 %267
  %270 = load i64, ptr %269, align 8
  %271 = getelementptr i64, ptr %10, i32 %267
  %272 = load i64, ptr %271, align 8
  %273 = add i64 %270, %268
  %274 = add i64 %273, %272
  %275 = icmp eq i64 %274, %270
  %276 = icmp ult i64 %274, %270
  %277 = zext i1 %276 to i64
  %278 = select i1 %275, i64 %268, i64 %277
  store i64 %274, ptr %269, align 8
  %279 = add nuw nsw i32 %267, 1
  %280 = icmp eq i32 %279, %13
  br i1 %280, label %281, label %266

281:                                              ; preds = %266, %264
  call fastcc void @vli_mod_mult_fast(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %8, ptr noundef %4)
  br label %282

282:                                              ; preds = %282, %281
  %283 = phi i32 [ %295, %282 ], [ 0, %281 ]
  %284 = phi i64 [ %294, %282 ], [ 0, %281 ]
  %285 = getelementptr i64, ptr %3, i32 %283
  %286 = load i64, ptr %285, align 8
  %287 = getelementptr i64, ptr %1, i32 %283
  %288 = load i64, ptr %287, align 8
  %289 = add i64 %288, %284
  %290 = sub i64 %286, %289
  %291 = icmp eq i64 %289, 0
  %292 = icmp ult i64 %286, %289
  %293 = zext i1 %292 to i64
  %294 = select i1 %291, i64 %284, i64 %293
  store i64 %290, ptr %285, align 8
  %295 = add nuw nsw i32 %283, 1
  %296 = icmp eq i32 %295, %13
  br i1 %296, label %297, label %282

297:                                              ; preds = %282
  %298 = icmp eq i64 %294, 0
  br i1 %298, label %314, label %299

299:                                              ; preds = %299, %297
  %300 = phi i32 [ %312, %299 ], [ 0, %297 ]
  %301 = phi i64 [ %311, %299 ], [ 0, %297 ]
  %302 = getelementptr i64, ptr %3, i32 %300
  %303 = load i64, ptr %302, align 8
  %304 = getelementptr i64, ptr %10, i32 %300
  %305 = load i64, ptr %304, align 8
  %306 = add i64 %303, %301
  %307 = add i64 %306, %305
  %308 = icmp eq i64 %307, %303
  %309 = icmp ult i64 %307, %303
  %310 = zext i1 %309 to i64
  %311 = select i1 %308, i64 %301, i64 %310
  store i64 %307, ptr %302, align 8
  %312 = add nuw nsw i32 %300, 1
  %313 = icmp eq i32 %312, %13
  br i1 %313, label %314, label %299

314:                                              ; preds = %299, %297
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %4)
  br label %315

315:                                              ; preds = %315, %314
  %316 = phi i32 [ %328, %315 ], [ 0, %314 ]
  %317 = phi i64 [ %327, %315 ], [ 0, %314 ]
  %318 = getelementptr i64, ptr %8, i32 %316
  %319 = load i64, ptr %318, align 8
  %320 = getelementptr i64, ptr %7, i32 %316
  %321 = load i64, ptr %320, align 8
  %322 = add i64 %321, %317
  %323 = sub i64 %319, %322
  %324 = icmp eq i64 %322, 0
  %325 = icmp ult i64 %319, %322
  %326 = zext i1 %325 to i64
  %327 = select i1 %324, i64 %317, i64 %326
  store i64 %323, ptr %318, align 8
  %328 = add nuw nsw i32 %316, 1
  %329 = icmp eq i32 %328, %13
  br i1 %329, label %330, label %315

330:                                              ; preds = %315
  %331 = icmp eq i64 %327, 0
  br i1 %331, label %347, label %332

332:                                              ; preds = %332, %330
  %333 = phi i32 [ %345, %332 ], [ 0, %330 ]
  %334 = phi i64 [ %344, %332 ], [ 0, %330 ]
  %335 = getelementptr i64, ptr %8, i32 %333
  %336 = load i64, ptr %335, align 8
  %337 = getelementptr i64, ptr %10, i32 %333
  %338 = load i64, ptr %337, align 8
  %339 = add i64 %336, %334
  %340 = add i64 %339, %338
  %341 = icmp eq i64 %340, %336
  %342 = icmp ult i64 %340, %336
  %343 = zext i1 %342 to i64
  %344 = select i1 %341, i64 %334, i64 %343
  store i64 %340, ptr %335, align 8
  %345 = add nuw nsw i32 %333, 1
  %346 = icmp eq i32 %345, %13
  br i1 %346, label %347, label %332

347:                                              ; preds = %332, %330
  br label %348

348:                                              ; preds = %348, %347
  %349 = phi i32 [ %362, %348 ], [ 0, %347 ]
  %350 = phi i64 [ %360, %348 ], [ 0, %347 ]
  %351 = getelementptr i64, ptr %8, i32 %349
  %352 = load i64, ptr %351, align 8
  %353 = getelementptr i64, ptr %0, i32 %349
  %354 = load i64, ptr %353, align 8
  %355 = add i64 %354, %350
  %356 = sub i64 %352, %355
  %357 = icmp eq i64 %355, 0
  %358 = icmp ult i64 %352, %355
  %359 = zext i1 %358 to i64
  %360 = select i1 %357, i64 %350, i64 %359
  %361 = getelementptr i64, ptr %7, i32 %349
  store i64 %356, ptr %361, align 8
  %362 = add nuw nsw i32 %349, 1
  %363 = icmp eq i32 %362, %13
  br i1 %363, label %364, label %348

364:                                              ; preds = %348
  %365 = icmp eq i64 %360, 0
  br i1 %365, label %382, label %366

366:                                              ; preds = %366, %364
  %367 = phi i32 [ %379, %366 ], [ 0, %364 ]
  %368 = phi i64 [ %378, %366 ], [ 0, %364 ]
  %369 = getelementptr i64, ptr %7, i32 %367
  %370 = load i64, ptr %369, align 8
  %371 = getelementptr i64, ptr %10, i32 %367
  %372 = load i64, ptr %371, align 8
  %373 = add i64 %370, %368
  %374 = add i64 %373, %372
  %375 = icmp eq i64 %374, %370
  %376 = icmp ult i64 %374, %370
  %377 = zext i1 %376 to i64
  %378 = select i1 %375, i64 %368, i64 %377
  store i64 %374, ptr %369, align 8
  %379 = add nuw nsw i32 %367, 1
  %380 = icmp eq i32 %379, %13
  br i1 %380, label %382, label %366

381:                                              ; preds = %214, %198
  call fastcc void @vli_mod_mult_fast(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %8, ptr noundef %4)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %4)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %4)
  br label %417

382:                                              ; preds = %366, %364
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %4)
  br label %383

383:                                              ; preds = %383, %382
  %384 = phi i32 [ %396, %383 ], [ 0, %382 ]
  %385 = phi i64 [ %395, %383 ], [ 0, %382 ]
  %386 = getelementptr i64, ptr %7, i32 %384
  %387 = load i64, ptr %386, align 8
  %388 = getelementptr i64, ptr %1, i32 %384
  %389 = load i64, ptr %388, align 8
  %390 = add i64 %389, %385
  %391 = sub i64 %387, %390
  %392 = icmp eq i64 %390, 0
  %393 = icmp ult i64 %387, %390
  %394 = zext i1 %393 to i64
  %395 = select i1 %392, i64 %385, i64 %394
  store i64 %391, ptr %388, align 8
  %396 = add nuw nsw i32 %384, 1
  %397 = icmp eq i32 %396, %13
  br i1 %397, label %398, label %383

398:                                              ; preds = %383
  %399 = icmp eq i64 %395, 0
  br i1 %399, label %415, label %400

400:                                              ; preds = %400, %398
  %401 = phi i32 [ %413, %400 ], [ 0, %398 ]
  %402 = phi i64 [ %412, %400 ], [ 0, %398 ]
  %403 = getelementptr i64, ptr %1, i32 %401
  %404 = load i64, ptr %403, align 8
  %405 = getelementptr i64, ptr %10, i32 %401
  %406 = load i64, ptr %405, align 8
  %407 = add i64 %404, %402
  %408 = add i64 %407, %406
  %409 = icmp eq i64 %408, %404
  %410 = icmp ult i64 %408, %404
  %411 = zext i1 %410 to i64
  %412 = select i1 %409, i64 %402, i64 %411
  store i64 %408, ptr %403, align 8
  %413 = add nuw nsw i32 %401, 1
  %414 = icmp eq i32 %413, %13
  br i1 %414, label %415, label %400

415:                                              ; preds = %400, %398
  %416 = shl nuw nsw i32 %13, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %0, ptr nonnull align 8 %8, i32 %416, i1 false)
  br label %417

417:                                              ; preds = %415, %381
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #17

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148758063}
