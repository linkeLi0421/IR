; ModuleID = '/llk/IR/drivers/crypto/caam/caamhash.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamhash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.caam_hash_template = type { [128 x i8], [128 x i8], [128 x i8], [128 x i8], i32, [60 x i8], %struct.ahash_alg, i32, [60 x i8] }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.129, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.caam_hash_alg = type { %struct.list_head, i32, [52 x i8], %struct.ahash_alg }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.147, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.147 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_edesc = type { i32, i32, i32, i8, [51 x i8], [8 x i32], [0 x %struct.sec4_sg_entry], [32 x i8] }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.caam_export_state = type { [128 x i8], [72 x i8], i32, ptr, ptr, ptr }
%struct.split_key_result = type { %struct.completion, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.caam_hash_ctx = type { %struct.crypto_engine_ctx, [52 x i8], [40 x i32], [32 x i8], [40 x i32], [32 x i8], [40 x i32], [32 x i8], [40 x i32], [32 x i8], [128 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, %struct.alginfo, [8 x i8] }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }
%struct.caam_hash_state = type { i32, i32, i32, [52 x i8], [128 x i8], i32, i32, [56 x i8], [72 x i8], [56 x i8], ptr, ptr, ptr, ptr, ptr, [44 x i8] }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [15 x i8], %struct.atomic_t, ptr, [56 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@hash_list = internal global %struct.list_head zeroinitializer, align 4
@driver_hash = internal global [8 x %struct.caam_hash_template] [%struct.caam_hash_template { [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4259840, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4325376, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4390912, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4456448, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4521984, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-md5-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @ahash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4194304, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xcbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @axcbc_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1050368, [60 x i8] undef }, %struct.caam_hash_template { [128 x i8] zeroinitializer, [128 x i8] zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cmac-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [60 x i8] undef, %struct.ahash_alg { ptr @ahash_init, ptr @ahash_update, ptr @ahash_final, ptr @ahash_finup, ptr @ahash_digest, ptr @ahash_export, ptr @ahash_import, ptr @acmac_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 216, [56 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1050112, [60 x i8] undef }], align 64
@.str = private unnamed_addr constant [28 x i8] c"\014%s alg allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\014%s alg registration failed: %d\0A\00", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid number of src SG.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to map source for DMA\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"could not allocate extended descriptor\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"unable to map ctx\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"unable to DMA map source\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"unable to map buf\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"unable to map src\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"unable to allocate key input memory\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"unable to map key memory\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@split_key_len.mdpadlen = internal unnamed_addr constant [6 x i8] c"\10\14  @@", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"\013failed to allocate t_alg\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@caam_hash_cra_init.runninglen = internal unnamed_addr constant [6 x i8] c"\18\1C((HH", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"unable to map key\0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"unable to map shared descriptors\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_algapi_hash_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @hash_list, align 4
  %2 = icmp eq ptr %1, null
  %3 = icmp eq ptr %1, @hash_list
  %4 = or i1 %2, %3
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %0
  %6 = phi ptr [ %7, %5 ], [ %1, %0 ]
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.caam_hash_alg, ptr %6, i32 0, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %6) #13
  %13 = icmp eq ptr %7, @hash_list
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_algapi_hash_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 10
  %7 = load ptr, ptr %3, align 4
  br i1 %6, label %8, label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 26, i32 22
  %10 = load i8, ptr @caam_little_end, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %12, %13 ], [ %15, %14 ]
  %18 = lshr i32 %17, 12
  %19 = and i32 %18, 15
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.caam_ctrl, ptr %20, i32 0, i32 26, i32 24
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #13
  br i1 %23, label %26, label %25

25:                                               ; preds = %16
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  br label %28

26:                                               ; preds = %16
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %24, %25 ], [ %27, %26 ]
  %30 = lshr i32 %29, 12
  %31 = and i32 %30, 15
  br label %44

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 25, i32 5
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #13
  br i1 %35, label %38, label %37

37:                                               ; preds = %32
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  br label %40

38:                                               ; preds = %32
  %39 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ %36, %37 ], [ %39, %38 ]
  %42 = lshr i32 %41, 24
  %43 = and i32 %41, 255
  br label %44

44:                                               ; preds = %40, %28
  %45 = phi i32 [ %31, %28 ], [ %43, %40 ]
  %46 = phi i32 [ %19, %28 ], [ %42, %40 ]
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %151, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %46, 0
  %50 = select i1 %49, i32 32, i32 64
  store volatile ptr @hash_list, ptr @hash_list, align 4
  store ptr @hash_list, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  br label %51

51:                                               ; preds = %147, %48
  %52 = phi i32 [ 0, %48 ], [ %149, %147 ]
  %53 = phi i32 [ 0, %48 ], [ %148, %147 ]
  %54 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52
  %55 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 7
  %56 = load i32, ptr %55, align 64
  %57 = and i32 %56, 15728640
  %58 = icmp eq i32 %57, 4194304
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 6, i32 11
  %61 = load i32, ptr %60, align 64
  %62 = icmp ugt i32 %61, %50
  br i1 %62, label %147, label %63

63:                                               ; preds = %59, %51
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 576) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #15
  br label %91

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3
  %71 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(512) %70, ptr noundef align 64 dereferenceable(512) %71, i32 512, i1 false) #13
  %72 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 8
  %73 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 2
  %74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef %73) #13
  %75 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 9
  %76 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 3
  %77 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %75, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef %76) #13
  %78 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 15
  store ptr @__this_module, ptr %78, align 4
  %79 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 12
  store ptr @caam_hash_cra_init, ptr %79, align 64
  %80 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 13
  store ptr @caam_hash_cra_exit, ptr %80, align 4
  %81 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 4
  store i32 1024, ptr %81, align 8
  %82 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 6
  store i32 3000, ptr %82, align 32
  %83 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 4
  %84 = load i32, ptr %83, align 64
  %85 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 3
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 5
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 3, i32 11, i32 3, i32 2
  store i32 65664, ptr %87, align 16
  %88 = load i32, ptr %55, align 64
  %89 = getelementptr inbounds %struct.caam_hash_alg, ptr %65, i32 0, i32 1
  store i32 %88, ptr %89, align 8
  %90 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %96

91:                                               ; preds = %69, %67
  %92 = phi ptr [ inttoptr (i32 -12 to ptr), %67 ], [ %65, %69 ]
  %93 = ptrtoint ptr %92 to i32
  %94 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 3
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %94) #15
  br label %147

96:                                               ; preds = %69
  %97 = tail call i32 @crypto_register_ahash(ptr noundef %70) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %75, i32 noundef %97) #15
  tail call void @kfree(ptr noundef nonnull %65) #13
  br label %104

101:                                              ; preds = %96
  %102 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  store ptr %65, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  store ptr @hash_list, ptr %65, align 8
  %103 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %65, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %99
  %105 = load i32, ptr %55, align 64
  %106 = and i32 %105, 16711680
  %107 = icmp eq i32 %106, 1048576
  br i1 %107, label %147, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 576) #14
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #15
  br label %134

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(512) %115, ptr noundef align 64 dereferenceable(512) %71, i32 512, i1 false) #13
  %116 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 8
  %117 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %116, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef %54) #13
  %118 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 9
  %119 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 1
  %120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %118, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef %119) #13
  %121 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 7
  store ptr null, ptr %121, align 4
  %122 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 15
  store ptr @__this_module, ptr %122, align 4
  %123 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 12
  store ptr @caam_hash_cra_init, ptr %123, align 64
  %124 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 13
  store ptr @caam_hash_cra_exit, ptr %124, align 4
  %125 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 4
  store i32 1024, ptr %125, align 8
  %126 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 6
  store i32 3000, ptr %126, align 32
  %127 = load i32, ptr %83, align 64
  %128 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 3
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 5
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 3, i32 11, i32 3, i32 2
  store i32 65664, ptr %130, align 16
  %131 = load i32, ptr %55, align 64
  %132 = getelementptr inbounds %struct.caam_hash_alg, ptr %110, i32 0, i32 1
  store i32 %131, ptr %132, align 8
  %133 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %139

134:                                              ; preds = %114, %112
  %135 = phi ptr [ inttoptr (i32 -12 to ptr), %112 ], [ %110, %114 ]
  %136 = ptrtoint ptr %135 to i32
  %137 = getelementptr %struct.caam_hash_template, ptr @driver_hash, i32 %52, i32 1
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %137) #15
  br label %147

139:                                              ; preds = %114
  %140 = tail call i32 @crypto_register_ahash(ptr noundef %115) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %118, i32 noundef %140) #15
  tail call void @kfree(ptr noundef nonnull %110) #13
  br label %147

144:                                              ; preds = %139
  %145 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  store ptr %110, ptr getelementptr inbounds (%struct.list_head, ptr @hash_list, i32 0, i32 1), align 4
  store ptr @hash_list, ptr %110, align 8
  %146 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %145, ptr %146, align 4
  store volatile ptr %110, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %142, %134, %104, %91, %59
  %148 = phi i32 [ %93, %91 ], [ %136, %134 ], [ %53, %59 ], [ %97, %104 ], [ 0, %144 ], [ %140, %142 ]
  %149 = add nuw nsw i32 %52, 1
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %151, label %51

151:                                              ; preds = %147, %44
  %152 = phi i32 [ 0, %44 ], [ %148, %147 ]
  ret i32 %152
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ahash_init(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  store ptr @ahash_update_first, ptr %3, align 64
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  store ptr @ahash_finup_first, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  store ptr @ahash_final_no_ctx, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 0, ptr %7, align 8
  store i32 0, ptr %2, align 64
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  store i32 0, ptr %8, align 64
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 0, i32 0, i32 1
  store i32 0, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_update(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 %3(ptr noundef %0) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_final(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_finup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 %3(ptr noundef %0) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_digest(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = getelementptr i8, ptr %3, i32 1048
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  store i32 0, ptr %5, align 64
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = tail call i32 @sg_nents_for_len(ptr noundef %13, i64 noundef %16) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  br label %120

20:                                               ; preds = %1
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %12, align 4
  %24 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %23, i32 noundef %17, i32 noundef 1, i32 noundef 0) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #15
  br label %120

27:                                               ; preds = %22
  %28 = icmp sgt i32 %24, 1
  %29 = shl i32 %24, 4
  %30 = add i32 %29, 128
  %31 = select i1 %28, i32 %30, i32 128
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i32 [ 0, %20 ], [ %24, %27 ]
  %34 = phi i32 [ 128, %20 ], [ %31, %27 ]
  %35 = getelementptr i8, ptr %3, i32 1036
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %2, align 16
  %38 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 2849, i32 3521
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef %42) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = getelementptr i8, ptr %37, i32 1048
  %47 = load ptr, ptr %46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.6) #15
  %48 = load ptr, ptr %12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %48, i32 noundef %17, i32 noundef 1, i32 noundef 0) #13
  br label %120

49:                                               ; preds = %32
  %50 = getelementptr i8, ptr %3, i32 704
  %51 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %43, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ahash_edesc, ptr %43, i32 0, i32 5
  %53 = load i32, ptr %50, align 4
  %54 = load i8, ptr @caam_little_end, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = lshr i32 %53, 24
  %57 = select i1 %55, i32 %56, i32 %53
  %58 = shl i32 %57, 16
  %59 = and i32 %58, 8323072
  %60 = or i32 %59, -1333781503
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  %62 = select i1 %55, i32 %61, i32 %60
  %63 = getelementptr %struct.ahash_edesc, ptr %43, i32 0, i32 5, i32 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %65 = select i1 %55, i32 %64, i32 %36
  store i32 %65, ptr %63, align 4
  %66 = load i8, ptr @caam_little_end, align 1, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %62) #13
  %69 = select i1 %67, i32 %68, i32 %62
  %70 = load i32, ptr @caam_ptr_sz, align 4
  %71 = lshr i32 %70, 2
  %72 = add nuw nsw i32 %69, %71
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #13
  %74 = select i1 %67, i32 %73, i32 %72
  store i32 %74, ptr %52, align 64
  %75 = getelementptr inbounds %struct.ahash_edesc, ptr %43, i32 0, i32 1
  store i32 %17, ptr %75, align 4
  %76 = load i32, ptr %14, align 8
  %77 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %4, ptr noundef nonnull %43, ptr noundef %0, i32 noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %49
  %80 = load i32, ptr %75, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %83, i32 noundef %80, i32 noundef 1, i32 noundef 0) #13
  br label %84

84:                                               ; preds = %82, %79
  %85 = getelementptr inbounds %struct.ahash_edesc, ptr %43, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %43, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %89, i32 noundef %86, i32 noundef 1, i32 noundef 0) #13
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, ptr %5, align 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %95 = load i32, ptr %94, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %91, i32 noundef %95, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %96

96:                                               ; preds = %93, %90
  tail call void @kfree(ptr noundef nonnull %43) #13
  br label %120

97:                                               ; preds = %49
  %98 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %52, ptr noundef %7, ptr noundef %5, i32 noundef %11)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %75, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %104, i32 noundef %101, i32 noundef 1, i32 noundef 0) #13
  br label %105

105:                                              ; preds = %103, %100
  %106 = getelementptr inbounds %struct.ahash_edesc, ptr %43, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %43, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %110, i32 noundef %107, i32 noundef 1, i32 noundef 0) #13
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, ptr %5, align 64
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %116 = load i32, ptr %115, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %112, i32 noundef %116, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %117

117:                                              ; preds = %114, %111
  tail call void @kfree(ptr noundef nonnull %43) #13
  br label %120

118:                                              ; preds = %97
  %119 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %7, ptr noundef nonnull @ahash_done, ptr noundef %0, i32 noundef 2)
  br label %120

120:                                              ; preds = %118, %117, %96, %45, %26, %19
  %121 = phi i32 [ %17, %19 ], [ %77, %96 ], [ -12, %117 ], [ %119, %118 ], [ -12, %45 ], [ -12, %26 ]
  ret i32 %121
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ahash_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %5 = load i32, ptr %4, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1, ptr align 1 %3, i32 %5, i1 false)
  %6 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %6, ptr noundef align 64 dereferenceable(72) %7, i32 72, i1 false)
  %8 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 2
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ahash_import(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(448) %3, i8 0, i32 448, i1 false)
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %5 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 64 %4, ptr align 4 %1, i32 %6, i1 false)
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5
  %8 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(72) %7, ptr noundef align 4 dereferenceable(72) %8, i32 72, i1 false)
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  store i32 %9, ptr %10, align 64
  %11 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  store ptr %12, ptr %13, align 64
  %14 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.caam_export_state, ptr %1, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  store ptr %18, ptr %19, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.split_key_result, align 4
  %5 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 8
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ult i32 %9, %2
  br i1 %17, label %18, label %219

18:                                               ; preds = %3
  %19 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3265) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %254, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #13, !annotation !11
  %23 = load i32, ptr @caam_ptr_sz, align 4
  %24 = shl i32 %23, 1
  %25 = add i32 %24, 32
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3265) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28) #15
  br label %215

29:                                               ; preds = %21
  %30 = load i8, ptr @caam_little_end, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 16810160, i32 -1333788671
  store i32 %32, ptr %26, align 64
  %33 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %19) #13
  %34 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %46, !prof !12

37:                                               ; preds = %29
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %38 = tail call ptr @dev_driver_string(ptr noundef %22) #13
  %39 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %22, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %40, %37 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %38, ptr noundef %45) #13
  br label %46

46:                                               ; preds = %44, %29
  br i1 %33, label %56, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %19 to i32
  %50 = add i32 %49, 1073741824
  %51 = lshr i32 %50, 12
  %52 = getelementptr %struct.page, ptr %48, i32 %51
  %53 = and i32 %49, 4095
  %54 = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %52, i32 noundef %53, i32 noundef %2, i32 noundef 0, i32 noundef 0) #13
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.29) #15
  tail call void @kfree(ptr noundef nonnull %26) #13
  br label %215

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %59 = load i32, ptr %58, align 32
  %60 = or i32 %59, -2147483635
  %61 = load i32, ptr %26, align 64
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = lshr i32 %61, 24
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = and i32 %65, 127
  %67 = getelementptr i32, ptr %26, i32 %66
  %68 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  %69 = select i1 %63, i32 %68, i32 %60
  store i32 %69, ptr %67, align 4
  %70 = load i32, ptr %26, align 64
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  %74 = select i1 %72, i32 %73, i32 %70
  %75 = add i32 %74, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  %77 = select i1 %72, i32 %76, i32 %75
  store i32 %77, ptr %26, align 64
  %78 = load i8, ptr @caam_little_end, align 1, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = lshr i32 %77, 24
  %81 = select i1 %79, i32 %80, i32 %77
  %82 = and i32 %81, 127
  %83 = getelementptr i32, ptr %26, i32 %82
  %84 = select i1 %79, i32 16624, i32 -264241152
  store i32 %84, ptr %83, align 4
  %85 = load i32, ptr %26, align 64
  %86 = load i8, ptr @caam_little_end, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #13
  %89 = select i1 %87, i32 %88, i32 %85
  %90 = add i32 %89, 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #13
  %92 = select i1 %87, i32 %91, i32 %90
  store i32 %92, ptr %26, align 64
  %93 = load i8, ptr @caam_little_end, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = lshr i32 %92, 24
  %96 = select i1 %94, i32 %95, i32 %92
  %97 = and i32 %96, 127
  %98 = getelementptr i32, ptr %26, i32 %97
  %99 = tail call i32 @llvm.bswap.i32(i32 %54) #13
  %100 = select i1 %94, i32 %99, i32 %54
  store i32 %100, ptr %98, align 4
  %101 = load i32, ptr %26, align 64
  %102 = load i8, ptr @caam_little_end, align 1, !range !8
  %103 = icmp eq i8 %102, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %101) #13
  %105 = select i1 %103, i32 %104, i32 %101
  %106 = load i32, ptr @caam_ptr_sz, align 4
  %107 = lshr i32 %106, 2
  %108 = add i32 %105, %107
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #13
  %110 = select i1 %103, i32 %109, i32 %108
  store i32 %110, ptr %26, align 64
  %111 = load i8, ptr @caam_little_end, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  %113 = lshr i32 %110, 24
  %114 = select i1 %112, i32 %113, i32 %110
  %115 = and i32 %114, 127
  %116 = getelementptr i32, ptr %26, i32 %115
  %117 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  %118 = select i1 %112, i32 %117, i32 %2
  store i32 %118, ptr %116, align 4
  %119 = load i32, ptr %26, align 64
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = tail call i32 @llvm.bswap.i32(i32 %119) #13
  %123 = select i1 %121, i32 %122, i32 %119
  %124 = add i32 %123, 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #13
  %126 = select i1 %121, i32 %125, i32 %124
  store i32 %126, ptr %26, align 64
  %127 = or i32 %2, 739508224
  %128 = load i8, ptr @caam_little_end, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = lshr i32 %126, 24
  %131 = select i1 %129, i32 %130, i32 %126
  %132 = and i32 %131, 127
  %133 = getelementptr i32, ptr %26, i32 %132
  %134 = tail call i32 @llvm.bswap.i32(i32 %127) #13
  %135 = select i1 %129, i32 %134, i32 %127
  store i32 %135, ptr %133, align 4
  %136 = load i32, ptr %26, align 64
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #13
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #13
  %143 = select i1 %138, i32 %142, i32 %141
  store i32 %143, ptr %26, align 64
  %144 = load i8, ptr @caam_little_end, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = lshr i32 %143, 24
  %147 = select i1 %145, i32 %146, i32 %143
  %148 = and i32 %147, 127
  %149 = getelementptr i32, ptr %26, i32 %148
  %150 = select i1 %145, i32 16632, i32 -130023424
  store i32 %150, ptr %149, align 4
  %151 = load i32, ptr %26, align 64
  %152 = load i8, ptr @caam_little_end, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  %154 = tail call i32 @llvm.bswap.i32(i32 %151) #13
  %155 = select i1 %153, i32 %154, i32 %151
  %156 = add i32 %155, 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #13
  %158 = select i1 %153, i32 %157, i32 %156
  store i32 %158, ptr %26, align 64
  %159 = load i8, ptr @caam_little_end, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = lshr i32 %158, 24
  %162 = select i1 %160, i32 %161, i32 %158
  %163 = and i32 %162, 127
  %164 = getelementptr i32, ptr %26, i32 %163
  %165 = select i1 %160, i32 %99, i32 %54
  store i32 %165, ptr %164, align 4
  %166 = load i32, ptr %26, align 64
  %167 = load i8, ptr @caam_little_end, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %166) #13
  %170 = select i1 %168, i32 %169, i32 %166
  %171 = load i32, ptr @caam_ptr_sz, align 4
  %172 = lshr i32 %171, 2
  %173 = add i32 %170, %172
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #13
  %175 = select i1 %168, i32 %174, i32 %173
  store i32 %175, ptr %26, align 64
  %176 = load i8, ptr @caam_little_end, align 1, !range !8
  %177 = icmp eq i8 %176, 0
  %178 = lshr i32 %175, 24
  %179 = select i1 %177, i32 %178, i32 %175
  %180 = and i32 %179, 127
  %181 = getelementptr i32, ptr %26, i32 %180
  %182 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %183 = select i1 %177, i32 %182, i32 %11
  store i32 %183, ptr %181, align 4
  %184 = load i32, ptr %26, align 64
  %185 = load i8, ptr @caam_little_end, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  %187 = tail call i32 @llvm.bswap.i32(i32 %184) #13
  %188 = select i1 %186, i32 %187, i32 %184
  %189 = add i32 %188, 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #13
  %191 = select i1 %186, i32 %190, i32 %189
  store i32 %191, ptr %26, align 64
  %192 = or i32 %11, 1545601024
  %193 = load i8, ptr @caam_little_end, align 1, !range !8
  %194 = icmp eq i8 %193, 0
  %195 = lshr i32 %191, 24
  %196 = select i1 %194, i32 %195, i32 %191
  %197 = and i32 %196, 127
  %198 = getelementptr i32, ptr %26, i32 %197
  %199 = tail call i32 @llvm.bswap.i32(i32 %192) #13
  %200 = select i1 %194, i32 %199, i32 %192
  store i32 %200, ptr %198, align 4
  %201 = load i32, ptr %26, align 64
  %202 = load i8, ptr @caam_little_end, align 1, !range !8
  %203 = icmp eq i8 %202, 0
  %204 = tail call i32 @llvm.bswap.i32(i32 %201) #13
  %205 = select i1 %203, i32 %204, i32 %201
  %206 = add i32 %205, 1
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #13
  %208 = select i1 %203, i32 %207, i32 %206
  store i32 %208, ptr %26, align 64
  %209 = getelementptr inbounds %struct.split_key_result, ptr %4, i32 0, i32 1
  store i32 0, ptr %209, align 4
  store i32 0, ptr %4, align 4
  %210 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %210, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #13
  %211 = call i32 @caam_jr_enqueue(ptr noundef %22, ptr noundef nonnull %26, ptr noundef nonnull @split_key_done, ptr noundef nonnull %4) #13
  %212 = icmp eq i32 %211, -115
  br i1 %212, label %213, label %216

213:                                              ; preds = %57
  call void @wait_for_completion(ptr noundef nonnull %4) #13
  %214 = load i32, ptr %209, align 4
  br label %216

215:                                              ; preds = %56, %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %252

216:                                              ; preds = %213, %57
  %217 = phi i32 [ %214, %213 ], [ %211, %57 ]
  call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %54, i32 noundef %2, i32 noundef 0, i32 noundef 0) #13
  call void @kfree(ptr noundef nonnull %26) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %216, %3
  %220 = phi i32 [ %11, %216 ], [ %2, %3 ]
  %221 = phi ptr [ %19, %216 ], [ %1, %3 ]
  %222 = phi ptr [ %19, %216 ], [ null, %3 ]
  %223 = getelementptr inbounds %struct.caam_drv_private, ptr %16, i32 0, i32 11
  %224 = load i32, ptr %223, align 4
  %225 = icmp sgt i32 %224, 5
  br i1 %225, label %226, label %245

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %228 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 36
  store i8 1, ptr %228, align 4
  %229 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 20
  store i32 %220, ptr %229, align 4
  %230 = load i32, ptr %227, align 32
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 15
  %233 = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %232
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = shl nuw nsw i32 %235, 1
  %237 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 24
  store i32 %236, ptr %237, align 8
  %238 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 7, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr align 64 %238, ptr align 1 %221, i32 %220, i1 false)
  %239 = load i32, ptr %237, align 8
  %240 = icmp ugt i32 %220, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %226
  %242 = load ptr, ptr %5, align 8
  %243 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 28
  %244 = load i32, ptr %243, align 4
  call void @dma_sync_single_for_device(ptr noundef %242, i32 noundef %244, i32 noundef %239, i32 noundef 1) #13
  br label %251

245:                                              ; preds = %219
  %246 = load ptr, ptr %5, align 8
  %247 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 7, i32 10
  %248 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %249 = call i32 @gen_split_key(ptr noundef %246, ptr noundef %247, ptr noundef %248, ptr noundef %221, i32 noundef %220, i32 noundef 128) #13
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %245, %241, %226
  call void @kfree(ptr noundef %222) #13
  call fastcc void @ahash_set_sh_desc(ptr noundef %0)
  br label %254

252:                                              ; preds = %245, %216, %215
  %253 = phi ptr [ %19, %216 ], [ %222, %245 ], [ %19, %215 ]
  call void @kfree(ptr noundef %253) #13
  br label %254

254:                                              ; preds = %252, %251, %18
  %255 = phi i32 [ -22, %252 ], [ 0, %251 ], [ -12, %18 ]
  ret i32 %255
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axcbc_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 16
  br i1 %4, label %5, label %69

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 7, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(16) %8, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 28
  %10 = load i32, ptr %9, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %10, i32 noundef 16, i32 noundef 1) #13
  %11 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 20
  store i32 16, ptr %11, align 4
  %12 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = load i32, ptr %14, align 64
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 10
  %18 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %19 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 12
  %20 = load i32, ptr %19, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef %20, i32 noundef %20) #13
  %21 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10
  %22 = load i32, ptr %21, align 64
  %23 = load i32, ptr %17, align 4
  %24 = load i8, ptr @caam_little_end, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = lshr i32 %23, 24
  %27 = select i1 %25, i32 %26, i32 %23
  %28 = shl i32 %27, 2
  %29 = and i32 %28, 508
  %30 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4
  %31 = load i32, ptr %30, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %22, i32 noundef %29, i32 noundef %31) #13
  %32 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 4, i32 10
  %33 = load i32, ptr %19, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %32, ptr noundef %18, i32 noundef 8, i32 noundef %15, i32 noundef %33) #13
  %34 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = load i32, ptr %32, align 4
  %37 = load i8, ptr @caam_little_end, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = lshr i32 %36, 24
  %40 = select i1 %38, i32 %39, i32 %36
  %41 = shl i32 %40, 2
  %42 = and i32 %41, 508
  %43 = load i32, ptr %30, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %35, i32 noundef %42, i32 noundef %43) #13
  %44 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 32
  store ptr %8, ptr %44, align 16
  %45 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3
  %46 = load i32, ptr %19, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %45, ptr noundef %18, i32 noundef 4, i32 noundef %46, i32 noundef %46) #13
  %47 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %45, align 4
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %49, 24
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = shl i32 %53, 2
  %55 = and i32 %54, 508
  %56 = load i32, ptr %30, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %48, i32 noundef %55, i32 noundef %56) #13
  %57 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 6
  %58 = load i32, ptr %19, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %57, ptr noundef %18, i32 noundef 12, i32 noundef %15, i32 noundef %58) #13
  %59 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %57, align 4
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = lshr i32 %61, 24
  %65 = select i1 %63, i32 %64, i32 %61
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 508
  %68 = load i32, ptr %30, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %60, i32 noundef %67, i32 noundef %68) #13
  br label %69

69:                                               ; preds = %5, %3
  %70 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acmac_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %64 [
    i32 16, label %4
    i32 24, label %4
    i32 32, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 32
  store ptr %1, ptr %5, align 16
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 20
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 10
  %14 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 12
  %16 = load i32, ptr %15, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %13, ptr noundef %14, i32 noundef 0, i32 noundef %16, i32 noundef %16) #13
  %17 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10
  %18 = load i32, ptr %17, align 64
  %19 = load i32, ptr %13, align 4
  %20 = load i8, ptr @caam_little_end, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = lshr i32 %19, 24
  %23 = select i1 %21, i32 %22, i32 %19
  %24 = shl i32 %23, 2
  %25 = and i32 %24, 508
  %26 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4
  %27 = load i32, ptr %26, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %18, i32 noundef %25, i32 noundef %27) #13
  %28 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 4, i32 10
  %29 = load i32, ptr %15, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %28, ptr noundef %14, i32 noundef 8, i32 noundef %10, i32 noundef %29) #13
  %30 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = load i32, ptr %28, align 4
  %33 = load i8, ptr @caam_little_end, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = lshr i32 %32, 24
  %36 = select i1 %34, i32 %35, i32 %32
  %37 = shl i32 %36, 2
  %38 = and i32 %37, 508
  %39 = load i32, ptr %26, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %31, i32 noundef %38, i32 noundef %39) #13
  %40 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3
  %41 = load i32, ptr %15, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %40, ptr noundef %14, i32 noundef 4, i32 noundef %41, i32 noundef %41) #13
  %42 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %40, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = lshr i32 %44, 24
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = shl i32 %48, 2
  %50 = and i32 %49, 508
  %51 = load i32, ptr %26, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %43, i32 noundef %50, i32 noundef %51) #13
  %52 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 6
  %53 = load i32, ptr %15, align 4
  tail call void @cnstr_shdsc_sk_hash(ptr noundef %52, ptr noundef %14, i32 noundef 12, i32 noundef %10, i32 noundef %53) #13
  %54 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %52, align 4
  %57 = load i8, ptr @caam_little_end, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  %59 = lshr i32 %56, 24
  %60 = select i1 %58, i32 %59, i32 %56
  %61 = shl i32 %60, 2
  %62 = and i32 %61, 508
  %63 = load i32, ptr %26, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %55, i32 noundef %62, i32 noundef %63) #13
  br label %64

64:                                               ; preds = %4, %3
  %65 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_update_first(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = getelementptr i8, ptr %3, i32 1048
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 0, i32 0, i32 1
  %11 = getelementptr i8, ptr %3, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %14, -1
  %18 = and i32 %16, %17
  store i32 %18, ptr %10, align 4
  %19 = sub i32 %16, %18
  %20 = getelementptr i8, ptr %3, i32 1056
  %21 = load i32, ptr %20, align 32
  %22 = and i32 %21, 16719856
  %23 = icmp eq i32 %22, 1050368
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = icmp eq i32 %22, 1050112
  %26 = icmp sge i32 %19, %14
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i32 %18, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %34, label %36

30:                                               ; preds = %1
  %31 = icmp sge i32 %19, %14
  %32 = icmp eq i32 %18, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %24
  store i32 %14, ptr %10, align 4
  %35 = sub i32 %19, %14
  br label %36

36:                                               ; preds = %34, %30, %24
  %37 = phi i32 [ %14, %34 ], [ %18, %30 ], [ %18, %24 ]
  %38 = phi i32 [ %35, %34 ], [ %19, %30 ], [ %19, %24 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %117, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = sub i32 %16, %37
  %44 = zext i32 %43 to i64
  %45 = tail call i32 @sg_nents_for_len(ptr noundef %42, i64 noundef %44) #13
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  br label %151

48:                                               ; preds = %40
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %41, align 4
  %52 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %51, i32 noundef %45, i32 noundef 1, i32 noundef 0) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #15
  br label %151

55:                                               ; preds = %50
  %56 = icmp sgt i32 %52, 1
  %57 = shl i32 %52, 4
  %58 = add i32 %57, 128
  %59 = select i1 %56, i32 %58, i32 128
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ 0, %48 ], [ %52, %55 ]
  %62 = phi i32 [ 128, %48 ], [ %59, %55 ]
  %63 = getelementptr i8, ptr %3, i32 1028
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %2, align 16
  %66 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 512
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 2849, i32 3521
  %71 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef %70) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = getelementptr i8, ptr %65, i32 1048
  %75 = load ptr, ptr %74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.6) #15
  %76 = load ptr, ptr %41, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %76, i32 noundef %45, i32 noundef 1, i32 noundef 0) #13
  br label %151

77:                                               ; preds = %60
  %78 = getelementptr i8, ptr %3, i32 320
  %79 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %71, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ahash_edesc, ptr %71, i32 0, i32 5
  %81 = load i32, ptr %78, align 4
  %82 = load i8, ptr @caam_little_end, align 1, !range !8
  %83 = icmp eq i8 %82, 0
  %84 = lshr i32 %81, 24
  %85 = select i1 %83, i32 %84, i32 %81
  %86 = shl i32 %85, 16
  %87 = and i32 %86, 8323072
  %88 = or i32 %87, -1333781503
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #13
  %90 = select i1 %83, i32 %89, i32 %88
  %91 = getelementptr %struct.ahash_edesc, ptr %71, i32 0, i32 5, i32 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %93 = select i1 %83, i32 %92, i32 %64
  store i32 %93, ptr %91, align 4
  %94 = load i8, ptr @caam_little_end, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  %96 = tail call i32 @llvm.bswap.i32(i32 %90) #13
  %97 = select i1 %95, i32 %96, i32 %90
  %98 = load i32, ptr @caam_ptr_sz, align 4
  %99 = lshr i32 %98, 2
  %100 = add nuw nsw i32 %97, %99
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #13
  %102 = select i1 %95, i32 %101, i32 %100
  store i32 %102, ptr %80, align 64
  %103 = getelementptr inbounds %struct.ahash_edesc, ptr %71, i32 0, i32 1
  store i32 %45, ptr %103, align 4
  %104 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %4, ptr noundef nonnull %71, ptr noundef %0, i32 noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef %38)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %77
  %107 = getelementptr i8, ptr %3, i32 1052
  %108 = load i32, ptr %107, align 4
  %109 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %80, ptr noundef %7, ptr noundef %5, i32 noundef %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %7, ptr noundef nonnull @ahash_done_ctx_dst, ptr noundef %0, i32 noundef 1)
  switch i32 %112, label %151 [
    i32 -16, label %113
    i32 -115, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  store ptr @ahash_update_ctx, ptr %114, align 64
  %115 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  store ptr @ahash_finup_ctx, ptr %115, align 8
  %116 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  store ptr @ahash_final_ctx, ptr %116, align 4
  br label %151

117:                                              ; preds = %36
  %118 = icmp eq i32 %37, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  store ptr @ahash_update_no_ctx, ptr %120, align 64
  %121 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  store ptr @ahash_finup_no_ctx, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  store ptr @ahash_final_no_ctx, ptr %122, align 4
  %123 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %8, ptr noundef %124, i32 noundef 0, i32 noundef %16, i32 noundef 0) #13
  %125 = load i32, ptr %10, align 4
  store i32 %125, ptr %9, align 4
  br label %151

126:                                              ; preds = %106, %77
  %127 = phi i32 [ %104, %77 ], [ %109, %106 ]
  %128 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %133 = load i32, ptr %132, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %129, i32 noundef %133, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %128, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, ptr %103, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %41, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %138, i32 noundef %135, i32 noundef 1, i32 noundef 0) #13
  br label %139

139:                                              ; preds = %137, %134
  %140 = getelementptr inbounds %struct.ahash_edesc, ptr %71, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %71, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %144, i32 noundef %141, i32 noundef 1, i32 noundef 0) #13
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32, ptr %5, align 64
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %9, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %146, i32 noundef %149, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %150

150:                                              ; preds = %148, %145
  tail call void @kfree(ptr noundef nonnull %71) #13
  br label %151

151:                                              ; preds = %150, %119, %117, %113, %111, %73, %54, %47
  %152 = phi i32 [ %45, %47 ], [ %127, %150 ], [ -12, %73 ], [ -12, %54 ], [ %112, %111 ], [ %112, %113 ], [ 0, %119 ], [ 0, %117 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_finup_first(ptr noundef %0) #0 {
  %2 = tail call i32 @ahash_digest(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_final_no_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 1048
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr i8, ptr %3, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr i8, ptr %3, i32 1036
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2849, i32 3521
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 7), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef %20, i32 noundef 128) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6) #15
  br label %142

26:                                               ; preds = %1
  %27 = getelementptr i8, ptr %3, i32 704
  %28 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %22, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ahash_edesc, ptr %22, i32 0, i32 5
  %30 = load i32, ptr %27, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %30, 24
  %34 = select i1 %32, i32 %33, i32 %30
  %35 = shl i32 %34, 16
  %36 = and i32 %35, 8323072
  %37 = or i32 %36, -1333781503
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %39 = select i1 %32, i32 %38, i32 %37
  %40 = getelementptr %struct.ahash_edesc, ptr %22, i32 0, i32 5, i32 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  %42 = select i1 %32, i32 %41, i32 %15
  store i32 %42, ptr %40, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %39) #13
  %44 = select i1 %32, i32 %43, i32 %37
  %45 = load i32, ptr @caam_ptr_sz, align 4
  %46 = lshr i32 %45, 2
  %47 = add nuw nsw i32 %44, %46
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %49 = select i1 %32, i32 %48, i32 %47
  store i32 %49, ptr %29, align 8
  %50 = icmp eq i32 %9, 0
  br i1 %50, label %118, label %51

51:                                               ; preds = %26
  %52 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #13
  %53 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %65, !prof !12

56:                                               ; preds = %51
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %57 = tail call ptr @dev_driver_string(ptr noundef %6) #13
  %58 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load ptr, ptr %6, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %59, %56 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %57, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %63, %51
  br i1 %52, label %66, label %67

66:                                               ; preds = %65
  store i32 -1, ptr %4, align 64
  br label %76

67:                                               ; preds = %65
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %7 to i32
  %70 = add i32 %69, 1073741824
  %71 = lshr i32 %70, 12
  %72 = getelementptr %struct.page, ptr %68, i32 %71
  %73 = and i32 %69, 4095
  %74 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %72, i32 noundef %73, i32 noundef %9, i32 noundef 1, i32 noundef 0) #13
  store i32 %74, ptr %4, align 64
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %67, %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25) #15
  br label %123

77:                                               ; preds = %67
  %78 = load i32, ptr %29, align 8
  %79 = load i8, ptr @caam_little_end, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = lshr i32 %78, 24
  %82 = select i1 %80, i32 %81, i32 %78
  %83 = and i32 %82, 127
  %84 = getelementptr i32, ptr %29, i32 %83
  %85 = select i1 %80, i32 16624, i32 -264241152
  store i32 %85, ptr %84, align 4
  %86 = load i32, ptr %29, align 8
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #13
  %88 = select i1 %80, i32 %87, i32 %86
  %89 = add i32 %88, 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  %91 = select i1 %80, i32 %90, i32 %89
  store i32 %91, ptr %29, align 8
  %92 = lshr i32 %90, 24
  %93 = select i1 %80, i32 %92, i32 %89
  %94 = and i32 %93, 127
  %95 = getelementptr i32, ptr %29, i32 %94
  %96 = tail call i32 @llvm.bswap.i32(i32 %74) #13
  %97 = select i1 %80, i32 %96, i32 %74
  store i32 %97, ptr %95, align 4
  %98 = load i32, ptr %29, align 8
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #13
  %100 = select i1 %80, i32 %99, i32 %98
  %101 = load i32, ptr @caam_ptr_sz, align 4
  %102 = lshr i32 %101, 2
  %103 = add i32 %100, %102
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #13
  %105 = select i1 %80, i32 %104, i32 %103
  store i32 %105, ptr %29, align 8
  %106 = lshr i32 %104, 24
  %107 = select i1 %80, i32 %106, i32 %103
  %108 = and i32 %107, 127
  %109 = getelementptr i32, ptr %29, i32 %108
  %110 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %111 = select i1 %80, i32 %110, i32 %9
  store i32 %111, ptr %109, align 4
  %112 = load i32, ptr %29, align 8
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #13
  %114 = select i1 %80, i32 %113, i32 %112
  %115 = add i32 %114, 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #13
  %117 = select i1 %80, i32 %116, i32 %115
  store i32 %117, ptr %29, align 8
  br label %118

118:                                              ; preds = %77, %26
  %119 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %29, ptr noundef %6, ptr noundef %4, i32 noundef %13)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %6, ptr noundef nonnull @ahash_done, ptr noundef %0, i32 noundef 2)
  br label %142

123:                                              ; preds = %118, %76
  %124 = getelementptr inbounds %struct.ahash_edesc, ptr %22, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %129, i32 noundef %125, i32 noundef 1, i32 noundef 0) #13
  br label %130

130:                                              ; preds = %127, %123
  %131 = getelementptr inbounds %struct.ahash_edesc, ptr %22, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %22, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %135, i32 noundef %132, i32 noundef 1, i32 noundef 0) #13
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32, ptr %4, align 64
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr %8, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %137, i32 noundef %140, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %4, align 64
  br label %141

141:                                              ; preds = %139, %136
  tail call void @kfree(ptr noundef nonnull %22) #13
  br label %142

142:                                              ; preds = %141, %121, %24
  %143 = phi i32 [ -12, %141 ], [ %122, %121 ], [ -12, %24 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ahash_edesc_add_src(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp sgt i32 %3, 1
  %9 = icmp ne i32 %4, 0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %117

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ahash_edesc, ptr %1, i32 0, i32 6
  %13 = add i32 %4, %3
  %14 = shl i32 %13, 4
  %15 = add i32 %14, 48
  %16 = and i32 %15, -64
  %17 = getelementptr %struct.sec4_sg_entry, ptr %12, i32 %4
  %18 = icmp eq i32 %6, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %66, %19
  %23 = phi ptr [ %68, %66 ], [ %21, %19 ]
  %24 = phi i32 [ %69, %66 ], [ %6, %19 ]
  %25 = phi ptr [ %67, %66 ], [ %17, %19 ]
  %26 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %24) #13
  %29 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = zext i32 %30 to i64
  store i64 %34, ptr %25, align 8
  %35 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %25, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %25, i32 0, i32 1
  store i32 %28, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %25, i32 0, i32 2
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, -16384
  store i16 %40, ptr %38, align 4
  %41 = and i16 %36, 16384
  store i16 %41, ptr %35, align 2
  br label %66

42:                                               ; preds = %22
  %43 = load i8, ptr @caam_imx, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i8, ptr @caam_little_end, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %49 = select i1 %47, i32 %48, i32 %30
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  br label %58

52:                                               ; preds = %42
  %53 = zext i32 %30 to i64
  %54 = load i8, ptr @caam_little_end, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = tail call i64 @llvm.bswap.i64(i64 %53) #13
  %57 = select i1 %55, i64 %56, i64 %53
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i64 [ %51, %45 ], [ %57, %52 ]
  store i64 %59, ptr %25, align 8
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %63 = select i1 %61, i32 %62, i32 %28
  %64 = getelementptr inbounds %struct.sec4_sg_entry, ptr %25, i32 0, i32 1
  store i32 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.sec4_sg_entry, ptr %25, i32 0, i32 2
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %58, %33
  %67 = getelementptr %struct.sec4_sg_entry, ptr %25, i32 1
  %68 = tail call ptr @sg_next(ptr noundef %23) #13
  %69 = sub i32 %24, %28
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %22

71:                                               ; preds = %66, %11
  %72 = phi ptr [ %17, %11 ], [ %67, %66 ]
  %73 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.sec4_sg_entry, ptr %72, i32 -1
  %77 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %76, i32 0, i32 3
  %78 = load i16, ptr %77, align 2
  %79 = or i16 %78, -32768
  store i16 %79, ptr %77, align 2
  br label %87

80:                                               ; preds = %71
  %81 = load i8, ptr @caam_little_end, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i32 64, i32 1073741824
  %84 = getelementptr %struct.sec4_sg_entry, ptr %72, i32 -1, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = or i32 %83, %85
  store i32 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = getelementptr inbounds %struct.caam_hash_ctx, ptr %0, i32 0, i32 17
  %89 = load ptr, ptr %88, align 8
  %90 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %12) #13
  %91 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %103, !prof !12

94:                                               ; preds = %87
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %95 = tail call ptr @dev_driver_string(ptr noundef %89) #13
  %96 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load ptr, ptr %89, align 4
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi ptr [ %100, %99 ], [ %97, %94 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %95, ptr noundef %102) #13
  br label %103

103:                                              ; preds = %101, %87
  br i1 %90, label %115, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr @mem_map, align 4
  %106 = ptrtoint ptr %12 to i32
  %107 = add i32 %106, 1073741824
  %108 = lshr i32 %107, 12
  %109 = getelementptr %struct.page, ptr %105, i32 %108
  %110 = and i32 %106, 4095
  %111 = tail call i32 @dma_map_page_attrs(ptr noundef %89, ptr noundef %109, i32 noundef %110, i32 noundef %16, i32 noundef 1, i32 noundef 0) #13
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %115, label %113

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.ahash_edesc, ptr %1, i32 0, i32 2
  store i32 %16, ptr %114, align 8
  store i32 %111, ptr %1, align 64
  br label %122

115:                                              ; preds = %104, %103
  %116 = load ptr, ptr %88, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.7) #15
  br label %174

117:                                              ; preds = %7
  %118 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.scatterlist, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i32 [ %121, %117 ], [ %111, %113 ]
  %124 = phi i32 [ -264241152, %117 ], [ -247463936, %113 ]
  %125 = getelementptr inbounds %struct.ahash_edesc, ptr %1, i32 0, i32 5
  %126 = add i32 %6, %5
  %127 = load i32, ptr %125, align 4
  %128 = load i8, ptr @caam_little_end, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = lshr i32 %127, 24
  %131 = select i1 %129, i32 %130, i32 %127
  %132 = and i32 %131, 127
  %133 = getelementptr i32, ptr %125, i32 %132
  %134 = tail call i32 @llvm.bswap.i32(i32 %124) #13
  %135 = select i1 %129, i32 %134, i32 %124
  store i32 %135, ptr %133, align 4
  %136 = load i32, ptr %125, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #13
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #13
  %143 = select i1 %138, i32 %142, i32 %141
  store i32 %143, ptr %125, align 4
  %144 = lshr i32 %142, 24
  %145 = select i1 %138, i32 %144, i32 %141
  %146 = and i32 %145, 127
  %147 = getelementptr i32, ptr %125, i32 %146
  %148 = tail call i32 @llvm.bswap.i32(i32 %123) #13
  %149 = select i1 %138, i32 %148, i32 %123
  store i32 %149, ptr %147, align 4
  %150 = load i32, ptr %125, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #13
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = load i32, ptr @caam_ptr_sz, align 4
  %156 = lshr i32 %155, 2
  %157 = add i32 %154, %156
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #13
  %159 = select i1 %152, i32 %158, i32 %157
  store i32 %159, ptr %125, align 4
  %160 = lshr i32 %158, 24
  %161 = select i1 %152, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %125, i32 %162
  %164 = tail call i32 @llvm.bswap.i32(i32 %126) #13
  %165 = select i1 %152, i32 %164, i32 %126
  store i32 %165, ptr %163, align 4
  %166 = load i32, ptr %125, align 4
  %167 = load i8, ptr @caam_little_end, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %166) #13
  %170 = select i1 %168, i32 %169, i32 %166
  %171 = add i32 %170, 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #13
  %173 = select i1 %168, i32 %172, i32 %171
  store i32 %173, ptr %125, align 4
  br label %174

174:                                              ; preds = %122, %115
  %175 = phi i32 [ 0, %122 ], [ -12, %115 ]
  ret i32 %175
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @map_seq_out_ptr_ctx(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 2
  store i32 %3, ptr %5, align 8
  %6 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 8
  %7 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #13
  %8 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %20, !prof !12

11:                                               ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %12 = tail call ptr @dev_driver_string(ptr noundef %1) #13
  %13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %12, ptr noundef %19) #13
  br label %20

20:                                               ; preds = %18, %4
  br i1 %7, label %21, label %23

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 1
  store i32 -1, ptr %22, align 4
  br label %33

23:                                               ; preds = %20
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %6 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %24, i32 %27
  %29 = and i32 %25, 4095
  %30 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %28, i32 noundef %29, i32 noundef %3, i32 noundef 2, i32 noundef 0) #13
  %31 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = icmp eq i32 %30, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %23, %21
  %34 = phi ptr [ %22, %21 ], [ %31, %23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  store i32 0, ptr %34, align 4
  br label %86

35:                                               ; preds = %23
  %36 = load i32, ptr %0, align 4
  %37 = load i8, ptr @caam_little_end, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = lshr i32 %36, 24
  %40 = select i1 %38, i32 %39, i32 %36
  %41 = and i32 %40, 127
  %42 = getelementptr i32, ptr %0, i32 %41
  %43 = select i1 %38, i32 16632, i32 -130023424
  store i32 %43, ptr %42, align 4
  %44 = load i32, ptr %0, align 4
  %45 = load i8, ptr @caam_little_end, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #13
  %48 = select i1 %46, i32 %47, i32 %44
  %49 = add i32 %48, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  %51 = select i1 %46, i32 %50, i32 %49
  store i32 %51, ptr %0, align 4
  %52 = load i8, ptr @caam_little_end, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = lshr i32 %51, 24
  %55 = select i1 %53, i32 %54, i32 %51
  %56 = and i32 %55, 127
  %57 = getelementptr i32, ptr %0, i32 %56
  %58 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %59 = select i1 %53, i32 %58, i32 %30
  store i32 %59, ptr %57, align 4
  %60 = load i32, ptr %0, align 4
  %61 = load i8, ptr @caam_little_end, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  %64 = select i1 %62, i32 %63, i32 %60
  %65 = load i32, ptr @caam_ptr_sz, align 4
  %66 = lshr i32 %65, 2
  %67 = add i32 %64, %66
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #13
  %69 = select i1 %62, i32 %68, i32 %67
  store i32 %69, ptr %0, align 4
  %70 = load i8, ptr @caam_little_end, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = lshr i32 %69, 24
  %73 = select i1 %71, i32 %72, i32 %69
  %74 = and i32 %73, 127
  %75 = getelementptr i32, ptr %0, i32 %74
  %76 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %77 = select i1 %71, i32 %76, i32 %3
  store i32 %77, ptr %75, align 4
  %78 = load i32, ptr %0, align 4
  %79 = load i8, ptr @caam_little_end, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #13
  %82 = select i1 %80, i32 %81, i32 %78
  %83 = add i32 %82, 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #13
  %85 = select i1 %80, i32 %84, i32 %83
  store i32 %85, ptr %0, align 4
  br label %86

86:                                               ; preds = %35, %33
  %87 = phi i32 [ -12, %33 ], [ 0, %35 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ahash_enqueue_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 7, i32 0, i32 3
  store ptr %1, ptr %10, align 16
  %11 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %17, ptr noundef %2) #13
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 5
  %21 = tail call i32 @caam_jr_enqueue(ptr noundef %0, ptr noundef %20, ptr noundef %1, ptr noundef %2) #13
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %18, %15 ], [ %21, %19 ]
  switch i32 %23, label %24 [
    i32 -16, label %51
    i32 -115, label %51
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %26, i32 noundef %30, i32 noundef %3, i32 noundef 0) #13
  store i32 0, ptr %25, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %37, i32 noundef %33, i32 noundef 1, i32 noundef 0) #13
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %9, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %43, i32 noundef %40, i32 noundef 1, i32 noundef 0) #13
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, ptr %7, align 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 4
  %49 = load i32, ptr %48, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %45, i32 noundef %49, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %7, align 64
  br label %50

50:                                               ; preds = %47, %44
  tail call void @kfree(ptr noundef %9) #13
  br label %51

51:                                               ; preds = %50, %22, %22
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_done_ctx_dst(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  tail call fastcc void @ahash_done_switch(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_update_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 1048
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 0, i32 0, i32 1
  %10 = getelementptr i8, ptr %3, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %14
  %18 = add i32 %13, -1
  %19 = and i32 %17, %18
  store i32 %19, ptr %9, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr i8, ptr %3, i32 1056
  %22 = load i32, ptr %21, align 32
  %23 = and i32 %22, 16719856
  %24 = icmp eq i32 %23, 1050368
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = icmp eq i32 %23, 1050112
  %27 = icmp sge i32 %20, %13
  %28 = select i1 %26, i1 %27, i1 false
  %29 = icmp eq i32 %19, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %35, label %37

31:                                               ; preds = %1
  %32 = icmp sge i32 %20, %13
  %33 = icmp eq i32 %19, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  store i32 %13, ptr %9, align 4
  %36 = sub i32 %20, %13
  br label %37

37:                                               ; preds = %35, %31, %25
  %38 = phi i32 [ %13, %35 ], [ %19, %31 ], [ %19, %25 ]
  %39 = phi i32 [ %36, %35 ], [ %20, %31 ], [ %20, %25 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %326, label %41

41:                                               ; preds = %37
  %42 = sub i32 %16, %38
  %43 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = sext i32 %42 to i64
  %46 = tail call i32 @sg_nents_for_len(ptr noundef %44, i64 noundef %45) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #15
  br label %357

49:                                               ; preds = %41
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %43, align 4
  %53 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %52, i32 noundef %46, i32 noundef 1, i32 noundef 0) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #15
  br label %357

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %53, %51 ], [ 0, %49 ]
  %58 = load i32, ptr %8, align 4
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 1, i32 2
  %61 = add i32 %60, %57
  %62 = shl i32 %61, 4
  %63 = add i32 %62, 48
  %64 = and i32 %63, -64
  %65 = getelementptr i8, ptr %3, i32 1024
  %66 = load i32, ptr %65, align 64
  %67 = load ptr, ptr %2, align 16
  %68 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 2849, i32 3521
  %73 = add i32 %64, 128
  %74 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %73, i32 noundef %72) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %56
  %77 = getelementptr i8, ptr %67, i32 1048
  %78 = load ptr, ptr %77, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.6) #15
  %79 = load ptr, ptr %43, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %79, i32 noundef %46, i32 noundef 1, i32 noundef 0) #13
  br label %357

80:                                               ; preds = %56
  %81 = getelementptr i8, ptr %3, i32 128
  %82 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %74, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ahash_edesc, ptr %74, i32 0, i32 5
  %84 = load i32, ptr %81, align 4
  %85 = load i8, ptr @caam_little_end, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  %87 = lshr i32 %84, 24
  %88 = select i1 %86, i32 %87, i32 %84
  %89 = shl i32 %88, 16
  %90 = and i32 %89, 8323072
  %91 = or i32 %90, -1333781503
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #13
  %93 = select i1 %86, i32 %92, i32 %91
  %94 = getelementptr %struct.ahash_edesc, ptr %74, i32 0, i32 5, i32 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %66) #13
  %96 = select i1 %86, i32 %95, i32 %66
  store i32 %96, ptr %94, align 4
  %97 = load i8, ptr @caam_little_end, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  %99 = tail call i32 @llvm.bswap.i32(i32 %93) #13
  %100 = select i1 %98, i32 %99, i32 %93
  %101 = load i32, ptr @caam_ptr_sz, align 4
  %102 = lshr i32 %101, 2
  %103 = add nuw nsw i32 %100, %102
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #13
  %105 = select i1 %98, i32 %104, i32 %103
  store i32 %105, ptr %83, align 64
  %106 = getelementptr inbounds %struct.ahash_edesc, ptr %74, i32 0, i32 1
  store i32 %46, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ahash_edesc, ptr %74, i32 0, i32 2
  store i32 %64, ptr %107, align 8
  %108 = getelementptr i8, ptr %3, i32 1052
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ahash_edesc, ptr %74, i32 0, i32 6
  %111 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %6, ptr noundef %4, i32 noundef %109, ptr noundef %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %333

113:                                              ; preds = %80
  %114 = getelementptr %struct.ahash_edesc, ptr %74, i32 0, i32 7, i32 16
  %115 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %6, ptr noundef %114, ptr noundef %4)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %333

117:                                              ; preds = %113
  %118 = icmp eq i32 %57, 0
  %119 = getelementptr %struct.sec4_sg_entry, ptr %110, i32 %60
  br i1 %118, label %189, label %120

120:                                              ; preds = %117
  %121 = icmp eq i32 %42, 0
  br i1 %121, label %173, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr %43, align 4
  br label %124

124:                                              ; preds = %168, %122
  %125 = phi ptr [ %170, %168 ], [ %123, %122 ]
  %126 = phi i32 [ %171, %168 ], [ %42, %122 ]
  %127 = phi ptr [ %169, %168 ], [ %119, %122 ]
  %128 = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = tail call i32 @llvm.smin.i32(i32 %129, i32 %126) #13
  %131 = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %124
  %136 = zext i32 %132 to i64
  store i64 %136, ptr %127, align 8
  %137 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %127, i32 0, i32 3
  %138 = load i16, ptr %137, align 2
  %139 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %127, i32 0, i32 1
  store i32 %130, ptr %139, align 8
  %140 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %127, i32 0, i32 2
  %141 = load i16, ptr %140, align 4
  %142 = and i16 %141, -16384
  store i16 %142, ptr %140, align 4
  %143 = and i16 %138, 16384
  store i16 %143, ptr %137, align 2
  br label %168

144:                                              ; preds = %124
  %145 = load i8, ptr @caam_imx, align 1, !range !8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = load i8, ptr @caam_little_end, align 1, !range !8
  %149 = icmp eq i8 %148, 0
  %150 = tail call i32 @llvm.bswap.i32(i32 %132) #13
  %151 = select i1 %149, i32 %150, i32 %132
  %152 = zext i32 %151 to i64
  %153 = shl nuw i64 %152, 32
  br label %160

154:                                              ; preds = %144
  %155 = zext i32 %132 to i64
  %156 = load i8, ptr @caam_little_end, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  %158 = tail call i64 @llvm.bswap.i64(i64 %155) #13
  %159 = select i1 %157, i64 %158, i64 %155
  br label %160

160:                                              ; preds = %154, %147
  %161 = phi i64 [ %153, %147 ], [ %159, %154 ]
  store i64 %161, ptr %127, align 8
  %162 = load i8, ptr @caam_little_end, align 1, !range !8
  %163 = icmp eq i8 %162, 0
  %164 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  %165 = select i1 %163, i32 %164, i32 %130
  %166 = getelementptr inbounds %struct.sec4_sg_entry, ptr %127, i32 0, i32 1
  store i32 %165, ptr %166, align 8
  %167 = getelementptr inbounds %struct.sec4_sg_entry, ptr %127, i32 0, i32 2
  store i32 0, ptr %167, align 4
  br label %168

168:                                              ; preds = %160, %135
  %169 = getelementptr %struct.sec4_sg_entry, ptr %127, i32 1
  %170 = tail call ptr @sg_next(ptr noundef %125) #13
  %171 = sub i32 %126, %130
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %124

173:                                              ; preds = %168, %120
  %174 = phi ptr [ %119, %120 ], [ %169, %168 ]
  %175 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = getelementptr %struct.sec4_sg_entry, ptr %174, i32 -1
  %179 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %178, i32 0, i32 3
  %180 = load i16, ptr %179, align 2
  %181 = or i16 %180, -32768
  store i16 %181, ptr %179, align 2
  br label %204

182:                                              ; preds = %173
  %183 = load i8, ptr @caam_little_end, align 1, !range !8
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i32 64, i32 1073741824
  %186 = getelementptr %struct.sec4_sg_entry, ptr %174, i32 -1, i32 1
  %187 = load i32, ptr %186, align 8
  %188 = or i32 %185, %187
  store i32 %188, ptr %186, align 8
  br label %204

189:                                              ; preds = %117
  %190 = getelementptr %struct.sec4_sg_entry, ptr %119, i32 -1
  %191 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %190, i32 0, i32 3
  %195 = load i16, ptr %194, align 2
  %196 = or i16 %195, -32768
  store i16 %196, ptr %194, align 2
  br label %204

197:                                              ; preds = %189
  %198 = load i8, ptr @caam_little_end, align 1, !range !8
  %199 = icmp eq i8 %198, 0
  %200 = select i1 %199, i32 64, i32 1073741824
  %201 = getelementptr inbounds %struct.sec4_sg_entry, ptr %190, i32 0, i32 1
  %202 = load i32, ptr %201, align 8
  %203 = or i32 %200, %202
  store i32 %203, ptr %201, align 8
  br label %204

204:                                              ; preds = %197, %193, %182, %177
  %205 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %110) #13
  %206 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %207 = xor i1 %206, true
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %218, !prof !12

209:                                              ; preds = %204
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %210 = tail call ptr @dev_driver_string(ptr noundef %6) #13
  %211 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load ptr, ptr %6, align 4
  br label %216

216:                                              ; preds = %214, %209
  %217 = phi ptr [ %215, %214 ], [ %212, %209 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %210, ptr noundef %217) #13
  br label %218

218:                                              ; preds = %216, %204
  br i1 %205, label %219, label %220

219:                                              ; preds = %218
  store i32 -1, ptr %74, align 64
  br label %229

220:                                              ; preds = %218
  %221 = load ptr, ptr @mem_map, align 4
  %222 = ptrtoint ptr %110 to i32
  %223 = add i32 %222, 1073741824
  %224 = lshr i32 %223, 12
  %225 = getelementptr %struct.page, ptr %221, i32 %224
  %226 = and i32 %222, 4064
  %227 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %225, i32 noundef %226, i32 noundef %64, i32 noundef 1, i32 noundef 0) #13
  store i32 %227, ptr %74, align 64
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %230

229:                                              ; preds = %220, %219
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #15
  br label %333

230:                                              ; preds = %220
  %231 = load i32, ptr %108, align 4
  %232 = add i32 %231, %39
  %233 = load i32, ptr %83, align 64
  %234 = load i8, ptr @caam_little_end, align 1, !range !8
  %235 = icmp eq i8 %234, 0
  %236 = lshr i32 %233, 24
  %237 = select i1 %235, i32 %236, i32 %233
  %238 = and i32 %237, 127
  %239 = getelementptr i32, ptr %83, i32 %238
  %240 = select i1 %235, i32 16625, i32 -247463936
  store i32 %240, ptr %239, align 4
  %241 = load i32, ptr %83, align 64
  %242 = load i8, ptr @caam_little_end, align 1, !range !8
  %243 = icmp eq i8 %242, 0
  %244 = tail call i32 @llvm.bswap.i32(i32 %241) #13
  %245 = select i1 %243, i32 %244, i32 %241
  %246 = add i32 %245, 1
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #13
  %248 = select i1 %243, i32 %247, i32 %246
  store i32 %248, ptr %83, align 64
  %249 = lshr i32 %247, 24
  %250 = select i1 %243, i32 %249, i32 %246
  %251 = and i32 %250, 127
  %252 = getelementptr i32, ptr %83, i32 %251
  %253 = tail call i32 @llvm.bswap.i32(i32 %227) #13
  %254 = select i1 %243, i32 %253, i32 %227
  store i32 %254, ptr %252, align 4
  %255 = load i32, ptr %83, align 64
  %256 = load i8, ptr @caam_little_end, align 1, !range !8
  %257 = icmp eq i8 %256, 0
  %258 = tail call i32 @llvm.bswap.i32(i32 %255) #13
  %259 = select i1 %257, i32 %258, i32 %255
  %260 = load i32, ptr @caam_ptr_sz, align 4
  %261 = lshr i32 %260, 2
  %262 = add i32 %259, %261
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #13
  %264 = select i1 %257, i32 %263, i32 %262
  store i32 %264, ptr %83, align 64
  %265 = lshr i32 %263, 24
  %266 = select i1 %257, i32 %265, i32 %262
  %267 = and i32 %266, 127
  %268 = getelementptr i32, ptr %83, i32 %267
  %269 = tail call i32 @llvm.bswap.i32(i32 %232) #13
  %270 = select i1 %257, i32 %269, i32 %232
  store i32 %270, ptr %268, align 4
  %271 = load i32, ptr %83, align 64
  %272 = load i8, ptr @caam_little_end, align 1, !range !8
  %273 = icmp eq i8 %272, 0
  %274 = tail call i32 @llvm.bswap.i32(i32 %271) #13
  %275 = select i1 %273, i32 %274, i32 %271
  %276 = add i32 %275, 1
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #13
  %278 = select i1 %273, i32 %277, i32 %276
  store i32 %278, ptr %83, align 64
  %279 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = load i32, ptr %108, align 4
  %282 = lshr i32 %277, 24
  %283 = select i1 %273, i32 %282, i32 %276
  %284 = and i32 %283, 127
  %285 = getelementptr i32, ptr %83, i32 %284
  %286 = select i1 %273, i32 16632, i32 -130023424
  store i32 %286, ptr %285, align 4
  %287 = load i32, ptr %83, align 64
  %288 = load i8, ptr @caam_little_end, align 1, !range !8
  %289 = icmp eq i8 %288, 0
  %290 = tail call i32 @llvm.bswap.i32(i32 %287) #13
  %291 = select i1 %289, i32 %290, i32 %287
  %292 = add i32 %291, 1
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #13
  %294 = select i1 %289, i32 %293, i32 %292
  store i32 %294, ptr %83, align 64
  %295 = lshr i32 %293, 24
  %296 = select i1 %289, i32 %295, i32 %292
  %297 = and i32 %296, 127
  %298 = getelementptr i32, ptr %83, i32 %297
  %299 = tail call i32 @llvm.bswap.i32(i32 %280) #13
  %300 = select i1 %289, i32 %299, i32 %280
  store i32 %300, ptr %298, align 4
  %301 = load i32, ptr %83, align 64
  %302 = load i8, ptr @caam_little_end, align 1, !range !8
  %303 = icmp eq i8 %302, 0
  %304 = tail call i32 @llvm.bswap.i32(i32 %301) #13
  %305 = select i1 %303, i32 %304, i32 %301
  %306 = load i32, ptr @caam_ptr_sz, align 4
  %307 = lshr i32 %306, 2
  %308 = add i32 %305, %307
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #13
  %310 = select i1 %303, i32 %309, i32 %308
  store i32 %310, ptr %83, align 64
  %311 = lshr i32 %309, 24
  %312 = select i1 %303, i32 %311, i32 %308
  %313 = and i32 %312, 127
  %314 = getelementptr i32, ptr %83, i32 %313
  %315 = tail call i32 @llvm.bswap.i32(i32 %281) #13
  %316 = select i1 %303, i32 %315, i32 %281
  store i32 %316, ptr %314, align 4
  %317 = load i32, ptr %83, align 64
  %318 = load i8, ptr @caam_little_end, align 1, !range !8
  %319 = icmp eq i8 %318, 0
  %320 = tail call i32 @llvm.bswap.i32(i32 %317) #13
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = add i32 %321, 1
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #13
  %324 = select i1 %319, i32 %323, i32 %322
  store i32 %324, ptr %83, align 64
  %325 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %6, ptr noundef nonnull @ahash_done_bi, ptr noundef %0, i32 noundef 0)
  br label %357

326:                                              ; preds = %37
  %327 = icmp eq i32 %38, 0
  br i1 %327, label %357, label %328

328:                                              ; preds = %326
  %329 = getelementptr i8, ptr %7, i32 %14
  %330 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %331 = load ptr, ptr %330, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %329, ptr noundef %331, i32 noundef 0, i32 noundef %16, i32 noundef 0) #13
  %332 = load i32, ptr %9, align 4
  store i32 %332, ptr %8, align 4
  br label %357

333:                                              ; preds = %229, %113, %80
  %334 = phi i32 [ %115, %113 ], [ %111, %80 ], [ -12, %229 ]
  %335 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %340 = load i32, ptr %339, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %336, i32 noundef %340, i32 noundef 0, i32 noundef 0) #13
  store i32 0, ptr %335, align 4
  br label %341

341:                                              ; preds = %338, %333
  %342 = load i32, ptr %106, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %341
  %345 = load ptr, ptr %43, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %345, i32 noundef %342, i32 noundef 1, i32 noundef 0) #13
  br label %346

346:                                              ; preds = %344, %341
  %347 = load i32, ptr %107, align 8
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %346
  %350 = load i32, ptr %74, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %350, i32 noundef %347, i32 noundef 1, i32 noundef 0) #13
  br label %351

351:                                              ; preds = %349, %346
  %352 = load i32, ptr %4, align 64
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %351
  %355 = load i32, ptr %8, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %352, i32 noundef %355, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %4, align 64
  br label %356

356:                                              ; preds = %354, %351
  tail call void @kfree(ptr noundef nonnull %74) #13
  br label %357

357:                                              ; preds = %356, %328, %326, %230, %76, %55, %48
  %358 = phi i32 [ %334, %356 ], [ %325, %230 ], [ 0, %328 ], [ 0, %326 ], [ -12, %55 ], [ -12, %76 ], [ %46, %48 ]
  ret i32 %358
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_finup_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = getelementptr i8, ptr %3, i32 1048
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr i8, ptr %3, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = tail call i32 @sg_nents_for_len(ptr noundef %15, i64 noundef %18) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  br label %167

22:                                               ; preds = %1
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %14, align 4
  %26 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %25, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15) #15
  br label %167

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %26, %24 ], [ 0, %22 ]
  %31 = icmp eq i32 %9, 0
  %32 = select i1 %31, i32 1, i32 2
  %33 = getelementptr i8, ptr %3, i32 1032
  %34 = load i32, ptr %33, align 8
  %35 = load ptr, ptr %2, align 16
  %36 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2849, i32 3521
  %41 = add i32 %30, %32
  %42 = shl i32 %41, 4
  %43 = add i32 %42, 128
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef %40) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = getelementptr i8, ptr %35, i32 1048
  %48 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6) #15
  %49 = load ptr, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %49, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  br label %167

50:                                               ; preds = %29
  %51 = getelementptr i8, ptr %3, i32 512
  %52 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %44, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ahash_edesc, ptr %44, i32 0, i32 5
  %54 = load i32, ptr %51, align 4
  %55 = load i8, ptr @caam_little_end, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = lshr i32 %54, 24
  %58 = select i1 %56, i32 %57, i32 %54
  %59 = shl i32 %58, 16
  %60 = and i32 %59, 8323072
  %61 = or i32 %60, -1333781503
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %63 = select i1 %56, i32 %62, i32 %61
  %64 = getelementptr %struct.ahash_edesc, ptr %44, i32 0, i32 5, i32 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %66 = select i1 %56, i32 %65, i32 %34
  store i32 %66, ptr %64, align 4
  %67 = load i8, ptr @caam_little_end, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  %70 = select i1 %68, i32 %69, i32 %63
  %71 = load i32, ptr @caam_ptr_sz, align 4
  %72 = lshr i32 %71, 2
  %73 = add nuw nsw i32 %70, %72
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #13
  %75 = select i1 %68, i32 %74, i32 %73
  store i32 %75, ptr %53, align 64
  %76 = getelementptr inbounds %struct.ahash_edesc, ptr %44, i32 0, i32 1
  store i32 %19, ptr %76, align 4
  %77 = getelementptr i8, ptr %3, i32 1052
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ahash_edesc, ptr %44, i32 0, i32 6
  %80 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %7, ptr noundef %5, i32 noundef %78, ptr noundef %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %50
  %83 = getelementptr %struct.ahash_edesc, ptr %44, i32 0, i32 7, i32 16
  %84 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %7, ptr noundef %83, ptr noundef %5)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %82
  %87 = load i32, ptr %77, align 4
  %88 = add i32 %87, %9
  %89 = load i32, ptr %16, align 8
  %90 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %4, ptr noundef nonnull %44, ptr noundef %0, i32 noundef %30, i32 noundef %32, i32 noundef %88, i32 noundef %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %53, align 64
  %96 = load i8, ptr @caam_little_end, align 1, !range !8
  %97 = icmp eq i8 %96, 0
  %98 = lshr i32 %95, 24
  %99 = select i1 %97, i32 %98, i32 %95
  %100 = and i32 %99, 127
  %101 = getelementptr i32, ptr %53, i32 %100
  %102 = select i1 %97, i32 16632, i32 -130023424
  store i32 %102, ptr %101, align 4
  %103 = load i32, ptr %53, align 64
  %104 = load i8, ptr @caam_little_end, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = tail call i32 @llvm.bswap.i32(i32 %103) #13
  %107 = select i1 %105, i32 %106, i32 %103
  %108 = add i32 %107, 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #13
  %110 = select i1 %105, i32 %109, i32 %108
  store i32 %110, ptr %53, align 64
  %111 = lshr i32 %109, 24
  %112 = select i1 %105, i32 %111, i32 %108
  %113 = and i32 %112, 127
  %114 = getelementptr i32, ptr %53, i32 %113
  %115 = tail call i32 @llvm.bswap.i32(i32 %94) #13
  %116 = select i1 %105, i32 %115, i32 %94
  store i32 %116, ptr %114, align 4
  %117 = load i32, ptr %53, align 64
  %118 = load i8, ptr @caam_little_end, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #13
  %121 = select i1 %119, i32 %120, i32 %117
  %122 = load i32, ptr @caam_ptr_sz, align 4
  %123 = lshr i32 %122, 2
  %124 = add i32 %121, %123
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #13
  %126 = select i1 %119, i32 %125, i32 %124
  store i32 %126, ptr %53, align 64
  %127 = lshr i32 %125, 24
  %128 = select i1 %119, i32 %127, i32 %124
  %129 = and i32 %128, 127
  %130 = getelementptr i32, ptr %53, i32 %129
  %131 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %132 = select i1 %119, i32 %131, i32 %13
  store i32 %132, ptr %130, align 4
  %133 = load i32, ptr %53, align 64
  %134 = load i8, ptr @caam_little_end, align 1, !range !8
  %135 = icmp eq i8 %134, 0
  %136 = tail call i32 @llvm.bswap.i32(i32 %133) #13
  %137 = select i1 %135, i32 %136, i32 %133
  %138 = add i32 %137, 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #13
  %140 = select i1 %135, i32 %139, i32 %138
  store i32 %140, ptr %53, align 64
  %141 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %7, ptr noundef nonnull @ahash_done_ctx_src, ptr noundef %0, i32 noundef 0)
  br label %167

142:                                              ; preds = %86, %82, %50
  %143 = phi i32 [ %80, %50 ], [ %84, %82 ], [ %90, %86 ]
  %144 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %149 = load i32, ptr %148, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %145, i32 noundef %149, i32 noundef 0, i32 noundef 0) #13
  store i32 0, ptr %144, align 4
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, ptr %76, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %154, i32 noundef %151, i32 noundef 1, i32 noundef 0) #13
  br label %155

155:                                              ; preds = %153, %150
  %156 = getelementptr inbounds %struct.ahash_edesc, ptr %44, i32 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %44, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %160, i32 noundef %157, i32 noundef 1, i32 noundef 0) #13
  br label %161

161:                                              ; preds = %159, %155
  %162 = load i32, ptr %5, align 64
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = load i32, ptr %8, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %162, i32 noundef %165, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %166

166:                                              ; preds = %164, %161
  tail call void @kfree(ptr noundef nonnull %44) #13
  br label %167

167:                                              ; preds = %166, %92, %46, %28, %21
  %168 = phi i32 [ %19, %21 ], [ %143, %166 ], [ %141, %92 ], [ -12, %46 ], [ -12, %28 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_final_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 1048
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %8 = load i32, ptr %7, align 64
  %9 = getelementptr i8, ptr %3, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -64
  %12 = load i32, ptr %11, align 64
  %13 = icmp ne i32 %8, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr i8, ptr %3, i32 1032
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2849, i32 3521
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 2), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef %21, i32 noundef 192) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6) #15
  br label %209

27:                                               ; preds = %1
  %28 = getelementptr i8, ptr %3, i32 512
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %23, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ahash_edesc, ptr %23, i32 0, i32 5
  %31 = load i32, ptr %28, align 4
  %32 = load i8, ptr @caam_little_end, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = lshr i32 %31, 24
  %35 = select i1 %33, i32 %34, i32 %31
  %36 = shl i32 %35, 16
  %37 = and i32 %36, 8323072
  %38 = or i32 %37, -1333781503
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  %40 = select i1 %33, i32 %39, i32 %38
  %41 = getelementptr %struct.ahash_edesc, ptr %23, i32 0, i32 5, i32 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %43 = select i1 %33, i32 %42, i32 %16
  store i32 %43, ptr %41, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %45 = select i1 %33, i32 %44, i32 %38
  %46 = load i32, ptr @caam_ptr_sz, align 4
  %47 = lshr i32 %46, 2
  %48 = add nuw nsw i32 %45, %47
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #13
  %50 = select i1 %33, i32 %49, i32 %48
  store i32 %50, ptr %30, align 8
  %51 = getelementptr inbounds %struct.ahash_edesc, ptr %23, i32 0, i32 2
  store i32 64, ptr %51, align 8
  %52 = getelementptr i8, ptr %3, i32 1052
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ahash_edesc, ptr %23, i32 0, i32 6
  %55 = tail call fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %6, ptr noundef %4, i32 noundef %53, ptr noundef %54)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %183

57:                                               ; preds = %27
  %58 = getelementptr %struct.ahash_edesc, ptr %23, i32 0, i32 7, i32 16
  %59 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %6, ptr noundef %58, ptr noundef %4)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %183

61:                                               ; preds = %57
  %62 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr %struct.sec4_sg_entry, ptr %54, i32 %14
  %66 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %65, i32 0, i32 3
  %67 = load i16, ptr %66, align 2
  %68 = or i16 %67, -32768
  store i16 %68, ptr %66, align 2
  br label %76

69:                                               ; preds = %61
  %70 = load i8, ptr @caam_little_end, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 64, i32 1073741824
  %73 = getelementptr %struct.sec4_sg_entry, ptr %54, i32 %14, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = or i32 %72, %74
  store i32 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %54) #13
  %78 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %79 = xor i1 %78, true
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %90, !prof !12

81:                                               ; preds = %76
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %82 = tail call ptr @dev_driver_string(ptr noundef %6) #13
  %83 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %6, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %84, %81 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %82, ptr noundef %89) #13
  br label %90

90:                                               ; preds = %88, %76
  br i1 %77, label %91, label %92

91:                                               ; preds = %90
  store i32 -1, ptr %23, align 64
  br label %101

92:                                               ; preds = %90
  %93 = load ptr, ptr @mem_map, align 4
  %94 = ptrtoint ptr %54 to i32
  %95 = add i32 %94, 1073741824
  %96 = lshr i32 %95, 12
  %97 = getelementptr %struct.page, ptr %93, i32 %96
  %98 = and i32 %94, 4088
  %99 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %97, i32 noundef %98, i32 noundef 64, i32 noundef 1, i32 noundef 0) #13
  store i32 %99, ptr %23, align 64
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %92, %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #15
  br label %183

102:                                              ; preds = %92
  %103 = load i32, ptr %52, align 4
  %104 = add i32 %103, %8
  %105 = load i32, ptr %30, align 8
  %106 = load i8, ptr @caam_little_end, align 1, !range !8
  %107 = icmp eq i8 %106, 0
  %108 = lshr i32 %105, 24
  %109 = select i1 %107, i32 %108, i32 %105
  %110 = and i32 %109, 127
  %111 = getelementptr i32, ptr %30, i32 %110
  %112 = select i1 %107, i32 16625, i32 -247463936
  store i32 %112, ptr %111, align 4
  %113 = load i32, ptr %30, align 8
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #13
  %115 = select i1 %107, i32 %114, i32 %113
  %116 = add i32 %115, 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #13
  %118 = select i1 %107, i32 %117, i32 %116
  store i32 %118, ptr %30, align 8
  %119 = lshr i32 %117, 24
  %120 = select i1 %107, i32 %119, i32 %116
  %121 = and i32 %120, 127
  %122 = getelementptr i32, ptr %30, i32 %121
  %123 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %124 = select i1 %107, i32 %123, i32 %99
  store i32 %124, ptr %122, align 4
  %125 = load i32, ptr %30, align 8
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #13
  %127 = select i1 %107, i32 %126, i32 %125
  %128 = load i32, ptr @caam_ptr_sz, align 4
  %129 = lshr i32 %128, 2
  %130 = add i32 %127, %129
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #13
  %132 = select i1 %107, i32 %131, i32 %130
  store i32 %132, ptr %30, align 8
  %133 = lshr i32 %131, 24
  %134 = select i1 %107, i32 %133, i32 %130
  %135 = and i32 %134, 127
  %136 = getelementptr i32, ptr %30, i32 %135
  %137 = tail call i32 @llvm.bswap.i32(i32 %104) #13
  %138 = select i1 %107, i32 %137, i32 %104
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %30, align 8
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #13
  %141 = select i1 %107, i32 %140, i32 %139
  %142 = add i32 %141, 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #13
  %144 = select i1 %107, i32 %143, i32 %142
  store i32 %144, ptr %30, align 8
  %145 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %143, 24
  %148 = select i1 %107, i32 %147, i32 %142
  %149 = and i32 %148, 127
  %150 = getelementptr i32, ptr %30, i32 %149
  %151 = select i1 %107, i32 16632, i32 -130023424
  store i32 %151, ptr %150, align 4
  %152 = load i32, ptr %30, align 8
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #13
  %154 = select i1 %107, i32 %153, i32 %152
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #13
  %157 = select i1 %107, i32 %156, i32 %155
  store i32 %157, ptr %30, align 8
  %158 = lshr i32 %156, 24
  %159 = select i1 %107, i32 %158, i32 %155
  %160 = and i32 %159, 127
  %161 = getelementptr i32, ptr %30, i32 %160
  %162 = tail call i32 @llvm.bswap.i32(i32 %146) #13
  %163 = select i1 %107, i32 %162, i32 %146
  store i32 %163, ptr %161, align 4
  %164 = load i32, ptr %30, align 8
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #13
  %166 = select i1 %107, i32 %165, i32 %164
  %167 = add i32 %166, %129
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #13
  %169 = select i1 %107, i32 %168, i32 %167
  store i32 %169, ptr %30, align 8
  %170 = lshr i32 %168, 24
  %171 = select i1 %107, i32 %170, i32 %167
  %172 = and i32 %171, 127
  %173 = getelementptr i32, ptr %30, i32 %172
  %174 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %175 = select i1 %107, i32 %174, i32 %12
  store i32 %175, ptr %173, align 4
  %176 = load i32, ptr %30, align 8
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #13
  %178 = select i1 %107, i32 %177, i32 %176
  %179 = add i32 %178, 1
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #13
  %181 = select i1 %107, i32 %180, i32 %179
  store i32 %181, ptr %30, align 8
  %182 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %6, ptr noundef nonnull @ahash_done_ctx_src, ptr noundef %0, i32 noundef 0)
  br label %209

183:                                              ; preds = %101, %57, %27
  %184 = phi i32 [ %55, %27 ], [ %59, %57 ], [ -12, %101 ]
  %185 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %190 = load i32, ptr %189, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %186, i32 noundef %190, i32 noundef 0, i32 noundef 0) #13
  store i32 0, ptr %185, align 4
  br label %191

191:                                              ; preds = %188, %183
  %192 = getelementptr inbounds %struct.ahash_edesc, ptr %23, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %197, i32 noundef %193, i32 noundef 1, i32 noundef 0) #13
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i32, ptr %51, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %23, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %202, i32 noundef %199, i32 noundef 1, i32 noundef 0) #13
  br label %203

203:                                              ; preds = %201, %198
  %204 = load i32, ptr %4, align 64
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %7, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %204, i32 noundef %207, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %4, align 64
  br label %208

208:                                              ; preds = %206, %203
  tail call void @kfree(ptr noundef nonnull %23) #13
  br label %209

209:                                              ; preds = %208, %102, %25
  %210 = phi i32 [ %184, %208 ], [ %182, %102 ], [ -12, %25 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_update_no_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 1048
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 0, i32 0, i32 1
  %10 = getelementptr i8, ptr %3, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %14
  %18 = add i32 %13, -1
  %19 = and i32 %17, %18
  store i32 %19, ptr %9, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr i8, ptr %3, i32 1056
  %22 = load i32, ptr %21, align 32
  %23 = and i32 %22, 16719856
  %24 = icmp eq i32 %23, 1050368
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = icmp eq i32 %23, 1050112
  %27 = icmp sge i32 %20, %13
  %28 = select i1 %26, i1 %27, i1 false
  %29 = icmp eq i32 %19, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %35, label %37

31:                                               ; preds = %1
  %32 = icmp sge i32 %20, %13
  %33 = icmp eq i32 %19, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  store i32 %13, ptr %9, align 4
  %36 = sub i32 %20, %13
  br label %37

37:                                               ; preds = %35, %31, %25
  %38 = phi i32 [ %13, %35 ], [ %19, %31 ], [ %19, %25 ]
  %39 = phi i32 [ %36, %35 ], [ %20, %31 ], [ %20, %25 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %260, label %41

41:                                               ; preds = %37
  %42 = sub i32 %16, %38
  %43 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = sext i32 %42 to i64
  %46 = tail call i32 @sg_nents_for_len(ptr noundef %44, i64 noundef %45) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #15
  br label %291

49:                                               ; preds = %41
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %43, align 4
  %53 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %52, i32 noundef %46, i32 noundef 1, i32 noundef 0) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #15
  br label %291

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %53, %51 ], [ 0, %49 ]
  %58 = shl i32 %57, 4
  %59 = add i32 %58, 64
  %60 = and i32 %59, -64
  %61 = getelementptr i8, ptr %3, i32 1028
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %2, align 16
  %64 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 2849, i32 3521
  %69 = add i32 %60, 128
  %70 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %69, i32 noundef %68) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = getelementptr i8, ptr %63, i32 1048
  %74 = load ptr, ptr %73, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.6) #15
  %75 = load ptr, ptr %43, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %75, i32 noundef %46, i32 noundef 1, i32 noundef 0) #13
  br label %291

76:                                               ; preds = %56
  %77 = getelementptr i8, ptr %3, i32 320
  %78 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %70, ptr %78, align 4
  %79 = getelementptr inbounds %struct.ahash_edesc, ptr %70, i32 0, i32 5
  %80 = load i32, ptr %77, align 4
  %81 = load i8, ptr @caam_little_end, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = lshr i32 %80, 24
  %84 = select i1 %82, i32 %83, i32 %80
  %85 = shl i32 %84, 16
  %86 = and i32 %85, 8323072
  %87 = or i32 %86, -1333781503
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #13
  %89 = select i1 %82, i32 %88, i32 %87
  %90 = getelementptr %struct.ahash_edesc, ptr %70, i32 0, i32 5, i32 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %62) #13
  %92 = select i1 %82, i32 %91, i32 %62
  store i32 %92, ptr %90, align 4
  %93 = load i8, ptr @caam_little_end, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  %96 = select i1 %94, i32 %95, i32 %89
  %97 = load i32, ptr @caam_ptr_sz, align 4
  %98 = lshr i32 %97, 2
  %99 = add nuw nsw i32 %96, %98
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %101 = select i1 %94, i32 %100, i32 %99
  store i32 %101, ptr %79, align 64
  %102 = getelementptr inbounds %struct.ahash_edesc, ptr %70, i32 0, i32 1
  store i32 %46, ptr %102, align 4
  %103 = getelementptr inbounds %struct.ahash_edesc, ptr %70, i32 0, i32 2
  store i32 %60, ptr %103, align 8
  %104 = getelementptr inbounds %struct.ahash_edesc, ptr %70, i32 0, i32 6
  %105 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %6, ptr noundef %104, ptr noundef %4)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %267

107:                                              ; preds = %76
  %108 = getelementptr %struct.ahash_edesc, ptr %70, i32 0, i32 7, i32 16
  %109 = icmp eq i32 %42, 0
  br i1 %109, label %161, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %43, align 4
  br label %112

112:                                              ; preds = %156, %110
  %113 = phi ptr [ %158, %156 ], [ %111, %110 ]
  %114 = phi i32 [ %159, %156 ], [ %42, %110 ]
  %115 = phi ptr [ %157, %156 ], [ %108, %110 ]
  %116 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 @llvm.smin.i32(i32 %117, i32 %114) #13
  %119 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %112
  %124 = zext i32 %120 to i64
  store i64 %124, ptr %115, align 8
  %125 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %115, i32 0, i32 3
  %126 = load i16, ptr %125, align 2
  %127 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %115, i32 0, i32 1
  store i32 %118, ptr %127, align 8
  %128 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %115, i32 0, i32 2
  %129 = load i16, ptr %128, align 4
  %130 = and i16 %129, -16384
  store i16 %130, ptr %128, align 4
  %131 = and i16 %126, 16384
  store i16 %131, ptr %125, align 2
  br label %156

132:                                              ; preds = %112
  %133 = load i8, ptr @caam_imx, align 1, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load i8, ptr @caam_little_end, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  %138 = tail call i32 @llvm.bswap.i32(i32 %120) #13
  %139 = select i1 %137, i32 %138, i32 %120
  %140 = zext i32 %139 to i64
  %141 = shl nuw i64 %140, 32
  br label %148

142:                                              ; preds = %132
  %143 = zext i32 %120 to i64
  %144 = load i8, ptr @caam_little_end, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = tail call i64 @llvm.bswap.i64(i64 %143) #13
  %147 = select i1 %145, i64 %146, i64 %143
  br label %148

148:                                              ; preds = %142, %135
  %149 = phi i64 [ %141, %135 ], [ %147, %142 ]
  store i64 %149, ptr %115, align 8
  %150 = load i8, ptr @caam_little_end, align 1, !range !8
  %151 = icmp eq i8 %150, 0
  %152 = tail call i32 @llvm.bswap.i32(i32 %118) #13
  %153 = select i1 %151, i32 %152, i32 %118
  %154 = getelementptr inbounds %struct.sec4_sg_entry, ptr %115, i32 0, i32 1
  store i32 %153, ptr %154, align 8
  %155 = getelementptr inbounds %struct.sec4_sg_entry, ptr %115, i32 0, i32 2
  store i32 0, ptr %155, align 4
  br label %156

156:                                              ; preds = %148, %123
  %157 = getelementptr %struct.sec4_sg_entry, ptr %115, i32 1
  %158 = tail call ptr @sg_next(ptr noundef %113) #13
  %159 = sub i32 %114, %118
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %112

161:                                              ; preds = %156, %107
  %162 = phi ptr [ %108, %107 ], [ %157, %156 ]
  %163 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = getelementptr %struct.sec4_sg_entry, ptr %162, i32 -1
  %167 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %166, i32 0, i32 3
  %168 = load i16, ptr %167, align 2
  %169 = or i16 %168, -32768
  store i16 %169, ptr %167, align 2
  br label %177

170:                                              ; preds = %161
  %171 = load i8, ptr @caam_little_end, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = select i1 %172, i32 64, i32 1073741824
  %174 = getelementptr %struct.sec4_sg_entry, ptr %162, i32 -1, i32 1
  %175 = load i32, ptr %174, align 8
  %176 = or i32 %173, %175
  store i32 %176, ptr %174, align 8
  br label %177

177:                                              ; preds = %170, %165
  %178 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %104) #13
  %179 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %180 = xor i1 %179, true
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %191, !prof !12

182:                                              ; preds = %177
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %183 = tail call ptr @dev_driver_string(ptr noundef %6) #13
  %184 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load ptr, ptr %6, align 4
  br label %189

189:                                              ; preds = %187, %182
  %190 = phi ptr [ %188, %187 ], [ %185, %182 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %183, ptr noundef %190) #13
  br label %191

191:                                              ; preds = %189, %177
  br i1 %178, label %192, label %193

192:                                              ; preds = %191
  store i32 -1, ptr %70, align 64
  br label %202

193:                                              ; preds = %191
  %194 = load ptr, ptr @mem_map, align 4
  %195 = ptrtoint ptr %104 to i32
  %196 = add i32 %195, 1073741824
  %197 = lshr i32 %196, 12
  %198 = getelementptr %struct.page, ptr %194, i32 %197
  %199 = and i32 %195, 4064
  %200 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %198, i32 noundef %199, i32 noundef %60, i32 noundef 1, i32 noundef 0) #13
  store i32 %200, ptr %70, align 64
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %193, %192
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #15
  br label %267

203:                                              ; preds = %193
  %204 = load i32, ptr %79, align 64
  %205 = load i8, ptr @caam_little_end, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = lshr i32 %204, 24
  %208 = select i1 %206, i32 %207, i32 %204
  %209 = and i32 %208, 127
  %210 = getelementptr i32, ptr %79, i32 %209
  %211 = select i1 %206, i32 16625, i32 -247463936
  store i32 %211, ptr %210, align 4
  %212 = load i32, ptr %79, align 64
  %213 = load i8, ptr @caam_little_end, align 1, !range !8
  %214 = icmp eq i8 %213, 0
  %215 = tail call i32 @llvm.bswap.i32(i32 %212) #13
  %216 = select i1 %214, i32 %215, i32 %212
  %217 = add i32 %216, 1
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #13
  %219 = select i1 %214, i32 %218, i32 %217
  store i32 %219, ptr %79, align 64
  %220 = lshr i32 %218, 24
  %221 = select i1 %214, i32 %220, i32 %217
  %222 = and i32 %221, 127
  %223 = getelementptr i32, ptr %79, i32 %222
  %224 = tail call i32 @llvm.bswap.i32(i32 %200) #13
  %225 = select i1 %214, i32 %224, i32 %200
  store i32 %225, ptr %223, align 4
  %226 = load i32, ptr %79, align 64
  %227 = load i8, ptr @caam_little_end, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = tail call i32 @llvm.bswap.i32(i32 %226) #13
  %230 = select i1 %228, i32 %229, i32 %226
  %231 = load i32, ptr @caam_ptr_sz, align 4
  %232 = lshr i32 %231, 2
  %233 = add i32 %230, %232
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #13
  %235 = select i1 %228, i32 %234, i32 %233
  store i32 %235, ptr %79, align 64
  %236 = lshr i32 %234, 24
  %237 = select i1 %228, i32 %236, i32 %233
  %238 = and i32 %237, 127
  %239 = getelementptr i32, ptr %79, i32 %238
  %240 = tail call i32 @llvm.bswap.i32(i32 %39) #13
  %241 = select i1 %228, i32 %240, i32 %39
  store i32 %241, ptr %239, align 4
  %242 = load i32, ptr %79, align 64
  %243 = load i8, ptr @caam_little_end, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  %245 = tail call i32 @llvm.bswap.i32(i32 %242) #13
  %246 = select i1 %244, i32 %245, i32 %242
  %247 = add i32 %246, 1
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #13
  %249 = select i1 %244, i32 %248, i32 %247
  store i32 %249, ptr %79, align 64
  %250 = getelementptr i8, ptr %3, i32 1052
  %251 = load i32, ptr %250, align 4
  %252 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %79, ptr noundef %6, ptr noundef %4, i32 noundef %251)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %203
  %255 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %6, ptr noundef nonnull @ahash_done_ctx_dst, ptr noundef %0, i32 noundef 1)
  switch i32 %255, label %291 [
    i32 -16, label %256
    i32 -115, label %256
  ]

256:                                              ; preds = %254, %254
  %257 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7
  store ptr @ahash_update_ctx, ptr %257, align 64
  %258 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 1
  store ptr @ahash_finup_ctx, ptr %258, align 8
  %259 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 0, i32 1
  store ptr @ahash_final_ctx, ptr %259, align 4
  br label %291

260:                                              ; preds = %37
  %261 = icmp eq i32 %38, 0
  br i1 %261, label %291, label %262

262:                                              ; preds = %260
  %263 = getelementptr i8, ptr %7, i32 %14
  %264 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %265 = load ptr, ptr %264, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %263, ptr noundef %265, i32 noundef 0, i32 noundef %16, i32 noundef 0) #13
  %266 = load i32, ptr %9, align 4
  store i32 %266, ptr %8, align 4
  br label %291

267:                                              ; preds = %203, %202, %76
  %268 = phi i32 [ %252, %203 ], [ %105, %76 ], [ -12, %202 ]
  %269 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %274 = load i32, ptr %273, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %270, i32 noundef %274, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %269, align 4
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32, ptr %102, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr %43, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %279, i32 noundef %276, i32 noundef 1, i32 noundef 0) #13
  br label %280

280:                                              ; preds = %278, %275
  %281 = load i32, ptr %103, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %70, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %284, i32 noundef %281, i32 noundef 1, i32 noundef 0) #13
  br label %285

285:                                              ; preds = %283, %280
  %286 = load i32, ptr %4, align 64
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = load i32, ptr %8, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %286, i32 noundef %289, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %4, align 64
  br label %290

290:                                              ; preds = %288, %285
  tail call void @kfree(ptr noundef nonnull %70) #13
  br label %291

291:                                              ; preds = %290, %262, %260, %256, %254, %72, %55, %48
  %292 = phi i32 [ %268, %290 ], [ %255, %256 ], [ 0, %262 ], [ 0, %260 ], [ %255, %254 ], [ -12, %55 ], [ -12, %72 ], [ %46, %48 ]
  ret i32 %292
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_finup_no_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %6 = getelementptr i8, ptr %3, i32 1048
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr i8, ptr %3, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = tail call i32 @sg_nents_for_len(ptr noundef %15, i64 noundef %18) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  br label %105

22:                                               ; preds = %1
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %14, align 4
  %26 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %25, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15) #15
  br label %105

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %26, %24 ], [ 0, %22 ]
  %31 = getelementptr i8, ptr %3, i32 1036
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %2, align 16
  %34 = shl i32 %30, 4
  %35 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2849, i32 3521
  %40 = add i32 %34, 160
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef %39) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = getelementptr i8, ptr %33, i32 1048
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.6) #15
  %46 = load ptr, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %46, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  br label %105

47:                                               ; preds = %29
  %48 = add i32 %34, 32
  %49 = getelementptr i8, ptr %3, i32 704
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 7, i32 0, i32 2
  store ptr %41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ahash_edesc, ptr %41, i32 0, i32 5
  %52 = load i32, ptr %49, align 4
  %53 = load i8, ptr @caam_little_end, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  %55 = lshr i32 %52, 24
  %56 = select i1 %54, i32 %55, i32 %52
  %57 = shl i32 %56, 16
  %58 = and i32 %57, 8323072
  %59 = or i32 %58, -1333781503
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  %61 = select i1 %54, i32 %60, i32 %59
  %62 = getelementptr %struct.ahash_edesc, ptr %41, i32 0, i32 5, i32 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  %64 = select i1 %54, i32 %63, i32 %32
  store i32 %64, ptr %62, align 4
  %65 = load i8, ptr @caam_little_end, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  %68 = select i1 %66, i32 %67, i32 %61
  %69 = load i32, ptr @caam_ptr_sz, align 4
  %70 = lshr i32 %69, 2
  %71 = add nuw nsw i32 %68, %70
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  %73 = select i1 %66, i32 %72, i32 %71
  store i32 %73, ptr %51, align 64
  %74 = getelementptr inbounds %struct.ahash_edesc, ptr %41, i32 0, i32 1
  store i32 %19, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ahash_edesc, ptr %41, i32 0, i32 2
  store i32 %48, ptr %75, align 8
  %76 = getelementptr inbounds %struct.ahash_edesc, ptr %41, i32 0, i32 6
  %77 = tail call fastcc i32 @buf_map_to_sec4_sg(ptr noundef %7, ptr noundef %76, ptr noundef %5)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %47
  %80 = load i32, ptr %16, align 8
  %81 = tail call fastcc i32 @ahash_edesc_add_src(ptr noundef %4, ptr noundef nonnull %41, ptr noundef %0, i32 noundef %30, i32 noundef 1, i32 noundef %9, i32 noundef %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #15
  br label %89

84:                                               ; preds = %79
  %85 = tail call fastcc i32 @map_seq_out_ptr_ctx(ptr noundef %51, ptr noundef %7, ptr noundef %5, i32 noundef %13)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @ahash_enqueue_req(ptr noundef %7, ptr noundef nonnull @ahash_done, ptr noundef %0, i32 noundef 2)
  br label %105

89:                                               ; preds = %84, %83, %47
  %90 = load i32, ptr %74, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %93, i32 noundef %90, i32 noundef 1, i32 noundef 0) #13
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, ptr %75, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %41, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %98, i32 noundef %95, i32 noundef 1, i32 noundef 0) #13
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, ptr %5, align 64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %8, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %100, i32 noundef %103, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %104

104:                                              ; preds = %102, %99
  tail call void @kfree(ptr noundef nonnull %41) #13
  br label %105

105:                                              ; preds = %104, %87, %43, %28, %21
  %106 = phi i32 [ %19, %21 ], [ -12, %104 ], [ %88, %87 ], [ -12, %43 ], [ -12, %28 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahash_done_switch(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #13
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %15, %14 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %19, i32 noundef %23, i32 noundef %3, i32 noundef 0) #13
  store i32 0, ptr %18, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %30, i32 noundef %26, i32 noundef 1, i32 noundef 0) #13
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %36, i32 noundef %33, i32 noundef 1, i32 noundef 0) #13
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, ptr %7, align 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 4
  %42 = load i32, ptr %41, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %38, i32 noundef %42, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %7, align 64
  br label %43

43:                                               ; preds = %40, %37
  tail call void @kfree(ptr noundef %9) #13
  %44 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 2
  %45 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 4, i32 0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %48, %50
  tail call void @scatterwalk_map_and_copy(ptr noundef %44, ptr noundef %46, i32 noundef %51, i32 noundef %50, i32 noundef 0) #13
  %52 = load i32, ptr %49, align 4
  %53 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 4
  store i32 %52, ptr %53, align 64
  br i1 %12, label %54, label %57

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef %2, i32 noundef %17) #13
  br label %60

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 18
  %59 = load ptr, ptr %58, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %59, ptr noundef %2, i32 noundef %17) #13
  br label %60

60:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctx_map_to_sec4_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.caam_hash_state, ptr %1, i32 0, i32 2
  store i32 %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.caam_hash_state, ptr %1, i32 0, i32 8
  %7 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #13
  %8 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %20, !prof !12

11:                                               ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %12 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %12, ptr noundef %19) #13
  br label %20

20:                                               ; preds = %18, %4
  br i1 %7, label %21, label %23

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.caam_hash_state, ptr %1, i32 0, i32 1
  store i32 -1, ptr %22, align 4
  br label %33

23:                                               ; preds = %20
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %6 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %24, i32 %27
  %29 = and i32 %25, 4095
  %30 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %28, i32 noundef %29, i32 noundef %2, i32 noundef 0, i32 noundef 0) #13
  %31 = getelementptr inbounds %struct.caam_hash_state, ptr %1, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = icmp eq i32 %30, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %23, %21
  %34 = phi ptr [ %22, %21 ], [ %31, %23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #15
  store i32 0, ptr %34, align 4
  br label %71

35:                                               ; preds = %23
  %36 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = zext i32 %30 to i64
  store i64 %39, ptr %3, align 8
  %40 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %3, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %3, i32 0, i32 1
  store i32 %2, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %3, i32 0, i32 2
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, -16384
  store i16 %45, ptr %43, align 4
  %46 = and i16 %41, 16384
  store i16 %46, ptr %40, align 2
  br label %71

47:                                               ; preds = %35
  %48 = load i8, ptr @caam_imx, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %54 = select i1 %52, i32 %53, i32 %30
  %55 = zext i32 %54 to i64
  %56 = shl nuw i64 %55, 32
  br label %63

57:                                               ; preds = %47
  %58 = zext i32 %30 to i64
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i64 @llvm.bswap.i64(i64 %58) #13
  %62 = select i1 %60, i64 %61, i64 %58
  br label %63

63:                                               ; preds = %57, %50
  %64 = phi i64 [ %56, %50 ], [ %62, %57 ]
  store i64 %64, ptr %3, align 8
  %65 = load i8, ptr @caam_little_end, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  %68 = select i1 %66, i32 %67, i32 %2
  %69 = getelementptr inbounds %struct.sec4_sg_entry, ptr %3, i32 0, i32 1
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.sec4_sg_entry, ptr %3, i32 0, i32 2
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %63, %38, %33
  %72 = phi i32 [ -12, %33 ], [ 0, %38 ], [ 0, %63 ]
  ret i32 %72
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @buf_map_to_sec4_sg(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.caam_hash_state, ptr %2, i32 0, i32 4
  %9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #13
  %10 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %22, !prof !12

13:                                               ; preds = %7
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %14 = tail call ptr @dev_driver_string(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %16, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %14, ptr noundef %21) #13
  br label %22

22:                                               ; preds = %20, %7
  br i1 %9, label %23, label %24

23:                                               ; preds = %22
  store i32 -1, ptr %2, align 64
  br label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %8 to i32
  %27 = add i32 %26, 1073741824
  %28 = lshr i32 %27, 12
  %29 = getelementptr %struct.page, ptr %25, i32 %28
  %30 = and i32 %26, 4095
  %31 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %29, i32 noundef %30, i32 noundef %5, i32 noundef 1, i32 noundef 0) #13
  store i32 %31, ptr %2, align 64
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #15
  store i32 0, ptr %2, align 64
  br label %70

34:                                               ; preds = %24
  %35 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = zext i32 %31 to i64
  store i64 %38, ptr %1, align 8
  %39 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %1, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %1, i32 0, i32 1
  store i32 %5, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %1, i32 0, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, -16384
  store i16 %44, ptr %42, align 4
  %45 = and i16 %40, 16384
  store i16 %45, ptr %39, align 2
  br label %70

46:                                               ; preds = %34
  %47 = load i8, ptr @caam_imx, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  %53 = select i1 %51, i32 %52, i32 %31
  %54 = zext i32 %53 to i64
  %55 = shl nuw i64 %54, 32
  br label %62

56:                                               ; preds = %46
  %57 = zext i32 %31 to i64
  %58 = load i8, ptr @caam_little_end, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  %60 = tail call i64 @llvm.bswap.i64(i64 %57) #13
  %61 = select i1 %59, i64 %60, i64 %57
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi i64 [ %55, %49 ], [ %61, %56 ]
  store i64 %63, ptr %1, align 8
  %64 = load i8, ptr @caam_little_end, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  %66 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %67 = select i1 %65, i32 %66, i32 %5
  %68 = getelementptr inbounds %struct.sec4_sg_entry, ptr %1, i32 0, i32 1
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.sec4_sg_entry, ptr %1, i32 0, i32 2
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %62, %37, %33, %3
  %71 = phi i32 [ -12, %33 ], [ 0, %3 ], [ 0, %37 ], [ 0, %62 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_done_bi(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  tail call fastcc void @ahash_done_switch(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_done_ctx_src(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  tail call fastcc void @ahash_done_cpy(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahash_done_cpy(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -64
  %12 = load i32, ptr %11, align 64
  %13 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 6
  %14 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_edesc, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #13
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i32 [ %21, %20 ], [ 0, %4 ]
  %24 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 1, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %25, i32 noundef %29, i32 noundef %3, i32 noundef 0) #13
  store i32 0, ptr %24, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.ahash_edesc, ptr %15, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %36, i32 noundef %32, i32 noundef 1, i32 noundef 0) #13
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.ahash_edesc, ptr %15, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %15, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %42, i32 noundef %39, i32 noundef 1, i32 noundef 0) #13
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, ptr %13, align 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 4
  %48 = load i32, ptr %47, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %44, i32 noundef %48, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %13, align 64
  br label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 0, i32 3
  %51 = load ptr, ptr %50, align 32
  %52 = getelementptr inbounds %struct.ahash_request, ptr %2, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 64 %52, i32 %12, i1 false)
  tail call void @kfree(ptr noundef %15) #13
  br i1 %18, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.crypto_async_request, ptr %2, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef %2, i32 noundef %23) #13
  br label %59

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %6, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %58, ptr noundef %2, i32 noundef %23) #13
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahash_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  tail call fastcc void @ahash_done_cpy(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_split_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahash_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = load i32, ptr %4, align 64
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 7, i32 10
  %13 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 16
  %14 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 32
  store ptr %12, ptr %14, align 16
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 10
  %16 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.caam_drv_private, ptr %11, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %15, ptr noundef %13, i32 noundef 0, i32 noundef %17, i32 noundef %17, i1 noundef zeroext true, i32 noundef %19) #13
  %20 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10
  %21 = load i32, ptr %20, align 64
  %22 = load i32, ptr %15, align 4
  %23 = load i8, ptr @caam_little_end, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = lshr i32 %22, 24
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = shl i32 %26, 2
  %28 = and i32 %27, 508
  %29 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 4
  %30 = load i32, ptr %29, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %21, i32 noundef %28, i32 noundef %30) #13
  %31 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3
  %32 = load i32, ptr %16, align 4
  %33 = load i32, ptr %18, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %31, ptr noundef %13, i32 noundef 4, i32 noundef %32, i32 noundef %32, i1 noundef zeroext false, i32 noundef %33) #13
  %34 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %31, align 4
  %37 = load i8, ptr @caam_little_end, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = lshr i32 %36, 24
  %40 = select i1 %38, i32 %39, i32 %36
  %41 = shl i32 %40, 2
  %42 = and i32 %41, 508
  %43 = load i32, ptr %29, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %35, i32 noundef %42, i32 noundef %43) #13
  %44 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 4, i32 10
  %45 = load i32, ptr %16, align 4
  %46 = load i32, ptr %18, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %44, ptr noundef %13, i32 noundef 8, i32 noundef %5, i32 noundef %45, i1 noundef zeroext true, i32 noundef %46) #13
  %47 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = load i32, ptr %44, align 4
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = lshr i32 %49, 24
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = shl i32 %53, 2
  %55 = and i32 %54, 508
  %56 = load i32, ptr %29, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %48, i32 noundef %55, i32 noundef %56) #13
  %57 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 6
  %58 = load i32, ptr %16, align 4
  %59 = load i32, ptr %18, align 4
  tail call void @cnstr_shdsc_ahash(ptr noundef %57, ptr noundef %13, i32 noundef 12, i32 noundef %5, i32 noundef %58, i1 noundef zeroext false, i32 noundef %59) #13
  %60 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 8, i32 10, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %57, align 4
  %63 = load i8, ptr @caam_little_end, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = lshr i32 %62, 24
  %66 = select i1 %64, i32 %65, i32 %62
  %67 = shl i32 %66, 2
  %68 = and i32 %67, 508
  %69 = load i32, ptr %29, align 16
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %61, i32 noundef %68, i32 noundef %69) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_key_done(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_ahash(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_sk_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_hash_cra_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @caam_jr_alloc() #13
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 8
  store ptr %5, ptr %6, align 8
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %151

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %4, i32 -184
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16719856
  switch i32 %15, label %32 [
    i32 1050368, label %16
    i32 1050112, label %24
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4
  store i32 1, ptr %17, align 16
  %18 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  store i32 0, ptr %18, align 4
  %19 = load i32, ptr %13, align 8
  %20 = or i32 %19, 33554432
  %21 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 16
  store i32 %20, ptr %21, align 32
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 12
  store i32 48, ptr %22, align 4
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  br label %62

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4
  store i32 1, ptr %25, align 16
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  store i32 3, ptr %26, align 4
  %27 = load i32, ptr %13, align 8
  %28 = or i32 %27, 33554432
  %29 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 16
  store i32 %28, ptr %29, align 32
  %30 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 12
  store i32 32, ptr %30, align 4
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  br label %99

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.caam_drv_private, ptr %36, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 5
  %40 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4
  br i1 %39, label %41, label %46

41:                                               ; preds = %32
  store i32 0, ptr %40, align 16
  %42 = getelementptr i8, ptr %4, i32 -100
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i32 3, i32 1
  br label %47

46:                                               ; preds = %32
  store i32 1, ptr %40, align 16
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ 1, %46 ], [ 0, %41 ]
  %49 = phi i32 [ 3, %46 ], [ %45, %41 ]
  %50 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %13, align 8
  %52 = or i32 %51, 67108864
  %53 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 16
  store i32 %52, ptr %53, align 32
  %54 = lshr i32 %51, 16
  %55 = and i32 %54, 15
  %56 = getelementptr [6 x i8], ptr @caam_hash_cra_init.runninglen, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 12
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  %61 = icmp eq i32 %49, 3
  br i1 %61, label %99, label %62

62:                                               ; preds = %47, %16
  %63 = phi ptr [ %23, %16 ], [ %60, %47 ]
  %64 = phi i32 [ 0, %16 ], [ %49, %47 ]
  %65 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 14
  %66 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %65) #13
  %67 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %79, !prof !12

70:                                               ; preds = %62
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %71 = tail call ptr @dev_driver_string(ptr noundef %5) #13
  %72 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr %5, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %71, ptr noundef %78) #13
  br label %79

79:                                               ; preds = %77, %62
  br i1 %66, label %80, label %82

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 28
  store i32 -1, ptr %81, align 4
  br label %96

82:                                               ; preds = %79
  %83 = load ptr, ptr @mem_map, align 4
  %84 = ptrtoint ptr %65 to i32
  %85 = add i32 %84, 1073741824
  %86 = lshr i32 %85, 12
  %87 = getelementptr %struct.page, ptr %83, i32 %86
  %88 = and i32 %84, 4095
  %89 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %87, i32 noundef %88, i32 noundef 128, i32 noundef %64, i32 noundef 32) #13
  %90 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 28
  store i32 %89, ptr %90, align 4
  %91 = icmp eq i32 %89, -1
  br i1 %91, label %96, label %92

92:                                               ; preds = %82
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4
  %95 = load i32, ptr %94, align 16
  br label %99

96:                                               ; preds = %82, %80
  %97 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.51) #15
  %98 = load ptr, ptr %6, align 8
  tail call void @caam_jr_free(ptr noundef %98) #13
  br label %151

99:                                               ; preds = %92, %47, %24
  %100 = phi ptr [ %63, %92 ], [ %60, %47 ], [ %31, %24 ]
  %101 = phi i32 [ %95, %92 ], [ %48, %47 ], [ 1, %24 ]
  %102 = phi ptr [ %93, %92 ], [ %5, %47 ], [ %5, %24 ]
  %103 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 2
  %104 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %103) #13
  %105 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %106 = xor i1 %105, true
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %117, !prof !12

108:                                              ; preds = %99
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %109 = tail call ptr @dev_driver_string(ptr noundef %102) #13
  %110 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load ptr, ptr %102, align 4
  br label %115

115:                                              ; preds = %113, %108
  %116 = phi ptr [ %114, %113 ], [ %111, %108 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %109, ptr noundef %116) #13
  br label %117

117:                                              ; preds = %115, %99
  br i1 %104, label %127, label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr @mem_map, align 4
  %120 = ptrtoint ptr %103 to i32
  %121 = add i32 %120, 1073741824
  %122 = lshr i32 %121, 12
  %123 = getelementptr %struct.page, ptr %119, i32 %122
  %124 = and i32 %120, 4095
  %125 = tail call i32 @dma_map_page_attrs(ptr noundef %102, ptr noundef %123, i32 noundef %124, i32 noundef 768, i32 noundef %101, i32 noundef 32) #13
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %137

127:                                              ; preds = %118, %117
  %128 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.52) #15
  %129 = load i32, ptr %100, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %6, align 8
  %133 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 28
  %134 = load i32, ptr %133, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %132, i32 noundef %134, i32 noundef 128, i32 noundef %129, i32 noundef 32) #13
  br label %135

135:                                              ; preds = %131, %127
  %136 = load ptr, ptr %6, align 8
  tail call void @caam_jr_free(ptr noundef %136) #13
  br label %151

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16
  store i32 %125, ptr %138, align 64
  %139 = add i32 %125, 192
  %140 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 1
  store i32 %139, ptr %140, align 4
  %141 = add i32 %125, 384
  %142 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 2
  store i32 %141, ptr %142, align 8
  %143 = add i32 %125, 576
  %144 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 3
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @ahash_do_one_req, ptr %145, align 8
  %146 = getelementptr i8, ptr %0, i32 -32
  store i32 448, ptr %146, align 32
  %147 = getelementptr i8, ptr %4, i32 -100
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  tail call fastcc void @ahash_set_sh_desc(ptr noundef %2)
  br label %151

151:                                              ; preds = %150, %137, %135, %96, %8
  %152 = phi i32 [ %11, %8 ], [ -12, %96 ], [ -12, %135 ], [ 0, %137 ], [ 0, %150 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_hash_cra_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16
  %5 = load i32, ptr %4, align 64
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4
  %7 = load i32, ptr %6, align 16
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef 768, i32 noundef %7, i32 noundef 32) #13
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 16, i32 4, i32 28
  %14 = load i32, ptr %13, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef 128, i32 noundef %9, i32 noundef 32) #13
  br label %15

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %2, align 8
  tail call void @caam_jr_free(ptr noundef %16) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_do_one_req(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 6
  %6 = getelementptr i8, ptr %4, i32 1048
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.ahash_edesc, ptr %9, i32 0, i32 3
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 16
  %14 = tail call i32 @caam_jr_enqueue(ptr noundef %7, ptr noundef %10, ptr noundef %13, ptr noundef %1) #13
  switch i32 %14, label %19 [
    i32 -28, label %15
    i32 -115, label %41
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15, %2
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.ahash_edesc, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %26, i32 noundef %22, i32 noundef 1, i32 noundef 0) #13
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.ahash_edesc, ptr %20, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %20, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %32, i32 noundef %29, i32 noundef 1, i32 noundef 0) #13
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, ptr %5, align 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 4
  %38 = load i32, ptr %37, align 64
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %34, i32 noundef %38, i32 noundef 1, i32 noundef 0) #13
  store i32 0, ptr %5, align 64
  br label %39

39:                                               ; preds = %36, %33
  %40 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %40) #13
  br label %41

41:                                               ; preds = %39, %15, %2
  %42 = phi i32 [ -28, %15 ], [ %14, %39 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2151320052}
!10 = !{i64 2156941178}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
