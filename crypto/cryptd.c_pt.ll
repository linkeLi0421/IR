; ModuleID = '/llk/IR/crypto/cryptd.c_pt.bc'
source_filename = "../crypto/cryptd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_alloc_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_alloc_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_alloc_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_skcipher_child:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_skcipher_child\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_skcipher_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_skcipher_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_skcipher_queued\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_skcipher_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_free_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_free_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_free_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_alloc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_alloc_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_alloc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_ahash_child:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_ahash_child\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_ahash_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_shash_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_shash_desc\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_shash_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_ahash_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_ahash_queued\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_ahash_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_free_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_free_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_free_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_alloc_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_alloc_aead\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_alloc_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_aead_child:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_aead_child\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_aead_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_aead_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_aead_queued\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_aead_queued:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cryptd_free_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22cryptd_free_aead\22\09\09\09\09\09"
module asm "__kstrtabns_cryptd_free_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cryptd_queue = type { ptr }
%struct.crypto_template = type { %struct.list_head, %struct.hlist_head, ptr, ptr, [128 x i8] }
%struct.hlist_head = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.65, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.65 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.cryptd_cpu_queue = type { %struct.crypto_queue, %struct.work_struct }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_attr_type = type { i32, i32 }
%struct.skcipher_instance = type { ptr, [60 x i8], %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.66, [52 x i8], [0 x ptr] }
%union.anon.66 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ahash_instance = type { ptr, [60 x i8], %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { [128 x i8], %struct.crypto_instance }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { [64 x i8], %struct.crypto_instance }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }

@__param_str_cryptd_max_cpu_qlen = internal constant [20 x i8] c"cryptd_max_cpu_qlen\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cryptd_max_cpu_qlen = internal global i32 1000, align 4
@__param_cryptd_max_cpu_qlen = internal constant %struct.kernel_param { ptr @__param_str_cryptd_max_cpu_qlen, ptr @__this_module, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @cryptd_max_cpu_qlen } }, section "__param", align 4
@__UNIQUE_ID_cryptd_max_cpu_qlentype220 = internal constant [34 x i8] c"parmtype=cryptd_max_cpu_qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cryptd_max_cpu_qlen221 = internal constant [52 x i8] c"parm=cryptd_max_cpu_qlen:Set cryptd Max queue depth\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"cryptd(%s)\00", align 1
@__kstrtab_cryptd_alloc_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_alloc_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_alloc_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_alloc_skcipher to i32), ptr @__kstrtab_cryptd_alloc_skcipher, ptr @__kstrtabns_cryptd_alloc_skcipher }, section "___ksymtab_gpl+cryptd_alloc_skcipher", align 4
@__kstrtab_cryptd_skcipher_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_skcipher_child = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_skcipher_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_skcipher_child to i32), ptr @__kstrtab_cryptd_skcipher_child, ptr @__kstrtabns_cryptd_skcipher_child }, section "___ksymtab_gpl+cryptd_skcipher_child", align 4
@__kstrtab_cryptd_skcipher_queued = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_skcipher_queued = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_skcipher_queued = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_skcipher_queued to i32), ptr @__kstrtab_cryptd_skcipher_queued, ptr @__kstrtabns_cryptd_skcipher_queued }, section "___ksymtab_gpl+cryptd_skcipher_queued", align 4
@__kstrtab_cryptd_free_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_free_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_free_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_free_skcipher to i32), ptr @__kstrtab_cryptd_free_skcipher, ptr @__kstrtabns_cryptd_free_skcipher }, section "___ksymtab_gpl+cryptd_free_skcipher", align 4
@__kstrtab_cryptd_alloc_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_alloc_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_alloc_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_alloc_ahash to i32), ptr @__kstrtab_cryptd_alloc_ahash, ptr @__kstrtabns_cryptd_alloc_ahash }, section "___ksymtab_gpl+cryptd_alloc_ahash", align 4
@__kstrtab_cryptd_ahash_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_ahash_child = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_ahash_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_ahash_child to i32), ptr @__kstrtab_cryptd_ahash_child, ptr @__kstrtabns_cryptd_ahash_child }, section "___ksymtab_gpl+cryptd_ahash_child", align 4
@__kstrtab_cryptd_shash_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_shash_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_shash_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_shash_desc to i32), ptr @__kstrtab_cryptd_shash_desc, ptr @__kstrtabns_cryptd_shash_desc }, section "___ksymtab_gpl+cryptd_shash_desc", align 4
@__kstrtab_cryptd_ahash_queued = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_ahash_queued = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_ahash_queued = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_ahash_queued to i32), ptr @__kstrtab_cryptd_ahash_queued, ptr @__kstrtabns_cryptd_ahash_queued }, section "___ksymtab_gpl+cryptd_ahash_queued", align 4
@__kstrtab_cryptd_free_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_free_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_free_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_free_ahash to i32), ptr @__kstrtab_cryptd_free_ahash, ptr @__kstrtabns_cryptd_free_ahash }, section "___ksymtab_gpl+cryptd_free_ahash", align 4
@__kstrtab_cryptd_alloc_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_alloc_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_alloc_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_alloc_aead to i32), ptr @__kstrtab_cryptd_alloc_aead, ptr @__kstrtabns_cryptd_alloc_aead }, section "___ksymtab_gpl+cryptd_alloc_aead", align 4
@__kstrtab_cryptd_aead_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_aead_child = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_aead_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_aead_child to i32), ptr @__kstrtab_cryptd_aead_child, ptr @__kstrtabns_cryptd_aead_child }, section "___ksymtab_gpl+cryptd_aead_child", align 4
@__kstrtab_cryptd_aead_queued = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_aead_queued = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_aead_queued = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_aead_queued to i32), ptr @__kstrtab_cryptd_aead_queued, ptr @__kstrtabns_cryptd_aead_queued }, section "___ksymtab_gpl+cryptd_aead_queued", align 4
@__kstrtab_cryptd_free_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_cryptd_free_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_cryptd_free_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cryptd_free_aead to i32), ptr @__kstrtab_cryptd_free_aead, ptr @__kstrtabns_cryptd_free_aead }, section "___ksymtab_gpl+cryptd_free_aead", align 4
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [41 x i8] c"description=Software async crypto daemon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace226 = internal constant [13 x i8] c"alias=cryptd\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [20 x i8] c"alias=crypto-cryptd\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cryptd\00", align 1
@cryptd_wq = internal unnamed_addr global ptr null, align 4
@queue = internal global %struct.cryptd_queue zeroinitializer, align 4
@cryptd_tmpl = internal global %struct.crypto_template { %struct.list_head zeroinitializer, %struct.hlist_head zeroinitializer, ptr @__this_module, ptr @cryptd_create, [128 x i8] c"cryptd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\016cryptd: max_cpu_qlen set to %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_cryptd_max_cpu_qlen221, ptr @__UNIQUE_ID_cryptd_max_cpu_qlentype220, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_cryptd_aead_child, ptr @__ksymtab_cryptd_aead_queued, ptr @__ksymtab_cryptd_ahash_child, ptr @__ksymtab_cryptd_ahash_queued, ptr @__ksymtab_cryptd_alloc_aead, ptr @__ksymtab_cryptd_alloc_ahash, ptr @__ksymtab_cryptd_alloc_skcipher, ptr @__ksymtab_cryptd_free_aead, ptr @__ksymtab_cryptd_free_ahash, ptr @__ksymtab_cryptd_free_skcipher, ptr @__ksymtab_cryptd_shash_desc, ptr @__ksymtab_cryptd_skcipher_child, ptr @__ksymtab_cryptd_skcipher_queued, ptr @__param_cryptd_max_cpu_qlen], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cryptd_alloc_skcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !9
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0)
  %6 = icmp sgt i32 %5, 127
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #18
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @__this_module
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %17) #18
  br label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 1
  store volatile i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %16, %7, %3
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %16 ], [ %8, %18 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cryptd_skcipher_child(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cryptd_skcipher_queued(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cryptd_free_skcipher(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #18
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %10) #18
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cryptd_alloc_ahash(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !9
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0)
  %6 = icmp sgt i32 %5, 127
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = call ptr @crypto_alloc_ahash(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #18
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @__this_module
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %17) #18
  br label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 1
  store volatile i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %16, %7, %3
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %16 ], [ %8, %18 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cryptd_ahash_child(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @cryptd_shash_desc(ptr noundef readnone %0) #7 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cryptd_ahash_queued(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cryptd_free_ahash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #18
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %10 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %10) #18
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cryptd_alloc_aead(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !9
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0)
  %6 = icmp sgt i32 %5, 127
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = call ptr @crypto_alloc_aead(ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2) #18
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 0, i32 3, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @__this_module
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 0, i32 3
  call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %17) #18
  br label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 1
  store volatile i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %16, %7, %3
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %16 ], [ %8, %18 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cryptd_aead_child(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cryptd_aead_queued(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cryptd_free_aead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #18
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %10) #18
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 40, i32 noundef 1) #18
  store ptr %1, ptr @cryptd_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @cryptd_max_cpu_qlen, align 4
  %5 = tail call noalias ptr @__alloc_percpu(i32 noundef 36, i32 noundef 4) #19
  store ptr %5, ptr @queue, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %26, %7
  %12 = phi ptr [ %27, %26 ], [ %5, %7 ]
  %13 = phi i32 [ %23, %26 ], [ %8, %7 ]
  %14 = ptrtoint ptr %12 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  tail call void @crypto_init_queue(ptr noundef %18, i32 noundef %4) #18
  %19 = getelementptr inbounds %struct.cryptd_cpu_queue, ptr %18, i32 0, i32 1
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cryptd_cpu_queue, ptr %18, i32 0, i32 1, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cryptd_cpu_queue, ptr %18, i32 0, i32 1, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cryptd_cpu_queue, ptr %18, i32 0, i32 1, i32 2
  store ptr @cryptd_queue_worker, ptr %22, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #20
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load ptr, ptr @queue, align 4
  br label %11

28:                                               ; preds = %11, %7
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %4) #21
  %30 = tail call i32 @crypto_register_template(ptr noundef nonnull @cryptd_tmpl) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  tail call fastcc void @cryptd_fini_queue()
  br label %33

33:                                               ; preds = %32, %3
  %34 = phi i32 [ %30, %32 ], [ -12, %3 ]
  %35 = load ptr, ptr @cryptd_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %35) #18
  br label %36

36:                                               ; preds = %33, %28, %0
  %37 = phi i32 [ %34, %33 ], [ -12, %0 ], [ 0, %28 ]
  ret i32 %37
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  %1 = load ptr, ptr @cryptd_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #18
  tail call fastcc void @cryptd_fini_queue()
  tail call void @crypto_unregister_template(ptr noundef nonnull @cryptd_tmpl) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_template(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cryptd_fini_queue() unnamed_addr #0 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = load ptr, ptr @queue, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %4

4:                                                ; preds = %8, %0
  %5 = phi i32 [ -1, %0 ], [ %6, %8 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #20
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %3
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.crypto_queue, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %4, label %16, !prof !13

16:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/cryptd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #18, !srcloc !15
  unreachable

17:                                               ; preds = %4
  tail call void @free_percpu(ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_queue_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = tail call ptr @llvm.thread.pointer() #18
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %2
  %10 = select i1 %9, ptr null, ptr %8
  %11 = tail call ptr @crypto_dequeue_request(ptr noundef %2) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  tail call fastcc void @local_bh_enable()
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = icmp eq ptr %10, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef nonnull %10, i32 noundef -115) #18
  br label %18

18:                                               ; preds = %15, %13
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef nonnull %11, i32 noundef 0) #18
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @cryptd_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %0) #18
  br label %27

27:                                               ; preds = %24, %18, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #13 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @crypto_get_attr_type(ptr noundef %1) #18
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %212

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds %struct.crypto_attr_type, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 15
  %12 = and i32 %11, %10
  switch i32 %12, label %212 [
    i32 5, label %13
    i32 14, label %80
    i32 3, label %150
  ]

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 608) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %212, label %17

17:                                               ; preds = %13
  %18 = and i32 %8, 65792
  %19 = xor i32 %18, 73984
  %20 = and i32 %19, %10
  %21 = or i32 %20, 128
  %22 = and i32 %8, 8192
  %23 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1
  %24 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1, i32 1, i32 24
  store ptr @queue, ptr %24, align 4
  %25 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1
  %26 = getelementptr ptr, ptr %1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @crypto_attr_alg_name(ptr noundef %27) #18
  %29 = tail call i32 @crypto_grab_skcipher(ptr noundef %23, ptr noundef %25, ptr noundef %28, i32 noundef %22, i32 noundef %21) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 1, i32 1, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %35 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 9
  %36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %35) #18
  %37 = icmp sgt i32 %36, 127
  br i1 %37, label %78, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %40 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %39, ptr noundef align 8 dereferenceable(128) %40, i32 128, i1 false) #18
  %41 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 6
  %42 = load i32, ptr %41, align 32
  %43 = add i32 %42, 50
  %44 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %43, ptr %44, align 32
  %45 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %33, i32 16
  %52 = load i32, ptr %51, align 16
  %53 = and i32 %52, 8192
  %54 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2
  %55 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 16
  %57 = or i32 %56, %53
  %58 = or i32 %57, 128
  store i32 %58, ptr %55, align 16
  %59 = getelementptr i8, ptr %33, i32 -36
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %33, i32 -32
  %63 = load i32, ptr %62, align 32
  %64 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 32
  store i32 %63, ptr %64, align 32
  %65 = getelementptr i8, ptr %33, i32 -44
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 20
  store i32 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %33, i32 -40
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %71, align 8
  %72 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @cryptd_skcipher_init_tfm, ptr %72, align 4
  %73 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @cryptd_skcipher_exit_tfm, ptr %73, align 16
  store ptr @cryptd_skcipher_setkey, ptr %54, align 64
  %74 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @cryptd_skcipher_encrypt_enqueue, ptr %74, align 4
  %75 = getelementptr inbounds %struct.skcipher_instance, ptr %15, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @cryptd_skcipher_decrypt_enqueue, ptr %75, align 8
  store ptr @cryptd_skcipher_free, ptr %15, align 64
  %76 = tail call i32 @skcipher_register_instance(ptr noundef %0, ptr noundef nonnull %15) #18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %212, label %78

78:                                               ; preds = %38, %31, %17
  %79 = phi i32 [ %29, %17 ], [ %76, %38 ], [ -36, %31 ]
  tail call void @crypto_drop_spawn(ptr noundef %23) #18
  tail call void @kfree(ptr noundef nonnull %15) #18
  br label %212

80:                                               ; preds = %7
  %81 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %82 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 672) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %212, label %84

84:                                               ; preds = %80
  %85 = and i32 %8, 65792
  %86 = xor i32 %85, 73984
  %87 = and i32 %86, %10
  %88 = or i32 %87, 128
  %89 = and i32 %8, 8192
  %90 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 1
  %91 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 1, i32 1, i32 24
  store ptr @queue, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1
  %93 = getelementptr ptr, ptr %1, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = tail call ptr @crypto_attr_alg_name(ptr noundef %94) #18
  %96 = tail call i32 @crypto_grab_shash(ptr noundef %90, ptr noundef %92, ptr noundef %95, i32 noundef %89, i32 noundef %88) #18
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 1, i32 1, i32 4
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %102 = getelementptr inbounds %struct.crypto_alg, ptr %100, i32 0, i32 9
  %103 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %101, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %102) #18
  %104 = icmp sgt i32 %103, 127
  br i1 %104, label %148, label %105

105:                                              ; preds = %98
  %106 = getelementptr i8, ptr %100, i32 -128
  %107 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %108 = getelementptr inbounds %struct.crypto_alg, ptr %100, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %107, ptr noundef align 8 dereferenceable(128) %108, i32 128, i1 false) #18
  %109 = getelementptr inbounds %struct.crypto_alg, ptr %100, i32 0, i32 6
  %110 = load i32, ptr %109, align 32
  %111 = add i32 %110, 50
  %112 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %111, ptr %112, align 32
  %113 = getelementptr inbounds %struct.crypto_alg, ptr %100, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.crypto_alg, ptr %100, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %117, ptr %118, align 4
  %119 = getelementptr i8, ptr %100, i32 16
  %120 = load i32, ptr %119, align 16
  %121 = and i32 %120, 24576
  %122 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2
  %123 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 64
  %124 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %125 = load i32, ptr %124, align 16
  %126 = or i32 %125, %121
  %127 = or i32 %126, 128
  store i32 %127, ptr %124, align 16
  %128 = getelementptr i8, ptr %100, i32 -64
  %129 = load i32, ptr %128, align 64
  store i32 %129, ptr %123, align 64
  %130 = getelementptr i8, ptr %100, i32 -60
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 68
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %133, align 8
  %134 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 12
  store ptr @cryptd_hash_init_tfm, ptr %134, align 64
  %135 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 1, i32 0, i32 13
  store ptr @cryptd_hash_exit_tfm, ptr %135, align 4
  store ptr @cryptd_hash_init_enqueue, ptr %122, align 64
  %136 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @cryptd_hash_update_enqueue, ptr %136, align 4
  %137 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @cryptd_hash_final_enqueue, ptr %137, align 8
  %138 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @cryptd_hash_finup_enqueue, ptr %138, align 4
  %139 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @cryptd_hash_export, ptr %139, align 4
  %140 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 24
  store ptr @cryptd_hash_import, ptr %140, align 8
  %141 = tail call zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef %106) #18
  br i1 %141, label %142, label %144

142:                                              ; preds = %105
  %143 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 28
  store ptr @cryptd_hash_setkey, ptr %143, align 4
  br label %144

144:                                              ; preds = %142, %105
  %145 = getelementptr inbounds %struct.ahash_instance, ptr %82, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @cryptd_hash_digest_enqueue, ptr %145, align 16
  store ptr @cryptd_hash_free, ptr %82, align 64
  %146 = tail call i32 @ahash_register_instance(ptr noundef %0, ptr noundef nonnull %82) #18
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %212, label %148

148:                                              ; preds = %144, %98, %84
  %149 = phi i32 [ %96, %84 ], [ %146, %144 ], [ -36, %98 ]
  tail call void @crypto_drop_spawn(ptr noundef %90) #18
  tail call void @kfree(ptr noundef nonnull %82) #18
  br label %212

150:                                              ; preds = %7
  %151 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %152 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %151, i32 noundef 3520, i32 noundef 608) #22
  %153 = icmp eq ptr %152, null
  br i1 %153, label %212, label %154

154:                                              ; preds = %150
  %155 = and i32 %8, 65792
  %156 = xor i32 %155, 73984
  %157 = and i32 %156, %10
  %158 = or i32 %157, 128
  %159 = and i32 %8, 8192
  %160 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 1
  %161 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 1, i32 1, i32 24
  store ptr @queue, ptr %161, align 4
  %162 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1
  %163 = getelementptr ptr, ptr %1, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = tail call ptr @crypto_attr_alg_name(ptr noundef %164) #18
  %166 = tail call i32 @crypto_grab_aead(ptr noundef %160, ptr noundef %162, ptr noundef %165, i32 noundef %159, i32 noundef %158) #18
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %210

168:                                              ; preds = %154
  %169 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 1, i32 1, i32 4
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 9
  %172 = getelementptr inbounds %struct.crypto_alg, ptr %170, i32 0, i32 9
  %173 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %171, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %172) #18
  %174 = icmp sgt i32 %173, 127
  br i1 %174, label %210, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 8
  %177 = getelementptr inbounds %struct.crypto_alg, ptr %170, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %176, ptr noundef align 8 dereferenceable(128) %177, i32 128, i1 false) #18
  %178 = getelementptr inbounds %struct.crypto_alg, ptr %170, i32 0, i32 6
  %179 = load i32, ptr %178, align 32
  %180 = add i32 %179, 50
  %181 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  store i32 %180, ptr %181, align 32
  %182 = getelementptr inbounds %struct.crypto_alg, ptr %170, i32 0, i32 3
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  store i32 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.crypto_alg, ptr %170, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 5
  store i32 %186, ptr %187, align 4
  %188 = getelementptr i8, ptr %170, i32 16
  %189 = load i32, ptr %188, align 16
  %190 = and i32 %189, 8192
  %191 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2
  %192 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %193 = load i32, ptr %192, align 16
  %194 = or i32 %193, %190
  %195 = or i32 %194, 128
  store i32 %195, ptr %192, align 16
  %196 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %196, align 8
  %197 = getelementptr i8, ptr %170, i32 -40
  %198 = load i32, ptr %197, align 8
  %199 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 24
  store i32 %198, ptr %199, align 8
  %200 = getelementptr i8, ptr %170, i32 -36
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 28
  store i32 %201, ptr %202, align 4
  %203 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 16
  store ptr @cryptd_aead_init_tfm, ptr %203, align 16
  %204 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 20
  store ptr @cryptd_aead_exit_tfm, ptr %204, align 4
  store ptr @cryptd_aead_setkey, ptr %191, align 64
  %205 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr @cryptd_aead_setauthsize, ptr %205, align 4
  %206 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 8
  store ptr @cryptd_aead_encrypt_enqueue, ptr %206, align 8
  %207 = getelementptr inbounds %struct.aead_instance, ptr %152, i32 0, i32 2, i32 0, i32 0, i32 12
  store ptr @cryptd_aead_decrypt_enqueue, ptr %207, align 4
  store ptr @cryptd_aead_free, ptr %152, align 64
  %208 = tail call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %152) #18
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %175, %168, %154
  %211 = phi i32 [ %166, %154 ], [ %208, %175 ], [ -36, %168 ]
  tail call void @crypto_drop_spawn(ptr noundef %160) #18
  tail call void @kfree(ptr noundef nonnull %152) #18
  br label %212

212:                                              ; preds = %210, %175, %150, %148, %144, %80, %78, %38, %13, %7, %5
  %213 = phi i32 [ %6, %5 ], [ -22, %7 ], [ -12, %13 ], [ %79, %78 ], [ 0, %38 ], [ -12, %80 ], [ %149, %148 ], [ 0, %144 ], [ -12, %150 ], [ %211, %210 ], [ 0, %175 ]
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_attr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_skcipher_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #18
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr %5, ptr %10, align 4
  store i32 4, ptr %0, align 64
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_skcipher_exit_tfm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_skcipher_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, -1048321
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1048320
  %12 = or i32 %11, %8
  store i32 %12, ptr %6, align 64
  %13 = tail call i32 @crypto_skcipher_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_skcipher_encrypt_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 4
  store ptr @cryptd_skcipher_encrypt, ptr %10, align 8
  %12 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %9) #18
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_skcipher_decrypt_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 4
  store ptr @cryptd_skcipher_decrypt, ptr %10, align 8
  %12 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %9) #18
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_skcipher_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_spawn_tfm2(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_skcipher_encrypt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [448 x i8], align 64
  %4 = getelementptr i8, ptr %0, i32 48
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 68
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %3, i8 0, i32 448, i1 false), !annotation !9
  %9 = icmp eq i32 %1, -115
  br i1 %9, label %34, label %10, !prof !19

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  store ptr %12, ptr %13, align 32
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 4
  store i32 512, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %11, align 64
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 2
  store ptr %17, ptr %23, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 3
  store ptr %19, ptr %24, align 4
  store i32 %20, ptr %3, align 64
  %25 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 1
  store ptr %22, ptr %25, align 4
  %26 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %3) #18
  %27 = load ptr, ptr %13, align 32
  %28 = getelementptr i8, ptr %27, i32 -64
  %29 = load i32, ptr %28, align 64
  %30 = add i32 %29, 64
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %3, i8 0, i32 %30, i1 false) #18
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #18, !srcloc !20
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %0, i32 8
  store ptr %31, ptr %32, align 8
  %33 = load ptr, ptr %5, align 16
  br label %34

34:                                               ; preds = %10, %2
  %35 = phi ptr [ %6, %2 ], [ %33, %10 ]
  %36 = phi i32 [ -115, %2 ], [ %26, %10 ]
  %37 = getelementptr i8, ptr %35, i32 -64
  %38 = getelementptr i8, ptr %35, i32 64
  %39 = load volatile i32, ptr %38, align 4
  %40 = tail call ptr @llvm.thread.pointer() #18
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = add i32 %42, 512
  store volatile i32 %43, ptr %41, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %44 = load ptr, ptr %4, align 4
  call void %44(ptr noundef %0, i32 noundef %36) #18
  call fastcc void @local_bh_enable() #18
  %45 = icmp ne i32 %36, -115
  %46 = icmp ne i32 %39, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #18, !srcloc !11
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #18, !srcloc !12
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %56, label %54, !prof !13

54:                                               ; preds = %52
  call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #18
  br label %56

55:                                               ; preds = %48
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  call void @crypto_destroy_tfm(ptr noundef %37, ptr noundef %35) #18
  br label %56

56:                                               ; preds = %55, %54, %52, %34
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cryptd_enqueue_request(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %3 = tail call ptr @llvm.thread.pointer() #18
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %0, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #16, !srcloc !22
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 @crypto_enqueue_request(ptr noundef %12, ptr noundef %1) #18
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 0, i32 5
  %17 = icmp eq i32 %13, -28
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr @cryptd_wq, align 4
  %20 = getelementptr inbounds %struct.cryptd_cpu_queue, ptr %12, i32 0, i32 1
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef %5, ptr noundef %19, ptr noundef %20) #18
  %22 = load volatile i32, ptr %16, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #18, !srcloc !11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #18, !srcloc !23
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !19

28:                                               ; preds = %24
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !13

32:                                               ; preds = %28, %24
  %33 = phi i32 [ 2, %24 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %33) #18
  br label %34

34:                                               ; preds = %32, %28, %18, %2
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_skcipher_decrypt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [448 x i8], align 64
  %4 = getelementptr i8, ptr %0, i32 48
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 68
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %3, i8 0, i32 448, i1 false), !annotation !9
  %9 = icmp eq i32 %1, -115
  br i1 %9, label %34, label %10, !prof !19

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  store ptr %12, ptr %13, align 32
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 4
  store i32 512, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %11, align 64
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 2
  store ptr %17, ptr %23, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 3
  store ptr %19, ptr %24, align 4
  store i32 %20, ptr %3, align 64
  %25 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 1
  store ptr %22, ptr %25, align 4
  %26 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %3) #18
  %27 = load ptr, ptr %13, align 32
  %28 = getelementptr i8, ptr %27, i32 -64
  %29 = load i32, ptr %28, align 64
  %30 = add i32 %29, 64
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %3, i8 0, i32 %30, i1 false) #18
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #18, !srcloc !20
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %0, i32 8
  store ptr %31, ptr %32, align 8
  %33 = load ptr, ptr %5, align 16
  br label %34

34:                                               ; preds = %10, %2
  %35 = phi ptr [ %6, %2 ], [ %33, %10 ]
  %36 = phi i32 [ -115, %2 ], [ %26, %10 ]
  %37 = getelementptr i8, ptr %35, i32 -64
  %38 = getelementptr i8, ptr %35, i32 64
  %39 = load volatile i32, ptr %38, align 4
  %40 = tail call ptr @llvm.thread.pointer() #18
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = add i32 %42, 512
  store volatile i32 %43, ptr %41, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %44 = load ptr, ptr %4, align 4
  call void %44(ptr noundef %0, i32 noundef %36) #18
  call fastcc void @local_bh_enable() #18
  %45 = icmp ne i32 %36, -115
  %46 = icmp ne i32 %39, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #18, !srcloc !11
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #18, !srcloc !12
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %56, label %54, !prof !13

54:                                               ; preds = %52
  call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #18
  br label %56

55:                                               ; preds = %48
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  call void @crypto_destroy_tfm(ptr noundef %37, ptr noundef %35) #18
  br label %56

56:                                               ; preds = %55, %54, %52, %34
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_drop_spawn(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_instance, ptr %3, i32 0, i32 4
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #18
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr %5, ptr %10, align 4
  %11 = load i32, ptr %5, align 64
  %12 = add i32 %11, 16
  %13 = getelementptr i8, ptr %0, i32 -32
  store i32 %12, ptr %13, align 32
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_exit_tfm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_init_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  store ptr @cryptd_hash_init, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_update_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  store ptr @cryptd_hash_update, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_final_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  store ptr @cryptd_hash_final, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_finup_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  store ptr @cryptd_hash_finup, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_export(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -108
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, ptr noundef %1) #18
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_import(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %6 = getelementptr i8, ptr %4, i32 68
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -104
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 %16(ptr noundef %5, ptr noundef %1) #18
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i32 [ %17, %12 ], [ -126, %2 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_shash_alg_has_setkey(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, -1048321
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1048320
  %12 = or i32 %11, %8
  store i32 %12, ptr %6, align 64
  %13 = tail call i32 @crypto_shash_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_hash_digest_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  store ptr @cryptd_hash_digest, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahash_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %8 = icmp eq i32 %1, -115
  br i1 %8, label %27, label %9, !prof !19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -128
  %19 = load ptr, ptr %18, align 64
  %20 = tail call i32 %19(ptr noundef %10) #18
  %21 = load ptr, ptr %3, align 16
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi ptr [ %21, %15 ], [ %4, %9 ]
  %24 = phi i32 [ %20, %15 ], [ -126, %9 ]
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %25, ptr %26, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi ptr [ %4, %2 ], [ %23, %22 ]
  %29 = phi i32 [ -115, %2 ], [ %24, %22 ]
  %30 = getelementptr i8, ptr %28, i32 -64
  %31 = getelementptr i8, ptr %28, i32 64
  %32 = load volatile i32, ptr %31, align 4
  %33 = tail call ptr @llvm.thread.pointer() #18
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = add i32 %35, 512
  store volatile i32 %36, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %37 = load ptr, ptr %7, align 8
  tail call void %37(ptr noundef %0, i32 noundef %29) #18
  tail call fastcc void @local_bh_enable() #18
  %38 = icmp ne i32 %29, -115
  %39 = icmp ne i32 %32, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #18, !srcloc !11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #18, !srcloc !12
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !13

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #18
  br label %49

48:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %30, ptr noundef %28) #18
  br label %49

49:                                               ; preds = %48, %47, %45, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_update(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = icmp eq i32 %1, -115
  br i1 %4, label %10, label %5, !prof !19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %7 = tail call i32 @shash_ahash_update(ptr noundef %0, ptr noundef %6) #18
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ -115, %2 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = getelementptr i8, ptr %13, i32 64
  %16 = load volatile i32, ptr %15, align 4
  %17 = tail call ptr @llvm.thread.pointer() #18
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 512
  store volatile i32 %20, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %21 = load ptr, ptr %3, align 8
  tail call void %21(ptr noundef %0, i32 noundef %11) #18
  tail call fastcc void @local_bh_enable() #18
  %22 = icmp ne i32 %11, -115
  %23 = icmp ne i32 %16, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %33

25:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #18, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #18, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !13

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #18
  br label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %13) #18
  br label %33

33:                                               ; preds = %32, %31, %29, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_update(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_final(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = icmp eq i32 %1, -115
  br i1 %4, label %12, label %5, !prof !19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 32
  %9 = tail call i32 @crypto_shash_final(ptr noundef %6, ptr noundef %8) #18
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ -115, %2 ], [ %9, %5 ]
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 -64
  %17 = getelementptr i8, ptr %15, i32 64
  %18 = load volatile i32, ptr %17, align 4
  %19 = tail call ptr @llvm.thread.pointer() #18
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = add i32 %21, 512
  store volatile i32 %22, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %23 = load ptr, ptr %3, align 8
  tail call void %23(ptr noundef %0, i32 noundef %13) #18
  tail call fastcc void @local_bh_enable() #18
  %24 = icmp ne i32 %13, -115
  %25 = icmp ne i32 %18, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #18, !srcloc !11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #18, !srcloc !12
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !13

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #18
  br label %35

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %16, ptr noundef %15) #18
  br label %35

35:                                               ; preds = %34, %33, %31, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_finup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = icmp eq i32 %1, -115
  br i1 %4, label %10, label %5, !prof !19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %7 = tail call i32 @shash_ahash_finup(ptr noundef %0, ptr noundef %6) #18
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ -115, %2 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = getelementptr i8, ptr %13, i32 64
  %16 = load volatile i32, ptr %15, align 4
  %17 = tail call ptr @llvm.thread.pointer() #18
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 512
  store volatile i32 %20, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %21 = load ptr, ptr %3, align 8
  tail call void %21(ptr noundef %0, i32 noundef %11) #18
  tail call fastcc void @local_bh_enable() #18
  %22 = icmp ne i32 %11, -115
  %23 = icmp ne i32 %16, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %33

25:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #18, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #18, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !13

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #18
  br label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %13) #18
  br label %33

33:                                               ; preds = %32, %31, %29, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_finup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_hash_digest(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = icmp eq i32 %1, -115
  br i1 %5, label %14, label %6, !prof !19

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = tail call i32 @shash_ahash_digest(ptr noundef %0, ptr noundef %10) #18
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %12, ptr %13, align 8
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ -115, %2 ], [ %11, %6 ]
  %16 = load ptr, ptr %3, align 16
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = getelementptr i8, ptr %16, i32 64
  %19 = load volatile i32, ptr %18, align 4
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %22, 512
  store volatile i32 %23, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %24 = load ptr, ptr %4, align 8
  tail call void %24(ptr noundef %0, i32 noundef %15) #18
  tail call fastcc void @local_bh_enable() #18
  %25 = icmp ne i32 %15, -115
  %26 = icmp ne i32 %19, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #18, !srcloc !11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #18, !srcloc !12
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !13

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #18
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %17, ptr noundef %16) #18
  br label %36

36:                                               ; preds = %35, %34, %32, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shash_ahash_digest(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_aead(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_aead_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 448
  %5 = tail call ptr @crypto_spawn_tfm2(ptr noundef %4) #18
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 4)
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_aead_exit_tfm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_aead_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @crypto_aead_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_aead_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @crypto_aead_setauthsize(ptr noundef %4, i32 noundef %1) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_aead_encrypt_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 4
  store ptr @cryptd_aead_encrypt, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cryptd_aead_decrypt_enqueue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_instance, ptr %6, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 4
  store ptr @cryptd_aead_decrypt, ptr %9, align 8
  %11 = tail call fastcc i32 @cryptd_enqueue_request(ptr noundef %8, ptr noundef %0) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_aead_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_instance, ptr %0, i32 1
  tail call void @crypto_drop_spawn(ptr noundef %2) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_aead_encrypt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -56
  %10 = load ptr, ptr %9, align 8
  tail call fastcc void @cryptd_aead_crypt(ptr noundef %0, ptr noundef %6, i32 noundef %1, ptr noundef %10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cryptd_aead_crypt(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = icmp eq i32 %2, -115
  br i1 %10, label %14, label %11, !prof !19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  store ptr %12, ptr %7, align 16
  %13 = tail call i32 %3(ptr noundef %0) #18
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ -115, %4 ], [ %13, %11 ]
  %16 = getelementptr i8, ptr %8, i32 64
  %17 = load volatile i32, ptr %16, align 4
  %18 = tail call ptr @llvm.thread.pointer() #18
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = add i32 %20, 512
  store volatile i32 %21, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call void %6(ptr noundef %0, i32 noundef %15) #18
  tail call fastcc void @local_bh_enable()
  %22 = icmp ne i32 %15, -115
  %23 = icmp ne i32 %17, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #18, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #18, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !13

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #18
  br label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %8) #18
  br label %33

33:                                               ; preds = %32, %31, %29, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cryptd_aead_decrypt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -52
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @cryptd_aead_crypt(ptr noundef %0, ptr noundef %6, i32 noundef %1, ptr noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 2147994368}
!11 = !{i64 317445, i64 2147819011, i64 2147819037, i64 2147819084, i64 2147819106, i64 2147819134, i64 2147819154}
!12 = !{i64 2147896527, i64 2147896559, i64 2147896588, i64 2147896622, i64 2147896653, i64 2147896676}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148605069}
!15 = !{i64 2152576693, i64 2152577173, i64 2152576730, i64 2152576786, i64 2152576820, i64 2152576844, i64 2152576885, i64 2152576906, i64 2152576934, i64 2152576968}
!16 = !{i64 2148842123}
!17 = !{i64 2152579699}
!18 = !{i64 2152579747}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148951488}
!21 = !{i64 2152577510}
!22 = !{i64 353297}
!23 = !{i64 2147894170, i64 2147894202, i64 2147894231, i64 2147894265, i64 2147894296, i64 2147894319}
!24 = !{i64 2152578440}
