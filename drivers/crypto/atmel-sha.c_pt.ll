; ModuleID = '/llk/IR/drivers/crypto/atmel-sha.c_pt.bc'
source_filename = "../drivers/crypto/atmel-sha.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.atmel_sha_drv = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.69, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.69 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.atmel_sha_dev = type { %struct.list_head, i32, ptr, ptr, i32, ptr, %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.crypto_queue, ptr, i8, i8, ptr, ptr, %struct.atmel_sha_dma, %struct.atmel_sha_caps, %struct.scatterlist, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.atmel_sha_dma = type { ptr, %struct.dma_slave_config, ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.atmel_sha_caps = type { i8, i8, i8, i8, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.atmel_sha_reqctx = type { ptr, i32, i32, [64 x i8], [2 x i64], i32, i32, i32, ptr, i32, i32, i32, i32, [384 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.atmel_sha_hmac_ctx = type { %struct.atmel_sha_ctx, %struct.atmel_sha_hmac_key, [32 x i32], [32 x i32], ptr }
%struct.atmel_sha_ctx = type { ptr, ptr, i32 }
%struct.atmel_sha_hmac_key = type { i8, i32, [128 x i8], ptr }

@atmel_sha_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g46-sha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [67 x i8] c"description=Atmel SHA (1/256/224/384/512) hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [46 x i8] c"author=Nicolas Royer - Eukr\C3\A9a Electromatique\00", section ".modinfo", align 1
@atmel_sha_driver = internal global %struct.platform_driver { ptr @atmel_sha_probe, ptr @atmel_sha_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_sha_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"atmel_sha\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"atmel-sha\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to request sha irq.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"can't ioremap\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"using %s for DMA transfers\0A\00", align 1
@atmel_sha = internal global %struct.atmel_sha_drv { %struct.list_head { ptr @atmel_sha, ptr @atmel_sha }, %struct.spinlock zeroinitializer }, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Atmel SHA1/SHA256%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"/SHA224\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"/SHA384/SHA512\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"SHA interrupt when no active requests.\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"version: 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Unmanaged sha version, set minimum capabilities\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"DMA channel is not available\0A\00", align 1
@sha_1_256_algs = internal global [2 x %struct.ahash_alg] [%struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }], align 64
@sha_224_alg = internal global %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, align 64
@sha_384_512_algs = internal global [2 x %struct.ahash_alg] [%struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }], align 64
@sha_hmac_algs = internal global [5 x %struct.ahash_alg] [%struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-hmac-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-hmac-sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }, %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-hmac-sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } }], align 64
@.str.17 = private unnamed_addr constant [21 x i8] c"dma %zu bytes error\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"dma_map_sg  error\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"
@switch.table.atmel_sha_hmac_setup = private unnamed_addr constant [5 x i32] [i32 64, i32 64, i32 128, i32 128, i32 64], align 4
@switch.table.atmel_sha_hmac_setup.21 = private unnamed_addr constant [5 x i32] [i32 20, i32 32, i32 64, i32 64, i32 32], align 4
@switch.table.atmel_sha_hmac_final_done = private unnamed_addr constant [5 x i32] [i32 5, i32 8, i32 16, i32 16, i32 8], align 4

@__mod_of__atmel_sha_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_sha_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_sha_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_sha_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 216, i32 noundef 3520) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %141, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  store volatile ptr %3, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %10, ptr noundef nonnull @atmel_sha_done_task, i32 noundef %11) #12
  %12 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 8
  tail call void @tasklet_init(ptr noundef %12, ptr noundef nonnull @atmel_sha_queue_task, i32 noundef %11) #12
  %13 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 10
  tail call void @crypto_init_queue(ptr noundef %13, i32 noundef 50) #12
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #13
  br label %139

17:                                               ; preds = %5
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %21 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %139, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @atmel_sha_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #13
  br label %139

27:                                               ; preds = %23
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #12
  %29 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #13
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %139

34:                                               ; preds = %27
  %35 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %14) #12
  %36 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #13
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %139

41:                                               ; preds = %34
  %42 = load ptr, ptr %29, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %139

45:                                               ; preds = %41
  %46 = load ptr, ptr %29, align 4
  %47 = tail call i32 @clk_enable(ptr noundef %46) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %136

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 256) #12, !srcloc !8
  %56 = load i32, ptr %50, align 4
  %57 = or i32 %56, 16
  store i32 %57, ptr %50, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load ptr, ptr %36, align 4
  %60 = getelementptr i8, ptr %59, i32 252
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !9
  %62 = and i32 %61, 4095
  %63 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 19
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.13, i32 noundef %62) #13
  %65 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %65) #12
  %66 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(6) %66, i8 0, i64 6, i1 false) #12
  %67 = load i32, ptr %63, align 4
  %68 = and i32 %67, 4080
  switch i32 %68, label %75 [
    i32 1296, label %69
    i32 1056, label %70
    i32 1040, label %71
    i32 1024, label %72
    i32 800, label %110
  ]

69:                                               ; preds = %58
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(6) %66, i8 1, i64 6, i1 false) #12
  br label %79

70:                                               ; preds = %58
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(5) %66, i8 1, i64 5, i1 false) #12
  br label %79

71:                                               ; preds = %58
  store i32 16843009, ptr %66, align 4
  br label %79

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 2
  %74 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 1
  store i8 1, ptr %66, align 4
  store i8 1, ptr %74, align 1
  store i8 1, ptr %73, align 2
  br label %79

75:                                               ; preds = %58
  %76 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.14) #13
  %77 = load i8, ptr %66, align 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %75, %72, %71, %70, %69
  %80 = load ptr, ptr %6, align 4
  %81 = tail call ptr @dma_request_chan(ptr noundef %80, ptr noundef nonnull @.str.15) #12
  %82 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %19, align 4
  %86 = add i32 %85, 64
  %87 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 2
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 5
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 3
  store i32 4, ptr %89, align 4
  %90 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 6
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 4
  store i32 4, ptr %91, align 4
  %92 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16, i32 1, i32 9
  store i8 0, ptr %92, align 4
  br label %98

93:                                               ; preds = %79
  %94 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.16) #13
  %95 = load ptr, ptr %82, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %136

98:                                               ; preds = %93, %84
  %99 = phi ptr [ %81, %84 ], [ null, %93 ]
  %100 = getelementptr inbounds %struct.dma_chan, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_chan_dev, ptr %101, i32 0, i32 1, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.dma_chan_dev, ptr %101, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  br label %108

108:                                              ; preds = %105, %98
  %109 = phi ptr [ %107, %105 ], [ %103, %98 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %109) #13
  br label %110

110:                                              ; preds = %108, %75, %58
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %111 = load ptr, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 0, i32 1), align 4
  store ptr @atmel_sha, ptr %3, align 4
  store ptr %111, ptr %8, align 4
  store volatile ptr %3, ptr %111, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %112 = load i16, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %114 = tail call fastcc i32 @atmel_sha_register_algs(ptr noundef nonnull %3)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 2
  %118 = load i8, ptr %117, align 2, !range !14
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, ptr @.str.10, ptr @.str.9
  %121 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 3
  %122 = load i8, ptr %121, align 1, !range !14
  %123 = icmp eq i8 %122, 0
  %124 = select i1 %123, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %120, ptr noundef nonnull %124) #13
  br label %141

125:                                              ; preds = %110
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %126 = load ptr, ptr %8, align 4
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %129 = load i16, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %131 = load i8, ptr %66, align 4, !range !14
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16
  %135 = load ptr, ptr %134, align 4
  tail call void @dma_release_channel(ptr noundef %135) #12
  br label %136

136:                                              ; preds = %133, %125, %93, %45
  %137 = phi i32 [ %96, %93 ], [ %114, %133 ], [ %114, %125 ], [ %47, %45 ]
  %138 = load ptr, ptr %29, align 4
  tail call void @clk_unprepare(ptr noundef %138) #12
  br label %139

139:                                              ; preds = %136, %41, %38, %31, %26, %17, %16
  %140 = phi i32 [ %24, %26 ], [ %33, %31 ], [ %40, %38 ], [ %43, %41 ], [ %137, %136 ], [ -19, %16 ], [ %20, %17 ]
  tail call void @tasklet_kill(ptr noundef %12) #12
  tail call void @tasklet_kill(ptr noundef %10) #12
  br label %141

141:                                              ; preds = %139, %116, %1
  %142 = phi i32 [ %140, %139 ], [ 0, %116 ], [ -12, %1 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %10 = load i16, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %12 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 5
  %13 = load i8, ptr %12, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_hmac_algs) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 1)) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 2)) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 3)) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 4)) #12
  br label %16

16:                                               ; preds = %15, %5
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_1_256_algs) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1)) #12
  %17 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 2
  %18 = load i8, ptr %17, align 2, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_224_alg) #12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17, i32 3
  %23 = load i8, ptr %22, align 1, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_384_512_algs) #12
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1)) #12
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 8
  tail call void @tasklet_kill(ptr noundef %27) #12
  %28 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %28) #12
  %29 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 17
  %30 = load i8, ptr %29, align 4, !range !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  tail call void @dma_release_channel(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %32, %26
  %36 = getelementptr inbounds %struct.atmel_sha_dev, ptr %3, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_unprepare(ptr noundef %37) #12
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi i32 [ 0, %35 ], [ -19, %1 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_sha_done_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %2, i32 0, i32 12
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.atmel_sha_dev, ptr %2, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_sha_queue_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #12, !srcloc !8
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = and i32 %16, 32
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 72, i32 8
  %23 = or i32 %22, %16
  store i32 %23, ptr %15, align 4
  %24 = getelementptr inbounds %struct.atmel_sha_dev, ptr %1, i32 0, i32 7, i32 1
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %24) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.atmel_sha_dev, ptr %1, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %28) #12
  br label %32

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.atmel_sha_dev, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.12) #13
  br label %32

32:                                               ; preds = %29, %27, %19, %2
  %33 = phi i32 [ 1, %29 ], [ 0, %2 ], [ 1, %19 ], [ 1, %27 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_register_algs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  store i32 300, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 3, i32 6), align 32
  store i32 128, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 3, i32 2), align 16
  store i32 12, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 3, i32 4), align 8
  store ptr @__this_module, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 3, i32 15), align 4
  store ptr @atmel_sha_cra_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 3, i32 12), align 64
  store i32 512, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 11, i32 1), align 4
  store ptr @atmel_sha_init, ptr @sha_1_256_algs, align 64
  store ptr @atmel_sha_update, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 1), align 4
  store ptr @atmel_sha_final, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 2), align 8
  store ptr @atmel_sha_finup, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 3), align 4
  store ptr @atmel_sha_digest, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 4), align 16
  store ptr @atmel_sha_export, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 5), align 4
  store ptr @atmel_sha_import, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 0, i32 6), align 8
  %2 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @sha_1_256_algs) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %67

4:                                                ; preds = %1
  store i32 300, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 3, i32 6), align 32
  store i32 128, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 3, i32 2), align 16
  store i32 12, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 3, i32 4), align 8
  store ptr @__this_module, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 3, i32 15), align 4
  store ptr @atmel_sha_cra_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 3, i32 12), align 64
  store i32 512, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 11, i32 1), align 4
  store ptr @atmel_sha_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1), align 64
  store ptr @atmel_sha_update, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 1), align 4
  store ptr @atmel_sha_final, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 2), align 8
  store ptr @atmel_sha_finup, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 3), align 4
  store ptr @atmel_sha_digest, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 4), align 16
  store ptr @atmel_sha_export, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 5), align 4
  store ptr @atmel_sha_import, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1, i32 6), align 8
  %5 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1)) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17, i32 2
  %9 = load i8, ptr %8, align 2, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  store i32 300, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 3, i32 6), align 32
  store i32 128, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 3, i32 2), align 16
  store i32 12, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 3, i32 4), align 8
  store ptr @__this_module, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 3, i32 15), align 4
  store ptr @atmel_sha_cra_init, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 3, i32 12), align 64
  store i32 512, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 11, i32 1), align 4
  store ptr @atmel_sha_init, ptr @sha_224_alg, align 64
  store ptr @atmel_sha_update, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 1), align 4
  store ptr @atmel_sha_final, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 2), align 8
  store ptr @atmel_sha_finup, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 3), align 4
  store ptr @atmel_sha_digest, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 4), align 16
  store ptr @atmel_sha_export, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 5), align 4
  store ptr @atmel_sha_import, ptr getelementptr inbounds (%struct.ahash_alg, ptr @sha_224_alg, i32 0, i32 6), align 8
  %12 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @sha_224_alg) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17, i32 3
  %16 = load i8, ptr %15, align 1, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  store i32 300, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 3, i32 6), align 32
  store i32 128, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 3, i32 2), align 16
  store i32 12, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 3, i32 4), align 8
  store ptr @__this_module, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 3, i32 15), align 4
  store ptr @atmel_sha_cra_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 3, i32 12), align 64
  store i32 512, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 11, i32 1), align 4
  store ptr @atmel_sha_init, ptr @sha_384_512_algs, align 64
  store ptr @atmel_sha_update, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 1), align 4
  store ptr @atmel_sha_final, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 2), align 8
  store ptr @atmel_sha_finup, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 3), align 4
  store ptr @atmel_sha_digest, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 4), align 16
  store ptr @atmel_sha_export, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 5), align 4
  store ptr @atmel_sha_import, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 0, i32 6), align 8
  %19 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @sha_384_512_algs) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %18
  store i32 300, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 3, i32 6), align 32
  store i32 128, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 3, i32 2), align 16
  store i32 12, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 3, i32 4), align 8
  store ptr @__this_module, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 3, i32 15), align 4
  store ptr @atmel_sha_cra_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 3, i32 12), align 64
  store i32 512, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 11, i32 1), align 4
  store ptr @atmel_sha_init, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1), align 64
  store ptr @atmel_sha_update, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 1), align 4
  store ptr @atmel_sha_final, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 2), align 8
  store ptr @atmel_sha_finup, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 3), align 4
  store ptr @atmel_sha_digest, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 4), align 16
  store ptr @atmel_sha_export, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 5), align 4
  store ptr @atmel_sha_import, ptr getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1, i32 6), align 8
  %22 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1)) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %21, %14
  %25 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17, i32 5
  %26 = load i8, ptr %25, align 1, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %48, %24
  %29 = phi i32 [ %49, %48 ], [ 0, %24 ]
  %30 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29
  %31 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 6
  store i32 300, ptr %31, align 32
  %32 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 2
  store i32 128, ptr %32, align 16
  %33 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 4
  store i32 412, ptr %33, align 8
  %34 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 15
  store ptr @__this_module, ptr %34, align 4
  %35 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 12
  store ptr @atmel_sha_hmac_cra_init, ptr %35, align 64
  %36 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 3, i32 13
  store ptr @atmel_sha_hmac_cra_exit, ptr %36, align 4
  %37 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 11, i32 1
  store i32 512, ptr %37, align 4
  store ptr @atmel_sha_hmac_init, ptr %30, align 64
  %38 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 1
  store ptr @atmel_sha_update, ptr %38, align 4
  %39 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 2
  store ptr @atmel_sha_final, ptr %39, align 8
  %40 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 4
  store ptr @atmel_sha_hmac_digest, ptr %40, align 16
  %41 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 7
  store ptr @atmel_sha_hmac_setkey, ptr %41, align 4
  %42 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 5
  store ptr @atmel_sha_export, ptr %42, align 4
  %43 = getelementptr [5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 %29, i32 6
  store ptr @atmel_sha_import, ptr %43, align 8
  %44 = tail call i32 @crypto_register_ahash(ptr noundef %30) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %28
  %47 = icmp eq i32 %29, 0
  br i1 %47, label %58, label %51

48:                                               ; preds = %28
  %49 = add nuw nsw i32 %29, 1
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %67, label %28

51:                                               ; preds = %46
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_hmac_algs) #12
  %52 = icmp eq i32 %29, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 1)) #12
  %54 = icmp eq i32 %29, 2
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 2)) #12
  %56 = icmp eq i32 %29, 3
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([5 x %struct.ahash_alg], ptr @sha_hmac_algs, i32 0, i32 3)) #12
  br label %58

58:                                               ; preds = %57, %55, %53, %51, %46, %21
  %59 = phi i32 [ %22, %21 ], [ %44, %46 ], [ %44, %57 ], [ %44, %55 ], [ %44, %53 ], [ %44, %51 ]
  %60 = phi i1 [ true, %21 ], [ false, %46 ], [ false, %57 ], [ false, %55 ], [ false, %53 ], [ false, %51 ]
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_384_512_algs) #12
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_384_512_algs, i32 0, i32 1)) #12
  br label %62

62:                                               ; preds = %61, %58, %18
  %63 = phi i32 [ %19, %18 ], [ %59, %61 ], [ %59, %58 ]
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_224_alg) #12
  br label %64

64:                                               ; preds = %62, %11, %4
  %65 = phi i32 [ %5, %4 ], [ %63, %62 ], [ %12, %11 ]
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @sha_1_256_algs) #12
  br i1 %6, label %66, label %67

66:                                               ; preds = %64
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([2 x %struct.ahash_alg], ptr @sha_1_256_algs, i32 0, i32 1)) #12
  br label %67

67:                                               ; preds = %66, %64, %48, %24, %1
  %68 = phi i32 [ 0, %24 ], [ %2, %1 ], [ %65, %66 ], [ %65, %64 ], [ 0, %48 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_handle_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 10
  %8 = tail call i32 @crypto_enqueue_request(ptr noundef %7, ptr noundef nonnull %1) #12
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  br label %44

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 10, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %17
  %21 = select i1 %20, ptr null, ptr %19
  %22 = tail call ptr @crypto_dequeue_request(ptr noundef %17) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %11, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %27 = icmp eq ptr %21, null
  br i1 %27, label %32, label %29

28:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  br label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %21, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %21, i32 noundef -115) #12
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %22, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  store ptr %22, ptr %35, align 4
  %36 = icmp ne ptr %22, %1
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  store i8 0, ptr %39, align 1
  %40 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %0) #12
  %43 = select i1 %36, i32 %10, i32 %42
  br label %44

44:                                               ; preds = %32, %28, %15
  %45 = phi i32 [ %10, %15 ], [ %43, %32 ], [ %10, %28 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atmel_sha_cra_init(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 512, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr @atmel_sha_start, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @atmel_sha, align 4
  %10 = icmp eq ptr %9, @atmel_sha
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = add i32 %18, -20
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30)
  switch i32 %20, label %32 [
    i32 0, label %27
    i32 2, label %24
    i32 3, label %21
    i32 7, label %22
    i32 11, label %23
  ]

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %22, %21, %12
  %25 = phi i32 [ 768, %23 ], [ 512, %22 ], [ 256, %21 ], [ 1024, %12 ]
  %26 = phi i32 [ 128, %23 ], [ 128, %22 ], [ 64, %21 ], [ 64, %12 ]
  store i32 %25, ptr %14, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ 64, %12 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  store i32 256, ptr %31, align 4
  br label %32

32:                                               ; preds = %27, %12
  %33 = phi i32 [ 0, %27 ], [ -22, %12 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 4
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 8
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %4
  br i1 %15, label %23, label %19

19:                                               ; preds = %6
  %20 = icmp ult i32 %18, 56
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = or i32 %13, 32
  store i32 %22, ptr %12, align 4
  br label %28

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %18, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call fastcc void @atmel_sha_append_sg(ptr noundef %2)
  br label %35

28:                                               ; preds = %23, %21, %19
  %29 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.crypto_tfm, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 1, ptr %33, align 8
  %34 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %32, ptr noundef %0) #12
  br label %35

35:                                               ; preds = %28, %27, %1
  %36 = phi i32 [ %34, %28 ], [ 0, %27 ], [ 0, %1 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_final(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 65536
  store i32 %4, ptr %2, align 4
  %5 = and i32 %3, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = and i32 %3, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr %struct.ahash_request, ptr %0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 32
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = lshr i32 %3, 8
  %24 = and i32 %23, 7
  switch i32 %24, label %25 [
    i32 3, label %33
    i32 4, label %27
    i32 1, label %29
    i32 2, label %31
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %20, ptr noundef align 4 dereferenceable(20) %26, i32 20, i1 false) #12
  br label %42

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(28) %20, ptr noundef align 4 dereferenceable(28) %28, i32 28, i1 false) #12
  br label %42

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %20, ptr noundef align 4 dereferenceable(32) %30, i32 32, i1 false) #12
  br label %42

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %20, ptr noundef align 4 dereferenceable(48) %32, i32 48, i1 false) #12
  br label %42

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %20, ptr noundef align 4 dereferenceable(64) %34, i32 64, i1 false) #12
  br label %42

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr inbounds %struct.crypto_tfm, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 2, ptr %40, align 8
  %41 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %39, ptr noundef %0) #12
  br label %42

42:                                               ; preds = %35, %33, %31, %29, %27, %25, %18, %14, %1
  %43 = phi i32 [ %41, %35 ], [ 0, %1 ], [ 0, %14 ], [ 0, %18 ], [ 0, %25 ], [ 0, %27 ], [ 0, %29 ], [ 0, %31 ], [ 0, %33 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_finup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 65536
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  store i32 %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 4
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 8
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, %6
  %17 = icmp ult i32 %16, 56
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = or i32 %3, 65568
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %8
  %21 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 1, ptr %25, align 8
  %26 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %24, ptr noundef %0) #12
  switch i32 %26, label %32 [
    i32 -115, label %77
    i32 -16, label %27
  ]

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %27, %20, %1
  %33 = phi i32 [ %26, %20 ], [ -16, %27 ], [ 0, %1 ]
  %34 = load i32, ptr %2, align 4
  %35 = or i32 %34, 65536
  store i32 %35, ptr %2, align 4
  %36 = and i32 %34, 8388608
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = and i32 %34, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr %struct.ahash_request, ptr %0, i32 2, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 32
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = lshr i32 %34, 8
  %55 = and i32 %54, 7
  switch i32 %55, label %56 [
    i32 3, label %64
    i32 4, label %58
    i32 1, label %60
    i32 2, label %62
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %51, ptr noundef align 4 dereferenceable(20) %57, i32 20, i1 false) #12
  br label %73

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(28) %51, ptr noundef align 4 dereferenceable(28) %59, i32 28, i1 false) #12
  br label %73

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %51, ptr noundef align 4 dereferenceable(32) %61, i32 32, i1 false) #12
  br label %73

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %51, ptr noundef align 4 dereferenceable(48) %63, i32 48, i1 false) #12
  br label %73

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %51, ptr noundef align 4 dereferenceable(64) %65, i32 64, i1 false) #12
  br label %73

66:                                               ; preds = %38
  %67 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr inbounds %struct.crypto_tfm, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 2, ptr %71, align 8
  %72 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %70, ptr noundef %0) #12
  br label %73

73:                                               ; preds = %66, %64, %62, %60, %58, %56, %49, %45, %32
  %74 = phi i32 [ %72, %66 ], [ 0, %32 ], [ 0, %45 ], [ 0, %49 ], [ 0, %56 ], [ 0, %58 ], [ 0, %60 ], [ 0, %62 ], [ 0, %64 ]
  %75 = icmp eq i32 %33, 0
  %76 = select i1 %75, i32 %74, i32 %33
  br label %77

77:                                               ; preds = %73, %27, %20
  %78 = phi i32 [ %76, %73 ], [ %26, %20 ], [ -16, %27 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @atmel_sha, align 4
  %10 = icmp eq ptr %9, @atmel_sha
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = add i32 %18, -20
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30) #12
  switch i32 %20, label %33 [
    i32 0, label %27
    i32 2, label %24
    i32 3, label %21
    i32 7, label %22
    i32 11, label %23
  ]

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %22, %21, %12
  %25 = phi i32 [ 768, %23 ], [ 512, %22 ], [ 256, %21 ], [ 1024, %12 ]
  %26 = phi i32 [ 128, %23 ], [ 128, %22 ], [ 64, %21 ], [ 64, %12 ]
  store i32 %25, ptr %14, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ 64, %12 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false) #12
  store i32 256, ptr %31, align 4
  %32 = tail call i32 @atmel_sha_finup(ptr noundef %0)
  br label %33

33:                                               ; preds = %27, %12
  %34 = phi i32 [ %32, %27 ], [ -22, %12 ]
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_sha_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(512) %1, ptr noundef align 8 dereferenceable(512) %3, i32 512, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_sha_import(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(512) %3, ptr noundef align 1 dereferenceable(512) %1, i32 512, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 256) #12, !srcloc !8
  %16 = load i32, ptr %9, align 4
  %17 = or i32 %16, 16
  store i32 %17, ptr %9, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -236
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %25 = load i8, ptr %24, align 4, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %29 = load i8, ptr %28, align 1, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %19, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %19, i32 noundef %6) #12
  br label %36

36:                                               ; preds = %35, %31, %27
  %37 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %37) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %41) #12
  br label %58

42:                                               ; preds = %13, %8
  %43 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr @atmel_sha_done, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  switch i32 %45, label %57 [
    i32 1, label %46
    i32 2, label %54
  ]

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @atmel_sha_update_req(ptr noundef %0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %42
  %55 = tail call fastcc i32 @atmel_sha_final_req(ptr noundef %0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %49, %42
  tail call fastcc void @atmel_sha_finish_req(ptr noundef %3, i32 noundef 0)
  br label %58

58:                                               ; preds = %57, %54, %46, %40, %36
  %59 = phi i32 [ 0, %57 ], [ %55, %54 ], [ %6, %36 ], [ %6, %40 ], [ %47, %46 ]
  ret i32 %59
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_complete(ptr noundef %0, i32 noundef returned %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -236
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %15 = load i8, ptr %14, align 1, !range !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %4, i32 noundef %1) #12
  br label %22

22:                                               ; preds = %21, %17, %13
  %23 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %24 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %22
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %67, label %9

9:                                                ; preds = %6
  %10 = and i32 %3, -9
  store i32 %10, ptr %2, align 4
  br label %63

11:                                               ; preds = %1
  %12 = and i32 %3, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %14
  %18 = and i32 %3, -5
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 1, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %46, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 2, i32 5, i32 4
  %29 = load ptr, ptr %28, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %26, ptr noundef %29, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %30 = load ptr, ptr %28, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 2, i32 5, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = tail call ptr @sg_next(ptr noundef %30) #12
  store ptr %37, ptr %28, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 0, ptr %33, align 8
  br label %40

40:                                               ; preds = %39, %36, %27
  %41 = load i32, ptr %21, align 4
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %25, align 4
  br label %46

46:                                               ; preds = %44, %17
  %47 = phi ptr [ %45, %44 ], [ %26, %17 ]
  %48 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 2, i32 5
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 2, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ahash_request, ptr %20, i32 2, i32 5, i32 16
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, %51
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %49, i32 noundef %54, i32 noundef 1, i32 noundef 0) #12
  br label %55

55:                                               ; preds = %46, %40, %14
  %56 = load i32, ptr %2, align 4
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = and i32 %56, -73
  store i32 %60, ptr %2, align 4
  %61 = tail call fastcc i32 @atmel_sha_update_dma_start(ptr noundef %0)
  %62 = icmp eq i32 %61, -115
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %9
  %64 = phi i32 [ 0, %9 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  tail call fastcc void @atmel_sha_finish_req(ptr noundef %66, i32 noundef %64)
  br label %67

67:                                               ; preds = %63, %59, %55, %11, %6
  %68 = phi i32 [ %64, %63 ], [ 0, %6 ], [ -115, %59 ], [ 0, %55 ], [ 0, %11 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_update_req(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %94, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 6
  tail call fastcc void @atmel_sha_append_sg(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = add i64 %11, %14
  %16 = shl i64 %15, 3
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #12
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 1792
  switch i32 %19, label %43 [
    i32 512, label %20
    i32 768, label %20
  ]

20:                                               ; preds = %8, %8
  %21 = getelementptr %struct.ahash_request, ptr %3, i32 2, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = icmp ult i64 %15, %14
  %24 = zext i1 %23 to i64
  %25 = add i64 %22, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %15, i64 3) #12
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #12
  %28 = and i32 %13, 127
  %29 = icmp ult i32 %28, 112
  %30 = select i1 %29, i32 112, i32 240
  %31 = sub nsw i32 %30, %28
  %32 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %33 = getelementptr i8, ptr %32, i32 %13
  store i8 -128, ptr %33, align 1
  %34 = load i32, ptr %12, align 8
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = getelementptr i8, ptr %35, i32 1
  %37 = add nsw i32 %31, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %37, i1 false) #12
  %38 = load i32, ptr %12, align 8
  %39 = getelementptr i8, ptr %32, i32 %38
  %40 = getelementptr i8, ptr %39, i32 %31
  store i64 %27, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %40, i32 8
  store i64 %17, ptr %41, align 1
  %42 = add nsw i32 %31, 16
  br label %58

43:                                               ; preds = %8
  %44 = and i32 %13, 63
  %45 = icmp ult i32 %44, 56
  %46 = select i1 %45, i32 56, i32 120
  %47 = sub nsw i32 %46, %44
  %48 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %49 = getelementptr i8, ptr %48, i32 %13
  store i8 -128, ptr %49, align 1
  %50 = load i32, ptr %12, align 8
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = getelementptr i8, ptr %51, i32 1
  %53 = add nsw i32 %47, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %53, i1 false) #12
  %54 = load i32, ptr %12, align 8
  %55 = getelementptr i8, ptr %48, i32 %54
  %56 = getelementptr i8, ptr %55, i32 %47
  store i64 %17, ptr %56, align 1
  %57 = add nsw i32 %47, 8
  br label %58

58:                                               ; preds = %43, %20
  %59 = phi i32 [ %57, %43 ], [ %42, %20 ]
  %60 = load i32, ptr %12, align 8
  %61 = add i32 %60, %59
  %62 = load i32, ptr %4, align 4
  %63 = or i32 %62, 16777216
  store i32 %63, ptr %4, align 4
  store i32 0, ptr %12, align 8
  %64 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %65 = load ptr, ptr %2, align 4
  tail call fastcc void @atmel_sha_write_ctrl(ptr noundef %0, i32 noundef 0) #12
  %66 = zext i32 %61 to i64
  %67 = getelementptr inbounds %struct.ahash_request, ptr %65, i32 2, i32 0, i32 3
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, ptr %67, align 8
  %70 = icmp ult i64 %69, %66
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = getelementptr %struct.ahash_request, ptr %65, i32 2, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %71, %58
  %76 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %61, 3
  %79 = or i32 %77, 34
  store i32 %79, ptr %76, align 4
  %80 = icmp ult i32 %78, 4
  br i1 %80, label %96, label %81

81:                                               ; preds = %75
  %82 = lshr i32 %78, 2
  %83 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i32 [ 0, %81 ], [ %92, %84 ]
  %86 = shl i32 %85, 2
  %87 = add i32 %86, 64
  %88 = getelementptr i32, ptr %64, i32 %85
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %83, align 4
  %91 = getelementptr i8, ptr %90, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #12, !srcloc !8
  %92 = add nuw nsw i32 %85, 1
  %93 = icmp eq i32 %92, %82
  br i1 %93, label %96, label %84

94:                                               ; preds = %1
  %95 = tail call fastcc i32 @atmel_sha_update_dma_start(ptr noundef %0)
  br label %96

96:                                               ; preds = %94, %84, %75
  %97 = phi i32 [ %95, %94 ], [ -115, %75 ], [ -115, %84 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_final_req(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 55
  %8 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = zext i32 %6 to i64
  %11 = add i64 %9, %10
  %12 = shl i64 %11, 3
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #12
  %14 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1792
  br i1 %7, label %17, label %63

17:                                               ; preds = %1
  switch i32 %16, label %41 [
    i32 512, label %18
    i32 768, label %18
  ]

18:                                               ; preds = %17, %17
  %19 = getelementptr %struct.ahash_request, ptr %3, i32 2, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = icmp ult i64 %11, %10
  %22 = zext i1 %21 to i64
  %23 = add i64 %20, %22
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %11, i64 3) #12
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #12
  %26 = and i32 %6, 127
  %27 = icmp ult i32 %26, 112
  %28 = select i1 %27, i32 112, i32 240
  %29 = sub nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %31 = getelementptr i8, ptr %30, i32 %6
  store i8 -128, ptr %31, align 1
  %32 = load i32, ptr %5, align 8
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = getelementptr i8, ptr %33, i32 1
  %35 = add nsw i32 %29, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %35, i1 false) #12
  %36 = load i32, ptr %5, align 8
  %37 = getelementptr i8, ptr %30, i32 %36
  %38 = getelementptr i8, ptr %37, i32 %29
  store i64 %25, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %38, i32 8
  store i64 %13, ptr %39, align 1
  %40 = add nsw i32 %29, 16
  br label %56

41:                                               ; preds = %17
  %42 = and i32 %6, 63
  %43 = icmp ult i32 %42, 56
  %44 = select i1 %43, i32 56, i32 120
  %45 = sub nsw i32 %44, %42
  %46 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %47 = getelementptr i8, ptr %46, i32 %6
  store i8 -128, ptr %47, align 1
  %48 = load i32, ptr %5, align 8
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = getelementptr i8, ptr %49, i32 1
  %51 = add nsw i32 %45, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %50, i8 0, i32 %51, i1 false) #12
  %52 = load i32, ptr %5, align 8
  %53 = getelementptr i8, ptr %46, i32 %52
  %54 = getelementptr i8, ptr %53, i32 %45
  store i64 %13, ptr %54, align 1
  %55 = add nsw i32 %45, 8
  br label %56

56:                                               ; preds = %41, %18
  %57 = phi i32 [ %55, %41 ], [ %40, %18 ]
  %58 = load i32, ptr %5, align 8
  %59 = add i32 %58, %57
  %60 = load i32, ptr %14, align 4
  %61 = or i32 %60, 16777216
  store i32 %61, ptr %14, align 4
  store i32 0, ptr %5, align 8
  %62 = tail call fastcc i32 @atmel_sha_xmit_dma_map(ptr noundef %0, ptr noundef %4, i32 noundef %59, i32 noundef 1)
  br label %132

63:                                               ; preds = %1
  switch i32 %16, label %83 [
    i32 512, label %64
    i32 768, label %64
  ]

64:                                               ; preds = %63, %63
  %65 = getelementptr %struct.ahash_request, ptr %3, i32 2, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = icmp ult i64 %11, %10
  %68 = zext i1 %67 to i64
  %69 = add i64 %66, %68
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %11, i64 3) #12
  %71 = tail call i64 @llvm.bswap.i64(i64 %70) #12
  %72 = sub nuw nsw i32 112, %6
  %73 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %74 = getelementptr i8, ptr %73, i32 %6
  store i8 -128, ptr %74, align 1
  %75 = load i32, ptr %5, align 8
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = getelementptr i8, ptr %76, i32 1
  %78 = sub nuw nsw i32 111, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %77, i8 0, i32 %78, i1 false) #12
  %79 = load i32, ptr %5, align 8
  %80 = getelementptr i8, ptr %73, i32 %79
  %81 = getelementptr i8, ptr %80, i32 %72
  store i64 %71, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %81, i32 8
  br label %94

83:                                               ; preds = %63
  %84 = sub nuw nsw i32 56, %6
  %85 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %86 = getelementptr i8, ptr %85, i32 %6
  store i8 -128, ptr %86, align 1
  %87 = load i32, ptr %5, align 8
  %88 = getelementptr i8, ptr %85, i32 %87
  %89 = getelementptr i8, ptr %88, i32 1
  %90 = sub nuw nsw i32 55, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %89, i8 0, i32 %90, i1 false) #12
  %91 = load i32, ptr %5, align 8
  %92 = getelementptr i8, ptr %85, i32 %91
  %93 = getelementptr i8, ptr %92, i32 %84
  br label %94

94:                                               ; preds = %83, %64
  %95 = phi ptr [ %82, %64 ], [ %93, %83 ]
  %96 = phi i32 [ 128, %64 ], [ 64, %83 ]
  store i64 %13, ptr %95, align 1
  %97 = sub nuw nsw i32 %96, %6
  %98 = load i32, ptr %5, align 8
  %99 = add i32 %97, %98
  %100 = load i32, ptr %14, align 4
  %101 = or i32 %100, 16777216
  store i32 %101, ptr %14, align 4
  store i32 0, ptr %5, align 8
  %102 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %103 = load ptr, ptr %2, align 4
  tail call fastcc void @atmel_sha_write_ctrl(ptr noundef %0, i32 noundef 0) #12
  %104 = zext i32 %99 to i64
  %105 = getelementptr inbounds %struct.ahash_request, ptr %103, i32 2, i32 0, i32 3
  %106 = load i64, ptr %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, ptr %105, align 8
  %108 = icmp ult i64 %107, %104
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = getelementptr %struct.ahash_request, ptr %103, i32 2, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, ptr %110, align 8
  br label %113

113:                                              ; preds = %109, %94
  %114 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %99, 3
  %117 = or i32 %115, 34
  store i32 %117, ptr %114, align 4
  %118 = icmp ult i32 %116, 4
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = lshr i32 %116, 2
  %121 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i32 [ 0, %119 ], [ %130, %122 ]
  %124 = shl i32 %123, 2
  %125 = add i32 %124, 64
  %126 = getelementptr i32, ptr %102, i32 %123
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %121, align 4
  %129 = getelementptr i8, ptr %128, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #12, !srcloc !8
  %130 = add nuw nsw i32 %123, 1
  %131 = icmp eq i32 %130, %120
  br i1 %131, label %132, label %122

132:                                              ; preds = %122, %113, %56
  %133 = phi i32 [ %62, %56 ], [ -115, %113 ], [ -115, %122 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_sha_finish_req(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 7
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %13, label %35

13:                                               ; preds = %6
  %14 = getelementptr inbounds [5 x i32], ptr @switch.table.atmel_sha_hmac_final_done, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 128
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  store i32 %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %20, %13
  %21 = phi i32 [ 1, %13 ], [ %30, %20 ]
  %22 = load ptr, ptr %3, align 8
  %23 = shl i32 %21, 2
  %24 = add nuw nsw i32 %23, 128
  %25 = getelementptr inbounds %struct.atmel_sha_dev, ptr %22, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !9
  %29 = getelementptr i32, ptr %7, i32 %21
  store i32 %28, ptr %29, align 4
  %30 = add nuw nsw i32 %21, 1
  %31 = icmp eq i32 %30, %15
  br i1 %31, label %32, label %20

32:                                               ; preds = %20
  %33 = load i32, ptr %8, align 4
  %34 = or i32 %33, 33554432
  store i32 %34, ptr %8, align 4
  br label %35

35:                                               ; preds = %32, %6
  %36 = phi i32 [ %9, %6 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr %struct.ahash_request, ptr %0, i32 2, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 32
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = lshr i32 %36, 8
  %55 = and i32 %54, 7
  switch i32 %55, label %56 [
    i32 3, label %60
    i32 4, label %57
    i32 1, label %58
    i32 2, label %59
  ]

56:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %51, ptr noundef align 4 dereferenceable(20) %7, i32 20, i1 false) #12
  br label %65

57:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(28) %51, ptr noundef align 4 dereferenceable(28) %7, i32 28, i1 false) #12
  br label %65

58:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %51, ptr noundef align 4 dereferenceable(32) %7, i32 32, i1 false) #12
  br label %65

59:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %51, ptr noundef align 4 dereferenceable(48) %7, i32 48, i1 false) #12
  br label %65

60:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %51, ptr noundef align 4 dereferenceable(64) %7, i32 64, i1 false) #12
  br label %65

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 8388608
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %60, %59, %58, %57, %56, %49, %45, %35
  %66 = phi i32 [ %1, %61 ], [ 0, %35 ], [ 0, %45 ], [ 0, %49 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 0, %59 ], [ 0, %60 ]
  %67 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -236
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  tail call void @clk_disable(ptr noundef %73) #12
  %74 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 12
  %75 = load i8, ptr %74, align 4, !range !14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 13
  %79 = load i8, ptr %78, align 1, !range !14
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77, %65
  %82 = getelementptr inbounds %struct.crypto_async_request, ptr %68, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void %83(ptr noundef %68, i32 noundef %66) #12
  br label %86

86:                                               ; preds = %85, %81, %77
  %87 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 8, i32 1
  %88 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %87) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.atmel_sha_dev, ptr %4, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %91) #12
  br label %92

92:                                               ; preds = %90, %86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_update_dma_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %134, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8
  %17 = tail call fastcc i32 @atmel_sha_update_dma_slow(ptr noundef %0)
  br label %134

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @atmel_sha_update_dma_slow(ptr noundef %0)
  br label %134

27:                                               ; preds = %18
  %28 = load i32, ptr %20, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  br i1 %30, label %33, label %41

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, -1
  %37 = and i32 %36, %32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = tail call fastcc i32 @atmel_sha_update_dma_slow(ptr noundef %0)
  br label %134

41:                                               ; preds = %27
  %42 = tail call i32 @llvm.umin.i32(i32 %6, i32 %32)
  %43 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = sub i32 %6, %42
  store i32 %48, ptr %5, align 4
  store i32 %42, ptr %13, align 8
  %49 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  br label %65

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %52 = load i32, ptr %51, align 8
  %53 = sub i32 0, %52
  %54 = and i32 %42, %53
  %55 = sub i32 %6, %54
  store i32 %55, ptr %5, align 4
  store i32 %54, ptr %13, align 8
  %56 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  br label %117

57:                                               ; preds = %33
  %58 = tail call i32 @llvm.umin.i32(i32 %6, i32 %32)
  %59 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 65536
  %62 = sub i32 %6, %58
  store i32 %62, ptr %5, align 4
  store i32 %58, ptr %13, align 8
  %63 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %117, label %65

65:                                               ; preds = %57, %47
  %66 = phi ptr [ %49, %47 ], [ %63, %57 ]
  %67 = phi i32 [ %48, %47 ], [ %62, %57 ]
  %68 = phi i32 [ %42, %47 ], [ %58, %57 ]
  %69 = icmp eq i32 %6, %68
  %70 = zext i1 %69 to i32
  br i1 %69, label %71, label %117

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, -1
  %75 = and i32 %74, %6
  %76 = sub i32 %6, %75
  %77 = add nuw nsw i32 %75, %67
  store i32 %77, ptr %5, align 4
  store i32 %76, ptr %13, align 8
  tail call fastcc void @atmel_sha_append_sg(ptr noundef %4)
  tail call fastcc void @atmel_sha_fill_padding(ptr noundef %4, i32 noundef %76)
  %78 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %81 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %72, align 8
  %84 = add i32 %83, %82
  %85 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %79, ptr noundef %80, i32 noundef %84)
  %86 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5
  store i32 %85, ptr %86, align 8
  %87 = icmp eq i32 %85, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %71
  %89 = load ptr, ptr %78, align 4
  %90 = load i32, ptr %81, align 4
  %91 = load i32, ptr %72, align 8
  %92 = add i32 %91, %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.17, i32 noundef %92) #13
  %93 = tail call fastcc i32 @atmel_sha_complete(ptr noundef %0, i32 noundef -22)
  br label %134

94:                                               ; preds = %71
  %95 = icmp eq i32 %6, %75
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = load i32, ptr %66, align 4
  %98 = and i32 %97, -131073
  store i32 %98, ptr %66, align 4
  %99 = load i32, ptr %9, align 8
  store i32 0, ptr %9, align 8
  %100 = tail call fastcc i32 @atmel_sha_xmit_start(ptr noundef %0, i32 noundef %85, i32 noundef %99, i32 noundef 0, i32 noundef 0, i32 noundef %70)
  br label %134

101:                                              ; preds = %94
  store ptr %20, ptr %19, align 4
  %102 = load ptr, ptr %78, align 4
  %103 = tail call i32 @dma_map_sg_attrs(ptr noundef %102, ptr noundef %20, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.18) #13
  %107 = tail call fastcc i32 @atmel_sha_complete(ptr noundef %0, i32 noundef -22)
  br label %134

108:                                              ; preds = %101
  %109 = load i32, ptr %66, align 4
  %110 = or i32 %109, 131072
  store i32 %110, ptr %66, align 4
  %111 = load i32, ptr %9, align 8
  store i32 0, ptr %9, align 8
  %112 = load ptr, ptr %19, align 4
  %113 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = load i32, ptr %86, align 8
  %116 = tail call fastcc i32 @atmel_sha_xmit_start(ptr noundef %0, i32 noundef %114, i32 noundef %76, i32 noundef %115, i32 noundef %111, i32 noundef %70)
  br label %134

117:                                              ; preds = %65, %57, %50
  %118 = phi ptr [ %56, %50 ], [ %63, %57 ], [ %66, %65 ]
  %119 = phi i32 [ %54, %50 ], [ %58, %57 ], [ %68, %65 ]
  %120 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 @dma_map_sg_attrs(ptr noundef %121, ptr noundef %20, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load ptr, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.18) #13
  %126 = tail call fastcc i32 @atmel_sha_complete(ptr noundef %0, i32 noundef -22)
  br label %134

127:                                              ; preds = %117
  %128 = load i32, ptr %118, align 4
  %129 = or i32 %128, 131072
  store i32 %129, ptr %118, align 4
  %130 = load ptr, ptr %19, align 4
  %131 = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = tail call fastcc i32 @atmel_sha_xmit_start(ptr noundef %0, i32 noundef %132, i32 noundef %119, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %134

134:                                              ; preds = %127, %124, %108, %105, %96, %88, %39, %25, %16, %1
  %135 = phi i32 [ %17, %16 ], [ -22, %88 ], [ %100, %96 ], [ %116, %108 ], [ -22, %105 ], [ %133, %127 ], [ -22, %124 ], [ %40, %39 ], [ %26, %25 ], [ 0, %1 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_update_dma_slow(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 6
  tail call fastcc void @atmel_sha_append_sg(ptr noundef %4)
  %5 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %67, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = shl i64 %19, 3
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #12
  %22 = and i32 %6, 1792
  switch i32 %22, label %46 [
    i32 512, label %23
    i32 768, label %23
  ]

23:                                               ; preds = %13, %13
  %24 = getelementptr %struct.ahash_request, ptr %3, i32 2, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp ult i64 %19, %18
  %27 = zext i1 %26 to i64
  %28 = add i64 %25, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %19, i64 3) #12
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  %31 = and i32 %17, 127
  %32 = icmp ult i32 %31, 112
  %33 = select i1 %32, i32 112, i32 240
  %34 = sub nsw i32 %33, %31
  %35 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %36 = getelementptr i8, ptr %35, i32 %17
  store i8 -128, ptr %36, align 1
  %37 = load i32, ptr %16, align 8
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr i8, ptr %38, i32 1
  %40 = add nsw i32 %34, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %40, i1 false) #12
  %41 = load i32, ptr %16, align 8
  %42 = getelementptr i8, ptr %35, i32 %41
  %43 = getelementptr i8, ptr %42, i32 %34
  store i64 %30, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %43, i32 8
  store i64 %21, ptr %44, align 1
  %45 = add nsw i32 %34, 16
  br label %61

46:                                               ; preds = %13
  %47 = and i32 %17, 63
  %48 = icmp ult i32 %47, 56
  %49 = select i1 %48, i32 56, i32 120
  %50 = sub nsw i32 %49, %47
  %51 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %52 = getelementptr i8, ptr %51, i32 %17
  store i8 -128, ptr %52, align 1
  %53 = load i32, ptr %16, align 8
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = getelementptr i8, ptr %54, i32 1
  %56 = add nsw i32 %50, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %56, i1 false) #12
  %57 = load i32, ptr %16, align 8
  %58 = getelementptr i8, ptr %51, i32 %57
  %59 = getelementptr i8, ptr %58, i32 %50
  store i64 %21, ptr %59, align 1
  %60 = add nsw i32 %50, 8
  br label %61

61:                                               ; preds = %46, %23
  %62 = phi i32 [ %60, %46 ], [ %45, %23 ]
  %63 = load i32, ptr %16, align 8
  %64 = add i32 %63, %62
  %65 = load i32, ptr %5, align 4
  %66 = or i32 %65, 16777216
  store i32 %66, ptr %5, align 4
  br label %73

67:                                               ; preds = %9, %1
  %68 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67, %61
  %74 = phi i32 [ %64, %61 ], [ %69, %67 ]
  %75 = phi i32 [ 1, %61 ], [ 0, %67 ]
  %76 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  store i32 0, ptr %76, align 8
  %77 = tail call fastcc i32 @atmel_sha_xmit_dma_map(ptr noundef %0, ptr noundef %4, i32 noundef %74, i32 noundef %75)
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i32 [ %77, %73 ], [ 0, %67 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_sha_append_sg(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 13
  br label %12

12:                                               ; preds = %35, %8
  %13 = phi i32 [ %6, %8 ], [ %37, %35 ]
  %14 = phi i32 [ %5, %8 ], [ %36, %35 ]
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %10, align 8
  %22 = sub i32 %20, %21
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %15)
  %24 = sub i32 %13, %14
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %27
  %30 = load i32, ptr %18, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = tail call ptr @sg_next(ptr noundef %18) #12
  store ptr %34, ptr %9, align 4
  br label %35

35:                                               ; preds = %55, %54, %39, %33
  %36 = load i32, ptr %3, align 8
  %37 = load i32, ptr %4, align 4
  %38 = icmp ugt i32 %37, %36
  br i1 %38, label %12, label %56

39:                                               ; preds = %17
  %40 = getelementptr i8, ptr %11, i32 %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %40, ptr noundef %18, i32 noundef %21, i32 noundef %25, i32 noundef 0) #12
  %41 = load i32, ptr %3, align 8
  %42 = add i32 %41, %25
  store i32 %42, ptr %3, align 8
  %43 = load i32, ptr %10, align 8
  %44 = add i32 %43, %25
  store i32 %44, ptr %10, align 8
  %45 = load i32, ptr %2, align 4
  %46 = sub i32 %45, %25
  store i32 %46, ptr %2, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %35

51:                                               ; preds = %39
  %52 = tail call ptr @sg_next(ptr noundef %47) #12
  store ptr %52, ptr %9, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, ptr %10, align 8
  br label %35

55:                                               ; preds = %51
  store i32 0, ptr %2, align 4
  br label %35

56:                                               ; preds = %35, %29, %27, %12, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @atmel_sha_fill_padding(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 4
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = zext i32 %6 to i64
  %8 = add i64 %4, %7
  %9 = sext i32 %1 to i64
  %10 = add i64 %8, %9
  %11 = shl i64 %10, 3
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1792
  switch i32 %15, label %42 [
    i32 512, label %16
    i32 768, label %16
  ]

16:                                               ; preds = %2, %2
  %17 = icmp ult i64 %10, %9
  %18 = getelementptr %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 4, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = icmp ult i64 %8, %7
  %21 = zext i1 %20 to i64
  %22 = zext i1 %17 to i64
  %23 = add nuw nsw i64 %22, %21
  %24 = add i64 %23, %19
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %10, i64 3)
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = and i32 %6, 127
  %28 = icmp ult i32 %27, 112
  %29 = select i1 %28, i32 112, i32 240
  %30 = sub nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 13
  %32 = getelementptr i8, ptr %31, i32 %6
  store i8 -128, ptr %32, align 1
  %33 = load i32, ptr %5, align 8
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = getelementptr i8, ptr %34, i32 1
  %36 = add nsw i32 %30, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %36, i1 false)
  %37 = load i32, ptr %5, align 8
  %38 = getelementptr i8, ptr %31, i32 %37
  %39 = getelementptr i8, ptr %38, i32 %30
  store i64 %26, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %39, i32 8
  store i64 %12, ptr %40, align 1
  %41 = add nsw i32 %30, 16
  br label %57

42:                                               ; preds = %2
  %43 = and i32 %6, 63
  %44 = icmp ult i32 %43, 56
  %45 = select i1 %44, i32 56, i32 120
  %46 = sub nsw i32 %45, %43
  %47 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %0, i32 0, i32 13
  %48 = getelementptr i8, ptr %47, i32 %6
  store i8 -128, ptr %48, align 1
  %49 = load i32, ptr %5, align 8
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = getelementptr i8, ptr %50, i32 1
  %52 = add nsw i32 %46, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %52, i1 false)
  %53 = load i32, ptr %5, align 8
  %54 = getelementptr i8, ptr %47, i32 %53
  %55 = getelementptr i8, ptr %54, i32 %46
  store i64 %12, ptr %55, align 1
  %56 = add nsw i32 %46, 8
  br label %57

57:                                               ; preds = %42, %16
  %58 = phi i32 [ %56, %42 ], [ %41, %16 ]
  %59 = load i32, ptr %5, align 8
  %60 = add i32 %58, %59
  store i32 %60, ptr %5, align 8
  %61 = load i32, ptr %13, align 4
  %62 = or i32 %61, 16777216
  store i32 %62, ptr %13, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #12
  %5 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !15

8:                                                ; preds = %3
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %9 = tail call ptr @dev_driver_string(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %9, ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %3
  br i1 %4, label %26, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %1 to i32
  %21 = add i32 %20, 1073741824
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = and i32 %20, 4095
  %25 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %23, i32 noundef %24, i32 noundef %2, i32 noundef 1, i32 noundef 0) #12
  br label %26

26:                                               ; preds = %18, %17
  %27 = phi i32 [ %25, %18 ], [ -1, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_xmit_start(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = alloca [2 x %struct.scatterlist], align 4
  %8 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !14
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %113, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i32 40, i1 false) #12, !annotation !16
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1, i32 5
  store i32 16, ptr %15, align 4
  %16 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1, i32 6
  store i32 16, ptr %16, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 44
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1
  %24 = tail call i32 %20(ptr noundef %17, ptr noundef %23) #12
  br label %25

25:                                               ; preds = %22, %13
  %26 = icmp eq i32 %4, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %25
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 2) #12
  %28 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  store i32 %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds [2 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 3
  store i32 %3, ptr %30, align 4
  %31 = getelementptr inbounds [2 x %struct.scatterlist], ptr %7, i32 0, i32 1, i32 4
  store i32 %4, ptr %31, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %32, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  %42 = call ptr %39(ptr noundef nonnull %32, ptr noundef nonnull %7, i32 noundef 2, i32 noundef 1, i32 noundef 3, ptr noundef null) #12
  br label %57

43:                                               ; preds = %25
  call void @sg_init_table(ptr noundef nonnull %7, i32 noundef 1) #12
  %44 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  store i32 %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  store i32 %2, ptr %45, align 4
  %46 = load ptr, ptr %14, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %46, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 39
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = call ptr %53(ptr noundef nonnull %46, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #12
  br label %57

57:                                               ; preds = %55, %41
  %58 = phi ptr [ %42, %41 ], [ %56, %55 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %57, %51, %48, %43, %37, %34, %27
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -236
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  call void @clk_disable(ptr noundef %66) #12
  %67 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %68 = load i8, ptr %67, align 4, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %72 = load i8, ptr %71, align 1, !range !14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70, %60
  %75 = getelementptr inbounds %struct.crypto_async_request, ptr %61, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void %76(ptr noundef %61, i32 noundef -22) #12
  br label %79

79:                                               ; preds = %78, %74, %70
  %80 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %81 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %80) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  call void @__tasklet_schedule(ptr noundef %84) #12
  br label %111

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 6
  store ptr @atmel_sha_dma_callback, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 8
  store ptr %0, ptr %87, align 4
  call fastcc void @atmel_sha_write_ctrl(ptr noundef %0, i32 noundef 1) #12
  %88 = zext i32 %2 to i64
  %89 = getelementptr inbounds %struct.ahash_request, ptr %12, i32 2, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %90, %88
  store i64 %91, ptr %89, align 8
  %92 = icmp ult i64 %91, %88
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = getelementptr %struct.ahash_request, ptr %12, i32 2, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %93, %85
  %98 = icmp eq i32 %5, 0
  %99 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 2
  %102 = select i1 %98, i32 %100, i32 %101
  %103 = or i32 %102, 4
  store i32 %103, ptr %99, align 4
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef nonnull %58) #12
  %107 = load ptr, ptr %14, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 50
  %110 = load ptr, ptr %109, align 4
  call void %110(ptr noundef %107) #12
  br label %111

111:                                              ; preds = %97, %83, %79
  %112 = phi i32 [ -115, %97 ], [ -22, %79 ], [ -22, %83 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %147

113:                                              ; preds = %6
  %114 = add i32 %2, 3
  %115 = lshr i32 %114, 2
  %116 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 512) #12, !srcloc !8
  %119 = load ptr, ptr %116, align 4
  %120 = getelementptr i8, ptr %119, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %1) #12, !srcloc !8
  %121 = load ptr, ptr %116, align 4
  %122 = getelementptr i8, ptr %121, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %115) #12, !srcloc !8
  %123 = add i32 %4, 3
  %124 = lshr i32 %123, 2
  %125 = load ptr, ptr %116, align 4
  %126 = getelementptr i8, ptr %125, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %3) #12, !srcloc !8
  %127 = load ptr, ptr %116, align 4
  %128 = getelementptr i8, ptr %127, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %124) #12, !srcloc !8
  tail call fastcc void @atmel_sha_write_ctrl(ptr noundef %0, i32 noundef 1) #12
  %129 = zext i32 %2 to i64
  %130 = getelementptr inbounds %struct.ahash_request, ptr %12, i32 2, i32 0, i32 3
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %131, %129
  store i64 %132, ptr %130, align 8
  %133 = icmp ult i64 %132, %129
  br i1 %133, label %134, label %138

134:                                              ; preds = %113
  %135 = getelementptr %struct.ahash_request, ptr %12, i32 2, i32 1
  %136 = load i64, ptr %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, ptr %135, align 8
  br label %138

138:                                              ; preds = %134, %113
  %139 = icmp eq i32 %5, 0
  %140 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = or i32 %141, 2
  %143 = select i1 %139, i32 %141, i32 %142
  %144 = or i32 %143, 4
  store i32 %144, ptr %140, align 4
  %145 = load ptr, ptr %116, align 4
  %146 = getelementptr i8, ptr %145, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 256) #12, !srcloc !8
  br label %147

147:                                              ; preds = %138, %111
  %148 = phi i32 [ %112, %111 ], [ -115, %138 ]
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_xmit_dma_map(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 13
  %8 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %9
  %13 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #12
  %14 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %26, !prof !15

17:                                               ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %18 = tail call ptr @dev_driver_string(ptr noundef %6) #12
  %19 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %18, ptr noundef %25) #12
  br label %26

26:                                               ; preds = %24, %4
  br i1 %13, label %27, label %29

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 7
  store i32 -1, ptr %28, align 8
  br label %39

29:                                               ; preds = %26
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %7 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %30, i32 %33
  %35 = and i32 %31, 4095
  %36 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %34, i32 noundef %35, i32 noundef %12, i32 noundef 1, i32 noundef 0) #12
  %37 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 7
  store i32 %36, ptr %37, align 8
  %38 = icmp eq i32 %36, -1
  br i1 %38, label %39, label %69

39:                                               ; preds = %29, %27
  %40 = load ptr, ptr %5, align 4
  %41 = load i32, ptr %8, align 4
  %42 = load i32, ptr %10, align 8
  %43 = add i32 %42, %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.17, i32 noundef %43) #13
  %44 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -236
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %50) #12
  %51 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %52 = load i8, ptr %51, align 4, !range !14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %56 = load i8, ptr %55, align 1, !range !14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54, %39
  %59 = getelementptr inbounds %struct.crypto_async_request, ptr %45, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void %60(ptr noundef %45, i32 noundef -22) #12
  br label %63

63:                                               ; preds = %62, %58, %54
  %64 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %65 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %64) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %68) #12
  br label %74

69:                                               ; preds = %29
  %70 = getelementptr inbounds %struct.atmel_sha_reqctx, ptr %1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -131073
  store i32 %72, ptr %70, align 4
  %73 = tail call fastcc i32 @atmel_sha_xmit_start(ptr noundef %0, i32 noundef %36, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3)
  br label %74

74:                                               ; preds = %69, %67, %63
  %75 = phi i32 [ %73, %69 ], [ -22, %63 ], [ -22, %67 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_sha_dma_callback(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #12, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_sha_write_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %19, label %6, !prof !15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 4, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4) #12, !srcloc !8
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17, i32 1
  %16 = load i8, ptr %15, align 1, !range !14
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 2, i32 65538
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #12, !srcloc !8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 1, %19 ], [ %18, %14 ]
  %25 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 1, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 8
  %28 = and i32 %27, 7
  switch i32 %28, label %38 [
    i32 0, label %29
    i32 4, label %30
    i32 1, label %32
    i32 2, label %34
    i32 3, label %36
  ]

29:                                               ; preds = %23
  br label %38

30:                                               ; preds = %23
  %31 = or i32 %24, 1024
  br label %38

32:                                               ; preds = %23
  %33 = or i32 %24, 256
  br label %38

34:                                               ; preds = %23
  %35 = or i32 %24, 512
  br label %38

36:                                               ; preds = %23
  %37 = or i32 %24, 768
  br label %38

38:                                               ; preds = %36, %34, %32, %30, %29, %23
  %39 = phi i32 [ %24, %23 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %24, %29 ]
  %40 = phi i1 [ false, %23 ], [ true, %36 ], [ true, %34 ], [ true, %32 ], [ true, %30 ], [ true, %29 ]
  %41 = phi i32 [ 0, %23 ], [ 16, %36 ], [ 16, %34 ], [ 8, %32 ], [ 8, %30 ], [ 5, %29 ]
  %42 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 2, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = getelementptr %struct.ahash_request, ptr %4, i32 2, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 16) #12, !srcloc !8
  br label %79

52:                                               ; preds = %45, %38
  %53 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 17, i32 4
  %54 = load i8, ptr %53, align 4, !range !14
  %55 = icmp eq i8 %54, 0
  %56 = and i32 %26, 33554432
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %79, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 1, i32 0, i32 2
  %61 = and i32 %26, -33554433
  store i32 %61, ptr %25, align 4
  %62 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 4096) #12, !srcloc !8
  br i1 %40, label %64, label %76

64:                                               ; preds = %59
  %65 = call i32 @llvm.umax.i32(i32 %41, i32 1)
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %74, %66 ], [ 0, %64 ]
  %68 = shl i32 %67, 2
  %69 = add nuw nsw i32 %68, 64
  %70 = getelementptr i32, ptr %60, i32 %67
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %62, align 4
  %73 = getelementptr i8, ptr %72, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #12, !srcloc !8
  %74 = add nuw nsw i32 %67, 1
  %75 = icmp eq i32 %74, %65
  br i1 %75, label %76, label %66

76:                                               ; preds = %66, %59
  %77 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 16) #12, !srcloc !8
  %78 = or i32 %39, 32
  br label %79

79:                                               ; preds = %76, %52, %49
  %80 = phi i32 [ %78, %76 ], [ %39, %52 ], [ %39, %49 ]
  %81 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %80) #12, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atmel_sha_hmac_cra_init(ptr nocapture noundef writeonly %0) #11 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 512, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr @atmel_sha_hmac_start, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(140) %4, i8 0, i32 140, i1 false) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_sha_hmac_cra_exit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(140) %2, i8 0, i32 140, i1 false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @atmel_sha, align 4
  %10 = icmp eq ptr %9, @atmel_sha
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = add i32 %18, -20
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30) #12
  switch i32 %20, label %37 [
    i32 0, label %27
    i32 2, label %24
    i32 3, label %21
    i32 7, label %22
    i32 11, label %23
  ]

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %22, %21, %12
  %25 = phi i32 [ 768, %23 ], [ 512, %22 ], [ 256, %21 ], [ 1024, %12 ]
  %26 = phi i32 [ 128, %23 ], [ 128, %22 ], [ 64, %21 ], [ 64, %12 ]
  store i32 %25, ptr %14, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ 64, %12 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false) #12
  store i32 256, ptr %31, align 4
  %32 = load ptr, ptr %2, align 16
  %33 = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 0, ptr %35, align 8
  %36 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %34, ptr noundef %0) #12
  br label %37

37:                                               ; preds = %27, %12
  %38 = phi i32 [ %36, %27 ], [ -22, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @atmel_sha, align 4
  %10 = icmp eq ptr %9, @atmel_sha
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_sha_drv, ptr @atmel_sha, i32 0, i32 1)) #12
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = add i32 %18, -20
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30) #12
  switch i32 %20, label %37 [
    i32 0, label %27
    i32 2, label %24
    i32 3, label %21
    i32 7, label %22
    i32 11, label %23
  ]

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %12
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %22, %21, %12
  %25 = phi i32 [ 768, %23 ], [ 512, %22 ], [ 256, %21 ], [ 1024, %12 ]
  %26 = phi i32 [ 128, %23 ], [ 128, %22 ], [ 64, %21 ], [ 64, %12 ]
  store i32 %25, ptr %14, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ 64, %12 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false) #12
  store i32 256, ptr %31, align 4
  %32 = load ptr, ptr %2, align 16
  %33 = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 3, ptr %35, align 8
  %36 = tail call fastcc i32 @atmel_sha_handle_queue(ptr noundef %34, ptr noundef %0) #12
  br label %37

37:                                               ; preds = %27, %12
  %38 = phi i32 [ %36, %27 ], [ -22, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 2, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(140) %4, i8 0, i32 140, i1 false) #12
  %7 = icmp ugt i32 %2, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #12
  store ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 1 %1, i32 %2, i1 false) #12
  br label %13

13:                                               ; preds = %11, %8
  store i8 1, ptr %4, align 4
  %14 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 4
  store i32 %2, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ 0, %13 ], [ -12, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 256) #12, !srcloc !8
  %16 = load i32, ptr %9, align 4
  %17 = or i32 %16, 16
  store i32 %17, ptr %9, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -236
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %25 = load i8, ptr %24, align 4, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %29 = load i8, ptr %28, align 1, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %19, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %19, i32 noundef %6) #12
  br label %36

36:                                               ; preds = %35, %31, %27
  %37 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %37) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %41) #12
  br label %78

42:                                               ; preds = %13, %8
  %43 = phi i32 [ %10, %8 ], [ %17, %13 ]
  %44 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  switch i32 %45, label %56 [
    i32 0, label %46
    i32 1, label %48
    i32 2, label %51
    i32 3, label %54
  ]

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @atmel_sha_hmac_setup(ptr noundef %0, ptr noundef nonnull @atmel_sha_hmac_init_done)
  br label %78

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr @atmel_sha_done, ptr %49, align 4
  %50 = tail call fastcc i32 @atmel_sha_update_req(ptr noundef %0)
  br label %78

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr @atmel_sha_hmac_final, ptr %52, align 4
  %53 = tail call fastcc i32 @atmel_sha_final_req(ptr noundef %0)
  br label %78

54:                                               ; preds = %42
  %55 = tail call fastcc i32 @atmel_sha_hmac_setup(ptr noundef %0, ptr noundef nonnull @atmel_sha_hmac_digest2)
  br label %78

56:                                               ; preds = %42
  %57 = load ptr, ptr %2, align 4
  %58 = and i32 %43, -236
  store i32 %58, ptr %9, align 4
  %59 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %59) #12
  %60 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %61 = load i8, ptr %60, align 4, !range !14
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %65 = load i8, ptr %64, align 1, !range !14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63, %56
  %68 = getelementptr inbounds %struct.crypto_async_request, ptr %57, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void %69(ptr noundef %57, i32 noundef -22) #12
  br label %72

72:                                               ; preds = %71, %67, %63
  %73 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %74 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %73) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %77) #12
  br label %78

78:                                               ; preds = %76, %72, %54, %51, %48, %46, %40, %36
  %79 = phi i32 [ %55, %54 ], [ %53, %51 ], [ %50, %48 ], [ %47, %46 ], [ %6, %36 ], [ %6, %40 ], [ -22, %72 ], [ -22, %76 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_hmac_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 472
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 1, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 7
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -236
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %21 = load i8, ptr %20, align 4, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %25 = load i8, ptr %24, align 1, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %13
  %28 = getelementptr inbounds %struct.crypto_async_request, ptr %14, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef %14, i32 noundef -22) #12
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %34 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %37) #12
  br label %66

38:                                               ; preds = %2
  %39 = getelementptr inbounds [5 x i32], ptr @switch.table.atmel_sha_hmac_setup, i32 0, i32 %11
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds [5 x i32], ptr @switch.table.atmel_sha_hmac_setup.21, i32 0, i32 %11
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 2, i32 5, i32 16
  store i32 %40, ptr %43, align 8
  %44 = getelementptr inbounds %struct.ahash_request, ptr %4, i32 2, i32 5, i32 20
  store i32 %42, ptr %44, align 4
  %45 = getelementptr i8, ptr %6, i32 76
  %46 = load i8, ptr %45, align 4, !range !14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = tail call i32 %1(ptr noundef %0) #12, !callees !17
  br label %66

50:                                               ; preds = %38
  %51 = getelementptr i8, ptr %6, i32 80
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %6, i32 212
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = getelementptr i8, ptr %6, i32 84
  %57 = select i1 %55, ptr %56, ptr %54
  %58 = icmp ult i32 %40, %52
  br i1 %58, label %59, label %61, !prof !15

59:                                               ; preds = %50
  %60 = tail call fastcc i32 @atmel_sha_cpu_hash(ptr noundef %0, ptr noundef %57, i32 noundef %52, i1 noundef zeroext true, ptr noundef nonnull @atmel_sha_hmac_prehash_key_done) #12
  br label %66

61:                                               ; preds = %50
  %62 = getelementptr i8, ptr %6, i32 216
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %62, ptr align 1 %57, i32 %52, i1 false)
  %63 = getelementptr i8, ptr %62, i32 %52
  %64 = sub i32 %40, %52
  tail call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %64, i1 false)
  %65 = tail call fastcc i32 @atmel_sha_hmac_compute_ipad_hash(ptr noundef %0)
  br label %66

66:                                               ; preds = %61, %59, %48, %36, %32
  %67 = phi i32 [ %49, %48 ], [ %60, %59 ], [ %65, %61 ], [ -22, %32 ], [ -22, %36 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_init_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  store i32 0, ptr %10, align 8
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 3
  store i64 %11, ptr %12, align 8
  %13 = getelementptr %struct.ahash_request, ptr %3, i32 2, i32 1
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 33554432
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 2
  %18 = getelementptr i8, ptr %5, i32 216
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 4 %18, i32 %9, i1 false)
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -236
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %26 = load i8, ptr %25, align 4, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %30 = load i8, ptr %29, align 1, !range !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %1
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %19, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %19, i32 noundef 0) #12
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %39 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %42) #12
  br label %43

43:                                               ; preds = %41, %37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_final(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 2
  %8 = getelementptr i8, ptr %5, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %11, 4
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = lshr i32 %11, 2
  %19 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %28, %20 ]
  %22 = shl i32 %21, 2
  %23 = add i32 %22, 128
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !9
  %27 = getelementptr i32, ptr %7, i32 %21
  store i32 %26, ptr %27, align 4
  %28 = add nuw nsw i32 %21, 1
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %30, label %20

30:                                               ; preds = %20, %1
  %31 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 4096) #12, !srcloc !8
  %33 = icmp ult i32 %15, 4
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = lshr i32 %15, 2
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %44, %36 ], [ 0, %34 ]
  %38 = shl i32 %37, 2
  %39 = add i32 %38, 64
  %40 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 3, i32 %37
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #12, !srcloc !8
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp eq i32 %44, %35
  br i1 %45, label %46, label %36

46:                                               ; preds = %36, %30
  %47 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1792
  %50 = or i32 %49, 33
  %51 = load ptr, ptr %31, align 4
  %52 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #12, !srcloc !8
  %53 = add i32 %13, %11
  %54 = load ptr, ptr %31, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #12, !srcloc !8
  %56 = load ptr, ptr %31, align 4
  %57 = getelementptr i8, ptr %56, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %11) #12, !srcloc !8
  %58 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 16) #12, !srcloc !8
  %59 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 18
  tail call void @sg_init_one(ptr noundef %59, ptr noundef %7, i32 noundef %11) #12
  %60 = icmp eq i32 %11, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = tail call i32 @atmel_sha_hmac_final_done(ptr noundef %0) #12, !callees !18
  br label %79

63:                                               ; preds = %46
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 1, i32 0, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, -201326593
  %68 = or i32 %67, 134217728
  store i32 %68, ptr %65, align 4
  %69 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 2, i32 5, i32 4
  store ptr %59, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 2, i32 5, i32 12
  store i32 %11, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 2, i32 5, i32 8
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 2, i32 5, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 %11) #12
  %75 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 2, i32 3
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.ahash_request, ptr %64, i32 3
  tail call void @scatterwalk_map_and_copy(ptr noundef %76, ptr noundef %59, i32 noundef 0, i32 noundef %74, i32 noundef 0) #12
  %77 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 15
  store ptr @atmel_sha_hmac_final_done, ptr %77, align 4
  %78 = tail call i32 @atmel_sha_cpu_transfer(ptr noundef %0) #12
  br label %79

79:                                               ; preds = %63, %61
  %80 = phi i32 [ %78, %63 ], [ %62, %61 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_digest2(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 2
  %10 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -236
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %20 = load i8, ptr %19, align 4, !range !14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %24 = load i8, ptr %23, align 1, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %3, i32 noundef -22) #12
  br label %31

31:                                               ; preds = %30, %26, %22
  %32 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %33 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %32) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %225

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %36) #12
  br label %225

37:                                               ; preds = %1
  %38 = icmp ugt i32 %11, 56
  br i1 %38, label %39, label %74

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %74, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, -1
  br label %47

47:                                               ; preds = %69, %43
  %48 = phi i32 [ 1, %43 ], [ %72, %69 ]
  %49 = phi ptr [ %41, %43 ], [ %71, %69 ]
  %50 = phi i32 [ %11, %43 ], [ %70, %69 ]
  %51 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %50, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %61 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 3
  store i32 %48, ptr %61, align 4
  %62 = load i32, ptr %60, align 4
  %63 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 4
  store i32 %62, ptr %63, align 4
  %64 = add i32 %50, 3
  %65 = and i32 %64, -4
  store i32 %65, ptr %60, align 4
  br label %74

66:                                               ; preds = %55
  %67 = and i32 %57, %46
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = sub i32 %50, %57
  %71 = tail call ptr @sg_next(ptr noundef nonnull %49) #12
  %72 = add i32 %48, 1
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %47

74:                                               ; preds = %69, %66, %59, %47, %39, %37
  %75 = phi i1 [ false, %37 ], [ true, %59 ], [ false, %39 ], [ false, %47 ], [ false, %66 ], [ false, %69 ]
  %76 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 4096) #12, !srcloc !8
  %78 = icmp ult i32 %8, 4
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 8192) #12, !srcloc !8
  br label %107

81:                                               ; preds = %74
  %82 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ %91, %83 ], [ 0, %81 ]
  %85 = shl i32 %84, 2
  %86 = add i32 %85, 64
  %87 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 2, i32 %84
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %76, align 4
  %90 = getelementptr i8, ptr %89, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #12, !srcloc !8
  %91 = add nuw nsw i32 %84, 1
  %92 = icmp eq i32 %91, %82
  br i1 %92, label %93, label %83

93:                                               ; preds = %83
  %94 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 8192) #12, !srcloc !8
  br i1 %78, label %107, label %95

95:                                               ; preds = %93
  %96 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i32 [ %105, %97 ], [ 0, %95 ]
  %99 = shl i32 %98, 2
  %100 = add i32 %99, 64
  %101 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 3, i32 %98
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %76, align 4
  %104 = getelementptr i8, ptr %103, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #12, !srcloc !8
  %105 = add nuw nsw i32 %98, 1
  %106 = icmp eq i32 %105, %96
  br i1 %106, label %107, label %97

107:                                              ; preds = %97, %93, %79
  %108 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 1792
  %111 = select i1 %75, i32 67586, i32 67585
  %112 = or i32 %110, %111
  %113 = load ptr, ptr %76, align 4
  %114 = getelementptr i8, ptr %113, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #12, !srcloc !8
  %115 = load i32, ptr %10, align 8
  %116 = load ptr, ptr %76, align 4
  %117 = getelementptr i8, ptr %116, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #12, !srcloc !8
  %118 = load i32, ptr %10, align 8
  %119 = load ptr, ptr %76, align 4
  %120 = getelementptr i8, ptr %119, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #12, !srcloc !8
  %121 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 16) #12, !srcloc !8
  br i1 %75, label %122, label %202

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr @atmel_sha_hmac_final_done, ptr %127, align 4
  %128 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 2
  store ptr %124, ptr %128, align 4
  %129 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 @dma_map_sg_attrs(ptr noundef %130, ptr noundef %124, i32 noundef %132, i32 noundef 1, i32 noundef 0) #12
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %176, label %135

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1, i32 5
  store i32 16, ptr %136, align 4
  %137 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1, i32 6
  store i32 16, ptr %137, align 4
  %138 = load ptr, ptr %126, align 4
  %139 = getelementptr inbounds %struct.dma_device, ptr %138, i32 0, i32 44
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %171, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 1
  %144 = tail call i32 %140(ptr noundef %126, ptr noundef %143) #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %142
  %147 = load ptr, ptr %128, align 4
  %148 = icmp eq ptr %126, null
  br i1 %148, label %171, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %126, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %171, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 39
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %171, label %156

156:                                              ; preds = %152
  %157 = tail call ptr %154(ptr noundef nonnull %126, ptr noundef %147, i32 noundef %133, i32 noundef 1, i32 noundef 3, ptr noundef null) #12
  %158 = icmp eq ptr %157, null
  br i1 %158, label %171, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 6
  store ptr @atmel_sha_dma_callback2, ptr %160, align 4
  %161 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 8
  store ptr %0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 %163(ptr noundef nonnull %157) #12
  %165 = tail call i32 @llvm.smin.i32(i32 %164, i32 0) #12
  %166 = icmp sgt i32 %164, -1
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load ptr, ptr %126, align 4
  %169 = getelementptr inbounds %struct.dma_device, ptr %168, i32 0, i32 50
  %170 = load ptr, ptr %169, align 4
  tail call void %170(ptr noundef nonnull %126) #12
  br label %225

171:                                              ; preds = %159, %156, %152, %149, %146, %142, %135
  %172 = phi i32 [ %144, %142 ], [ %165, %159 ], [ -12, %156 ], [ -38, %135 ], [ -12, %152 ], [ -12, %149 ], [ -12, %146 ]
  %173 = load ptr, ptr %129, align 4
  %174 = load ptr, ptr %128, align 4
  %175 = load i32, ptr %131, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %173, ptr noundef %174, i32 noundef %175, i32 noundef 1, i32 noundef 0) #12
  br label %176

176:                                              ; preds = %171, %122
  %177 = phi i32 [ %172, %171 ], [ -12, %122 ]
  %178 = load ptr, ptr %2, align 4
  %179 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, -236
  store i32 %181, ptr %179, align 4
  %182 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  tail call void @clk_disable(ptr noundef %183) #12
  %184 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %185 = load i8, ptr %184, align 4, !range !14
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %189 = load i8, ptr %188, align 1, !range !14
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187, %176
  %192 = getelementptr inbounds %struct.crypto_async_request, ptr %178, i32 0, i32 1
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  tail call void %193(ptr noundef %178, i32 noundef %177) #12
  br label %196

196:                                              ; preds = %195, %191, %187
  %197 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %198 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %197) #12
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %225

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %201) #12
  br label %225

202:                                              ; preds = %107
  %203 = load i32, ptr %10, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = tail call i32 @atmel_sha_hmac_final_done(ptr noundef %0) #12, !callees !18
  br label %225

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %2, align 4
  %211 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 1, i32 0, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, -201326593
  %214 = or i32 %213, 134217728
  store i32 %214, ptr %211, align 4
  %215 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 2, i32 5, i32 4
  store ptr %209, ptr %215, align 4
  %216 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 2, i32 5, i32 12
  store i32 %203, ptr %216, align 4
  %217 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 2, i32 5, i32 8
  store i32 0, ptr %217, align 8
  %218 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 2, i32 5, i32 16
  %219 = load i32, ptr %218, align 8
  %220 = tail call i32 @llvm.umin.i32(i32 %219, i32 %203) #12
  %221 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 2, i32 3
  store i32 %220, ptr %221, align 8
  %222 = getelementptr inbounds %struct.ahash_request, ptr %210, i32 3
  tail call void @scatterwalk_map_and_copy(ptr noundef %222, ptr noundef %209, i32 noundef 0, i32 noundef %220, i32 noundef 0) #12
  %223 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 15
  store ptr @atmel_sha_hmac_final_done, ptr %223, align 4
  %224 = tail call i32 @atmel_sha_cpu_transfer(ptr noundef %0) #12
  br label %225

225:                                              ; preds = %207, %205, %200, %196, %167, %35, %31
  %226 = phi i32 [ -22, %31 ], [ -22, %35 ], [ -115, %167 ], [ %177, %196 ], [ %177, %200 ], [ %224, %207 ], [ %206, %205 ]
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_hmac_compute_ipad_hash(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %5, i32 344
  %10 = getelementptr i8, ptr %5, i32 216
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %10, i32 %8, i1 false)
  %11 = icmp ult i32 %8, 4
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = lshr i32 %8, 2
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %22, %14 ], [ 0, %12 ]
  %16 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 2, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %17, 909522486
  store i32 %18, ptr %16, align 4
  %19 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 3, i32 %15
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, 1549556828
  store i32 %21, ptr %19, align 4
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %1
  %25 = tail call fastcc i32 @atmel_sha_cpu_hash(ptr noundef %0, ptr noundef %10, i32 noundef %8, i1 noundef zeroext false, ptr noundef nonnull @atmel_sha_hmac_compute_opad_hash)
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_sha_cpu_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %7, i32 2, i32 5, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  %11 = and i32 %10, %2
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %12, %3
  br i1 %13, label %38, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -236
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %21 = load i8, ptr %20, align 4, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %25 = load i8, ptr %24, align 1, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.crypto_async_request, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef %7, i32 noundef -22) #12
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %34 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %37) #12
  br label %72

38:                                               ; preds = %5
  %39 = select i1 %3, i32 %2, i32 0
  %40 = getelementptr inbounds %struct.ahash_request, ptr %7, i32 1, i32 0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1792
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #12, !srcloc !8
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %39) #12, !srcloc !8
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %39) #12, !srcloc !8
  %51 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 16) #12, !srcloc !8
  %52 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 18
  tail call void @sg_init_one(ptr noundef %52, ptr noundef %1, i32 noundef %2) #12
  %53 = icmp eq i32 %2, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = tail call i32 %4(ptr noundef %0) #12, !callees !18
  br label %72

56:                                               ; preds = %38
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 1, i32 0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -201326593
  %61 = or i32 %60, 134217728
  store i32 %61, ptr %58, align 4
  %62 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 2, i32 5, i32 4
  store ptr %52, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 2, i32 5, i32 12
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 2, i32 5, i32 8
  store i32 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 2, i32 5, i32 16
  %66 = load i32, ptr %65, align 8
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 %2) #12
  %68 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 2, i32 3
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.ahash_request, ptr %57, i32 3
  tail call void @scatterwalk_map_and_copy(ptr noundef %69, ptr noundef %52, i32 noundef 0, i32 noundef %67, i32 noundef 0) #12
  %70 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 15
  store ptr %4, ptr %70, align 4
  %71 = tail call i32 @atmel_sha_cpu_transfer(ptr noundef %0) #12
  br label %72

72:                                               ; preds = %56, %54, %36, %32
  %73 = phi i32 [ -22, %32 ], [ -22, %36 ], [ %71, %56 ], [ %55, %54 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_prehash_key_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr i8, ptr %5, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %10, 4
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = lshr i32 %10, 2
  %16 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ 0, %14 ], [ %25, %17 ]
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 128
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !9
  %24 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 2, i32 %18
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i32 %18, 1
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %17

27:                                               ; preds = %17, %1
  %28 = getelementptr i8, ptr %5, i32 216
  %29 = getelementptr i8, ptr %28, i32 %10
  %30 = sub i32 %12, %10
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %30, i1 false)
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr i8, ptr %33, i32 64
  %35 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 2, i32 5, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr i8, ptr %33, i32 344
  %38 = getelementptr i8, ptr %33, i32 216
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %37, ptr align 4 %38, i32 %36, i1 false) #12
  %39 = icmp ult i32 %36, 4
  br i1 %39, label %52, label %40

40:                                               ; preds = %27
  %41 = lshr i32 %36, 2
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %50, %42 ], [ 0, %40 ]
  %44 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %34, i32 0, i32 2, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, 909522486
  store i32 %46, ptr %44, align 4
  %47 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %34, i32 0, i32 3, i32 %43
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, 1549556828
  store i32 %49, ptr %47, align 4
  %50 = add nuw nsw i32 %43, 1
  %51 = icmp eq i32 %50, %41
  br i1 %51, label %52, label %42

52:                                               ; preds = %42, %27
  %53 = tail call fastcc i32 @atmel_sha_cpu_hash(ptr noundef %0, ptr noundef %38, i32 noundef %36, i1 noundef zeroext false, ptr noundef nonnull @atmel_sha_hmac_compute_opad_hash) #12
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_cpu_transfer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 26
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 3
  %11 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 8
  %13 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 12
  %14 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %15 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 4
  br label %16

16:                                               ; preds = %43, %1
  %17 = load i32, ptr %10, align 8
  %18 = add i32 %17, 3
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = lshr i32 %18, 2
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %32, %22 ], [ 0, %20 ]
  %24 = phi i32 [ %31, %22 ], [ 0, %20 ]
  %25 = shl i32 %23, 2
  %26 = add i32 %25, 64
  %27 = getelementptr i32, ptr %4, i32 %24
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #12, !srcloc !8
  %31 = add nuw nsw i32 %24, 1
  %32 = add nuw nsw i32 %23, %9
  %33 = icmp eq i32 %31, %21
  br i1 %33, label %34, label %22

34:                                               ; preds = %22
  %35 = load i32, ptr %10, align 8
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi i32 [ %35, %34 ], [ %17, %16 ]
  %38 = load i32, ptr %12, align 8
  %39 = add i32 %38, %37
  store i32 %39, ptr %12, align 8
  %40 = load i32, ptr %13, align 4
  %41 = sub i32 %40, %37
  store i32 %41, ptr %13, align 4
  %42 = icmp eq i32 %40, %37
  br i1 %42, label %56, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %14, align 8
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %41)
  store i32 %45, ptr %10, align 8
  %46 = load ptr, ptr %15, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %4, ptr noundef %46, i32 noundef %39, i32 noundef %45, i32 noundef 0) #12
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 28
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #12, !srcloc !9
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %16

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr @atmel_sha_cpu_transfer, ptr %53, align 4
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1) #12, !srcloc !8
  br label %76

56:                                               ; preds = %36
  %57 = load i32, ptr %5, align 4
  %58 = and i32 %57, 134217728
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  br i1 %59, label %62, label %64, !prof !15

62:                                               ; preds = %56
  %63 = tail call i32 %61(ptr noundef %0) #12
  br label %76

64:                                               ; preds = %56
  %65 = load ptr, ptr %11, align 4
  %66 = getelementptr i8, ptr %65, i32 28
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !9
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70, !prof !19

70:                                               ; preds = %64
  %71 = tail call i32 %61(ptr noundef %0) #12
  br label %76

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  store ptr %61, ptr %73, align 4
  %74 = load ptr, ptr %11, align 4
  %75 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1) #12, !srcloc !8
  br label %76

76:                                               ; preds = %72, %70, %62, %52
  %77 = phi i32 [ -115, %52 ], [ %63, %62 ], [ %71, %70 ], [ -115, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_compute_opad_hash(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = lshr i32 %10, 2
  %14 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ 0, %12 ], [ %23, %15 ]
  %17 = shl i32 %16, 2
  %18 = add i32 %17, 128
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !9
  %22 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 2, i32 %16
  store i32 %21, ptr %22, align 4
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %25, label %15

25:                                               ; preds = %15, %1
  %26 = getelementptr i8, ptr %5, i32 344
  %27 = tail call fastcc i32 @atmel_sha_cpu_hash(ptr noundef %0, ptr noundef %26, i32 noundef %8, i1 noundef zeroext false, ptr noundef nonnull @atmel_sha_hmac_setup_done)
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_setup_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 5, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = lshr i32 %8, 2
  %12 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %21, %13 ]
  %15 = shl i32 %14, 2
  %16 = add i32 %15, 128
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !9
  %20 = getelementptr %struct.atmel_sha_hmac_ctx, ptr %6, i32 0, i32 3, i32 %14
  store i32 %19, ptr %20, align 4
  %21 = add nuw nsw i32 %14, 1
  %22 = icmp eq i32 %21, %11
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %1
  %24 = getelementptr i8, ptr %5, i32 76
  %25 = getelementptr i8, ptr %5, i32 212
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(140) %24, i8 0, i32 140, i1 false) #12
  %27 = getelementptr i8, ptr %5, i32 472
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0) #12
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_sha_hmac_final_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 1, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 7
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds [5 x i32], ptr @switch.table.atmel_sha_hmac_final_done, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %14 ]
  %16 = load ptr, ptr %4, align 8
  %17 = shl i32 %15, 2
  %18 = add nuw nsw i32 %17, 128
  %19 = getelementptr inbounds %struct.atmel_sha_dev, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !9
  %23 = getelementptr i32, ptr %5, i32 %15
  store i32 %22, ptr %23, align 4
  %24 = add nuw nsw i32 %15, 1
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %26, label %14

26:                                               ; preds = %14
  %27 = load i32, ptr %6, align 4
  %28 = or i32 %27, 33554432
  store i32 %28, ptr %6, align 4
  %29 = load ptr, ptr %2, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi ptr [ %3, %1 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 32
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 7
  switch i32 %39, label %40 [
    i32 3, label %48
    i32 4, label %42
    i32 1, label %44
    i32 2, label %46
  ]

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %33, ptr noundef align 4 dereferenceable(20) %41, i32 20, i1 false) #12
  br label %50

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(28) %33, ptr noundef align 4 dereferenceable(28) %43, i32 28, i1 false) #12
  br label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %33, ptr noundef align 4 dereferenceable(32) %45, i32 32, i1 false) #12
  br label %50

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %33, ptr noundef align 4 dereferenceable(48) %47, i32 48, i1 false) #12
  br label %50

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %33, ptr noundef align 4 dereferenceable(64) %49, i32 64, i1 false) #12
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %40, %30
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -236
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %56) #12
  %57 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  %58 = load i8, ptr %57, align 4, !range !14
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 13
  %62 = load i8, ptr %61, align 1, !range !14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60, %50
  %65 = getelementptr inbounds %struct.crypto_async_request, ptr %51, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void %66(ptr noundef %51, i32 noundef 0) #12
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8, i32 1
  %71 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %70) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 8
  tail call void @__tasklet_schedule(ptr noundef %74) #12
  br label %75

75:                                               ; preds = %73, %69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_sha_dma_callback2(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #12
  %8 = load ptr, ptr %4, align 4
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, -1
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %16, %12 ], [ 0, %1 ]
  %14 = phi ptr [ %15, %12 ], [ %8, %1 ]
  %15 = tail call ptr @sg_next(ptr noundef %14) #12
  %16 = add nuw nsw i32 %13, 1
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %17, -1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %12, label %20

20:                                               ; preds = %12, %1
  %21 = phi ptr [ %8, %1 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 16, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 12
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.atmel_sha_dev, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !9
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !19

34:                                               ; preds = %20
  %35 = tail call i32 %27(ptr noundef %0) #12
  br label %39

36:                                               ; preds = %20
  store ptr %27, ptr %26, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #12, !srcloc !8
  br label %39

39:                                               ; preds = %36, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{i64 3098321}
!9 = !{i64 3098739}
!10 = !{i64 2148991778}
!11 = !{i64 2148987602}
!12 = !{i64 2148987677, i64 2148987704, i64 2148987751, i64 2148987773, i64 2148987801, i64 2148987821}
!13 = !{i64 2149014781}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{ptr @atmel_sha_hmac_digest2, ptr @atmel_sha_hmac_init_done}
!18 = !{ptr @atmel_sha_hmac_compute_opad_hash, ptr @atmel_sha_hmac_final_done, ptr @atmel_sha_hmac_prehash_key_done, ptr @atmel_sha_hmac_setup_done}
!19 = !{!"branch_weights", i32 2000, i32 1}
