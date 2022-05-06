; ModuleID = '/llk/IR/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ss_variant = type { i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_ss_alg_template = type { i32, i32, [56 x i8], %union.anon.65, ptr, i32, i32, i32, i32, [44 x i8] }
%union.anon.65 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.66, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.66 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, ptr, ptr }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [48 x i8], %struct.crypto_alg }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@a20ss_crypto_of_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a10_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ss_a33_variant }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias238 = internal constant [24 x i8] c"alias=platform:sun4i-ss\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"description=Allwinner Security System cryptographic accelerator\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [50 x i8] c"author=Corentin LABBE <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@ss_a10_variant = internal constant %struct.ss_variant zeroinitializer, align 1
@ss_a33_variant = internal constant %struct.ss_variant { i8 1 }, align 1
@sun4i_ss_driver = internal global %struct.platform_driver { ptr @sun4i_ss_probe, ptr @sun4i_ss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a20ss_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ss_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"sun4i-ss\00", align 1
@sun4i_ss_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_ss_pm_suspend, ptr @sun4i_ss_pm_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot request MMIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Missing Security System variant\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot get SS clock err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Cannot get AHB SS clock err=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"no reset control found\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Cannot set clock rate to ssclk\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Clock bus %lu (%lu MHz) (must be >= %lu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Clock ss %lu (%lu MHz) (must be <= %lu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Clock ss is at %lu (%lu MHz) (must be <= %lu)\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Die ID %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Fail to register %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@sun4i_ss_debugfs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sun4i_ss_dbgfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ss_algs = internal global <{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }> <{ %struct.sun4i_ss_alg_template { i32 15, i32 64, [56 x i8] undef, %union.anon.65 { %struct.ahash_alg { ptr @sun4i_hash_init, ptr @sun4i_hash_update, ptr @sun4i_hash_final, ptr @sun4i_hash_finup, ptr @sun4i_hash_digest, ptr @sun4i_hash_export_md5, ptr @sun4i_hash_import_md5, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_hash_crainit, ptr @sun4i_hash_craexit, ptr null, ptr @__this_module, [48 x i8] undef } } } }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, %struct.sun4i_ss_alg_template { i32 15, i32 48, [56 x i8] undef, %union.anon.65 { %struct.ahash_alg { ptr @sun4i_hash_init, ptr @sun4i_hash_update, ptr @sun4i_hash_final, ptr @sun4i_hash_finup, ptr @sun4i_hash_digest, ptr @sun4i_hash_export_sha1, ptr @sun4i_hash_import_sha1, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_hash_crainit, ptr @sun4i_hash_craexit, ptr null, ptr @__this_module, [48 x i8] undef } } } }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_aes_setkey, ptr @sun4i_ss_cbc_aes_encrypt, ptr @sun4i_ss_cbc_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 16, i32 48, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_aes_setkey, ptr @sun4i_ss_ecb_aes_encrypt, ptr @sun4i_ss_ecb_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 16, i32 48, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des_setkey, ptr @sun4i_ss_cbc_des_encrypt, ptr @sun4i_ss_cbc_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des_setkey, ptr @sun4i_ss_ecb_des_encrypt, ptr @sun4i_ss_ecb_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des3_setkey, ptr @sun4i_ss_cbc_des3_encrypt, ptr @sun4i_ss_cbc_des3_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } { i32 5, i32 0, [56 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @sun4i_ss_des3_setkey, ptr @sun4i_ss_ecb_des3_encrypt, ptr @sun4i_ss_ecb_des3_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4352, i32 8, i32 112, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-sun4i-ss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.66 zeroinitializer, ptr @sun4i_ss_cipher_init, ptr @sun4i_ss_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, ptr null, i32 0, i32 0, i32 0, i32 0, [44 x i8] undef } }>, align 64
@.str.16 = private unnamed_addr constant [48 x i8] c"%s %s reqs=%lu opti=%lu fallback=%lu tsize=%lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%s %s reqs=%lu tsize=%lu\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%s %s reqs=%lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Cannot prepare_enable busclk\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Cannot prepare_enable ssclk\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Cannot deassert reset control\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_license240], section "llvm.metadata"

@__mod_of__a20ss_crypto_of_match_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @a20ss_crypto_of_match_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_ss_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_ss_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %207, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 304, i32 noundef 3520) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %207, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %11 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %14 = ptrtoint ptr %10 to i32
  br label %207

15:                                               ; preds = %9
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  store ptr %16, ptr %7, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %207

19:                                               ; preds = %15
  %20 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %21 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %24) #5
  br label %207

25:                                               ; preds = %19
  %26 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #4
  %27 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %30) #5
  br label %207

31:                                               ; preds = %25
  %32 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %33 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %207

37:                                               ; preds = %31
  %38 = icmp eq ptr %32, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %40

40:                                               ; preds = %39, %37
  %41 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 150000000) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  br label %207

44:                                               ; preds = %40
  %45 = tail call i32 @clk_get_rate(ptr noundef %26) #4
  %46 = icmp ugt i32 %45, 23999999
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = udiv i32 %45, 1000000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %45, i32 noundef %48, i32 noundef 24000000) #5
  br label %49

49:                                               ; preds = %47, %44
  %50 = tail call i32 @clk_get_rate(ptr noundef %20) #4
  %51 = icmp ult i32 %50, 150000001
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, 150000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ @.str.10, %52 ], [ @.str.11, %49 ]
  %56 = udiv i32 %50, 1000000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull %55, i32 noundef %50, i32 noundef %56, i32 noundef 150000000) #5
  br label %57

57:                                               ; preds = %54, %52
  %58 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 6
  store ptr %2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 10
  store i32 0, ptr %60, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #4
  %61 = load ptr, ptr %58, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %61, i32 noundef 2000) #4
  %62 = load ptr, ptr %58, align 4
  %63 = tail call i32 @__pm_runtime_set_status(ptr noundef %62, i32 noundef 2) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %207

65:                                               ; preds = %57
  %66 = load ptr, ptr %58, align 4
  tail call void @pm_runtime_enable(ptr noundef %66) #4
  %67 = load ptr, ptr %58, align 4
  %68 = tail call i32 @__pm_runtime_resume(ptr noundef %67, i32 noundef 4) #4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #4, !srcloc !9
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 0, i32 -1, ptr elementtype(i32) %71) #4, !srcloc !10
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %204, label %75

75:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  br label %204

76:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %77 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 1) #4, !srcloc !13
  %78 = load ptr, ptr %11, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %81) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %82 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #4, !srcloc !13
  %83 = load ptr, ptr %58, align 4
  %84 = tail call i32 @__pm_runtime_idle(ptr noundef %83, i32 noundef 4) #4
  br label %85

85:                                               ; preds = %111, %76
  %86 = phi i32 [ 0, %76 ], [ %112, %111 ]
  %87 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %86
  %88 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %86, i32 4
  store ptr %7, ptr %88, align 64
  %89 = load i32, ptr %87, align 64
  switch i32 %89, label %111 [
    i32 5, label %90
    i32 15, label %97
    i32 12, label %104
  ]

90:                                               ; preds = %85
  %91 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %86, i32 3
  %92 = tail call i32 @crypto_register_skcipher(ptr noundef %91) #4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %58, align 4
  %96 = getelementptr inbounds %struct.skcipher_alg, ptr %91, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.13, ptr noundef %96) #5
  br label %119

97:                                               ; preds = %85
  %98 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %86, i32 3
  %99 = tail call i32 @crypto_register_ahash(ptr noundef %98) #4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %58, align 4
  %103 = getelementptr inbounds %struct.ahash_alg, ptr %98, i32 0, i32 11, i32 3, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.13, ptr noundef %103) #5
  br label %119

104:                                              ; preds = %85
  %105 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %86, i32 3
  %106 = tail call i32 @crypto_register_rng(ptr noundef %105) #4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %58, align 4
  %110 = getelementptr inbounds %struct.rng_alg, ptr %105, i32 0, i32 5, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.13, ptr noundef %110) #5
  br label %111

111:                                              ; preds = %108, %104, %97, %90, %85
  %112 = add nuw nsw i32 %86, 1
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %114, label %85

114:                                              ; preds = %111
  %115 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #4
  %116 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 11
  store ptr %115, ptr %116, align 4
  %117 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %115, ptr noundef nonnull %7, ptr noundef nonnull @sun4i_ss_debugfs_fops) #4
  %118 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %7, i32 0, i32 12
  store ptr %117, ptr %118, align 4
  br label %207

119:                                              ; preds = %101, %94
  %120 = phi i32 [ %99, %101 ], [ %92, %94 ]
  %121 = icmp eq i32 %86, 0
  br i1 %121, label %204, label %122

122:                                              ; preds = %119
  %123 = add nsw i32 %86, -1
  %124 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %123
  %125 = load i32, ptr %124, align 64
  switch i32 %125, label %132 [
    i32 5, label %126
    i32 15, label %128
    i32 12, label %130
  ]

126:                                              ; preds = %122
  %127 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %123, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %127) #4
  br label %132

128:                                              ; preds = %122
  %129 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %123, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %129) #4
  br label %132

130:                                              ; preds = %122
  %131 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %123, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %131) #4
  br label %132

132:                                              ; preds = %130, %128, %126, %122
  %133 = icmp ugt i32 %86, 1
  br i1 %133, label %134, label %204

134:                                              ; preds = %132
  %135 = add nsw i32 %86, -2
  %136 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %135
  %137 = load i32, ptr %136, align 64
  switch i32 %137, label %144 [
    i32 5, label %142
    i32 15, label %140
    i32 12, label %138
  ]

138:                                              ; preds = %134
  %139 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %135, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %139) #4
  br label %144

140:                                              ; preds = %134
  %141 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %135, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %141) #4
  br label %144

142:                                              ; preds = %134
  %143 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %135, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %143) #4
  br label %144

144:                                              ; preds = %142, %140, %138, %134
  %145 = icmp ugt i32 %86, 2
  br i1 %145, label %146, label %204

146:                                              ; preds = %144
  %147 = add nsw i32 %86, -3
  %148 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %147
  %149 = load i32, ptr %148, align 64
  switch i32 %149, label %156 [
    i32 5, label %154
    i32 15, label %152
    i32 12, label %150
  ]

150:                                              ; preds = %146
  %151 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %147, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %151) #4
  br label %156

152:                                              ; preds = %146
  %153 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %147, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %153) #4
  br label %156

154:                                              ; preds = %146
  %155 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %147, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %155) #4
  br label %156

156:                                              ; preds = %154, %152, %150, %146
  %157 = icmp ugt i32 %86, 3
  br i1 %157, label %158, label %204

158:                                              ; preds = %156
  %159 = add nsw i32 %86, -4
  %160 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %159
  %161 = load i32, ptr %160, align 64
  switch i32 %161, label %168 [
    i32 5, label %166
    i32 15, label %164
    i32 12, label %162
  ]

162:                                              ; preds = %158
  %163 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %159, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %163) #4
  br label %168

164:                                              ; preds = %158
  %165 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %159, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %165) #4
  br label %168

166:                                              ; preds = %158
  %167 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %159, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %167) #4
  br label %168

168:                                              ; preds = %166, %164, %162, %158
  %169 = icmp ugt i32 %86, 4
  br i1 %169, label %170, label %204

170:                                              ; preds = %168
  %171 = add nsw i32 %86, -5
  %172 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %171
  %173 = load i32, ptr %172, align 64
  switch i32 %173, label %180 [
    i32 5, label %178
    i32 15, label %176
    i32 12, label %174
  ]

174:                                              ; preds = %170
  %175 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %171, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %175) #4
  br label %180

176:                                              ; preds = %170
  %177 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %171, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %177) #4
  br label %180

178:                                              ; preds = %170
  %179 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %171, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %179) #4
  br label %180

180:                                              ; preds = %178, %176, %174, %170
  %181 = icmp ugt i32 %86, 5
  br i1 %181, label %182, label %204

182:                                              ; preds = %180
  %183 = add nsw i32 %86, -6
  %184 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %183
  %185 = load i32, ptr %184, align 64
  switch i32 %185, label %192 [
    i32 5, label %190
    i32 15, label %188
    i32 12, label %186
  ]

186:                                              ; preds = %182
  %187 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %183, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %187) #4
  br label %192

188:                                              ; preds = %182
  %189 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %183, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %189) #4
  br label %192

190:                                              ; preds = %182
  %191 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %183, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %191) #4
  br label %192

192:                                              ; preds = %190, %188, %186, %182
  %193 = icmp ugt i32 %86, 6
  br i1 %193, label %194, label %204

194:                                              ; preds = %192
  %195 = add nsw i32 %86, -7
  %196 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %195
  %197 = load i32, ptr %196, align 64
  switch i32 %197, label %204 [
    i32 5, label %202
    i32 15, label %200
    i32 12, label %198
  ]

198:                                              ; preds = %194
  %199 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %195, i32 3
  tail call void @crypto_unregister_rng(ptr noundef %199) #4
  br label %204

200:                                              ; preds = %194
  %201 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %195, i32 3
  tail call void @crypto_unregister_ahash(ptr noundef %201) #4
  br label %204

202:                                              ; preds = %194
  %203 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %195, i32 3
  tail call void @crypto_unregister_skcipher(ptr noundef %203) #4
  br label %204

204:                                              ; preds = %202, %200, %198, %194, %192, %180, %168, %156, %144, %132, %119, %75, %70
  %205 = phi i32 [ %68, %70 ], [ %68, %75 ], [ %120, %119 ], [ %120, %194 ], [ %120, %198 ], [ %120, %200 ], [ %120, %202 ], [ %120, %192 ], [ %120, %180 ], [ %120, %168 ], [ %120, %156 ], [ %120, %144 ], [ %120, %132 ]
  %206 = load ptr, ptr %58, align 4
  tail call void @__pm_runtime_disable(ptr noundef %206, i1 noundef zeroext true) #4
  br label %207

207:                                              ; preds = %204, %114, %57, %43, %35, %29, %23, %18, %13, %6, %1
  %208 = phi i32 [ %14, %13 ], [ %24, %23 ], [ %30, %29 ], [ %36, %35 ], [ %41, %43 ], [ %205, %204 ], [ 0, %114 ], [ -22, %18 ], [ -19, %1 ], [ -12, %6 ], [ %63, %57 ]
  ret i32 %208
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @ss_algs, align 64
  switch i32 %4, label %8 [
    i32 5, label %5
    i32 15, label %6
    i32 12, label %7
  ]

5:                                                ; preds = %1
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #4
  br label %8

6:                                                ; preds = %1
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #4
  br label %8

7:                                                ; preds = %1
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 0, i32 3)) #4
  br label %8

8:                                                ; preds = %7, %6, %5, %1
  %9 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 1), align 64
  switch i32 %9, label %13 [
    i32 5, label %12
    i32 15, label %11
    i32 12, label %10
  ]

10:                                               ; preds = %8
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #4
  br label %13

11:                                               ; preds = %8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #4
  br label %13

12:                                               ; preds = %8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 1, i32 3)) #4
  br label %13

13:                                               ; preds = %12, %11, %10, %8
  %14 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 0), align 64
  switch i32 %14, label %18 [
    i32 5, label %17
    i32 15, label %16
    i32 12, label %15
  ]

15:                                               ; preds = %13
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #4
  br label %18

16:                                               ; preds = %13
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #4
  br label %18

17:                                               ; preds = %13
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 2, i32 3, i32 0, i32 0)) #4
  br label %18

18:                                               ; preds = %17, %16, %15, %13
  %19 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 0), align 64
  switch i32 %19, label %23 [
    i32 5, label %22
    i32 15, label %21
    i32 12, label %20
  ]

20:                                               ; preds = %18
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #4
  br label %23

21:                                               ; preds = %18
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #4
  br label %23

22:                                               ; preds = %18
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 3, i32 3, i32 0, i32 0)) #4
  br label %23

23:                                               ; preds = %22, %21, %20, %18
  %24 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 0), align 64
  switch i32 %24, label %28 [
    i32 5, label %27
    i32 15, label %26
    i32 12, label %25
  ]

25:                                               ; preds = %23
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #4
  br label %28

26:                                               ; preds = %23
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #4
  br label %28

27:                                               ; preds = %23
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 4, i32 3, i32 0, i32 0)) #4
  br label %28

28:                                               ; preds = %27, %26, %25, %23
  %29 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 0), align 64
  switch i32 %29, label %33 [
    i32 5, label %32
    i32 15, label %31
    i32 12, label %30
  ]

30:                                               ; preds = %28
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #4
  br label %33

31:                                               ; preds = %28
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #4
  br label %33

32:                                               ; preds = %28
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 5, i32 3, i32 0, i32 0)) #4
  br label %33

33:                                               ; preds = %32, %31, %30, %28
  %34 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 0), align 64
  switch i32 %34, label %38 [
    i32 5, label %37
    i32 15, label %36
    i32 12, label %35
  ]

35:                                               ; preds = %33
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #4
  br label %38

36:                                               ; preds = %33
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #4
  br label %38

37:                                               ; preds = %33
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 6, i32 3, i32 0, i32 0)) #4
  br label %38

38:                                               ; preds = %37, %36, %35, %33
  %39 = load i32, ptr getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 0), align 64
  switch i32 %39, label %43 [
    i32 5, label %42
    i32 15, label %41
    i32 12, label %40
  ]

40:                                               ; preds = %38
  tail call void @crypto_unregister_rng(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #4
  br label %43

41:                                               ; preds = %38
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #4
  br label %43

42:                                               ; preds = %38
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (<{ %struct.sun4i_ss_alg_template, %struct.sun4i_ss_alg_template, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] }, { i32, i32, [56 x i8], { %struct.skcipher_alg, [64 x i8] }, ptr, i32, i32, i32, i32, [44 x i8] } }>, ptr @ss_algs, i32 0, i32 7, i32 3, i32 0, i32 0)) #4
  br label %43

43:                                               ; preds = %42, %41, %40, %38
  %44 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  tail call void @__pm_runtime_disable(ptr noundef %45, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_final(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_finup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_digest(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_export_md5(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_import_md5(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_crainit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_hash_craexit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_export_sha1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_hash_import_sha1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_aes_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_aes_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_ss_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_aes_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_aes_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_des_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_des3_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des3_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_cbc_des3_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des3_encrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ss_ecb_des3_decrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_dbgfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sun4i_ss_dbgfs_read, ptr noundef %4) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_dbgfs_read(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  br label %3

3:                                                ; preds = %36, %2
  %4 = phi i32 [ 0, %2 ], [ %37, %36 ]
  %5 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 4
  %6 = load ptr, ptr %5, align 64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4
  %10 = load i32, ptr %9, align 64
  switch i32 %10, label %36 [
    i32 5, label %11
    i32 12, label %23
    i32 15, label %31
  ]

11:                                               ; preds = %8
  %12 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 3, i32 0, i32 11
  %13 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %12, i32 0, i32 8
  %15 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 8
  %18 = load i32, ptr %17, align 16
  %19 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 7
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %13, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #4
  br label %36

23:                                               ; preds = %8
  %24 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 3, i32 0, i32 11
  %25 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.crypto_alg, ptr %24, i32 0, i32 8
  %27 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 7
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %25, ptr noundef %26, i32 noundef %28, i32 noundef %30) #4
  br label %36

31:                                               ; preds = %8
  %32 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 3, i32 0, i32 11, i32 3, i32 9
  %33 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 3, i32 0, i32 11, i32 3, i32 8
  %34 = getelementptr [8 x %struct.sun4i_ss_alg_template], ptr @ss_algs, i32 0, i32 %4, i32 5
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %32, ptr noundef %33, i32 noundef %35) #4
  br label %36

36:                                               ; preds = %31, %23, %11, %8, %3
  %37 = add nuw nsw i32 %4, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %3

39:                                               ; preds = %36
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  %9 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ss_pm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_deassert(ptr noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %28

24:                                               ; preds = %16, %8
  %25 = phi ptr [ %5, %8 ], [ %13, %16 ]
  %26 = phi ptr [ @.str.19, %8 ], [ @.str.20, %16 ]
  %27 = phi i32 [ %9, %8 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %28

28:                                               ; preds = %24, %19, %11, %1
  %29 = phi ptr [ @.str.19, %1 ], [ @.str.20, %11 ], [ @.str.21, %19 ], [ %26, %24 ]
  %30 = phi i32 [ %6, %1 ], [ %14, %11 ], [ %22, %19 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %29) #5
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @reset_control_assert(ptr noundef %35) #4
  %37 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %33, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  tail call void @clk_unprepare(ptr noundef %38) #4
  %39 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %33, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #4
  tail call void @clk_unprepare(ptr noundef %40) #4
  br label %41

41:                                               ; preds = %28, %19
  %42 = phi i32 [ %30, %28 ], [ 0, %19 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2147955713}
!9 = !{i64 454023, i64 2147943994, i64 2147944020, i64 2147944067, i64 2147944089, i64 2147944117, i64 2147944137}
!10 = !{i64 440592, i64 440617, i64 440639, i64 440655, i64 440667, i64 440687, i64 440711, i64 440727, i64 440739}
!11 = !{i64 2147955839}
!12 = !{i64 2153416521}
!13 = !{i64 4105848}
!14 = !{i64 4106266}
!15 = !{i64 2153416991}
!16 = !{i64 2153417654}
