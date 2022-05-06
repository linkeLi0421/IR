; ModuleID = '/llk/IR/arch/arm/crypto/chacha-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/chacha-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hchacha_block_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22hchacha_block_arch\22\09\09\09\09\09"
module asm "__kstrtabns_hchacha_block_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_init_arch\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_init_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_crypt_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_crypt_arch\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_crypt_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.38, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.38 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.chacha_ctx = type { [8 x i32], i32 }
%struct.skcipher_walk = type { %union.anon.43, %union.anon.43, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.45 = type { ptr, ptr }

@__kstrtab_hchacha_block_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_hchacha_block_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_hchacha_block_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hchacha_block_arch to i32), ptr @__kstrtab_hchacha_block_arch, ptr @__kstrtabns_hchacha_block_arch }, section "___ksymtab+hchacha_block_arch", align 4
@__kstrtab_chacha_init_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_init_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_init_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_init_arch to i32), ptr @__kstrtab_chacha_init_arch, ptr @__kstrtabns_chacha_init_arch }, section "___ksymtab+chacha_init_arch", align 4
@__kstrtab_chacha_crypt_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_crypt_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_crypt_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_crypt_arch to i32), ptr @__kstrtab_chacha_crypt_arch, ptr @__kstrtabns_chacha_crypt_arch }, section "___ksymtab+chacha_crypt_arch", align 4
@__UNIQUE_ID_description162 = internal constant [76 x i8] c"description=ChaCha and XChaCha stream ciphers (scalar and NEON accelerated)\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace165 = internal constant [15 x i8] c"alias=chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto166 = internal constant [22 x i8] c"alias=crypto-chacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace167 = internal constant [19 x i8] c"alias=chacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto168 = internal constant [26 x i8] c"alias=crypto-chacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace169 = internal constant [16 x i8] c"alias=xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto170 = internal constant [23 x i8] c"alias=crypto-xchacha20\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace171 = internal constant [20 x i8] c"alias=xchacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto172 = internal constant [27 x i8] c"alias=crypto-xchacha20-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace173 = internal constant [16 x i8] c"alias=xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto174 = internal constant [23 x i8] c"alias=crypto-xchacha12\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace175 = internal constant [20 x i8] c"alias=xchacha12-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto176 = internal constant [27 x i8] c"alias=crypto-xchacha12-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [20 x i8] c"alias=chacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [27 x i8] c"alias=crypto-chacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [21 x i8] c"alias=xchacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [28 x i8] c"alias=crypto-xchacha20-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace181 = internal constant [21 x i8] c"alias=xchacha12-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto182 = internal constant [28 x i8] c"alias=crypto-xchacha12-neon\00", section ".modinfo", align 1
@use_neon = internal global %struct.static_key_false zeroinitializer, section ".data..ro_after_init", align 4
@arm_algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @chacha20_setkey, ptr @chacha_arm, ptr @chacha_arm, ptr null, ptr null, i32 32, i32 32, i32 16, i32 64, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"chacha20-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @chacha20_setkey, ptr @xchacha_arm, ptr @xchacha_arm, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha20-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @chacha12_setkey, ptr @xchacha_arm, ptr @xchacha_arm, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha12-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@neon_algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @chacha20_setkey, ptr @chacha_neon, ptr @chacha_neon, ptr null, ptr null, i32 32, i32 32, i32 16, i32 64, i32 256, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"chacha20-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @chacha20_setkey, ptr @xchacha_neon, ptr @xchacha_neon, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 256, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha20-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @chacha12_setkey, ptr @xchacha_neon, ptr @xchacha_neon, ptr null, ptr null, i32 32, i32 32, i32 32, i32 64, i32 256, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 36, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xchacha12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xchacha12-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.38 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@__this_module = external dso_local global %struct.module, align 64
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias_crypto166, ptr @__UNIQUE_ID_alias_crypto168, ptr @__UNIQUE_ID_alias_crypto170, ptr @__UNIQUE_ID_alias_crypto172, ptr @__UNIQUE_ID_alias_crypto174, ptr @__UNIQUE_ID_alias_crypto176, ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_crypto182, ptr @__UNIQUE_ID_alias_userspace165, ptr @__UNIQUE_ID_alias_userspace167, ptr @__UNIQUE_ID_alias_userspace169, ptr @__UNIQUE_ID_alias_userspace171, ptr @__UNIQUE_ID_alias_userspace173, ptr @__UNIQUE_ID_alias_userspace175, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_alias_userspace181, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_license164, ptr @__ksymtab_chacha_crypt_arch, ptr @__ksymtab_chacha_init_arch, ptr @__ksymtab_hchacha_block_arch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hchacha_block_arch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr @use_neon, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18, !prof !8

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 983040
  %13 = or i32 %12, %10
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 65280
  %16 = or i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6, %3
  tail call void @hchacha_block_arm(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  br label %20

19:                                               ; preds = %6
  tail call void @kernel_neon_begin() #10
  tail call void @hchacha_block_neon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  tail call void @kernel_neon_end() #10
  br label %20

20:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_arm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hchacha_block_neon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @chacha_init_arch(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  store i32 1634760805, ptr %0, align 4
  %4 = getelementptr i32, ptr %0, i32 1
  store i32 857760878, ptr %4, align 4
  %5 = getelementptr i32, ptr %0, i32 2
  store i32 2036477234, ptr %5, align 4
  %6 = getelementptr i32, ptr %0, i32 3
  store i32 1797285236, ptr %6, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr i32, ptr %0, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i32, ptr %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i32, ptr %1, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i32, ptr %0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i32, ptr %1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %0, i32 7
  store i32 %16, ptr %17, align 4
  %18 = getelementptr i32, ptr %1, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %0, i32 8
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i32, ptr %1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i32, ptr %0, i32 9
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i32, ptr %1, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %0, i32 10
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i32, ptr %1, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr i32, ptr %0, i32 12
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %2, i32 4
  %33 = load i32, ptr %32, align 1
  %34 = getelementptr i32, ptr %0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %2, i32 8
  %36 = load i32, ptr %35, align 1
  %37 = getelementptr i32, ptr %0, i32 14
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %2, i32 12
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr i32, ptr %0, i32 15
  store i32 %39, ptr %40, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @chacha_crypt_arch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile i32, ptr @use_neon, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22, !prof !8

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 15728640
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 983040
  %15 = or i32 %14, %12
  %16 = load volatile i32, ptr %10, align 4
  %17 = and i32 %16, 65280
  %18 = or i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = icmp ugt i32 %3, 64
  %21 = and i1 %20, %19
  br i1 %21, label %28, label %22

22:                                               ; preds = %8, %5
  tail call void @chacha_doarm(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %4) #10
  %23 = add i32 %3, 63
  %24 = lshr i32 %23, 6
  %25 = getelementptr i32, ptr %0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  store i32 %27, ptr %25, align 4
  br label %37

28:                                               ; preds = %28, %8
  %29 = phi i32 [ %33, %28 ], [ %3, %8 ]
  %30 = phi ptr [ %34, %28 ], [ %2, %8 ]
  %31 = phi ptr [ %35, %28 ], [ %1, %8 ]
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 4096)
  tail call void @kernel_neon_begin() #10
  tail call fastcc void @chacha_doneon(ptr noundef %0, ptr noundef %31, ptr noundef %30, i32 noundef %32, i32 noundef %4)
  tail call void @kernel_neon_end() #10
  %33 = sub i32 %29, %32
  %34 = getelementptr i8, ptr %30, i32 %32
  %35 = getelementptr i8, ptr %31, i32 %32
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_doarm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @chacha_doneon(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !9
  %7 = icmp ugt i32 %3, 64
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = getelementptr i32, ptr %0, i32 12
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %1, %8 ], [ %17, %10 ]
  %12 = phi ptr [ %2, %8 ], [ %16, %10 ]
  %13 = phi i32 [ %3, %8 ], [ %15, %10 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 256)
  tail call void @chacha_4block_xor_neon(ptr noundef %0, ptr noundef %11, ptr noundef %12, i32 noundef %4, i32 noundef %14) #10
  %15 = sub i32 %13, %14
  %16 = getelementptr i8, ptr %12, i32 %14
  %17 = getelementptr i8, ptr %11, i32 %14
  %18 = add nuw nsw i32 %14, 63
  %19 = lshr i32 %18, 6
  %20 = load i32, ptr %9, align 4
  %21 = add i32 %20, %19
  store i32 %21, ptr %9, align 4
  %22 = icmp ugt i32 %15, 64
  br i1 %22, label %10, label %23

23:                                               ; preds = %10, %5
  %24 = phi i32 [ %3, %5 ], [ %15, %10 ]
  %25 = phi ptr [ %2, %5 ], [ %16, %10 ]
  %26 = phi ptr [ %1, %5 ], [ %17, %10 ]
  switch i32 %24, label %28 [
    i32 0, label %35
    i32 64, label %27
  ]

27:                                               ; preds = %23
  tail call void @chacha_block_xor_neon(ptr noundef %0, ptr noundef %26, ptr noundef %25, i32 noundef %4) #10
  br label %31

28:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %25, i32 %24, i1 false)
  call void @chacha_block_xor_neon(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef %4) #10
  %29 = icmp eq ptr %6, %26
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr nonnull align 1 %6, i32 %24, i1 false)
  br label %31

31:                                               ; preds = %30, %28, %27
  %32 = getelementptr i32, ptr %0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %35

3:                                                ; preds = %0
  %4 = load i32, ptr @elf_hwcap, align 4
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !10
  %9 = and i32 %8, -16711696
  switch i32 %9, label %16 [
    i32 1090568304, label %10
    i32 1090568272, label %10
  ]

10:                                               ; preds = %7, %7
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i32 [ %14, %11 ], [ 0, %10 ]
  %13 = getelementptr [3 x %struct.skcipher_alg], ptr @neon_algs, i32 0, i32 %12, i32 11, i32 6
  store i32 0, ptr %13, align 32
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %31, label %11

16:                                               ; preds = %7
  %17 = load i8, ptr @static_key_initialized, align 1, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @use_neon) #10
  br label %20

20:                                               ; preds = %19, %16
  %21 = load volatile i32, ptr @use_neon, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr @use_neon, align 4
  %25 = icmp ne i32 %24, 1
  %26 = load i1, ptr @static_key_enable.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31, !prof !12

29:                                               ; preds = %23
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #10
  br label %31

30:                                               ; preds = %20
  store volatile i32 1, ptr @use_neon, align 4
  br label %31

31:                                               ; preds = %30, %29, %23, %11
  %32 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @neon_algs, i32 noundef 3) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #10
  br label %35

35:                                               ; preds = %34, %31, %3, %0
  %36 = phi i32 [ %1, %0 ], [ 0, %3 ], [ %32, %34 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @arm_algs, i32 noundef 3) #10
  %1 = load i32, ptr @elf_hwcap, align 4
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @neon_algs, i32 noundef 3) #10
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_4block_xor_neon(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_xor_neon(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chacha20_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 32
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1
  %7 = load i32, ptr %1, align 1
  store i32 %7, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 4
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %1, i32 8
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr i8, ptr %1, i32 12
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %1, i32 16
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %1, i32 20
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %1, i32 24
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 20
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %1, i32 28
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 24
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 28
  store i32 20, ptr %29, align 4
  br label %30

30:                                               ; preds = %5, %3
  %31 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chacha_arm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @chacha_stream_xor(ptr noundef %0, ptr noundef %4, ptr noundef %6, i1 noundef zeroext false) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xchacha_arm(ptr noundef %0) #0 {
  %2 = alloca %struct.chacha_ctx, align 4
  %3 = alloca [16 x i32], align 4
  %4 = alloca [16 x i8], align 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #10, !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %8 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store i32 1634760805, ptr %3, align 4
  %11 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 857760878, ptr %11, align 4
  %12 = getelementptr inbounds i32, ptr %3, i32 2
  store i32 2036477234, ptr %12, align 4
  %13 = getelementptr inbounds i32, ptr %3, i32 3
  store i32 1797285236, ptr %13, align 4
  %14 = load i32, ptr %7, align 4
  store i32 %14, ptr %8, align 4
  %15 = getelementptr i8, ptr %6, i32 68
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i32, ptr %3, i32 5
  store i32 %16, ptr %17, align 4
  %18 = getelementptr i8, ptr %6, i32 72
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i32, ptr %3, i32 6
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %6, i32 76
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %3, i32 7
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %6, i32 80
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds i32, ptr %3, i32 8
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %6, i32 84
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i32, ptr %3, i32 9
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %6, i32 88
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds i32, ptr %3, i32 10
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %6, i32 92
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i32, ptr %3, i32 11
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %10, align 1
  %37 = getelementptr inbounds i32, ptr %3, i32 12
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %10, i32 4
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr inbounds i32, ptr %3, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %10, i32 8
  %42 = load i32, ptr %41, align 1
  %43 = getelementptr inbounds i32, ptr %3, i32 14
  store i32 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %10, i32 12
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr inbounds i32, ptr %3, i32 15
  store i32 %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %6, i32 96
  %48 = load i32, ptr %47, align 4
  call void @hchacha_block_arm(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %48) #10
  %49 = load i32, ptr %47, align 4
  %50 = getelementptr inbounds %struct.chacha_ctx, ptr %2, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr i8, ptr %51, i32 24
  %53 = load i64, ptr %52, align 1
  store i64 %53, ptr %4, align 8
  %54 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 8
  %55 = getelementptr i8, ptr %51, i32 16
  %56 = load i64, ptr %55, align 1
  store i64 %56, ptr %54, align 8
  %57 = call fastcc i32 @chacha_stream_xor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  ret i32 %57
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chacha12_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 32
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1
  %7 = load i32, ptr %1, align 1
  store i32 %7, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 4
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %1, i32 8
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr i8, ptr %1, i32 12
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %1, i32 16
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %1, i32 20
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %1, i32 24
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 20
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %1, i32 28
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 24
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 28
  store i32 12, ptr %29, align 4
  br label %30

30:                                               ; preds = %5, %3
  %31 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @chacha_stream_xor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !9
  %7 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef %0, i1 noundef zeroext false) #10
  store i32 1634760805, ptr %6, align 4
  %8 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 857760878, ptr %8, align 4
  %9 = getelementptr inbounds i32, ptr %6, i32 2
  store i32 2036477234, ptr %9, align 4
  %10 = getelementptr inbounds i32, ptr %6, i32 3
  store i32 1797285236, ptr %10, align 4
  %11 = load i32, ptr %1, align 4
  %12 = getelementptr inbounds i32, ptr %6, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i32, ptr %1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i32, ptr %6, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i32, ptr %1, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i32, ptr %6, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i32, ptr %1, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i32, ptr %6, i32 7
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i32, ptr %1, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds i32, ptr %6, i32 8
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i32, ptr %1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i32, ptr %6, i32 9
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i32, ptr %1, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds i32, ptr %6, i32 10
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i32, ptr %1, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds i32, ptr %6, i32 11
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %2, align 1
  %35 = getelementptr inbounds i32, ptr %6, i32 12
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %2, i32 4
  %37 = load i32, ptr %36, align 1
  %38 = getelementptr inbounds i32, ptr %6, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %2, i32 8
  %40 = load i32, ptr %39, align 1
  %41 = getelementptr inbounds i32, ptr %6, i32 14
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %2, i32 12
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr inbounds i32, ptr %6, i32 15
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 5
  %50 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 14
  %51 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %52 = getelementptr inbounds %struct.anon.45, ptr %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.chacha_ctx, ptr %1, i32 0, i32 1
  br label %54

54:                                               ; preds = %74, %48
  %55 = phi i32 [ %46, %48 ], [ %78, %74 ]
  %56 = load i32, ptr %49, align 4
  %57 = icmp ult i32 %55, %56
  %58 = load i32, ptr %50, align 4
  %59 = sub i32 0, %58
  %60 = select i1 %57, i32 %59, i32 -1
  %61 = and i32 %60, %55
  br i1 %3, label %70, label %62

62:                                               ; preds = %54
  %63 = load ptr, ptr %51, align 4
  %64 = load ptr, ptr %52, align 4
  %65 = load i32, ptr %53, align 4
  call void @chacha_doarm(ptr noundef %63, ptr noundef %64, i32 noundef %61, ptr noundef nonnull %6, i32 noundef %65) #10
  %66 = add i32 %61, 63
  %67 = lshr i32 %66, 6
  %68 = load i32, ptr %35, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %35, align 4
  br label %74

70:                                               ; preds = %54
  call void @kernel_neon_begin() #10
  %71 = load ptr, ptr %51, align 4
  %72 = load ptr, ptr %52, align 4
  %73 = load i32, ptr %53, align 4
  call fastcc void @chacha_doneon(ptr noundef nonnull %6, ptr noundef %71, ptr noundef %72, i32 noundef %61, i32 noundef %73)
  call void @kernel_neon_end() #10
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i32, ptr %45, align 4
  %76 = sub i32 %75, %61
  %77 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %76) #10
  %78 = load i32, ptr %45, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %54

80:                                               ; preds = %74, %4
  %81 = phi i32 [ %7, %4 ], [ %77, %74 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #10
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_xchacha(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.chacha_ctx, align 4
  %4 = alloca [16 x i32], align 4
  %5 = alloca [16 x i8], align 8
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 64
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 48, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store i32 1634760805, ptr %4, align 4
  %12 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 857760878, ptr %12, align 4
  %13 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 2036477234, ptr %13, align 4
  %14 = getelementptr inbounds i32, ptr %4, i32 3
  store i32 1797285236, ptr %14, align 4
  %15 = load i32, ptr %8, align 4
  %16 = getelementptr inbounds i32, ptr %4, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %7, i32 68
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds i32, ptr %4, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %7, i32 72
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds i32, ptr %4, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %7, i32 76
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i32, ptr %4, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %7, i32 80
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds i32, ptr %4, i32 8
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %7, i32 84
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i32, ptr %4, i32 9
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %7, i32 88
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i32, ptr %4, i32 10
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %7, i32 92
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i32, ptr %4, i32 11
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %11, align 1
  %39 = getelementptr inbounds i32, ptr %4, i32 12
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %11, i32 4
  %41 = load i32, ptr %40, align 1
  %42 = getelementptr inbounds i32, ptr %4, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %11, i32 8
  %44 = load i32, ptr %43, align 1
  %45 = getelementptr inbounds i32, ptr %4, i32 14
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %11, i32 12
  %47 = load i32, ptr %46, align 1
  %48 = getelementptr inbounds i32, ptr %4, i32 15
  store i32 %47, ptr %48, align 4
  br i1 %1, label %52, label %49

49:                                               ; preds = %2
  %50 = getelementptr i8, ptr %7, i32 96
  %51 = load i32, ptr %50, align 4
  call void @hchacha_block_arm(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %51) #10
  br label %55

52:                                               ; preds = %2
  tail call void @kernel_neon_begin() #10
  %53 = getelementptr i8, ptr %7, i32 96
  %54 = load i32, ptr %53, align 4
  call void @hchacha_block_neon(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %54) #10
  call void @kernel_neon_end() #10
  br label %55

55:                                               ; preds = %52, %49
  %56 = getelementptr i8, ptr %7, i32 96
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.chacha_ctx, ptr %3, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  %61 = load i64, ptr %60, align 1
  store i64 %61, ptr %5, align 8
  %62 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 8
  %63 = getelementptr i8, ptr %59, i32 16
  %64 = load i64, ptr %63, align 1
  store i64 %64, ptr %62, align 8
  %65 = call fastcc i32 @chacha_stream_xor(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chacha_neon(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @use_neon, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %16, !prof !8

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %4, %1
  %17 = phi i1 [ false, %1 ], [ %15, %4 ]
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 64
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call fastcc i32 @chacha_stream_xor(ptr noundef %0, ptr noundef %20, ptr noundef %22, i1 noundef zeroext %17) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xchacha_neon(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @use_neon, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %16, !prof !8

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %4, %1
  %17 = phi i1 [ false, %1 ], [ %15, %4 ]
  %18 = tail call fastcc i32 @do_xchacha(ptr noundef %0, i1 noundef zeroext %17)
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i64 2150617610}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
