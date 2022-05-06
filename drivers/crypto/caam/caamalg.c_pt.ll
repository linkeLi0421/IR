; ModuleID = '/llk/IR/drivers/crypto/caam/caamalg.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamalg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.caam_aead_alg = type { %struct.aead_alg, %struct.caam_alg_entry, i8, [51 x i8] }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [28 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.129, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.caam_alg_entry = type { i32, i32, i8, i8, i8 }
%struct.caam_skcipher_alg = type { %struct.skcipher_alg, %struct.caam_alg_entry, i8, [51 x i8] }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
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
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.aead_edesc = type { i32, i32, i32, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [15 x i8], %struct.atomic_t, ptr, [56 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.skcipher_edesc = type { i32, i32, i32, i32, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.caam_ctx = type { %struct.crypto_engine_ctx, [56 x i32], [56 x i32], [164 x i8], i32, i32, i32, i32, ptr, %struct.alginfo, %struct.alginfo, i32, i8, ptr }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }

@driver_aeads = internal global [59 x %struct.caam_aead_alg] [%struct.caam_aead_alg { %struct.aead_alg { ptr @rfc4106_setkey, ptr @rfc4106_setauthsize, ptr @ipsec_gcm_encrypt, ptr @ipsec_gcm_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4106-gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @rfc4543_setkey, ptr @rfc4543_setauthsize, ptr @ipsec_gcm_encrypt, ptr @ipsec_gcm_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4543-gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @gcm_setkey, ptr @gcm_setauthsize, ptr @gcm_encrypt, ptr @gcm_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4194368, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(md5),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-md5-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4194368, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4259904, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha1),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha1-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4259904, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4325440, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha224),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha224-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4325440, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4390976, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha256),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha256-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4390976, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4456512, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha384),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha384-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4456512, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4522048, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha512),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha512-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4522048, i8 1, i8 1, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @chachapoly_setkey, ptr @chachapoly_setauthsize, ptr @chachapoly_encrypt, ptr @chachapoly_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc7539-chacha20-poly1305-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 13631520, i32 14680096, i8 0, i8 0, i8 1 }, i8 0, [51 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @chachapoly_setkey, ptr @chachapoly_setauthsize, ptr @chachapoly_encrypt, ptr @chachapoly_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539esp(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc7539esp-chacha20-poly1305-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 13631520, i32 14680096, i8 0, i8 0, i8 1 }, i8 0, [51 x i8] undef }], align 64
@driver_algs = internal global [9 x %struct.caam_skcipher_alg] [%struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-3des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @ctr_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @rfc3686_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 20, i32 36, i32 8, i32 16, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc3686(ctr(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 0, i8 1, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @xts_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1049856, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2097664, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 1049088, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.129 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.caam_alg_entry { i32 2163200, i32 0, i8 0, i8 0, i8 0 }, i8 0, [51 x i8] undef }], align 64
@.str = private unnamed_addr constant [30 x i8] c"\014%s alg registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\016caam algorithms registered in /proc/crypto\0A\00", align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Insufficient bytes (%d) in src S/G\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Insufficient bytes (%d) in dst S/G\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"unable to map source\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"unable to map destination\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@split_key_len.mdpadlen = internal unnamed_addr constant [6 x i8] c"\10\14  @@", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"could not allocate extended descriptor\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"unable to map IV\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"src    @1251: \00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"dst    @1036: \00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.27 = private unnamed_addr constant [39 x i8] c"\013Failed to allocate %s fallback: %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"unable to map key, shared descriptors\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @caam_algapi_exit() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %8, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %3 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %2, i32 2
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %2
  tail call void @crypto_unregister_aead(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 59
  br i1 %10, label %11, label %1

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 0, i32 2), align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @driver_algs) #10
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 1, i32 2), align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 1)) #10
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 2, i32 2), align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 2)) #10
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 3, i32 2), align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 3)) #10
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 4, i32 2), align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 4)) #10
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 5, i32 2), align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 5)) #10
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 6, i32 2), align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 6)) #10
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 7, i32 2), align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 7)) #10
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 8, i32 2), align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 8)) #10
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_algapi_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 10
  %7 = load ptr, ptr %3, align 4
  br i1 %6, label %8, label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 26, i32 22
  %10 = load i8, ptr @caam_little_end, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ %12, %13 ], [ %15, %14 ]
  %18 = and i32 %17, 15
  %19 = lshr i32 %17, 12
  %20 = and i32 %19, 15
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.caam_ctrl, ptr %21, i32 0, i32 26, i32 24
  %23 = load i8, ptr @caam_little_end, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10
  br i1 %24, label %27, label %26

26:                                               ; preds = %16
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %29

27:                                               ; preds = %16
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %25, %26 ], [ %28, %27 ]
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = and i32 %30, 15
  %34 = lshr i32 %30, 12
  %35 = and i32 %34, 15
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.caam_ctrl, ptr %36, i32 0, i32 26, i32 9
  %38 = load i8, ptr @caam_little_end, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10
  br i1 %39, label %42, label %41

41:                                               ; preds = %29
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %44

42:                                               ; preds = %29
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ %40, %41 ], [ %43, %42 ]
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %18, 3
  %48 = icmp ne i32 %46, 0
  %49 = select i1 %47, i1 true, i1 %48
  br label %109

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.caam_ctrl, ptr %7, i32 0, i32 25, i32 4
  %52 = load i8, ptr @caam_little_end, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %58

56:                                               ; preds = %50
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ %54, %55 ], [ %57, %56 ]
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.caam_ctrl, ptr %60, i32 0, i32 25, i32 5
  %62 = load i8, ptr @caam_little_end, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10
  br i1 %63, label %66, label %65

65:                                               ; preds = %58
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %68

66:                                               ; preds = %58
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ %64, %65 ], [ %67, %66 ]
  %70 = lshr i32 %59, 24
  %71 = lshr i32 %69, 24
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.caam_ctrl, ptr %72, i32 0, i32 25, i32 6
  %74 = load i8, ptr @caam_little_end, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10
  br i1 %75, label %78, label %77

77:                                               ; preds = %68
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %80

78:                                               ; preds = %68
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ %76, %77 ], [ %79, %78 ]
  %82 = and i32 %81, 255
  %83 = and i32 %59, 255
  %84 = and i32 %69, 255
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr inbounds %struct.caam_ctrl, ptr %85, i32 0, i32 25, i32 11
  %87 = load i8, ptr @caam_little_end, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #10
  br i1 %88, label %91, label %90

90:                                               ; preds = %80
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %93

91:                                               ; preds = %80
  %92 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ %89, %90 ], [ %92, %91 ]
  %95 = and i32 %94, 255
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr inbounds %struct.caam_ctrl, ptr %96, i32 0, i32 25, i32 12
  %98 = load i8, ptr @caam_little_end, align 1, !range !8
  %99 = icmp eq i8 %98, 0
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #10
  br i1 %99, label %102, label %101

101:                                              ; preds = %93
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %104

102:                                              ; preds = %93
  %103 = tail call i32 @llvm.bswap.i32(i32 %100) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ %100, %101 ], [ %103, %102 ]
  %106 = and i32 %105, 255
  %107 = and i32 %59, 512
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %104, %44
  %110 = phi i32 [ 0, %44 ], [ %95, %104 ]
  %111 = phi i32 [ 0, %44 ], [ %106, %104 ]
  %112 = phi i1 [ %49, %44 ], [ %108, %104 ]
  %113 = phi i32 [ %35, %44 ], [ %84, %104 ]
  %114 = phi i32 [ %20, %44 ], [ %71, %104 ]
  %115 = phi i32 [ %32, %44 ], [ %82, %104 ]
  %116 = phi i32 [ %33, %44 ], [ %83, %104 ]
  %117 = phi i32 [ %18, %44 ], [ %70, %104 ]
  %118 = icmp eq i32 %113, 0
  %119 = xor i1 %118, true
  %120 = icmp eq i32 %114, 0
  %121 = select i1 %119, i1 %120, i1 false
  %122 = icmp eq i32 %115, 0
  %123 = icmp eq i32 %116, 0
  %124 = icmp eq i32 %117, 3
  br label %133

125:                                              ; preds = %168
  %126 = select i1 %121, i32 32, i32 64
  %127 = icmp ne i32 %110, 0
  %128 = icmp ne i32 %111, 0
  br label %129

129:                                              ; preds = %225, %125
  %130 = phi i32 [ %227, %225 ], [ 0, %125 ]
  %131 = phi i32 [ 0, %225 ], [ %170, %125 ]
  %132 = phi i1 [ true, %225 ], [ %169, %125 ]
  br label %173

133:                                              ; preds = %168, %109
  %134 = phi i32 [ 0, %109 ], [ %171, %168 ]
  %135 = phi i32 [ 0, %109 ], [ %170, %168 ]
  %136 = phi i1 [ false, %109 ], [ %169, %168 ]
  %137 = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %134
  %138 = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %134, i32 1
  %139 = load i32, ptr %138, align 64
  %140 = and i32 %139, 16646144
  %141 = icmp eq i32 %140, 2097152
  %142 = select i1 %122, i1 %141, i1 false
  br i1 %142, label %168, label %143

143:                                              ; preds = %133
  %144 = and i32 %139, 16711680
  %145 = icmp eq i32 %144, 1048576
  %146 = select i1 %123, i1 %145, i1 false
  br i1 %146, label %168, label %147

147:                                              ; preds = %143
  %148 = and i32 %139, 8176
  %149 = icmp eq i32 %148, 1280
  %150 = select i1 %124, i1 %149, i1 false
  br i1 %150, label %168, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 11, i32 15
  store ptr @__this_module, ptr %152, align 4
  %153 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 11, i32 6
  store i32 3000, ptr %153, align 32
  %154 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 11, i32 4
  store i32 704, ptr %154, align 8
  %155 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 11, i32 2
  %156 = load i32, ptr %155, align 16
  %157 = or i32 %156, 69760
  store i32 %157, ptr %155, align 16
  %158 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 3
  store ptr @caam_cra_init, ptr %158, align 4
  %159 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 4
  store ptr @caam_cra_exit, ptr %159, align 16
  %160 = tail call i32 @crypto_register_skcipher(ptr noundef %137) #10
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.skcipher_alg, ptr %137, i32 0, i32 11
  %164 = getelementptr inbounds %struct.crypto_alg, ptr %163, i32 0, i32 9
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %164) #11
  br label %168

166:                                              ; preds = %151
  %167 = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %134, i32 2
  store i8 1, ptr %167, align 4
  br label %168

168:                                              ; preds = %166, %162, %147, %143, %133
  %169 = phi i1 [ %136, %162 ], [ true, %166 ], [ %136, %133 ], [ %136, %143 ], [ %136, %147 ]
  %170 = phi i32 [ %160, %162 ], [ 0, %166 ], [ %135, %133 ], [ %135, %143 ], [ %135, %147 ]
  %171 = add nuw nsw i32 %134, 1
  %172 = icmp eq i32 %171, 9
  br i1 %172, label %125, label %133

173:                                              ; preds = %221, %129
  %174 = phi i32 [ %223, %221 ], [ %130, %129 ]
  %175 = phi i32 [ %222, %221 ], [ %131, %129 ]
  %176 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %174
  %177 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %174, i32 1
  %178 = load i32, ptr %177, align 64
  %179 = and i32 %178, 16711680
  %180 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %174, i32 1, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 16711680
  %183 = and i32 %178, 16646144
  %184 = icmp eq i32 %183, 2097152
  %185 = select i1 %122, i1 %184, i1 false
  %186 = icmp eq i32 %179, 1048576
  %187 = select i1 %123, i1 %186, i1 false
  %188 = select i1 %185, i1 true, i1 %187
  %189 = xor i1 %188, true
  %190 = icmp ne i32 %179, 13631488
  %191 = select i1 %190, i1 true, i1 %127
  %192 = select i1 %189, i1 %191, i1 false
  %193 = icmp ne i32 %182, 14680064
  %194 = select i1 %193, i1 true, i1 %128
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %221

196:                                              ; preds = %173
  %197 = and i32 %178, 16719856
  %198 = icmp ne i32 %197, 1050880
  %199 = select i1 %198, i1 true, i1 %112
  br i1 %199, label %200, label %221

200:                                              ; preds = %196
  %201 = and i32 %181, 15728640
  %202 = icmp eq i32 %201, 4194304
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  br i1 %118, label %221, label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 7
  %206 = load i32, ptr %205, align 4
  %207 = icmp ugt i32 %206, %126
  br i1 %207, label %221, label %208

208:                                              ; preds = %204, %200
  %209 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 10, i32 15
  store ptr @__this_module, ptr %209, align 4
  %210 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 10, i32 6
  store i32 3000, ptr %210, align 32
  %211 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 10, i32 4
  store i32 704, ptr %211, align 8
  %212 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 10, i32 2
  store i32 69760, ptr %212, align 16
  %213 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 4
  store ptr @caam_aead_init, ptr %213, align 16
  %214 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 5
  store ptr @caam_aead_exit, ptr %214, align 4
  %215 = tail call i32 @crypto_register_aead(ptr noundef %176) #10
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %208
  %218 = getelementptr inbounds %struct.aead_alg, ptr %176, i32 0, i32 10
  %219 = getelementptr inbounds %struct.crypto_alg, ptr %218, i32 0, i32 9
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %219) #11
  br label %221

221:                                              ; preds = %217, %204, %203, %196, %173
  %222 = phi i32 [ %215, %217 ], [ %175, %173 ], [ %175, %196 ], [ %175, %204 ], [ %175, %203 ]
  %223 = add nuw nsw i32 %174, 1
  %224 = icmp eq i32 %223, 59
  br i1 %224, label %229, label %173

225:                                              ; preds = %208
  %226 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %174, i32 2
  store i8 1, ptr %226, align 4
  %227 = add nuw nsw i32 %174, 1
  %228 = icmp eq i32 %227, 59
  br i1 %228, label %230, label %129

229:                                              ; preds = %221
  br i1 %132, label %230, label %233

230:                                              ; preds = %229, %225
  %231 = phi i32 [ %222, %229 ], [ 0, %225 ]
  %232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %233

233:                                              ; preds = %230, %229
  %234 = phi i32 [ %231, %230 ], [ %222, %229 ]
  ret i32 %234
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc4106_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  switch i32 %2, label %14 [
    i32 20, label %4
    i32 28, label %4
    i32 36, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = add nsw i32 %2, -4
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 1 %1, i32 %2, i1 false)
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %13 = load i32, ptr %12, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %11, i32 noundef %5, i32 noundef %13) #10
  tail call fastcc void @rfc4106_set_sh_desc(ptr noundef %0)
  br label %14

14:                                               ; preds = %4, %3
  %15 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc4106_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %5 [
    i32 8, label %3
    i32 12, label %3
    i32 16, label %3
  ]

3:                                                ; preds = %2, %2, %2
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  store i32 %1, ptr %4, align 4
  tail call fastcc void @rfc4106_set_sh_desc(ptr noundef %0)
  br label %5

5:                                                ; preds = %3, %2
  %6 = phi i32 [ 0, %3 ], [ -22, %2 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipsec_gcm_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @gcm_crypt(ptr noundef %0, i1 noundef zeroext true) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipsec_gcm_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -16
  %5 = and i32 %4, -5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @gcm_crypt(ptr noundef %0, i1 noundef zeroext false) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc4543_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  switch i32 %2, label %14 [
    i32 20, label %4
    i32 28, label %4
    i32 36, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = add nsw i32 %2, -4
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 1 %1, i32 %2, i1 false)
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %13 = load i32, ptr %12, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %11, i32 noundef %5, i32 noundef %13) #10
  tail call fastcc void @rfc4543_set_sh_desc(ptr noundef %0)
  br label %14

14:                                               ; preds = %4, %3
  %15 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc4543_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 16
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  store i32 16, ptr %5, align 4
  tail call fastcc void @rfc4543_set_sh_desc(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  switch i32 %2, label %13 [
    i32 16, label %4
    i32 24, label %4
    i32 32, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %1, i32 %2, i1 false)
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %11 = load i32, ptr %10, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %6, i32 noundef %9, i32 noundef %2, i32 noundef %11) #10
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  store i32 %2, ptr %12, align 4
  tail call fastcc void @gcm_set_sh_desc(ptr noundef %0)
  br label %13

13:                                               ; preds = %4, %3
  %14 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %5 [
    i32 4, label %3
    i32 8, label %3
    i32 12, label %3
    i32 13, label %3
    i32 14, label %3
    i32 15, label %3
    i32 16, label %3
  ]

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  store i32 %1, ptr %4, align 4
  tail call fastcc void @gcm_set_sh_desc(ptr noundef %0)
  br label %5

5:                                                ; preds = %3, %2
  %6 = phi i32 [ 0, %3 ], [ -22, %2 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_encrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @gcm_crypt(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcm_decrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @gcm_crypt(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.crypto_authenc_keys, align 4
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %11 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.caam_drv_private, ptr %10, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 5
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 1
  %21 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2
  store i32 %19, ptr %21, align 4
  %22 = load i32, ptr %20, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 15
  %25 = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %28, %31
  %33 = icmp ugt i32 %32, 164
  br i1 %33, label %73, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %36 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %35, ptr align 1 %36, i32 %19, i1 false)
  %37 = load i32, ptr %29, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %40, i32 %31, i1 false)
  br label %60

41:                                               ; preds = %13
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %44 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 1
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 164, %49
  %51 = call i32 @gen_split_key(ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef %47, i32 noundef %50) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %43, i32 %55
  %57 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %48, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %58, i32 %59, i1 false)
  br label %60

60:                                               ; preds = %53, %34
  %61 = phi ptr [ %54, %53 ], [ %29, %34 ]
  %62 = phi i32 [ %59, %53 ], [ %31, %34 ]
  %63 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %61, align 4
  %66 = add i32 %65, %62
  %67 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %68 = load i32, ptr %67, align 4
  call void @dma_sync_single_for_device(ptr noundef %6, i32 noundef %64, i32 noundef %66, i32 noundef %68) #10
  %69 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %4, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  store i32 %70, ptr %71, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  %72 = call fastcc i32 @aead_set_sh_desc(ptr noundef %0)
  br label %74

73:                                               ; preds = %41, %17, %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  br label %74

74:                                               ; preds = %73, %60
  %75 = phi i32 [ -22, %73 ], [ %72, %60 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  store i32 %1, ptr %3, align 4
  %4 = tail call fastcc i32 @aead_set_sh_desc(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_encrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @aead_crypt(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_decrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @aead_crypt(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @des3_aead_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [6 x i32], align 4
  %5 = alloca %struct.crypto_authenc_keys, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  %6 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %44, !prof !13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 24
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %14, i32 24, i1 false) #10
  %19 = load i32, ptr %4, align 4
  %20 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %19, %21
  %27 = icmp eq i32 %23, %25
  %28 = and i1 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %12
  %30 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %21, %31
  %35 = icmp ne i32 %25, %33
  %36 = or i1 %34, %35
  %37 = or i1 %18, %36
  br i1 %37, label %40, label %39

38:                                               ; preds = %12
  br i1 %18, label %40, label %39

39:                                               ; preds = %38, %29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %42

40:                                               ; preds = %38, %29
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %41 = call i32 @aead_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %42

42:                                               ; preds = %40, %39, %8
  %43 = phi i32 [ %41, %40 ], [ -22, %8 ], [ -126, %39 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #10, !srcloc !12
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi i32 [ %43, %42 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chachapoly_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = sub i32 44, %7
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %1, ptr %11, align 4
  %12 = add i32 %2, -12
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  store i32 %13, ptr %14, align 4
  tail call fastcc void @chachapoly_set_sh_desc(ptr noundef %0)
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ 0, %10 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chachapoly_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 16
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  store i32 16, ptr %5, align 4
  tail call fastcc void @chachapoly_set_sh_desc(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chachapoly_encrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @chachapoly_crypt(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chachapoly_decrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @chachapoly_crypt(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfc4106_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, -3
  %10 = add i32 %9, 212
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 20
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %14, 75
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %24 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %23, ptr %24, align 4
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i8 [ 1, %22 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 40
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  tail call void @cnstr_shdsc_rfc4106_encap(ptr noundef %32, ptr noundef %11, i32 noundef %7, i32 noundef %18, i1 noundef zeroext false) #10
  %33 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %32, align 4
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %35, 24
  %39 = select i1 %37, i32 %38, i32 %35
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 508
  %42 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %43 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %34, i32 noundef %41, i32 noundef %43) #10
  %44 = icmp ugt i32 %14, 63
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %47 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %46, ptr %47, align 4
  br label %52

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i8 [ 1, %45 ], [ 0, %48 ]
  store i8 %53, ptr %31, align 4
  %54 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %55 = load i32, ptr %17, align 4
  tail call void @cnstr_shdsc_rfc4106_decap(ptr noundef %54, ptr noundef %11, i32 noundef %7, i32 noundef %55, i1 noundef zeroext false) #10
  %56 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %54, align 4
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = lshr i32 %58, 24
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 508
  %65 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %57, i32 noundef %64, i32 noundef %65) #10
  br label %66

66:                                               ; preds = %52, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4106_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4106_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfc4543_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, -3
  %10 = add i32 %9, 212
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 20
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %14, 55
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %24 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %23, ptr %24, align 4
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i8 [ 1, %22 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 40
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  tail call void @cnstr_shdsc_rfc4543_encap(ptr noundef %32, ptr noundef %11, i32 noundef %7, i32 noundef %18, i1 noundef zeroext false) #10
  %33 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %32, align 4
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %35, 24
  %39 = select i1 %37, i32 %38, i32 %35
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 508
  %42 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %43 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %34, i32 noundef %41, i32 noundef %43) #10
  %44 = icmp ugt i32 %14, 59
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %47 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %46, ptr %47, align 4
  br label %52

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i8 [ 1, %45 ], [ 0, %48 ]
  store i8 %53, ptr %31, align 4
  %54 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %55 = load i32, ptr %17, align 4
  tail call void @cnstr_shdsc_rfc4543_decap(ptr noundef %54, ptr noundef %11, i32 noundef %7, i32 noundef %55, i1 noundef zeroext false) #10
  %56 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %54, align 4
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = lshr i32 %58, 24
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 508
  %65 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %57, i32 noundef %64, i32 noundef %65) #10
  br label %66

66:                                               ; preds = %52, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4543_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4543_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gcm_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, -3
  %10 = add i32 %9, 212
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 20
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %14, 75
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %24 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %23, ptr %24, align 4
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i8 [ 1, %22 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 40
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  tail call void @cnstr_shdsc_gcm_encap(ptr noundef %32, ptr noundef %11, i32 noundef %7, i32 noundef %18, i1 noundef zeroext false) #10
  %33 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %32, align 4
  %36 = load i8, ptr @caam_little_end, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = lshr i32 %35, 24
  %39 = select i1 %37, i32 %38, i32 %35
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 508
  %42 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %43 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %34, i32 noundef %41, i32 noundef %43) #10
  %44 = icmp ugt i32 %14, 59
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %47 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %46, ptr %47, align 4
  br label %52

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i8 [ 1, %45 ], [ 0, %48 ]
  store i8 %53, ptr %31, align 4
  %54 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %55 = load i32, ptr %17, align 4
  tail call void @cnstr_shdsc_gcm_decap(ptr noundef %54, ptr noundef %11, i32 noundef %7, i32 noundef %55, i1 noundef zeroext false) #10
  %56 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %54, align 4
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = lshr i32 %58, 24
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 508
  %65 = load i32, ptr %42, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %57, i32 noundef %64, i32 noundef %65) #10
  br label %66

66:                                               ; preds = %52, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_gcm_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_gcm_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gcm_crypt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 704
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !11
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, 3
  %10 = add i32 %9, 44
  %11 = call fastcc ptr @aead_edesc_alloc(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3, i1 noundef zeroext %1)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = ptrtoint ptr %11 to i32
  br label %142

15:                                               ; preds = %2
  %16 = load i8, ptr %3, align 1, !range !8
  %17 = icmp ne i8 %16, 0
  %18 = load ptr, ptr %4, align 16
  %19 = getelementptr i8, ptr %18, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -40
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.aead_edesc, ptr %11, i32 0, i32 8
  %24 = icmp eq i32 %22, 12
  tail call fastcc void @init_aead_job(ptr noundef %0, ptr noundef %11, i1 noundef zeroext %17, i1 noundef zeroext %1) #10
  %25 = load i32, ptr %23, align 4
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = lshr i32 %25, 24
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = and i32 %29, 127
  %31 = getelementptr i32, ptr %23, i32 %30
  %32 = select i1 %27, i32 71503016, i32 -1475591420
  store i32 %32, ptr %31, align 4
  %33 = load i32, ptr %23, align 4
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = add i32 %37, 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = select i1 %35, i32 %39, i32 %38
  store i32 %40, ptr %23, align 4
  %41 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %39, 24
  %44 = select i1 %35, i32 %43, i32 %38
  %45 = and i32 %44, 127
  %46 = getelementptr i32, ptr %23, i32 %45
  %47 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %48 = select i1 %35, i32 %47, i32 %42
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %23, align 4
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = add i32 %53, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = select i1 %51, i32 %55, i32 %54
  store i32 %56, ptr %23, align 4
  %57 = select i1 %1, i1 %24, i1 false
  br i1 %57, label %58, label %65

58:                                               ; preds = %15
  %59 = load i32, ptr %41, align 8
  %60 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 0, %61
  %63 = icmp eq i32 %59, %62
  %64 = select i1 %63, i32 581107724, i32 580976652
  br label %65

65:                                               ; preds = %58, %15
  %66 = phi i32 [ 580976652, %15 ], [ %64, %58 ]
  %67 = lshr i32 %55, 24
  %68 = select i1 %51, i32 %67, i32 %54
  %69 = and i32 %68, 127
  %70 = getelementptr i32, ptr %23, i32 %69
  %71 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  %72 = select i1 %51, i32 %71, i32 %66
  store i32 %72, ptr %70, align 4
  %73 = load i32, ptr %23, align 4
  %74 = load i8, ptr @caam_little_end, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  %77 = select i1 %75, i32 %76, i32 %73
  %78 = add i32 %77, 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %80 = select i1 %75, i32 %79, i32 %78
  store i32 %80, ptr %23, align 4
  br i1 %24, label %100, label %81

81:                                               ; preds = %65
  %82 = getelementptr i8, ptr %18, i32 524
  %83 = getelementptr i8, ptr %18, i32 736
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = lshr i32 %79, 24
  %87 = select i1 %75, i32 %86, i32 %78
  %88 = and i32 %87, 127
  %89 = getelementptr i32, ptr %23, i32 %88
  %90 = load i32, ptr %85, align 1
  store i32 %90, ptr %89, align 4
  %91 = load i32, ptr %23, align 4
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = add i32 %95, 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = select i1 %93, i32 %97, i32 %96
  store i32 %98, ptr %23, align 4
  %99 = icmp eq i32 %22, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %81, %65
  %101 = phi i32 [ %80, %65 ], [ %98, %81 ]
  %102 = phi i8 [ %74, %65 ], [ %92, %81 ]
  %103 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 32
  %105 = icmp eq i8 %102, 0
  %106 = lshr i32 %101, 24
  %107 = select i1 %105, i32 %106, i32 %101
  %108 = and i32 %107, 127
  %109 = getelementptr i32, ptr %23, i32 %108
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %109, ptr align 1 %104, i32 %22, i1 false) #10
  %110 = load i32, ptr %23, align 4
  %111 = load i8, ptr @caam_little_end, align 1, !range !8
  br label %112

112:                                              ; preds = %100, %81
  %113 = phi i8 [ %92, %81 ], [ %111, %100 ]
  %114 = phi i32 [ %98, %81 ], [ %110, %100 ]
  %115 = icmp eq i8 %113, 0
  %116 = tail call i32 @llvm.bswap.i32(i32 %114) #10
  %117 = select i1 %115, i32 %116, i32 %114
  %118 = add i32 %22, 3
  %119 = lshr i32 %118, 2
  %120 = add i32 %117, %119
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #10
  %122 = select i1 %115, i32 %121, i32 %120
  store i32 %122, ptr %23, align 4
  %123 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 1024
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %131, i32 0, i32 18
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %133, ptr noundef %0) #10
  br label %138

135:                                              ; preds = %112
  %136 = getelementptr inbounds %struct.aead_edesc, ptr %124, i32 0, i32 8
  %137 = tail call i32 @caam_jr_enqueue(ptr noundef %7, ptr noundef %136, ptr noundef nonnull @aead_crypt_done, ptr noundef %0) #10
  br label %138

138:                                              ; preds = %135, %129
  %139 = phi i32 [ %134, %129 ], [ %137, %135 ]
  switch i32 %139, label %140 [
    i32 -16, label %142
    i32 -115, label %142
  ]

140:                                              ; preds = %138
  tail call fastcc void @aead_unmap(ptr noundef %7, ptr noundef %124, ptr noundef %0) #10
  %141 = load ptr, ptr %123, align 4
  tail call void @kfree(ptr noundef %141) #10
  br label %142

142:                                              ; preds = %140, %138, %138, %13
  %143 = phi i32 [ %14, %13 ], [ %139, %138 ], [ %139, %138 ], [ %139, %140 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @aead_edesc_alloc(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 704
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr i8, ptr %6, i32 756
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %17, %19
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br i1 %20, label %42, label %25, !prof !13

25:                                               ; preds = %4
  %26 = add i32 %24, %22
  %27 = sub i32 0, %15
  %28 = select i1 %3, i32 %15, i32 %27
  %29 = add i32 %26, %28
  %30 = sext i32 %26 to i64
  %31 = tail call i32 @sg_nents_for_len(ptr noundef %19, i64 noundef %30) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35, !prof !14

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %26) #11
  %34 = inttoptr i32 %31 to ptr
  br label %305

35:                                               ; preds = %25
  %36 = load ptr, ptr %16, align 8
  %37 = sext i32 %29 to i64
  %38 = tail call i32 @sg_nents_for_len(ptr noundef %36, i64 noundef %37) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %51, !prof !14

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %29) #11
  %41 = inttoptr i32 %38 to ptr
  br label %305

42:                                               ; preds = %4
  %43 = select i1 %3, i32 %15, i32 0
  %44 = add i32 %22, %43
  %45 = add i32 %44, %24
  %46 = sext i32 %45 to i64
  %47 = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %46) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51, !prof !14

49:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %45) #11
  %50 = inttoptr i32 %47 to ptr
  br label %305

51:                                               ; preds = %42, %35
  %52 = phi i32 [ %31, %35 ], [ %47, %42 ]
  %53 = phi i32 [ %38, %35 ], [ 0, %42 ]
  %54 = phi i32 [ %26, %35 ], [ %45, %42 ]
  %55 = phi i32 [ %29, %35 ], [ 0, %42 ]
  %56 = load ptr, ptr %18, align 4
  %57 = load ptr, ptr %16, align 8
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63, !prof !13

59:                                               ; preds = %51
  %60 = tail call i32 @dma_map_sg_attrs(ptr noundef %8, ptr noundef %56, i32 noundef %52, i32 noundef 0, i32 noundef 0) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78, !prof !14

62:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #11
  br label %305

63:                                               ; preds = %51
  %64 = icmp eq i32 %52, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @dma_map_sg_attrs(ptr noundef %8, ptr noundef %56, i32 noundef %52, i32 noundef 1, i32 noundef 0) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69, !prof !14

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #11
  br label %305

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %66, %65 ], [ 0, %63 ]
  %71 = icmp eq i32 %53, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %16, align 8
  %74 = tail call i32 @dma_map_sg_attrs(ptr noundef %8, ptr noundef %73, i32 noundef %53, i32 noundef 2, i32 noundef 0) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82, !prof !14

76:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #11
  %77 = load ptr, ptr %18, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %77, i32 noundef %52, i32 noundef 1, i32 noundef 0) #10
  br label %305

78:                                               ; preds = %69, %59
  %79 = phi i32 [ %70, %69 ], [ %60, %59 ]
  %80 = icmp sgt i32 %79, 1
  %81 = select i1 %80, i32 %79, i32 0
  br label %90

82:                                               ; preds = %72
  %83 = icmp sgt i32 %70, 1
  %84 = select i1 %83, i32 %70, i32 0
  %85 = icmp sgt i32 %74, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = add nuw i32 %74, 3
  %88 = and i32 %87, -4
  %89 = add i32 %88, %84
  br label %97

90:                                               ; preds = %82, %78
  %91 = phi i32 [ %81, %78 ], [ %84, %82 ]
  %92 = phi i1 [ %80, %78 ], [ %83, %82 ]
  %93 = phi i32 [ 0, %78 ], [ %74, %82 ]
  %94 = phi i32 [ %79, %78 ], [ %70, %82 ]
  %95 = add nuw i32 %91, 3
  %96 = and i32 %95, -4
  br label %97

97:                                               ; preds = %90, %86
  %98 = phi i1 [ true, %86 ], [ false, %90 ]
  %99 = phi i1 [ %83, %86 ], [ %92, %90 ]
  %100 = phi i32 [ %74, %86 ], [ %93, %90 ]
  %101 = phi i32 [ %70, %86 ], [ %94, %90 ]
  %102 = phi i32 [ %89, %86 ], [ %96, %90 ]
  %103 = shl i32 %102, 4
  %104 = select i1 %13, i32 2849, i32 3521
  %105 = add i32 %1, 32
  %106 = add i32 %105, %103
  %107 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %106, i32 noundef %104) #12
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %97
  %110 = load ptr, ptr %18, align 4
  %111 = load ptr, ptr %16, align 8
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = icmp eq i32 %52, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %110, i32 noundef %52, i32 noundef 1, i32 noundef 0) #10
  br label %116

116:                                              ; preds = %115, %113
  %117 = icmp eq i32 %53, 0
  br i1 %117, label %305, label %118

118:                                              ; preds = %116
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %111, i32 noundef %53, i32 noundef 2, i32 noundef 0) #10
  br label %305

119:                                              ; preds = %109
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %110, i32 noundef %52, i32 noundef 0, i32 noundef 0) #10
  br label %305

120:                                              ; preds = %97
  store i32 %52, ptr %107, align 64
  %121 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 1
  store i32 %53, ptr %121, align 4
  %122 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 2
  store i32 %101, ptr %122, align 8
  %123 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 3
  store i32 %100, ptr %123, align 4
  %124 = getelementptr i8, ptr %107, i32 32
  %125 = getelementptr i8, ptr %124, i32 %1
  %126 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 7
  store ptr %125, ptr %126, align 4
  store ptr %107, ptr %9, align 4
  %127 = xor i1 %99, true
  %128 = zext i1 %127 to i8
  store i8 %128, ptr %2, align 1
  br i1 %99, label %129, label %199

129:                                              ; preds = %120
  %130 = load ptr, ptr %126, align 4
  %131 = icmp eq i32 %54, 0
  br i1 %131, label %183, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %18, align 4
  br label %134

134:                                              ; preds = %178, %132
  %135 = phi ptr [ %180, %178 ], [ %133, %132 ]
  %136 = phi i32 [ %181, %178 ], [ %54, %132 ]
  %137 = phi ptr [ %179, %178 ], [ %130, %132 ]
  %138 = getelementptr inbounds %struct.scatterlist, ptr %135, i32 0, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @llvm.smin.i32(i32 %139, i32 %136) #10
  %141 = getelementptr inbounds %struct.scatterlist, ptr %135, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %134
  %146 = zext i32 %142 to i64
  store i64 %146, ptr %137, align 8
  %147 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %137, i32 0, i32 3
  %148 = load i16, ptr %147, align 2
  %149 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %137, i32 0, i32 1
  store i32 %140, ptr %149, align 8
  %150 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %137, i32 0, i32 2
  %151 = load i16, ptr %150, align 4
  %152 = and i16 %151, -16384
  store i16 %152, ptr %150, align 4
  %153 = and i16 %148, 16384
  store i16 %153, ptr %147, align 2
  br label %178

154:                                              ; preds = %134
  %155 = load i8, ptr @caam_imx, align 1, !range !8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = load i8, ptr @caam_little_end, align 1, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = tail call i32 @llvm.bswap.i32(i32 %142) #10
  %161 = select i1 %159, i32 %160, i32 %142
  %162 = zext i32 %161 to i64
  %163 = shl nuw i64 %162, 32
  br label %170

164:                                              ; preds = %154
  %165 = zext i32 %142 to i64
  %166 = load i8, ptr @caam_little_end, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  %168 = tail call i64 @llvm.bswap.i64(i64 %165) #10
  %169 = select i1 %167, i64 %168, i64 %165
  br label %170

170:                                              ; preds = %164, %157
  %171 = phi i64 [ %163, %157 ], [ %169, %164 ]
  store i64 %171, ptr %137, align 8
  %172 = load i8, ptr @caam_little_end, align 1, !range !8
  %173 = icmp eq i8 %172, 0
  %174 = tail call i32 @llvm.bswap.i32(i32 %140) #10
  %175 = select i1 %173, i32 %174, i32 %140
  %176 = getelementptr inbounds %struct.sec4_sg_entry, ptr %137, i32 0, i32 1
  store i32 %175, ptr %176, align 8
  %177 = getelementptr inbounds %struct.sec4_sg_entry, ptr %137, i32 0, i32 2
  store i32 0, ptr %177, align 4
  br label %178

178:                                              ; preds = %170, %145
  %179 = getelementptr %struct.sec4_sg_entry, ptr %137, i32 1
  %180 = tail call ptr @sg_next(ptr noundef %135) #10
  %181 = sub i32 %136, %140
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %134

183:                                              ; preds = %178, %129
  %184 = phi ptr [ %130, %129 ], [ %179, %178 ]
  %185 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = getelementptr %struct.sec4_sg_entry, ptr %184, i32 -1
  %189 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %188, i32 0, i32 3
  %190 = load i16, ptr %189, align 2
  %191 = or i16 %190, -32768
  store i16 %191, ptr %189, align 2
  br label %199

192:                                              ; preds = %183
  %193 = load i8, ptr @caam_little_end, align 1, !range !8
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %194, i32 64, i32 1073741824
  %196 = getelementptr %struct.sec4_sg_entry, ptr %184, i32 -1, i32 1
  %197 = load i32, ptr %196, align 8
  %198 = or i32 %195, %197
  store i32 %198, ptr %196, align 8
  br label %199

199:                                              ; preds = %192, %187, %120
  %200 = phi i32 [ 0, %120 ], [ %101, %187 ], [ %101, %192 ]
  br i1 %98, label %201, label %272

201:                                              ; preds = %199
  %202 = load ptr, ptr %126, align 4
  %203 = getelementptr %struct.sec4_sg_entry, ptr %202, i32 %200
  %204 = icmp eq i32 %55, 0
  br i1 %204, label %256, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr %16, align 8
  br label %207

207:                                              ; preds = %251, %205
  %208 = phi ptr [ %253, %251 ], [ %206, %205 ]
  %209 = phi i32 [ %254, %251 ], [ %55, %205 ]
  %210 = phi ptr [ %252, %251 ], [ %203, %205 ]
  %211 = getelementptr inbounds %struct.scatterlist, ptr %208, i32 0, i32 4
  %212 = load i32, ptr %211, align 4
  %213 = tail call i32 @llvm.smin.i32(i32 %212, i32 %209) #10
  %214 = getelementptr inbounds %struct.scatterlist, ptr %208, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %207
  %219 = zext i32 %215 to i64
  store i64 %219, ptr %210, align 8
  %220 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %210, i32 0, i32 3
  %221 = load i16, ptr %220, align 2
  %222 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %210, i32 0, i32 1
  store i32 %213, ptr %222, align 8
  %223 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %210, i32 0, i32 2
  %224 = load i16, ptr %223, align 4
  %225 = and i16 %224, -16384
  store i16 %225, ptr %223, align 4
  %226 = and i16 %221, 16384
  store i16 %226, ptr %220, align 2
  br label %251

227:                                              ; preds = %207
  %228 = load i8, ptr @caam_imx, align 1, !range !8
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %227
  %231 = load i8, ptr @caam_little_end, align 1, !range !8
  %232 = icmp eq i8 %231, 0
  %233 = tail call i32 @llvm.bswap.i32(i32 %215) #10
  %234 = select i1 %232, i32 %233, i32 %215
  %235 = zext i32 %234 to i64
  %236 = shl nuw i64 %235, 32
  br label %243

237:                                              ; preds = %227
  %238 = zext i32 %215 to i64
  %239 = load i8, ptr @caam_little_end, align 1, !range !8
  %240 = icmp eq i8 %239, 0
  %241 = tail call i64 @llvm.bswap.i64(i64 %238) #10
  %242 = select i1 %240, i64 %241, i64 %238
  br label %243

243:                                              ; preds = %237, %230
  %244 = phi i64 [ %236, %230 ], [ %242, %237 ]
  store i64 %244, ptr %210, align 8
  %245 = load i8, ptr @caam_little_end, align 1, !range !8
  %246 = icmp eq i8 %245, 0
  %247 = tail call i32 @llvm.bswap.i32(i32 %213) #10
  %248 = select i1 %246, i32 %247, i32 %213
  %249 = getelementptr inbounds %struct.sec4_sg_entry, ptr %210, i32 0, i32 1
  store i32 %248, ptr %249, align 8
  %250 = getelementptr inbounds %struct.sec4_sg_entry, ptr %210, i32 0, i32 2
  store i32 0, ptr %250, align 4
  br label %251

251:                                              ; preds = %243, %218
  %252 = getelementptr %struct.sec4_sg_entry, ptr %210, i32 1
  %253 = tail call ptr @sg_next(ptr noundef %208) #10
  %254 = sub i32 %209, %213
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %207

256:                                              ; preds = %251, %201
  %257 = phi ptr [ %203, %201 ], [ %252, %251 ]
  %258 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %256
  %261 = getelementptr %struct.sec4_sg_entry, ptr %257, i32 -1
  %262 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %261, i32 0, i32 3
  %263 = load i16, ptr %262, align 2
  %264 = or i16 %263, -32768
  store i16 %264, ptr %262, align 2
  br label %272

265:                                              ; preds = %256
  %266 = load i8, ptr @caam_little_end, align 1, !range !8
  %267 = icmp eq i8 %266, 0
  %268 = select i1 %267, i32 64, i32 1073741824
  %269 = getelementptr %struct.sec4_sg_entry, ptr %257, i32 -1, i32 1
  %270 = load i32, ptr %269, align 8
  %271 = or i32 %268, %270
  store i32 %271, ptr %269, align 8
  br label %272

272:                                              ; preds = %265, %260, %199
  %273 = icmp eq i32 %103, 0
  br i1 %273, label %305, label %274

274:                                              ; preds = %272
  %275 = load ptr, ptr %126, align 4
  %276 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %275) #10
  %277 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %278 = xor i1 %277, true
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %280, label %289, !prof !14

280:                                              ; preds = %274
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %281 = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %282 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load ptr, ptr %8, align 4
  br label %287

287:                                              ; preds = %285, %280
  %288 = phi ptr [ %286, %285 ], [ %283, %280 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %281, ptr noundef %288) #10
  br label %289

289:                                              ; preds = %287, %274
  br i1 %276, label %290, label %292

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 6
  store i32 -1, ptr %291, align 8
  br label %302

292:                                              ; preds = %289
  %293 = load ptr, ptr @mem_map, align 4
  %294 = ptrtoint ptr %275 to i32
  %295 = add i32 %294, 1073741824
  %296 = lshr i32 %295, 12
  %297 = getelementptr %struct.page, ptr %293, i32 %296
  %298 = and i32 %294, 4095
  %299 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %297, i32 noundef %298, i32 noundef %103, i32 noundef 1, i32 noundef 0) #10
  %300 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 6
  store i32 %299, ptr %300, align 8
  %301 = icmp eq i32 %299, -1
  br i1 %301, label %302, label %303

302:                                              ; preds = %292, %290
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #11
  tail call fastcc void @aead_unmap(ptr noundef %8, ptr noundef nonnull %107, ptr noundef %0)
  tail call void @kfree(ptr noundef nonnull %107) #10
  br label %305

303:                                              ; preds = %292
  %304 = getelementptr inbounds %struct.aead_edesc, ptr %107, i32 0, i32 4
  store i32 %103, ptr %304, align 16
  br label %305

305:                                              ; preds = %303, %302, %272, %119, %118, %116, %76, %68, %62, %49, %40, %33
  %306 = phi ptr [ %34, %33 ], [ %41, %40 ], [ inttoptr (i32 -12 to ptr), %62 ], [ inttoptr (i32 -12 to ptr), %302 ], [ %107, %303 ], [ inttoptr (i32 -12 to ptr), %68 ], [ inttoptr (i32 -12 to ptr), %76 ], [ %50, %49 ], [ %107, %272 ], [ inttoptr (i32 -12 to ptr), %116 ], [ inttoptr (i32 -12 to ptr), %118 ], [ inttoptr (i32 -12 to ptr), %119 ]
  ret ptr %306
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
define internal fastcc void @caam_unmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = icmp eq ptr %2, %1
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0) #10
  br label %14

14:                                               ; preds = %13, %11
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %2, i32 noundef %4, i32 noundef 2, i32 noundef 0) #10
  br label %18

17:                                               ; preds = %9
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  br label %18

18:                                               ; preds = %17, %16, %14
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef 0, i32 noundef 0) #10
  br label %21

21:                                               ; preds = %20, %18
  %22 = icmp eq i32 %8, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0) #10
  br label %24

24:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aead_unmap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.aead_request, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aead_request, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq ptr %7, %5
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %5, i32 noundef %8, i32 noundef 1, i32 noundef 0) #10
  br label %19

19:                                               ; preds = %18, %16
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %7, i32 noundef %10, i32 noundef 2, i32 noundef 0) #10
  br label %23

22:                                               ; preds = %3
  tail call void @dma_unmap_sg_attrs(ptr noundef %0, ptr noundef %5, i32 noundef %8, i32 noundef 0, i32 noundef 0) #10
  br label %23

23:                                               ; preds = %22, %21, %19
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #10
  br label %26

26:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @init_aead_job(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 756
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 8
  %10 = select i1 %3, i32 76, i32 300
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = select i1 %3, i32 688, i32 692
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %11, align 4
  %16 = load i8, ptr @caam_little_end, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = lshr i32 %15, 24
  %19 = select i1 %17, i32 %18, i32 %15
  %20 = shl i32 %19, 16
  %21 = and i32 %20, 8323072
  %22 = or i32 %21, -1333781503
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = select i1 %17, i32 %23, i32 %22
  %25 = getelementptr %struct.aead_edesc, ptr %1, i32 1, i32 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %27 = select i1 %17, i32 %26, i32 %14
  store i32 %27, ptr %25, align 4
  %28 = load i8, ptr @caam_little_end, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %31 = select i1 %29, i32 %30, i32 %24
  %32 = load i32, ptr @caam_ptr_sz, align 4
  %33 = lshr i32 %32, 2
  %34 = add nuw nsw i32 %31, %33
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = select i1 %29, i32 %35, i32 %34
  store i32 %36, ptr %9, align 4
  br i1 %2, label %37, label %46

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  br label %52

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 4
  br label %52

52:                                               ; preds = %46, %41, %37
  %53 = phi i32 [ 16777216, %46 ], [ 0, %37 ], [ 0, %41 ]
  %54 = phi i32 [ %48, %46 ], [ 0, %37 ], [ %45, %41 ]
  %55 = phi i32 [ %51, %46 ], [ 0, %37 ], [ 0, %41 ]
  %56 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = or i32 %53, -264241152
  %62 = lshr i32 %35, 24
  %63 = select i1 %29, i32 %62, i32 %34
  %64 = and i32 %63, 127
  %65 = getelementptr i32, ptr %9, i32 %64
  %66 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %67 = select i1 %29, i32 %66, i32 %61
  store i32 %67, ptr %65, align 4
  %68 = load i32, ptr %9, align 4
  %69 = load i8, ptr @caam_little_end, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  %72 = select i1 %70, i32 %71, i32 %68
  %73 = add i32 %72, 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  %75 = select i1 %70, i32 %74, i32 %73
  store i32 %75, ptr %9, align 4
  %76 = lshr i32 %74, 24
  %77 = select i1 %70, i32 %76, i32 %73
  %78 = and i32 %77, 127
  %79 = getelementptr i32, ptr %9, i32 %78
  %80 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %81 = select i1 %70, i32 %80, i32 %54
  store i32 %81, ptr %79, align 4
  %82 = load i32, ptr %9, align 4
  %83 = load i8, ptr @caam_little_end, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  %86 = select i1 %84, i32 %85, i32 %82
  %87 = load i32, ptr @caam_ptr_sz, align 4
  %88 = lshr i32 %87, 2
  %89 = add i32 %86, %88
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %91 = select i1 %84, i32 %90, i32 %89
  store i32 %91, ptr %9, align 4
  %92 = lshr i32 %90, 24
  %93 = select i1 %84, i32 %92, i32 %89
  %94 = and i32 %93, 127
  %95 = getelementptr i32, ptr %9, i32 %94
  %96 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  %97 = select i1 %84, i32 %96, i32 %60
  store i32 %97, ptr %95, align 4
  %98 = load i32, ptr %9, align 4
  %99 = load i8, ptr @caam_little_end, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = tail call i32 @llvm.bswap.i32(i32 %98) #10
  %102 = select i1 %100, i32 %101, i32 %98
  %103 = add i32 %102, 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %105 = select i1 %100, i32 %104, i32 %103
  store i32 %105, ptr %9, align 4
  %106 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %121, label %111, !prof !13

111:                                              ; preds = %52
  %112 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %117 [
    i32 0, label %121
    i32 1, label %114
  ]

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.scatterlist, ptr %109, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  br label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.aead_edesc, ptr %1, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %55
  br label %121

121:                                              ; preds = %117, %114, %111, %52
  %122 = phi i32 [ 0, %114 ], [ 16777216, %117 ], [ %53, %52 ], [ %113, %111 ]
  %123 = phi i32 [ %116, %114 ], [ %120, %117 ], [ %54, %52 ], [ %113, %111 ]
  %124 = load i32, ptr %56, align 8
  %125 = load i32, ptr %58, align 4
  br i1 %3, label %126, label %174

126:                                              ; preds = %121
  %127 = add i32 %124, %8
  %128 = add i32 %127, %125
  %129 = or i32 %122, -130023424
  %130 = lshr i32 %104, 24
  %131 = select i1 %100, i32 %130, i32 %103
  %132 = and i32 %131, 127
  %133 = getelementptr i32, ptr %9, i32 %132
  %134 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  %135 = select i1 %100, i32 %134, i32 %129
  store i32 %135, ptr %133, align 4
  %136 = load i32, ptr %9, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #10
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %140, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  %143 = select i1 %138, i32 %142, i32 %141
  store i32 %143, ptr %9, align 4
  %144 = lshr i32 %142, 24
  %145 = select i1 %138, i32 %144, i32 %141
  %146 = and i32 %145, 127
  %147 = getelementptr i32, ptr %9, i32 %146
  %148 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  %149 = select i1 %138, i32 %148, i32 %123
  store i32 %149, ptr %147, align 4
  %150 = load i32, ptr %9, align 4
  %151 = load i8, ptr @caam_little_end, align 1, !range !8
  %152 = icmp eq i8 %151, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %150) #10
  %154 = select i1 %152, i32 %153, i32 %150
  %155 = load i32, ptr @caam_ptr_sz, align 4
  %156 = lshr i32 %155, 2
  %157 = add i32 %154, %156
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #10
  %159 = select i1 %152, i32 %158, i32 %157
  store i32 %159, ptr %9, align 4
  %160 = lshr i32 %158, 24
  %161 = select i1 %152, i32 %160, i32 %157
  %162 = and i32 %161, 127
  %163 = getelementptr i32, ptr %9, i32 %162
  %164 = tail call i32 @llvm.bswap.i32(i32 %128) #10
  %165 = select i1 %152, i32 %164, i32 %128
  store i32 %165, ptr %163, align 4
  %166 = load i32, ptr %9, align 4
  %167 = load i8, ptr @caam_little_end, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = tail call i32 @llvm.bswap.i32(i32 %166) #10
  %170 = select i1 %168, i32 %169, i32 %166
  %171 = add i32 %170, 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #10
  %173 = select i1 %168, i32 %172, i32 %171
  br label %222

174:                                              ; preds = %121
  %175 = sub i32 %124, %8
  %176 = add i32 %175, %125
  %177 = or i32 %122, -130023424
  %178 = lshr i32 %104, 24
  %179 = select i1 %100, i32 %178, i32 %103
  %180 = and i32 %179, 127
  %181 = getelementptr i32, ptr %9, i32 %180
  %182 = tail call i32 @llvm.bswap.i32(i32 %177) #10
  %183 = select i1 %100, i32 %182, i32 %177
  store i32 %183, ptr %181, align 4
  %184 = load i32, ptr %9, align 4
  %185 = load i8, ptr @caam_little_end, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  %187 = tail call i32 @llvm.bswap.i32(i32 %184) #10
  %188 = select i1 %186, i32 %187, i32 %184
  %189 = add i32 %188, 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #10
  %191 = select i1 %186, i32 %190, i32 %189
  store i32 %191, ptr %9, align 4
  %192 = lshr i32 %190, 24
  %193 = select i1 %186, i32 %192, i32 %189
  %194 = and i32 %193, 127
  %195 = getelementptr i32, ptr %9, i32 %194
  %196 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  %197 = select i1 %186, i32 %196, i32 %123
  store i32 %197, ptr %195, align 4
  %198 = load i32, ptr %9, align 4
  %199 = load i8, ptr @caam_little_end, align 1, !range !8
  %200 = icmp eq i8 %199, 0
  %201 = tail call i32 @llvm.bswap.i32(i32 %198) #10
  %202 = select i1 %200, i32 %201, i32 %198
  %203 = load i32, ptr @caam_ptr_sz, align 4
  %204 = lshr i32 %203, 2
  %205 = add i32 %202, %204
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #10
  %207 = select i1 %200, i32 %206, i32 %205
  store i32 %207, ptr %9, align 4
  %208 = lshr i32 %206, 24
  %209 = select i1 %200, i32 %208, i32 %205
  %210 = and i32 %209, 127
  %211 = getelementptr i32, ptr %9, i32 %210
  %212 = tail call i32 @llvm.bswap.i32(i32 %176) #10
  %213 = select i1 %200, i32 %212, i32 %176
  store i32 %213, ptr %211, align 4
  %214 = load i32, ptr %9, align 4
  %215 = load i8, ptr @caam_little_end, align 1, !range !8
  %216 = icmp eq i8 %215, 0
  %217 = tail call i32 @llvm.bswap.i32(i32 %214) #10
  %218 = select i1 %216, i32 %217, i32 %214
  %219 = add i32 %218, 1
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #10
  %221 = select i1 %216, i32 %220, i32 %219
  br label %222

222:                                              ; preds = %174, %126
  %223 = phi i32 [ %221, %174 ], [ %173, %126 ]
  store i32 %223, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_crypt_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.aead_request, ptr %3, i32 0, i32 7
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.aead_edesc, ptr %8, i32 0, i32 5
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #10
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ 0, %4 ]
  tail call fastcc void @aead_unmap(ptr noundef %0, ptr noundef %8, ptr noundef %3)
  tail call void @kfree(ptr noundef %8) #10
  br i1 %11, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef %3, i32 noundef %16) #10
  br label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %7, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  tail call void @crypto_finalize_aead_request(ptr noundef %22, ptr noundef %3, i32 noundef %16) #10
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_split_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aead_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -40
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8176
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr i8, ptr %3, i32 392
  %17 = load i8, ptr %16, align 8, !range !8
  %18 = icmp ne i8 %17, 0
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %250, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %28 = mul i32 %27, -3
  %29 = add i32 %28, 228
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 1
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %29, %32
  %34 = icmp ugt i32 %33, 55
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %37 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 12
  store ptr %36, ptr %37, align 4
  br label %42

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 8
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i8 [ 1, %35 ], [ 0, %38 ]
  %44 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 16
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  %46 = getelementptr inbounds %struct.caam_drv_private, ptr %11, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  tail call void @cnstr_shdsc_aead_null_encap(ptr noundef %45, ptr noundef %30, i32 noundef %20, i32 noundef %47) #10
  %48 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %45, align 4
  %51 = load i8, ptr @caam_little_end, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = lshr i32 %50, 24
  %54 = select i1 %52, i32 %53, i32 %50
  %55 = shl i32 %54, 2
  %56 = and i32 %55, 508
  %57 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %58 = load i32, ptr %57, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %49, i32 noundef %56, i32 noundef %58) #10
  %59 = icmp ugt i32 %33, 63
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %62 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 12
  store ptr %61, ptr %62, align 4
  br label %67

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 8
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i8 [ 1, %60 ], [ 0, %63 ]
  store i8 %68, ptr %44, align 4
  %69 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %70 = load i32, ptr %19, align 4
  %71 = load i32, ptr %46, align 4
  tail call void @cnstr_shdsc_aead_null_decap(ptr noundef %69, ptr noundef %30, i32 noundef %70, i32 noundef %71) #10
  %72 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  br label %237

73:                                               ; preds = %22
  br i1 %18, label %78, label %74

74:                                               ; preds = %73
  %75 = select i1 %15, i32 16, i32 0
  %76 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 4
  %77 = load i32, ptr %76, align 4
  br label %85

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %80 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = getelementptr i8, ptr %82, i32 %24
  %84 = getelementptr i8, ptr %83, i32 -4
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi i32 [ %81, %78 ], [ %77, %74 ]
  %87 = phi i32 [ 20, %78 ], [ %75, %74 ]
  %88 = phi ptr [ %84, %78 ], [ null, %74 ]
  %89 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 4, i32 3, i32 3
  %90 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 1
  %91 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 12
  store ptr %89, ptr %91, align 4
  %92 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 40
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 8
  store i32 %93, ptr %94, align 4
  %95 = getelementptr i8, ptr %89, i32 %86
  %96 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 36
  store ptr %95, ptr %96, align 4
  %97 = add i32 %86, %93
  %98 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 32
  store i32 %97, ptr %98, align 4
  %99 = getelementptr i8, ptr %3, i32 393
  %100 = load i8, ptr %99, align 1, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %149

102:                                              ; preds = %85
  %103 = load i32, ptr @caam_ptr_sz, align 4
  %104 = mul i32 %103, -3
  %105 = select i1 %18, i32 132, i32 148
  %106 = add i32 %105, %104
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = sub i32 %106, %86
  %110 = sub i32 %109, %103
  %111 = sub i32 %106, %103
  %112 = xor i32 %110, -1
  %113 = lshr i32 %112, 31
  %114 = icmp slt i32 %110, 0
  %115 = select i1 %114, i32 %111, i32 %109
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = sub i32 %115, %24
  %119 = icmp sgt i32 %118, -1
  %120 = sub i32 %115, %103
  %121 = select i1 %119, i32 %118, i32 %120
  %122 = or i32 %113, 2
  %123 = select i1 %119, i32 %122, i32 %113
  br label %124

124:                                              ; preds = %117, %108, %102
  %125 = phi i32 [ 0, %102 ], [ %113, %108 ], [ %123, %117 ]
  %126 = phi i32 [ %106, %102 ], [ %115, %108 ], [ %121, %117 ]
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %250, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 16
  %130 = trunc i32 %125 to i8
  %131 = and i8 %130, 1
  store i8 %131, ptr %129, align 4
  %132 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 40
  %133 = lshr i8 %130, 1
  %134 = and i8 %133, 1
  store i8 %134, ptr %132, align 4
  %135 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  %136 = getelementptr inbounds %struct.caam_drv_private, ptr %11, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  tail call void @cnstr_shdsc_aead_encap(ptr noundef %135, ptr noundef %12, ptr noundef %90, i32 noundef %5, i32 noundef %20, i1 noundef zeroext %18, ptr noundef %88, i32 noundef %87, i1 noundef zeroext false, i32 noundef %137) #10
  %138 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %139 = load i32, ptr %138, align 4
  %140 = load i32, ptr %135, align 4
  %141 = load i8, ptr @caam_little_end, align 1, !range !8
  %142 = icmp eq i8 %141, 0
  %143 = lshr i32 %140, 24
  %144 = select i1 %142, i32 %143, i32 %140
  %145 = shl i32 %144, 2
  %146 = and i32 %145, 508
  %147 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %148 = load i32, ptr %147, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %139, i32 noundef %146, i32 noundef %148) #10
  br label %149

149:                                              ; preds = %128, %85
  %150 = select i1 %18, i32 -16, i32 0
  %151 = load i32, ptr @caam_ptr_sz, align 4
  %152 = mul i32 %151, -3
  %153 = add nsw i32 %150, 132
  %154 = add i32 %153, %152
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %149
  %157 = sub i32 %154, %86
  %158 = sub i32 %157, %151
  %159 = sub i32 %154, %151
  %160 = xor i32 %158, -1
  %161 = lshr i32 %160, 31
  %162 = icmp slt i32 %158, 0
  %163 = select i1 %162, i32 %159, i32 %157
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = sub i32 %163, %24
  %167 = icmp sgt i32 %166, -1
  %168 = sub i32 %163, %151
  %169 = select i1 %167, i32 %166, i32 %168
  %170 = or i32 %161, 2
  %171 = select i1 %167, i32 %170, i32 %161
  br label %172

172:                                              ; preds = %165, %156, %149
  %173 = phi i32 [ 0, %149 ], [ %161, %156 ], [ %171, %165 ]
  %174 = phi i32 [ %154, %149 ], [ %163, %156 ], [ %169, %165 ]
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %250, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 16
  %178 = trunc i32 %173 to i8
  %179 = and i8 %178, 1
  store i8 %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 40
  %181 = lshr i8 %178, 1
  %182 = and i8 %181, 1
  store i8 %182, ptr %180, align 4
  %183 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %184 = load i32, ptr %19, align 4
  %185 = load i8, ptr %99, align 1, !range !8
  %186 = icmp ne i8 %185, 0
  %187 = getelementptr inbounds %struct.caam_drv_private, ptr %11, i32 0, i32 11
  %188 = load i32, ptr %187, align 4
  tail call void @cnstr_shdsc_aead_decap(ptr noundef %183, ptr noundef %12, ptr noundef %90, i32 noundef %5, i32 noundef %184, i1 noundef zeroext %186, i1 noundef zeroext %18, ptr noundef %88, i32 noundef %87, i1 noundef zeroext false, i32 noundef %188) #10
  %189 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  %190 = load i32, ptr %189, align 4
  %191 = load i32, ptr %183, align 4
  %192 = load i8, ptr @caam_little_end, align 1, !range !8
  %193 = icmp eq i8 %192, 0
  %194 = lshr i32 %191, 24
  %195 = select i1 %193, i32 %194, i32 %191
  %196 = shl i32 %195, 2
  %197 = and i32 %196, 508
  %198 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %199 = load i32, ptr %198, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %190, i32 noundef %197, i32 noundef %199) #10
  %200 = load i8, ptr %99, align 1, !range !8
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %250, label %202

202:                                              ; preds = %176
  %203 = load i32, ptr @caam_ptr_sz, align 4
  %204 = mul i32 %203, -3
  %205 = add nsw i32 %150, 116
  %206 = add i32 %205, %204
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %202
  %209 = sub i32 %206, %86
  %210 = sub i32 %209, %203
  %211 = sub i32 %206, %203
  %212 = xor i32 %210, -1
  %213 = lshr i32 %212, 31
  %214 = icmp slt i32 %210, 0
  %215 = select i1 %214, i32 %211, i32 %209
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %208
  %218 = sub i32 %215, %24
  %219 = icmp sgt i32 %218, -1
  %220 = sub i32 %215, %203
  %221 = select i1 %219, i32 %218, i32 %220
  %222 = or i32 %213, 2
  %223 = select i1 %219, i32 %222, i32 %213
  br label %224

224:                                              ; preds = %217, %208, %202
  %225 = phi i32 [ 0, %202 ], [ %213, %208 ], [ %223, %217 ]
  %226 = phi i32 [ %206, %202 ], [ %215, %208 ], [ %221, %217 ]
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %250, label %228

228:                                              ; preds = %224
  %229 = trunc i32 %225 to i8
  %230 = and i8 %229, 1
  store i8 %230, ptr %177, align 4
  %231 = lshr i8 %229, 1
  %232 = and i8 %231, 1
  store i8 %232, ptr %180, align 4
  %233 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  %234 = load i32, ptr %19, align 4
  %235 = load i32, ptr %187, align 4
  tail call void @cnstr_shdsc_aead_givencap(ptr noundef %233, ptr noundef %12, ptr noundef %90, i32 noundef %5, i32 noundef %234, i1 noundef zeroext %18, ptr noundef %88, i32 noundef %87, i1 noundef zeroext false, i32 noundef %235) #10
  %236 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  br label %237

237:                                              ; preds = %228, %67
  %238 = phi ptr [ %72, %67 ], [ %236, %228 ]
  %239 = phi ptr [ %69, %67 ], [ %233, %228 ]
  %240 = phi ptr [ %57, %67 ], [ %198, %228 ]
  %241 = load i32, ptr %238, align 4
  %242 = load i32, ptr %239, align 4
  %243 = load i8, ptr @caam_little_end, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  %245 = lshr i32 %242, 24
  %246 = select i1 %244, i32 %245, i32 %242
  %247 = shl i32 %246, 2
  %248 = and i32 %247, 508
  %249 = load i32, ptr %240, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %241, i32 noundef %248, i32 noundef %249) #10
  br label %250

250:                                              ; preds = %237, %224, %176, %172, %124, %1
  %251 = phi i32 [ 0, %1 ], [ -22, %124 ], [ -22, %172 ], [ -22, %224 ], [ 0, %176 ], [ 0, %237 ]
  ret i32 %251
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_encap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_decap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_givencap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_null_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_null_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aead_crypt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 704
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !11
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, 3
  %10 = add i32 %9, 48
  %11 = call fastcc ptr @aead_edesc_alloc(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3, i1 noundef zeroext %1)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = ptrtoint ptr %11 to i32
  br label %166

15:                                               ; preds = %2
  %16 = load i8, ptr %3, align 1, !range !8
  %17 = icmp ne i8 %16, 0
  %18 = load ptr, ptr %4, align 16
  %19 = getelementptr i8, ptr %18, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -40
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr i8, ptr %18, i32 704
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %18, i32 732
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8176
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr i8, ptr %20, i32 392
  %34 = load i8, ptr %33, align 8, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.aead_edesc, ptr %11, i32 0, i32 8
  tail call fastcc void @init_aead_job(ptr noundef %0, ptr noundef %11, i1 noundef zeroext %17, i1 noundef zeroext %1) #10
  %37 = getelementptr inbounds %struct.caam_drv_private, ptr %28, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, 3
  %40 = load i32, ptr %36, align 4
  %41 = load i8, ptr @caam_little_end, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  %43 = lshr i32 %40, 24
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = and i32 %44, 127
  %46 = getelementptr i32, ptr %36, i32 %45
  br i1 %39, label %47, label %73

47:                                               ; preds = %15
  %48 = select i1 %42, i32 71503016, i32 -1475591420
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %36, align 4
  %50 = load i8, ptr @caam_little_end, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = add i32 %53, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = select i1 %51, i32 %55, i32 %54
  store i32 %56, ptr %36, align 4
  %57 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %55, 24
  %60 = select i1 %51, i32 %59, i32 %54
  %61 = and i32 %60, 127
  %62 = getelementptr i32, ptr %36, i32 %61
  %63 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %64 = select i1 %51, i32 %63, i32 %58
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr %36, align 4
  %66 = load i8, ptr @caam_little_end, align 1, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = add i32 %69, 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  %72 = select i1 %67, i32 %71, i32 %70
  br label %99

73:                                               ; preds = %15
  %74 = select i1 %42, i32 71765160, i32 -1475590396
  store i32 %74, ptr %46, align 4
  %75 = load i32, ptr %36, align 4
  %76 = load i8, ptr @caam_little_end, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %79 = select i1 %77, i32 %78, i32 %75
  %80 = add i32 %79, 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  %82 = select i1 %77, i32 %81, i32 %80
  store i32 %82, ptr %36, align 4
  %83 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %81, 24
  %86 = select i1 %77, i32 %85, i32 %80
  %87 = and i32 %86, 127
  %88 = getelementptr i32, ptr %36, i32 %87
  %89 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  %90 = select i1 %77, i32 %89, i32 %84
  store i32 %90, ptr %88, align 4
  %91 = load i32, ptr %36, align 4
  %92 = load i8, ptr @caam_little_end, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  %95 = select i1 %93, i32 %94, i32 %91
  %96 = add i32 %95, 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = select i1 %93, i32 %97, i32 %96
  br label %99

99:                                               ; preds = %73, %47
  %100 = phi i8 [ %92, %73 ], [ %66, %47 ]
  %101 = phi i32 [ %98, %73 ], [ %72, %47 ]
  store i32 %101, ptr %36, align 4
  %102 = icmp eq i32 %22, 0
  br i1 %102, label %146, label %103

103:                                              ; preds = %99
  %104 = xor i1 %1, true
  %105 = or i1 %35, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr i8, ptr %20, i32 393
  %108 = load i8, ptr %107, align 1, !range !8
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %106, %103
  %111 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %112 = load ptr, ptr %111, align 32
  %113 = select i1 %32, i32 35655680, i32 35651584
  %114 = select i1 %35, i32 %113, i32 35656704
  %115 = or i32 %22, %114
  %116 = or i32 %115, 276824064
  %117 = icmp eq i8 %100, 0
  %118 = lshr i32 %101, 24
  %119 = select i1 %117, i32 %118, i32 %101
  %120 = and i32 %119, 127
  %121 = getelementptr i32, ptr %36, i32 %120
  %122 = tail call i32 @llvm.bswap.i32(i32 %116) #10
  %123 = select i1 %117, i32 %122, i32 %116
  store i32 %123, ptr %121, align 4
  %124 = load i32, ptr %36, align 4
  %125 = load i8, ptr @caam_little_end, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  %128 = select i1 %126, i32 %127, i32 %124
  %129 = add i32 %128, 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  %131 = select i1 %126, i32 %130, i32 %129
  store i32 %131, ptr %36, align 4
  %132 = lshr i32 %130, 24
  %133 = select i1 %126, i32 %132, i32 %129
  %134 = and i32 %133, 127
  %135 = getelementptr i32, ptr %36, i32 %134
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %135, ptr align 1 %112, i32 %22, i1 false) #10
  %136 = load i32, ptr %36, align 4
  %137 = load i8, ptr @caam_little_end, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %136) #10
  %140 = select i1 %138, i32 %139, i32 %136
  %141 = add i32 %22, 3
  %142 = lshr i32 %141, 2
  %143 = add i32 %140, %142
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  %145 = select i1 %138, i32 %144, i32 %143
  store i32 %145, ptr %36, align 4
  br label %146

146:                                              ; preds = %110, %106, %99
  %147 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 1024
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %155, i32 0, i32 18
  %157 = load ptr, ptr %156, align 4
  %158 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %157, ptr noundef %0) #10
  br label %162

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.aead_edesc, ptr %148, i32 0, i32 8
  %161 = tail call i32 @caam_jr_enqueue(ptr noundef %7, ptr noundef %160, ptr noundef nonnull @aead_crypt_done, ptr noundef %0) #10
  br label %162

162:                                              ; preds = %159, %153
  %163 = phi i32 [ %158, %153 ], [ %161, %159 ]
  switch i32 %163, label %164 [
    i32 -16, label %166
    i32 -115, label %166
  ]

164:                                              ; preds = %162
  tail call fastcc void @aead_unmap(ptr noundef %7, ptr noundef %148, ptr noundef %0) #10
  %165 = load ptr, ptr %147, align 4
  tail call void @kfree(ptr noundef %165) #10
  br label %166

166:                                              ; preds = %164, %162, %162, %13
  %167 = phi i32 [ %14, %13 ], [ %163, %162 ], [ %163, %162 ], [ %163, %164 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @chachapoly_set_sh_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 20
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 2, i32 44
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  %18 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6, i32 1
  tail call void @cnstr_shdsc_chachapoly(ptr noundef %17, ptr noundef %8, ptr noundef %18, i32 noundef %7, i32 noundef %14, i1 noundef zeroext true, i1 noundef zeroext false) #10
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %17, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = lshr i32 %21, 24
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = shl i32 %25, 2
  %27 = and i32 %26, 508
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %29 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %20, i32 noundef %27, i32 noundef %29) #10
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 2, i32 3, i32 4, i32 28
  %31 = load i32, ptr %13, align 4
  tail call void @cnstr_shdsc_chachapoly(ptr noundef %30, ptr noundef %8, ptr noundef %18, i32 noundef %7, i32 noundef %31, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 36
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %30, align 4
  %35 = load i8, ptr @caam_little_end, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = lshr i32 %34, 24
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = shl i32 %38, 2
  %40 = and i32 %39, 508
  %41 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %33, i32 noundef %40, i32 noundef %41) #10
  br label %42

42:                                               ; preds = %16, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_chachapoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @chachapoly_crypt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 704
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !11
  %8 = load i32, ptr @caam_ptr_sz, align 4
  %9 = mul i32 %8, 3
  %10 = add i32 %9, 52
  %11 = call fastcc ptr @aead_edesc_alloc(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %3, i1 noundef zeroext %1)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = ptrtoint ptr %11 to i32
  br label %116

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.aead_edesc, ptr %11, i32 0, i32 8
  %17 = load i8, ptr %3, align 1, !range !8
  %18 = icmp ne i8 %17, 0
  %19 = load ptr, ptr %4, align 16
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -40
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  tail call fastcc void @init_aead_job(ptr noundef %0, ptr noundef %11, i1 noundef zeroext %18, i1 noundef zeroext %1) #10
  %26 = icmp eq i32 %23, 12
  %27 = select i1 %26, i32 0, i32 %23
  %28 = sub i32 %25, %27
  %29 = select i1 %26, i32 35652608, i32 35653632
  %30 = load i32, ptr %16, align 4
  %31 = load i8, ptr @caam_little_end, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = lshr i32 %30, 24
  %34 = select i1 %32, i32 %33, i32 %30
  %35 = and i32 %34, 127
  %36 = getelementptr i32, ptr %16, i32 %35
  %37 = select i1 %32, i32 71503016, i32 -1475591420
  store i32 %37, ptr %36, align 4
  %38 = load i32, ptr %16, align 4
  %39 = load i8, ptr @caam_little_end, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %42 = select i1 %40, i32 %41, i32 %38
  %43 = add i32 %42, 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = select i1 %40, i32 %44, i32 %43
  store i32 %45, ptr %16, align 4
  %46 = lshr i32 %44, 24
  %47 = select i1 %40, i32 %46, i32 %43
  %48 = and i32 %47, 127
  %49 = getelementptr i32, ptr %16, i32 %48
  %50 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  %51 = select i1 %40, i32 %50, i32 %28
  store i32 %51, ptr %49, align 4
  %52 = load i32, ptr %16, align 4
  %53 = load i8, ptr @caam_little_end, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  %56 = select i1 %54, i32 %55, i32 %52
  %57 = add i32 %56, 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = select i1 %54, i32 %58, i32 %57
  store i32 %59, ptr %16, align 4
  %60 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 32
  %62 = or i32 %23, %29
  %63 = or i32 %62, 276824064
  %64 = lshr i32 %58, 24
  %65 = select i1 %54, i32 %64, i32 %57
  %66 = and i32 %65, 127
  %67 = getelementptr i32, ptr %16, i32 %66
  %68 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %69 = select i1 %54, i32 %68, i32 %63
  store i32 %69, ptr %67, align 4
  %70 = load i32, ptr %16, align 4
  %71 = load i8, ptr @caam_little_end, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  %74 = select i1 %72, i32 %73, i32 %70
  %75 = add i32 %74, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %77 = select i1 %72, i32 %76, i32 %75
  store i32 %77, ptr %16, align 4
  %78 = icmp eq i32 %23, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %15
  %80 = lshr i32 %76, 24
  %81 = select i1 %72, i32 %80, i32 %75
  %82 = and i32 %81, 127
  %83 = getelementptr i32, ptr %16, i32 %82
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %83, ptr align 1 %61, i32 %23, i1 false) #10
  %84 = load i32, ptr %16, align 4
  %85 = load i8, ptr @caam_little_end, align 1, !range !8
  br label %86

86:                                               ; preds = %79, %15
  %87 = phi i8 [ %71, %15 ], [ %85, %79 ]
  %88 = phi i32 [ %77, %15 ], [ %84, %79 ]
  %89 = icmp eq i8 %87, 0
  %90 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %91 = select i1 %89, i32 %90, i32 %88
  %92 = add i32 %23, 3
  %93 = lshr i32 %92, 2
  %94 = add i32 %91, %93
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = select i1 %89, i32 %95, i32 %94
  store i32 %96, ptr %16, align 4
  %97 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1024
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %105, i32 0, i32 18
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %107, ptr noundef %0) #10
  br label %112

109:                                              ; preds = %86
  %110 = getelementptr inbounds %struct.aead_edesc, ptr %98, i32 0, i32 8
  %111 = tail call i32 @caam_jr_enqueue(ptr noundef %7, ptr noundef %110, ptr noundef nonnull @aead_crypt_done, ptr noundef %0) #10
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi i32 [ %108, %103 ], [ %111, %109 ]
  switch i32 %113, label %114 [
    i32 -16, label %116
    i32 -115, label %116
  ]

114:                                              ; preds = %112
  tail call fastcc void @aead_unmap(ptr noundef %7, ptr noundef %98, ptr noundef %0) #10
  %115 = load ptr, ptr %97, align 4
  tail call void @kfree(ptr noundef %115) #10
  br label %116

116:                                              ; preds = %114, %112, %112, %13
  %117 = phi i32 [ %14, %13 ], [ %113, %112 ], [ %113, %112 ], [ %113, %114 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aes_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %41 [
    i32 16, label %4
    i32 24, label %4
    i32 32, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 -36
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 392
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_skcipher_encap(ptr noundef %18, ptr noundef %14, i32 noundef %10, i1 noundef zeroext %13, i32 noundef 0) #10
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = lshr i32 %21, 24
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = shl i32 %25, 2
  %27 = and i32 %26, 508
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %29 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %20, i32 noundef %27, i32 noundef %29) #10
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  tail call void @cnstr_shdsc_skcipher_decap(ptr noundef %30, ptr noundef %14, i32 noundef %10, i1 noundef zeroext %13, i32 noundef 0) #10
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = lshr i32 %33, 24
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = shl i32 %37, 2
  %39 = and i32 %38, 508
  %40 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %32, i32 noundef %39, i32 noundef %40) #10
  br label %41

41:                                               ; preds = %4, %3
  %42 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_encrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @skcipher_crypt(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_decrypt(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @skcipher_crypt(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @des3_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #10
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %9, %11
  %17 = icmp eq i32 %13, %15
  %18 = and i1 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %11, %21
  %25 = icmp ne i32 %15, %23
  %26 = or i1 %24, %25
  %27 = or i1 %8, %26
  br i1 %27, label %30, label %29

28:                                               ; preds = %3
  br i1 %8, label %30, label %29

29:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %67

30:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 -36
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %32, i32 392
  %38 = load i8, ptr %37, align 8, !range !8
  %39 = icmp ne i8 %38, 0
  %40 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %41 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  call void @cnstr_shdsc_skcipher_encap(ptr noundef %44, ptr noundef %40, i32 noundef %36, i1 noundef zeroext %39, i32 noundef 0) #10
  %45 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %44, align 4
  %48 = load i8, ptr @caam_little_end, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  %50 = lshr i32 %47, 24
  %51 = select i1 %49, i32 %50, i32 %47
  %52 = shl i32 %51, 2
  %53 = and i32 %52, 508
  %54 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %55 = load i32, ptr %54, align 4
  call void @dma_sync_single_for_device(ptr noundef %34, i32 noundef %46, i32 noundef %53, i32 noundef %55) #10
  %56 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  call void @cnstr_shdsc_skcipher_decap(ptr noundef %56, ptr noundef %40, i32 noundef %36, i1 noundef zeroext %39, i32 noundef 0) #10
  %57 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %56, align 4
  %60 = load i8, ptr @caam_little_end, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  %62 = lshr i32 %59, 24
  %63 = select i1 %61, i32 %62, i32 %59
  %64 = shl i32 %63, 2
  %65 = and i32 %64, 508
  %66 = load i32, ptr %54, align 4
  call void @dma_sync_single_for_device(ptr noundef %34, i32 noundef %58, i32 noundef %65, i32 noundef %66) #10
  br label %67

67:                                               ; preds = %30, %29
  %68 = phi i32 [ -126, %29 ], [ 0, %30 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @des_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.des_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #10, !annotation !11
  %5 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #10
  %6 = icmp eq i32 %5, -126
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %5, %3 ], [ %12, %7 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %18, i32 392
  %24 = load i8, ptr %23, align 8, !range !8
  %25 = icmp ne i8 %24, 0
  %26 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %27 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  call void @cnstr_shdsc_skcipher_encap(ptr noundef %30, ptr noundef %26, i32 noundef %22, i1 noundef zeroext %25, i32 noundef 0) #10
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = lshr i32 %33, 24
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = shl i32 %37, 2
  %39 = and i32 %38, 508
  %40 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %41 = load i32, ptr %40, align 4
  call void @dma_sync_single_for_device(ptr noundef %20, i32 noundef %32, i32 noundef %39, i32 noundef %41) #10
  %42 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  call void @cnstr_shdsc_skcipher_decap(ptr noundef %42, ptr noundef %26, i32 noundef %22, i1 noundef zeroext %25, i32 noundef 0) #10
  %43 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  %46 = load i8, ptr @caam_little_end, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = lshr i32 %45, 24
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = shl i32 %49, 2
  %51 = and i32 %50, 508
  %52 = load i32, ptr %40, align 4
  call void @dma_sync_single_for_device(ptr noundef %20, i32 noundef %44, i32 noundef %51, i32 noundef %52) #10
  br label %53

53:                                               ; preds = %16, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctr_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %41 [
    i32 16, label %4
    i32 24, label %4
    i32 32, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 -36
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 392
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_skcipher_encap(ptr noundef %18, ptr noundef %14, i32 noundef %10, i1 noundef zeroext %13, i32 noundef 16) #10
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = load i8, ptr @caam_little_end, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = lshr i32 %21, 24
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = shl i32 %25, 2
  %27 = and i32 %26, 508
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %29 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %20, i32 noundef %27, i32 noundef %29) #10
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  tail call void @cnstr_shdsc_skcipher_decap(ptr noundef %30, ptr noundef %14, i32 noundef %10, i1 noundef zeroext %13, i32 noundef 16) #10
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = load i8, ptr @caam_little_end, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = lshr i32 %33, 24
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = shl i32 %37, 2
  %39 = and i32 %38, 508
  %40 = load i32, ptr %28, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %32, i32 noundef %39, i32 noundef %40) #10
  br label %41

41:                                               ; preds = %4, %3
  %42 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc3686_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %42 [
    i32 20, label %4
    i32 28, label %4
    i32 36, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = add nsw i32 %2, -4
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 -36
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 392
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_skcipher_encap(ptr noundef %19, ptr noundef %15, i32 noundef %11, i1 noundef zeroext %14, i32 noundef 20) #10
  %20 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %19, align 4
  %23 = load i8, ptr @caam_little_end, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = lshr i32 %22, 24
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = shl i32 %26, 2
  %28 = and i32 %27, 508
  %29 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %30 = load i32, ptr %29, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %9, i32 noundef %21, i32 noundef %28, i32 noundef %30) #10
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  tail call void @cnstr_shdsc_skcipher_decap(ptr noundef %31, ptr noundef %15, i32 noundef %11, i1 noundef zeroext %14, i32 noundef 20) #10
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = load i8, ptr @caam_little_end, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = lshr i32 %34, 24
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = shl i32 %38, 2
  %40 = and i32 %39, 508
  %41 = load i32, ptr %29, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %9, i32 noundef %33, i32 noundef %40, i32 noundef %41) #10
  br label %42

42:                                               ; preds = %4, %3
  %43 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 64
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %2, 1
  %19 = getelementptr i8, ptr %1, i32 %18
  %20 = tail call i32 @__crypto_memneq(ptr noundef %1, ptr noundef %19, i32 noundef %18) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %17, %12
  switch i32 %2, label %23 [
    i32 64, label %25
    i32 32, label %25
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 52
  store i8 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %22, %22
  %26 = getelementptr inbounds %struct.caam_drv_private, ptr %9, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 52
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 56
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @crypto_skcipher_setkey(ptr noundef %35, ptr noundef %1, i32 noundef %2) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33, %29
  %39 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 24
  %40 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 28
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 40
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 44
  store i8 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_xts_skcipher_encap(ptr noundef %43, ptr noundef %39) #10
  %44 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %43, align 4
  %47 = load i8, ptr @caam_little_end, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = lshr i32 %46, 24
  %50 = select i1 %48, i32 %49, i32 %46
  %51 = shl i32 %50, 2
  %52 = and i32 %51, 508
  %53 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %54 = load i32, ptr %53, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %45, i32 noundef %52, i32 noundef %54) #10
  %55 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 2, i32 2, i32 4, i32 28
  tail call void @cnstr_shdsc_xts_skcipher_decap(ptr noundef %55, ptr noundef %39) #10
  %56 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 36
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %55, align 4
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = lshr i32 %58, 24
  %62 = select i1 %60, i32 %61, i32 %58
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 508
  %65 = load i32, ptr %53, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %57, i32 noundef %64, i32 noundef %65) #10
  br label %66

66:                                               ; preds = %38, %33, %17, %3
  %67 = phi i32 [ 0, %38 ], [ %36, %33 ], [ -22, %3 ], [ -22, %17 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_skcipher_encap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_skcipher_decap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_crypt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 704
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %0, align 64
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr i8, ptr %4, i32 764
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %14, label %18, label %19

18:                                               ; preds = %2
  br i1 %17, label %691, label %20

19:                                               ; preds = %2
  br i1 %17, label %67, label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds %struct.caam_drv_private, ptr %12, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 9
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %4, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 -36
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = lshr i32 %28, 1
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = load i64, ptr %32, align 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24, %20
  %36 = getelementptr i8, ptr %4, i32 760
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %24
  %43 = phi ptr [ %41, %39 ], [ %30, %24 ]
  %44 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %45 = getelementptr inbounds %struct.crypto_skcipher, ptr %16, i32 0, i32 2
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %45, ptr %46, align 16
  %47 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %52, ptr %54, align 4
  %55 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %48, ptr %55, align 4
  %56 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %57, ptr %60, align 8
  %61 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %59, ptr %61, align 4
  store i32 %13, ptr %44, align 64
  %62 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %43, ptr %62, align 4
  br i1 %1, label %63, label %65

63:                                               ; preds = %42
  %64 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %44) #10
  br label %691

65:                                               ; preds = %42
  %66 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %44) #10
  br label %691

67:                                               ; preds = %35, %19
  %68 = load i32, ptr @caam_ptr_sz, align 4
  %69 = mul i32 %68, 12
  %70 = add i32 %69, 80
  %71 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 512
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr i8, ptr %4, i32 12
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 -36
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = zext i32 %13 to i64
  %83 = tail call i32 @sg_nents_for_len(ptr noundef %81, i64 noundef %82) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88, !prof !14

85:                                               ; preds = %67
  %86 = load i32, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %86) #11
  %87 = inttoptr i32 %83 to ptr
  br label %482

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %80, align 8
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %0, align 64
  %95 = zext i32 %94 to i64
  %96 = tail call i32 @sg_nents_for_len(ptr noundef %90, i64 noundef %95) #10
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101, !prof !14

98:                                               ; preds = %93
  %99 = load i32, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %99) #11
  %100 = inttoptr i32 %96 to ptr
  br label %482

101:                                              ; preds = %93
  %102 = load ptr, ptr %80, align 8
  %103 = load ptr, ptr %89, align 4
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %111, !prof !13

105:                                              ; preds = %101, %88
  %106 = phi i32 [ %96, %101 ], [ 0, %88 ]
  %107 = phi ptr [ %102, %101 ], [ %90, %88 ]
  %108 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %107, i32 noundef %83, i32 noundef 0, i32 noundef 0) #10
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121, !prof !14

110:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #11
  br label %485

111:                                              ; preds = %101
  %112 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %102, i32 noundef %83, i32 noundef 1, i32 noundef 0) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115, !prof !14

114:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #11
  br label %485

115:                                              ; preds = %111
  %116 = load ptr, ptr %89, align 4
  %117 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %116, i32 noundef %96, i32 noundef 2, i32 noundef 0) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121, !prof !14

119:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  %120 = load ptr, ptr %80, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %120, i32 noundef %83, i32 noundef 1, i32 noundef 0) #10
  br label %485

121:                                              ; preds = %115, %105
  %122 = phi i32 [ %106, %105 ], [ %96, %115 ]
  %123 = phi i32 [ %108, %105 ], [ %112, %115 ]
  %124 = phi i32 [ 0, %105 ], [ %117, %115 ]
  %125 = icmp eq i32 %79, 0
  %126 = icmp eq i32 %123, 1
  %127 = select i1 %125, i1 %126, i1 false
  %128 = icmp ne i32 %79, 0
  %129 = zext i1 %128 to i32
  %130 = add i32 %123, %129
  %131 = select i1 %127, i32 0, i32 %130
  %132 = icmp sgt i32 %124, 1
  %133 = select i1 %128, i1 true, i1 %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %121
  %135 = load ptr, ptr %80, align 8
  %136 = load ptr, ptr %89, align 4
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = add i32 %131, 3
  %140 = and i32 %139, -4
  %141 = or i32 %140, %129
  br label %150

142:                                              ; preds = %134
  %143 = select i1 %128, i32 4, i32 3
  %144 = add i32 %124, %143
  %145 = and i32 %144, -4
  %146 = add i32 %131, %145
  br label %150

147:                                              ; preds = %121
  %148 = add i32 %131, 3
  %149 = and i32 %148, -4
  br label %150

150:                                              ; preds = %147, %142, %138
  %151 = phi i32 [ %141, %138 ], [ %146, %142 ], [ %149, %147 ]
  %152 = shl i32 %151, 4
  %153 = select i1 %75, i32 2849, i32 3521
  %154 = add i32 %69, 116
  %155 = add i32 %154, %79
  %156 = add i32 %155, %152
  %157 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %156, i32 noundef %153) #12
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %150
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #11
  %160 = load ptr, ptr %80, align 8
  %161 = load ptr, ptr %89, align 4
  %162 = icmp eq ptr %161, %160
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = icmp eq i32 %83, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %163
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %160, i32 noundef %83, i32 noundef 1, i32 noundef 0) #10
  br label %166

166:                                              ; preds = %165, %163
  %167 = icmp eq i32 %122, 0
  br i1 %167, label %485, label %168

168:                                              ; preds = %166
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %161, i32 noundef %122, i32 noundef 2, i32 noundef 0) #10
  br label %485

169:                                              ; preds = %159
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %160, i32 noundef %83, i32 noundef 0, i32 noundef 0) #10
  br label %485

170:                                              ; preds = %150
  store i32 %83, ptr %157, align 64
  %171 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 1
  store i32 %122, ptr %171, align 4
  %172 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 2
  store i32 %123, ptr %172, align 8
  %173 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 3
  store i32 %124, ptr %173, align 4
  %174 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 5
  store i32 %152, ptr %174, align 4
  %175 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 9
  %176 = getelementptr i8, ptr %175, i32 %70
  %177 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 8
  store ptr %176, ptr %177, align 32
  store ptr %157, ptr %71, align 64
  br i1 %128, label %178, label %255

178:                                              ; preds = %170
  %179 = load ptr, ptr %177, align 32
  %180 = getelementptr i8, ptr %179, i32 %152
  %181 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %180, ptr align 1 %182, i32 %79, i1 false) #10
  %183 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %180) #10
  %184 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %185 = xor i1 %184, true
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %196, !prof !14

187:                                              ; preds = %178
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %188 = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %189 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load ptr, ptr %6, align 4
  br label %194

194:                                              ; preds = %192, %187
  %195 = phi ptr [ %193, %192 ], [ %190, %187 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %188, ptr noundef %195) #10
  br label %196

196:                                              ; preds = %194, %178
  br i1 %183, label %206, label %197

197:                                              ; preds = %196
  %198 = load ptr, ptr @mem_map, align 4
  %199 = ptrtoint ptr %180 to i32
  %200 = add i32 %199, 1073741824
  %201 = lshr i32 %200, 12
  %202 = getelementptr %struct.page, ptr %198, i32 %201
  %203 = and i32 %199, 4095
  %204 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %202, i32 noundef %203, i32 noundef %79, i32 noundef 0, i32 noundef 0) #10
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %218

206:                                              ; preds = %197, %196
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21) #11
  %207 = load ptr, ptr %80, align 8
  %208 = load ptr, ptr %89, align 4
  %209 = icmp eq ptr %208, %207
  br i1 %209, label %216, label %210

210:                                              ; preds = %206
  %211 = icmp eq i32 %83, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %207, i32 noundef %83, i32 noundef 1, i32 noundef 0) #10
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq i32 %122, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %213
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %208, i32 noundef %122, i32 noundef 2, i32 noundef 0) #10
  br label %217

216:                                              ; preds = %206
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %207, i32 noundef %83, i32 noundef 0, i32 noundef 0) #10
  br label %217

217:                                              ; preds = %216, %215, %213
  tail call void @kfree(ptr noundef nonnull %157) #10
  br label %485

218:                                              ; preds = %197
  %219 = load ptr, ptr %177, align 32
  %220 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %218
  %223 = zext i32 %204 to i64
  store i64 %223, ptr %219, align 8
  %224 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %219, i32 0, i32 3
  %225 = load i16, ptr %224, align 2
  %226 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %219, i32 0, i32 1
  store i32 %79, ptr %226, align 8
  %227 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %219, i32 0, i32 2
  %228 = load i16, ptr %227, align 4
  %229 = and i16 %228, -16384
  store i16 %229, ptr %227, align 4
  %230 = and i16 %225, 16384
  store i16 %230, ptr %224, align 2
  br label %255

231:                                              ; preds = %218
  %232 = load i8, ptr @caam_imx, align 1, !range !8
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %231
  %235 = load i8, ptr @caam_little_end, align 1, !range !8
  %236 = icmp eq i8 %235, 0
  %237 = tail call i32 @llvm.bswap.i32(i32 %204) #10
  %238 = select i1 %236, i32 %237, i32 %204
  %239 = zext i32 %238 to i64
  %240 = shl nuw i64 %239, 32
  br label %247

241:                                              ; preds = %231
  %242 = zext i32 %204 to i64
  %243 = load i8, ptr @caam_little_end, align 1, !range !8
  %244 = icmp eq i8 %243, 0
  %245 = tail call i64 @llvm.bswap.i64(i64 %242) #10
  %246 = select i1 %244, i64 %245, i64 %242
  br label %247

247:                                              ; preds = %241, %234
  %248 = phi i64 [ %240, %234 ], [ %246, %241 ]
  store i64 %248, ptr %219, align 8
  %249 = load i8, ptr @caam_little_end, align 1, !range !8
  %250 = icmp eq i8 %249, 0
  %251 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %252 = select i1 %250, i32 %251, i32 %79
  %253 = getelementptr inbounds %struct.sec4_sg_entry, ptr %219, i32 0, i32 1
  store i32 %252, ptr %253, align 8
  %254 = getelementptr inbounds %struct.sec4_sg_entry, ptr %219, i32 0, i32 2
  store i32 0, ptr %254, align 4
  br label %255

255:                                              ; preds = %247, %222, %170
  %256 = phi i32 [ 0, %170 ], [ %204, %222 ], [ %204, %247 ]
  %257 = icmp eq i32 %131, 0
  br i1 %257, label %314, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %0, align 64
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %314, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %177, align 32
  %263 = getelementptr %struct.sec4_sg_entry, ptr %262, i32 %129
  %264 = load ptr, ptr %80, align 8
  br label %265

265:                                              ; preds = %309, %261
  %266 = phi ptr [ %311, %309 ], [ %264, %261 ]
  %267 = phi i32 [ %312, %309 ], [ %259, %261 ]
  %268 = phi ptr [ %310, %309 ], [ %263, %261 ]
  %269 = getelementptr inbounds %struct.scatterlist, ptr %266, i32 0, i32 4
  %270 = load i32, ptr %269, align 4
  %271 = tail call i32 @llvm.smin.i32(i32 %270, i32 %267) #10
  %272 = getelementptr inbounds %struct.scatterlist, ptr %266, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %265
  %277 = zext i32 %273 to i64
  store i64 %277, ptr %268, align 8
  %278 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %268, i32 0, i32 3
  %279 = load i16, ptr %278, align 2
  %280 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %268, i32 0, i32 1
  store i32 %271, ptr %280, align 8
  %281 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %268, i32 0, i32 2
  %282 = load i16, ptr %281, align 4
  %283 = and i16 %282, -16384
  store i16 %283, ptr %281, align 4
  %284 = and i16 %279, 16384
  store i16 %284, ptr %278, align 2
  br label %309

285:                                              ; preds = %265
  %286 = load i8, ptr @caam_imx, align 1, !range !8
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load i8, ptr @caam_little_end, align 1, !range !8
  %290 = icmp eq i8 %289, 0
  %291 = tail call i32 @llvm.bswap.i32(i32 %273) #10
  %292 = select i1 %290, i32 %291, i32 %273
  %293 = zext i32 %292 to i64
  %294 = shl nuw i64 %293, 32
  br label %301

295:                                              ; preds = %285
  %296 = zext i32 %273 to i64
  %297 = load i8, ptr @caam_little_end, align 1, !range !8
  %298 = icmp eq i8 %297, 0
  %299 = tail call i64 @llvm.bswap.i64(i64 %296) #10
  %300 = select i1 %298, i64 %299, i64 %296
  br label %301

301:                                              ; preds = %295, %288
  %302 = phi i64 [ %294, %288 ], [ %300, %295 ]
  store i64 %302, ptr %268, align 8
  %303 = load i8, ptr @caam_little_end, align 1, !range !8
  %304 = icmp eq i8 %303, 0
  %305 = tail call i32 @llvm.bswap.i32(i32 %271) #10
  %306 = select i1 %304, i32 %305, i32 %271
  %307 = getelementptr inbounds %struct.sec4_sg_entry, ptr %268, i32 0, i32 1
  store i32 %306, ptr %307, align 8
  %308 = getelementptr inbounds %struct.sec4_sg_entry, ptr %268, i32 0, i32 2
  store i32 0, ptr %308, align 4
  br label %309

309:                                              ; preds = %301, %276
  %310 = getelementptr %struct.sec4_sg_entry, ptr %268, i32 1
  %311 = tail call ptr @sg_next(ptr noundef %266) #10
  %312 = sub i32 %267, %271
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %265

314:                                              ; preds = %309, %258, %255
  %315 = load ptr, ptr %80, align 8
  %316 = load ptr, ptr %89, align 4
  %317 = icmp eq ptr %315, %316
  %318 = xor i1 %133, true
  %319 = select i1 %317, i1 true, i1 %318
  br i1 %319, label %375, label %320

320:                                              ; preds = %314
  %321 = load i32, ptr %0, align 64
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %375, label %323

323:                                              ; preds = %320
  %324 = load ptr, ptr %177, align 32
  %325 = getelementptr %struct.sec4_sg_entry, ptr %324, i32 %131
  br label %326

326:                                              ; preds = %370, %323
  %327 = phi ptr [ %372, %370 ], [ %316, %323 ]
  %328 = phi i32 [ %373, %370 ], [ %321, %323 ]
  %329 = phi ptr [ %371, %370 ], [ %325, %323 ]
  %330 = getelementptr inbounds %struct.scatterlist, ptr %327, i32 0, i32 4
  %331 = load i32, ptr %330, align 4
  %332 = tail call i32 @llvm.smin.i32(i32 %331, i32 %328) #10
  %333 = getelementptr inbounds %struct.scatterlist, ptr %327, i32 0, i32 3
  %334 = load i32, ptr %333, align 4
  %335 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %326
  %338 = zext i32 %334 to i64
  store i64 %338, ptr %329, align 8
  %339 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %329, i32 0, i32 3
  %340 = load i16, ptr %339, align 2
  %341 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %329, i32 0, i32 1
  store i32 %332, ptr %341, align 8
  %342 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %329, i32 0, i32 2
  %343 = load i16, ptr %342, align 4
  %344 = and i16 %343, -16384
  store i16 %344, ptr %342, align 4
  %345 = and i16 %340, 16384
  store i16 %345, ptr %339, align 2
  br label %370

346:                                              ; preds = %326
  %347 = load i8, ptr @caam_imx, align 1, !range !8
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %346
  %350 = load i8, ptr @caam_little_end, align 1, !range !8
  %351 = icmp eq i8 %350, 0
  %352 = tail call i32 @llvm.bswap.i32(i32 %334) #10
  %353 = select i1 %351, i32 %352, i32 %334
  %354 = zext i32 %353 to i64
  %355 = shl nuw i64 %354, 32
  br label %362

356:                                              ; preds = %346
  %357 = zext i32 %334 to i64
  %358 = load i8, ptr @caam_little_end, align 1, !range !8
  %359 = icmp eq i8 %358, 0
  %360 = tail call i64 @llvm.bswap.i64(i64 %357) #10
  %361 = select i1 %359, i64 %360, i64 %357
  br label %362

362:                                              ; preds = %356, %349
  %363 = phi i64 [ %355, %349 ], [ %361, %356 ]
  store i64 %363, ptr %329, align 8
  %364 = load i8, ptr @caam_little_end, align 1, !range !8
  %365 = icmp eq i8 %364, 0
  %366 = tail call i32 @llvm.bswap.i32(i32 %332) #10
  %367 = select i1 %365, i32 %366, i32 %332
  %368 = getelementptr inbounds %struct.sec4_sg_entry, ptr %329, i32 0, i32 1
  store i32 %367, ptr %368, align 8
  %369 = getelementptr inbounds %struct.sec4_sg_entry, ptr %329, i32 0, i32 2
  store i32 0, ptr %369, align 4
  br label %370

370:                                              ; preds = %362, %337
  %371 = getelementptr %struct.sec4_sg_entry, ptr %329, i32 1
  %372 = tail call ptr @sg_next(ptr noundef %327) #10
  %373 = sub i32 %328, %332
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %326

375:                                              ; preds = %370, %320, %314
  br i1 %128, label %376, label %415

376:                                              ; preds = %375
  %377 = load ptr, ptr %177, align 32
  %378 = getelementptr %struct.sec4_sg_entry, ptr %377, i32 %131
  %379 = getelementptr %struct.sec4_sg_entry, ptr %378, i32 %124
  %380 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %391, label %382

382:                                              ; preds = %376
  %383 = zext i32 %256 to i64
  store i64 %383, ptr %379, align 8
  %384 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %379, i32 0, i32 3
  %385 = load i16, ptr %384, align 2
  %386 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %379, i32 0, i32 1
  store i32 %79, ptr %386, align 8
  %387 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %379, i32 0, i32 2
  %388 = load i16, ptr %387, align 4
  %389 = and i16 %388, -16384
  store i16 %389, ptr %387, align 4
  %390 = and i16 %385, 16384
  store i16 %390, ptr %384, align 2
  br label %415

391:                                              ; preds = %376
  %392 = load i8, ptr @caam_imx, align 1, !range !8
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %391
  %395 = load i8, ptr @caam_little_end, align 1, !range !8
  %396 = icmp eq i8 %395, 0
  %397 = tail call i32 @llvm.bswap.i32(i32 %256) #10
  %398 = select i1 %396, i32 %397, i32 %256
  %399 = zext i32 %398 to i64
  %400 = shl nuw i64 %399, 32
  br label %407

401:                                              ; preds = %391
  %402 = zext i32 %256 to i64
  %403 = load i8, ptr @caam_little_end, align 1, !range !8
  %404 = icmp eq i8 %403, 0
  %405 = tail call i64 @llvm.bswap.i64(i64 %402) #10
  %406 = select i1 %404, i64 %405, i64 %402
  br label %407

407:                                              ; preds = %401, %394
  %408 = phi i64 [ %400, %394 ], [ %406, %401 ]
  store i64 %408, ptr %379, align 8
  %409 = load i8, ptr @caam_little_end, align 1, !range !8
  %410 = icmp eq i8 %409, 0
  %411 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %412 = select i1 %410, i32 %411, i32 %79
  %413 = getelementptr inbounds %struct.sec4_sg_entry, ptr %379, i32 0, i32 1
  store i32 %412, ptr %413, align 8
  %414 = getelementptr inbounds %struct.sec4_sg_entry, ptr %379, i32 0, i32 2
  store i32 0, ptr %414, align 4
  br label %415

415:                                              ; preds = %407, %382, %375
  br i1 %133, label %416, label %435

416:                                              ; preds = %415
  %417 = load ptr, ptr %177, align 32
  %418 = getelementptr %struct.sec4_sg_entry, ptr %417, i32 %131
  %419 = getelementptr %struct.sec4_sg_entry, ptr %418, i32 %124
  %420 = getelementptr %struct.sec4_sg_entry, ptr %419, i32 -1
  %421 = getelementptr %struct.sec4_sg_entry, ptr %420, i32 %129
  %422 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %416
  %425 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %421, i32 0, i32 3
  %426 = load i16, ptr %425, align 2
  %427 = or i16 %426, -32768
  store i16 %427, ptr %425, align 2
  br label %435

428:                                              ; preds = %416
  %429 = load i8, ptr @caam_little_end, align 1, !range !8
  %430 = icmp eq i8 %429, 0
  %431 = select i1 %430, i32 64, i32 1073741824
  %432 = getelementptr inbounds %struct.sec4_sg_entry, ptr %421, i32 0, i32 1
  %433 = load i32, ptr %432, align 8
  %434 = or i32 %431, %433
  store i32 %434, ptr %432, align 8
  br label %435

435:                                              ; preds = %428, %424, %415
  %436 = icmp eq i32 %152, 0
  br i1 %436, label %480, label %437

437:                                              ; preds = %435
  %438 = load ptr, ptr %177, align 32
  %439 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %438) #10
  %440 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %441 = xor i1 %440, true
  %442 = select i1 %439, i1 %441, i1 false
  br i1 %442, label %443, label %452, !prof !14

443:                                              ; preds = %437
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %444 = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %445 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %450

448:                                              ; preds = %443
  %449 = load ptr, ptr %6, align 4
  br label %450

450:                                              ; preds = %448, %443
  %451 = phi ptr [ %449, %448 ], [ %446, %443 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %444, ptr noundef %451) #10
  br label %452

452:                                              ; preds = %450, %437
  br i1 %439, label %453, label %455

453:                                              ; preds = %452
  %454 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 7
  store i32 -1, ptr %454, align 4
  br label %465

455:                                              ; preds = %452
  %456 = load ptr, ptr @mem_map, align 4
  %457 = ptrtoint ptr %438 to i32
  %458 = add i32 %457, 1073741824
  %459 = lshr i32 %458, 12
  %460 = getelementptr %struct.page, ptr %456, i32 %459
  %461 = and i32 %457, 4095
  %462 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %460, i32 noundef %461, i32 noundef %152, i32 noundef 1, i32 noundef 0) #10
  %463 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 7
  store i32 %462, ptr %463, align 4
  %464 = icmp eq i32 %462, -1
  br i1 %464, label %465, label %480

465:                                              ; preds = %455, %453
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #11
  %466 = load ptr, ptr %80, align 8
  %467 = load ptr, ptr %89, align 4
  %468 = icmp eq ptr %467, %466
  br i1 %468, label %475, label %469

469:                                              ; preds = %465
  %470 = icmp eq i32 %83, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %469
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %466, i32 noundef %83, i32 noundef 1, i32 noundef 0) #10
  br label %472

472:                                              ; preds = %471, %469
  %473 = icmp eq i32 %122, 0
  br i1 %473, label %476, label %474

474:                                              ; preds = %472
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %467, i32 noundef %122, i32 noundef 2, i32 noundef 0) #10
  br label %476

475:                                              ; preds = %465
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %466, i32 noundef %83, i32 noundef 0, i32 noundef 0) #10
  br label %476

476:                                              ; preds = %475, %474, %472
  %477 = icmp eq i32 %256, 0
  br i1 %477, label %479, label %478

478:                                              ; preds = %476
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %256, i32 noundef %79, i32 noundef 0, i32 noundef 0) #10
  br label %479

479:                                              ; preds = %478, %476
  tail call void @kfree(ptr noundef nonnull %157) #10
  br label %485

480:                                              ; preds = %455, %435
  %481 = getelementptr inbounds %struct.skcipher_edesc, ptr %157, i32 0, i32 4
  store i32 %256, ptr %481, align 16
  br label %482

482:                                              ; preds = %480, %98, %85
  %483 = phi ptr [ %87, %85 ], [ %100, %98 ], [ %157, %480 ]
  %484 = icmp ugt ptr %483, inttoptr (i32 -4096 to ptr)
  br i1 %484, label %485, label %488

485:                                              ; preds = %482, %479, %217, %169, %168, %166, %119, %114, %110
  %486 = phi ptr [ %483, %482 ], [ inttoptr (i32 -12 to ptr), %110 ], [ inttoptr (i32 -12 to ptr), %217 ], [ inttoptr (i32 -12 to ptr), %479 ], [ inttoptr (i32 -12 to ptr), %114 ], [ inttoptr (i32 -12 to ptr), %119 ], [ inttoptr (i32 -12 to ptr), %166 ], [ inttoptr (i32 -12 to ptr), %168 ], [ inttoptr (i32 -12 to ptr), %169 ]
  %487 = ptrtoint ptr %486 to i32
  br label %691

488:                                              ; preds = %482
  %489 = load ptr, ptr %3, align 16
  %490 = getelementptr i8, ptr %489, i32 12
  %491 = load ptr, ptr %490, align 4
  %492 = getelementptr i8, ptr %491, i32 -36
  %493 = load i32, ptr %492, align 4
  %494 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 9
  %495 = load ptr, ptr %80, align 8
  %496 = load i32, ptr %483, align 4
  %497 = icmp sgt i32 %496, 1
  br i1 %497, label %500, label %498

498:                                              ; preds = %488
  %499 = load i32, ptr %0, align 64
  br label %500

500:                                              ; preds = %498, %488
  %501 = phi i32 [ %499, %498 ], [ 100, %488 ]
  tail call void @caam_dump_sg(ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %495, i32 noundef %501, i1 noundef zeroext true) #10
  %502 = select i1 %1, i32 76, i32 300
  %503 = getelementptr i8, ptr %489, i32 %502
  %504 = select i1 %1, i32 688, i32 692
  %505 = getelementptr i8, ptr %489, i32 %504
  %506 = load i32, ptr %505, align 4
  %507 = load i32, ptr %503, align 4
  %508 = load i8, ptr @caam_little_end, align 1, !range !8
  %509 = icmp eq i8 %508, 0
  %510 = lshr i32 %507, 24
  %511 = select i1 %509, i32 %510, i32 %507
  %512 = shl i32 %511, 16
  %513 = and i32 %512, 8323072
  %514 = or i32 %513, -1333781503
  %515 = tail call i32 @llvm.bswap.i32(i32 %514) #10
  %516 = select i1 %509, i32 %515, i32 %514
  %517 = getelementptr %struct.skcipher_edesc, ptr %483, i32 1, i32 1
  %518 = tail call i32 @llvm.bswap.i32(i32 %506) #10
  %519 = select i1 %509, i32 %518, i32 %506
  store i32 %519, ptr %517, align 4
  %520 = load i8, ptr @caam_little_end, align 1, !range !8
  %521 = icmp eq i8 %520, 0
  %522 = tail call i32 @llvm.bswap.i32(i32 %516) #10
  %523 = select i1 %521, i32 %522, i32 %516
  %524 = load i32, ptr @caam_ptr_sz, align 4
  %525 = lshr i32 %524, 2
  %526 = add nuw nsw i32 %523, %525
  %527 = tail call i32 @llvm.bswap.i32(i32 %526) #10
  %528 = select i1 %521, i32 %527, i32 %526
  store i32 %528, ptr %494, align 4
  %529 = icmp ne i32 %493, 0
  %530 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 2
  %531 = load i32, ptr %530, align 4
  %532 = icmp sgt i32 %531, 1
  %533 = select i1 %529, i1 true, i1 %532
  br i1 %533, label %534, label %539

534:                                              ; preds = %500
  %535 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 7
  %536 = zext i1 %529 to i32
  %537 = add i32 %531, %536
  %538 = shl i32 %537, 4
  br label %542

539:                                              ; preds = %500
  %540 = load ptr, ptr %80, align 8
  %541 = getelementptr inbounds %struct.scatterlist, ptr %540, i32 0, i32 3
  br label %542

542:                                              ; preds = %539, %534
  %543 = phi i32 [ 16777216, %534 ], [ 0, %539 ]
  %544 = phi ptr [ %535, %534 ], [ %541, %539 ]
  %545 = phi i32 [ %538, %534 ], [ 0, %539 ]
  %546 = load i32, ptr %544, align 4
  %547 = load i32, ptr %0, align 64
  %548 = add i32 %547, %493
  %549 = or i32 %543, -264241152
  %550 = lshr i32 %527, 24
  %551 = select i1 %521, i32 %550, i32 %526
  %552 = and i32 %551, 127
  %553 = getelementptr i32, ptr %494, i32 %552
  %554 = tail call i32 @llvm.bswap.i32(i32 %549) #10
  %555 = select i1 %521, i32 %554, i32 %549
  store i32 %555, ptr %553, align 4
  %556 = load i32, ptr %494, align 4
  %557 = load i8, ptr @caam_little_end, align 1, !range !8
  %558 = icmp eq i8 %557, 0
  %559 = tail call i32 @llvm.bswap.i32(i32 %556) #10
  %560 = select i1 %558, i32 %559, i32 %556
  %561 = add i32 %560, 1
  %562 = tail call i32 @llvm.bswap.i32(i32 %561) #10
  %563 = select i1 %558, i32 %562, i32 %561
  store i32 %563, ptr %494, align 4
  %564 = lshr i32 %562, 24
  %565 = select i1 %558, i32 %564, i32 %561
  %566 = and i32 %565, 127
  %567 = getelementptr i32, ptr %494, i32 %566
  %568 = tail call i32 @llvm.bswap.i32(i32 %546) #10
  %569 = select i1 %558, i32 %568, i32 %546
  store i32 %569, ptr %567, align 4
  %570 = load i32, ptr %494, align 4
  %571 = load i8, ptr @caam_little_end, align 1, !range !8
  %572 = icmp eq i8 %571, 0
  %573 = tail call i32 @llvm.bswap.i32(i32 %570) #10
  %574 = select i1 %572, i32 %573, i32 %570
  %575 = load i32, ptr @caam_ptr_sz, align 4
  %576 = lshr i32 %575, 2
  %577 = add i32 %574, %576
  %578 = tail call i32 @llvm.bswap.i32(i32 %577) #10
  %579 = select i1 %572, i32 %578, i32 %577
  store i32 %579, ptr %494, align 4
  %580 = lshr i32 %578, 24
  %581 = select i1 %572, i32 %580, i32 %577
  %582 = and i32 %581, 127
  %583 = getelementptr i32, ptr %494, i32 %582
  %584 = tail call i32 @llvm.bswap.i32(i32 %548) #10
  %585 = select i1 %572, i32 %584, i32 %548
  store i32 %585, ptr %583, align 4
  %586 = load i32, ptr %494, align 4
  %587 = load i8, ptr @caam_little_end, align 1, !range !8
  %588 = icmp eq i8 %587, 0
  %589 = tail call i32 @llvm.bswap.i32(i32 %586) #10
  %590 = select i1 %588, i32 %589, i32 %586
  %591 = add i32 %590, 1
  %592 = tail call i32 @llvm.bswap.i32(i32 %591) #10
  %593 = select i1 %588, i32 %592, i32 %591
  store i32 %593, ptr %494, align 4
  %594 = load ptr, ptr %80, align 8
  %595 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %596 = load ptr, ptr %595, align 4
  %597 = icmp eq ptr %594, %596
  br i1 %597, label %598, label %601, !prof !13

598:                                              ; preds = %542
  %599 = select i1 %529, i32 16, i32 0
  %600 = add i32 %546, %599
  br label %613

601:                                              ; preds = %542
  br i1 %529, label %609, label %602

602:                                              ; preds = %601
  %603 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 3
  %604 = load i32, ptr %603, align 4
  %605 = icmp eq i32 %604, 1
  br i1 %605, label %606, label %609

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.scatterlist, ptr %596, i32 0, i32 3
  %608 = load i32, ptr %607, align 4
  br label %613

609:                                              ; preds = %602, %601
  %610 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 7
  %611 = load i32, ptr %610, align 4
  %612 = add i32 %611, %545
  br label %613

613:                                              ; preds = %609, %606, %598
  %614 = phi i32 [ %543, %598 ], [ 16777216, %609 ], [ 0, %606 ]
  %615 = phi i32 [ %600, %598 ], [ %612, %609 ], [ %608, %606 ]
  %616 = load i32, ptr %0, align 64
  %617 = add i32 %616, %493
  %618 = or i32 %614, -130023424
  %619 = lshr i32 %592, 24
  %620 = select i1 %588, i32 %619, i32 %591
  %621 = and i32 %620, 127
  %622 = getelementptr i32, ptr %494, i32 %621
  %623 = tail call i32 @llvm.bswap.i32(i32 %618) #10
  %624 = select i1 %588, i32 %623, i32 %618
  store i32 %624, ptr %622, align 4
  %625 = load i32, ptr %494, align 4
  %626 = load i8, ptr @caam_little_end, align 1, !range !8
  %627 = icmp eq i8 %626, 0
  %628 = tail call i32 @llvm.bswap.i32(i32 %625) #10
  %629 = select i1 %627, i32 %628, i32 %625
  %630 = add i32 %629, 1
  %631 = tail call i32 @llvm.bswap.i32(i32 %630) #10
  %632 = select i1 %627, i32 %631, i32 %630
  store i32 %632, ptr %494, align 4
  %633 = lshr i32 %631, 24
  %634 = select i1 %627, i32 %633, i32 %630
  %635 = and i32 %634, 127
  %636 = getelementptr i32, ptr %494, i32 %635
  %637 = tail call i32 @llvm.bswap.i32(i32 %615) #10
  %638 = select i1 %627, i32 %637, i32 %615
  store i32 %638, ptr %636, align 4
  %639 = load i32, ptr %494, align 4
  %640 = load i8, ptr @caam_little_end, align 1, !range !8
  %641 = icmp eq i8 %640, 0
  %642 = tail call i32 @llvm.bswap.i32(i32 %639) #10
  %643 = select i1 %641, i32 %642, i32 %639
  %644 = load i32, ptr @caam_ptr_sz, align 4
  %645 = lshr i32 %644, 2
  %646 = add i32 %643, %645
  %647 = tail call i32 @llvm.bswap.i32(i32 %646) #10
  %648 = select i1 %641, i32 %647, i32 %646
  store i32 %648, ptr %494, align 4
  %649 = lshr i32 %647, 24
  %650 = select i1 %641, i32 %649, i32 %646
  %651 = and i32 %650, 127
  %652 = getelementptr i32, ptr %494, i32 %651
  %653 = tail call i32 @llvm.bswap.i32(i32 %617) #10
  %654 = select i1 %641, i32 %653, i32 %617
  store i32 %654, ptr %652, align 4
  %655 = load i32, ptr %494, align 4
  %656 = load i8, ptr @caam_little_end, align 1, !range !8
  %657 = icmp eq i8 %656, 0
  %658 = tail call i32 @llvm.bswap.i32(i32 %655) #10
  %659 = select i1 %657, i32 %658, i32 %655
  %660 = add i32 %659, 1
  %661 = tail call i32 @llvm.bswap.i32(i32 %660) #10
  %662 = select i1 %657, i32 %661, i32 %660
  store i32 %662, ptr %494, align 4
  %663 = load i32, ptr %72, align 4
  %664 = and i32 %663, 1024
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %670, label %666

666:                                              ; preds = %613
  %667 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %8, i32 0, i32 18
  %668 = load ptr, ptr %667, align 4
  %669 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %668, ptr noundef %0) #10
  br label %672

670:                                              ; preds = %613
  %671 = tail call i32 @caam_jr_enqueue(ptr noundef %6, ptr noundef %494, ptr noundef nonnull @skcipher_crypt_done, ptr noundef %0) #10
  br label %672

672:                                              ; preds = %670, %666
  %673 = phi i32 [ %669, %666 ], [ %671, %670 ]
  switch i32 %673, label %674 [
    i32 -16, label %691
    i32 -115, label %691
  ]

674:                                              ; preds = %672
  %675 = load ptr, ptr %3, align 16
  %676 = getelementptr i8, ptr %675, i32 12
  %677 = load ptr, ptr %676, align 4
  %678 = getelementptr i8, ptr %677, i32 -36
  %679 = load i32, ptr %678, align 4
  %680 = load ptr, ptr %80, align 8
  %681 = load ptr, ptr %595, align 4
  %682 = load i32, ptr %483, align 4
  %683 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 1
  %684 = load i32, ptr %683, align 4
  %685 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 4
  %686 = load i32, ptr %685, align 4
  %687 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 7
  %688 = load i32, ptr %687, align 4
  %689 = getelementptr inbounds %struct.skcipher_edesc, ptr %483, i32 0, i32 5
  %690 = load i32, ptr %689, align 4
  tail call fastcc void @caam_unmap(ptr noundef %6, ptr noundef %680, ptr noundef %681, i32 noundef %682, i32 noundef %684, i32 noundef %686, i32 noundef %679, i32 noundef %688, i32 noundef %690) #10
  tail call void @kfree(ptr noundef %483) #10
  br label %691

691:                                              ; preds = %674, %672, %672, %485, %65, %63, %18
  %692 = phi i32 [ %487, %485 ], [ 0, %18 ], [ %64, %63 ], [ %66, %65 ], [ %673, %672 ], [ %673, %672 ], [ %673, %674 ]
  ret i32 %692
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_crypt_done(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 6
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %7, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -36
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %5, align 64
  %15 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = tail call i32 @caam_strstatus(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false) #10
  %21 = load ptr, ptr %6, align 16
  %22 = getelementptr i8, ptr %21, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 -36
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %19, %4
  %27 = phi i32 [ %25, %19 ], [ %13, %4 ]
  %28 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %14, align 4
  %34 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  tail call fastcc void @caam_unmap(ptr noundef %0, ptr noundef %30, ptr noundef %32, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %27, i32 noundef %39, i32 noundef %41) #10
  %42 = icmp eq i32 %13, 0
  %43 = icmp ne i32 %28, 0
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.skcipher_edesc, ptr %14, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %40, align 4
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %51, i32 %13, i1 false)
  br label %52

52:                                               ; preds = %45, %26
  %53 = load ptr, ptr %31, align 4
  %54 = load i32, ptr %34, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %3, align 64
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ 100, %52 ]
  tail call void @caam_dump_sg(ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %53, i32 noundef %59, i1 noundef zeroext true) #10
  tail call void @kfree(ptr noundef %14) #10
  br i1 %17, label %60, label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4
  %62 = getelementptr inbounds %struct.skcipher_request, ptr %3, i32 0, i32 4, i32 1
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef %61, i32 noundef %28) #10
  br label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.caam_drv_private_jr, ptr %9, i32 0, i32 18
  %66 = load ptr, ptr %65, align 4
  tail call void @crypto_finalize_skcipher_request(ptr noundef %66, ptr noundef %3, i32 noundef %28) #10
  br label %67

67:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_dump_sg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_xts_skcipher_encap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_xts_skcipher_decap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_cra_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = getelementptr i8, ptr %3, i32 384
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, 8176
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store ptr @skcipher_do_one_req, ptr %8, align 4
  %9 = icmp eq i32 %7, 1280
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 8
  %12 = tail call ptr @crypto_alloc_skcipher(ptr noundef %11, i32 noundef 0, i32 noundef 256) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %11, i32 noundef %15) #11
  br label %31

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 56
  store ptr %12, ptr %18, align 4
  %19 = load i32, ptr %12, align 64
  %20 = add i32 %19, 128
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i32 [ %20, %17 ], [ 128, %1 ]
  store i32 %22, ptr %0, align 64
  %23 = tail call fastcc i32 @caam_init_common(ptr noundef %4, ptr noundef %5, i1 noundef zeroext false)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 56
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %27, ptr noundef %30) #10
  br label %31

31:                                               ; preds = %29, %25, %21, %14
  %32 = phi i32 [ %23, %29 ], [ %23, %25 ], [ 0, %21 ], [ %15, %14 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_cra_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6, i32 1, i32 56
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %3, ptr noundef %6) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 32
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 44
  %13 = load i32, ptr %12, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 612, i32 noundef %13, i32 noundef 32) #10
  %14 = load ptr, ptr %8, align 4
  tail call void @caam_jr_free(ptr noundef %14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_do_one_req(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -16
  %4 = getelementptr i8, ptr %1, i32 16
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %1, i32 48
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.skcipher_edesc, ptr %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.skcipher_edesc, ptr %7, i32 0, i32 6
  store i8 1, ptr %9, align 4
  %10 = getelementptr i8, ptr %5, i32 704
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @caam_jr_enqueue(ptr noundef %11, ptr noundef %8, ptr noundef nonnull @skcipher_crypt_done, ptr noundef %3) #10
  switch i32 %12, label %17 [
    i32 -28, label %13
    i32 -115, label %39
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13, %2
  %18 = load ptr, ptr %10, align 4
  %19 = load ptr, ptr %6, align 64
  %20 = load ptr, ptr %4, align 16
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -36
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %1, i32 -8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %1, i32 -4
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  %30 = getelementptr inbounds %struct.skcipher_edesc, ptr %19, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.skcipher_edesc, ptr %19, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.skcipher_edesc, ptr %19, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.skcipher_edesc, ptr %19, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  tail call fastcc void @caam_unmap(ptr noundef %18, ptr noundef %26, ptr noundef %28, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %24, i32 noundef %35, i32 noundef %37) #10
  %38 = load ptr, ptr %6, align 64
  tail call void @kfree(ptr noundef %38) #10
  br label %39

39:                                               ; preds = %17, %13, %2
  %40 = phi i32 [ -28, %13 ], [ %12, %17 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @caam_init_common(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @caam_jr_alloc() #10
  %5 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 8
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %63

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.caam_drv_private, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 5
  %19 = and i1 %18, %2
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 1
  %24 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %23) #10
  %25 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %37, !prof !14

28:                                               ; preds = %11
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %29 = tail call ptr @dev_driver_string(ptr noundef %4) #10
  %30 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %29, ptr noundef %36) #10
  br label %37

37:                                               ; preds = %35, %11
  br i1 %24, label %47, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %23 to i32
  %41 = add i32 %40, 1073741824
  %42 = lshr i32 %41, 12
  %43 = getelementptr %struct.page, ptr %39, i32 %42
  %44 = and i32 %40, 4095
  %45 = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %43, i32 noundef %44, i32 noundef 612, i32 noundef %21, i32 noundef 32) #10
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %38, %37
  %48 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.29) #11
  %49 = load ptr, ptr %5, align 4
  tail call void @caam_jr_free(ptr noundef %49) #10
  br label %63

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 4
  store i32 %45, ptr %51, align 4
  %52 = add i32 %45, 224
  %53 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = add i32 %45, 448
  %55 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %1, align 4
  %57 = or i32 %56, 33554432
  %58 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 10
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.caam_alg_entry, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 67108864
  %62 = getelementptr inbounds %struct.caam_ctx, ptr %0, i32 0, i32 9
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %50, %47, %7
  %64 = phi i32 [ %10, %7 ], [ -12, %47 ], [ 0, %50 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_aead_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store ptr @aead_do_one_req, ptr %6, align 4
  %7 = getelementptr i8, ptr %3, i32 384
  %8 = getelementptr i8, ptr %3, i32 394
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = tail call fastcc i32 @caam_init_common(ptr noundef %4, ptr noundef %7, i1 noundef zeroext %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_aead_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 32
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 44
  %7 = load i32, ptr %6, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef 612, i32 noundef %7, i32 noundef 32) #10
  %8 = load ptr, ptr %2, align 4
  tail call void @caam_jr_free(ptr noundef %8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_do_one_req(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.aead_edesc, ptr %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.aead_edesc, ptr %6, i32 0, i32 5
  store i8 1, ptr %8, align 4
  %9 = getelementptr i8, ptr %4, i32 704
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @caam_jr_enqueue(ptr noundef %10, ptr noundef %7, ptr noundef nonnull @aead_crypt_done, ptr noundef %1) #10
  switch i32 %11, label %16 [
    i32 -28, label %12
    i32 -115, label %20
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %2
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %5, align 4
  tail call fastcc void @aead_unmap(ptr noundef %17, ptr noundef %18, ptr noundef %1)
  %19 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %19) #10
  br label %20

20:                                               ; preds = %16, %12, %2
  %21 = phi i32 [ -28, %12 ], [ %11, %16 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{i64 2151361197}
!10 = !{i64 2156982323}
!11 = !{!"auto-init"}
!12 = !{i64 2148813606}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
