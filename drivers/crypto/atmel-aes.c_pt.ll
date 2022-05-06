; ModuleID = '/llk/IR/drivers/crypto/atmel-aes.c_pt.bc'
source_filename = "../drivers/crypto/atmel-aes.c"
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
%struct.atmel_aes_drv = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.68, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.68 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [28 x i8], %struct.crypto_alg }
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
%struct.atmel_aes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, i32, i32, ptr, %struct.atmel_aes_dma, %struct.atmel_aes_dma, i32, ptr, %struct.scatterlist, ptr, %struct.atmel_aes_caps, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.atmel_aes_dma = type { ptr, ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_aes_caps = type { i8, i8, i8, i8, i8, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.atmel_aes_base_ctx = type { ptr, ptr, i32, [8 x i32], i16, i8 }
%struct.atmel_aes_ctr_ctx = type { %struct.atmel_aes_base_ctx, [4 x i32], i32, [2 x %struct.scatterlist], [2 x %struct.scatterlist], i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.atmel_aes_gcm_ctx = type { %struct.atmel_aes_base_ctx, [2 x %struct.scatterlist], [2 x %struct.scatterlist], [4 x i32], [4 x i32], [4 x i32], i32, ptr, ptr, ptr }
%struct.atmel_aes_xts_ctx = type { %struct.atmel_aes_base_ctx, [8 x i32], ptr }

@atmel_aes_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g46-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description242 = internal constant [47 x i8] c"description=Atmel AES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [46 x i8] c"author=Nicolas Royer - Eukr\C3\A9a Electromatique\00", section ".modinfo", align 1
@atmel_aes_driver = internal global %struct.platform_driver { ptr @atmel_aes_probe, ptr @atmel_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_aes_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"atmel_aes\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"atmel-aes\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to request aes irq.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"can't ioremap\0A\00", align 1
@atmel_aes = internal global %struct.atmel_aes_drv { %struct.list_head { ptr @atmel_aes, ptr @atmel_aes }, %struct.spinlock zeroinitializer }, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Atmel AES - Using %s, %s for DMA transfers\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"AES interrupt when no active requests.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"version: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Unmanaged aes version, set minimum capabilities\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"unable to alloc pages.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"no DMA channel available\0A\00", align 1
@aes_algs = internal global [8 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ecb_encrypt, ptr @atmel_aes_ecb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cbc_encrypt, ptr @atmel_aes_cbc_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ofb_encrypt, ptr @atmel_aes_ofb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb_encrypt, ptr @atmel_aes_cfb_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb32_encrypt, ptr @atmel_aes_cfb32_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 4, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb32(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb32-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb16_encrypt, ptr @atmel_aes_cfb16_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 2, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb16(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb16-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb8_encrypt, ptr @atmel_aes_cfb8_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb8(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb8-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_ctr_encrypt, ptr @atmel_aes_ctr_decrypt, ptr @atmel_aes_ctr_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 152, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }], align 64
@aes_cfb64_alg = internal global %struct.skcipher_alg { ptr @atmel_aes_setkey, ptr @atmel_aes_cfb64_encrypt, ptr @atmel_aes_cfb64_decrypt, ptr @atmel_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 48, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb64(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb64-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@aes_gcm_alg = internal global %struct.aead_alg { ptr @atmel_aes_gcm_setkey, ptr @atmel_aes_gcm_setauthsize, ptr @atmel_aes_gcm_encrypt, ptr @atmel_aes_gcm_decrypt, ptr @atmel_aes_gcm_init, ptr null, i32 12, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 192, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@aes_xts_alg = internal global %struct.skcipher_alg { ptr @atmel_aes_xts_setkey, ptr @atmel_aes_xts_encrypt, ptr @atmel_aes_xts_decrypt, ptr @atmel_aes_xts_init_tfm, ptr @atmel_aes_xts_exit_tfm, i32 32, i32 64, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 84, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-xts-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.68 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_license243], section "llvm.metadata"
@switch.table.atmel_aes_crypt = private unnamed_addr constant [4 x i16] [i16 8, i16 4, i16 2, i16 1], align 2
@switch.table.atmel_aes_gcm_setauthsize = private unnamed_addr constant [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

@__mod_of__atmel_aes_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_aes_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_aes_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_aes_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 224, i32 noundef 3520) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 8
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  store volatile ptr %3, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 12
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %10, ptr noundef nonnull @atmel_aes_done_task, i32 noundef %11) #11
  %12 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 15
  tail call void @tasklet_init(ptr noundef %12, ptr noundef nonnull @atmel_aes_queue_task, i32 noundef %11) #11
  %13 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 13
  tail call void @crypto_init_queue(ptr noundef %13, i32 noundef 50) #11
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %126

17:                                               ; preds = %5
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %21 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %126, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @atmel_aes_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #12
  br label %126

27:                                               ; preds = %23
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  %29 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 9
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #12
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %126

34:                                               ; preds = %27
  %35 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %14) #11
  %36 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #12
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %126

41:                                               ; preds = %34
  %42 = load ptr, ptr %29, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  %46 = load ptr, ptr %29, align 4
  %47 = tail call i32 @clk_enable(ptr noundef %46) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %123

49:                                               ; preds = %45
  %50 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 256) #11, !srcloc !8
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 14680064) #11, !srcloc !8
  %53 = load ptr, ptr %36, align 4
  %54 = getelementptr i8, ptr %53, i32 252
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !9
  %56 = and i32 %55, 4095
  %57 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 26
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.9, i32 noundef %56) #12
  %59 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25
  %61 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 1
  %62 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(5) %60, i8 0, i64 5, i1 false) #11
  store i32 1, ptr %62, align 4
  %63 = load i32, ptr %57, align 4
  %64 = and i32 %63, 4080
  switch i32 %64, label %69 [
    i32 1280, label %65
    i32 512, label %66
    i32 304, label %68
    i32 288, label %71
  ]

65:                                               ; preds = %49
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(5) %60, i8 1, i64 5, i1 false) #11
  store i32 4, ptr %62, align 4
  br label %71

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 2
  store i8 1, ptr %60, align 4
  store i8 1, ptr %61, align 1
  store i8 1, ptr %67, align 2
  store i32 4, ptr %62, align 4
  br label %71

68:                                               ; preds = %49
  store i8 1, ptr %60, align 4
  store i8 1, ptr %61, align 1
  store i32 4, ptr %62, align 4
  br label %71

69:                                               ; preds = %49
  %70 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.10) #12
  br label %71

71:                                               ; preds = %69, %68, %66, %65, %49
  %72 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #11
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 22
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 21
  store i32 16384, ptr %75, align 4
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.11) #12
  br label %123

79:                                               ; preds = %71
  %80 = tail call fastcc i32 @atmel_aes_dma_init(ptr noundef nonnull %3)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %79
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %83 = load ptr, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 0, i32 1), align 4
  store ptr @atmel_aes, ptr %3, align 4
  store ptr %83, ptr %8, align 4
  store volatile ptr %3, ptr %83, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %84 = load i16, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %86 = tail call fastcc i32 @atmel_aes_register_algs(ptr noundef nonnull %3)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 19
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dma_chan, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.dma_chan_dev, ptr %92, i32 0, i32 1, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.dma_chan_dev, ptr %92, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %88
  %100 = phi ptr [ %98, %96 ], [ %94, %88 ]
  %101 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 20
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dma_chan, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.dma_chan_dev, ptr %104, i32 0, i32 1, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.dma_chan_dev, ptr %104, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %108, %99
  %112 = phi ptr [ %110, %108 ], [ %106, %99 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %100, ptr noundef %112) #12
  br label %128

113:                                              ; preds = %82
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %114 = load ptr, ptr %8, align 4
  %115 = load ptr, ptr %3, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store volatile ptr %115, ptr %114, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %117 = load i16, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  tail call fastcc void @atmel_aes_dma_cleanup(ptr noundef nonnull %3)
  br label %119

119:                                              ; preds = %113, %79
  %120 = phi i32 [ %80, %79 ], [ %86, %113 ]
  %121 = load ptr, ptr %74, align 4
  %122 = ptrtoint ptr %121 to i32
  tail call void @free_pages(i32 noundef %122, i32 noundef 0) #11
  br label %123

123:                                              ; preds = %119, %77, %45
  %124 = phi i32 [ -12, %77 ], [ %120, %119 ], [ %47, %45 ]
  %125 = load ptr, ptr %29, align 4
  tail call void @clk_unprepare(ptr noundef %125) #11
  br label %126

126:                                              ; preds = %123, %41, %38, %31, %26, %17, %16
  %127 = phi i32 [ %24, %26 ], [ %33, %31 ], [ %40, %38 ], [ %43, %41 ], [ %124, %123 ], [ -19, %16 ], [ %20, %17 ]
  tail call void @tasklet_kill(ptr noundef %10) #11
  tail call void @tasklet_kill(ptr noundef %12) #11
  br label %128

128:                                              ; preds = %126, %111, %1
  %129 = phi i32 [ %127, %126 ], [ 0, %111 ], [ -12, %1 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %10 = load i16, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %12 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 3
  %13 = load i8, ptr %12, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_xts_alg) #11
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 2
  %18 = load i8, ptr %17, align 2, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_gcm_alg) #11
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 25, i32 1
  %23 = load i8, ptr %22, align 1, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_cfb64_alg) #11
  br label %26

26:                                               ; preds = %25, %21
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #11
  %27 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 14
  tail call void @tasklet_kill(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %28) #11
  %29 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  tail call void @dma_release_channel(ptr noundef %30) #11
  %31 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  tail call void @dma_release_channel(ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %34 to i32
  tail call void @free_pages(i32 noundef %35, i32 noundef 0) #11
  %36 = getelementptr inbounds %struct.atmel_aes_dev, ptr %3, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_unprepare(ptr noundef %37) #11
  br label %38

38:                                               ; preds = %26, %1
  %39 = phi i32 [ 0, %26 ], [ -19, %1 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_aes_done_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %2, i32 0, i32 5
  store i8 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %2, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_aes_queue_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %2, ptr noundef null)
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
define internal i32 @atmel_aes_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !9
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #11, !srcloc !8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 14, i32 1
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %24) #11
  br label %28

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.atmel_aes_dev, ptr %1, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.8) #12
  br label %28

28:                                               ; preds = %25, %23, %19, %2
  %29 = phi i32 [ 1, %25 ], [ 0, %2 ], [ 1, %19 ], [ 1, %23 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_dma_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.12) #11
  %5 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str.13) #11
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 4
  tail call void @dma_release_channel(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %9, %12 ], [ %4, %1 ]
  %16 = ptrtoint ptr %15 to i32
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #12
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %16, %14 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_register_algs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 2), align 16
  %3 = or i32 %2, 128
  store i32 %3, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 0, i32 11, i32 15), align 4
  %4 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_algs) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %86

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 2), align 16
  %8 = or i32 %7, 128
  store i32 %8, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1, i32 11, i32 15), align 4
  %9 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %6
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 2), align 16
  %13 = or i32 %12, 128
  store i32 %13, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2, i32 11, i32 15), align 4
  %14 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %11
  %17 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 2), align 16
  %18 = or i32 %17, 128
  store i32 %18, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3, i32 11, i32 15), align 4
  %19 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 2), align 16
  %23 = or i32 %22, 128
  store i32 %23, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4, i32 11, i32 15), align 4
  %24 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %21
  %27 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 2), align 16
  %28 = or i32 %27, 128
  store i32 %28, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5, i32 11, i32 15), align 4
  %29 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 2), align 16
  %33 = or i32 %32, 128
  store i32 %33, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6, i32 11, i32 15), align 4
  %34 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load i32, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 2), align 16
  %38 = or i32 %37, 128
  store i32 %38, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7, i32 11, i32 15), align 4
  %39 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25, i32 1
  %43 = load i8, ptr %42, align 1, !range !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 2), align 16
  %47 = or i32 %46, 128
  store i32 %47, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_cfb64_alg, i32 0, i32 11, i32 15), align 4
  %48 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_cfb64_alg) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25, i32 2
  %52 = load i8, ptr %51, align 2, !range !14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 2), align 16
  %56 = or i32 %55, 128
  store i32 %56, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds (%struct.aead_alg, ptr @aes_gcm_alg, i32 0, i32 10, i32 15), align 4
  %57 = tail call i32 @crypto_register_aead(ptr noundef nonnull @aes_gcm_alg) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25, i32 3
  %61 = load i8, ptr %60, align 1, !range !14
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 2), align 16
  %65 = or i32 %64, 128
  store i32 %65, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 2), align 16
  store i32 15, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 5), align 4
  store i32 300, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 6), align 32
  store ptr @__this_module, ptr getelementptr inbounds (%struct.skcipher_alg, ptr @aes_xts_alg, i32 0, i32 11, i32 15), align 4
  %66 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @aes_xts_alg) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %63
  tail call void @crypto_unregister_aead(ptr noundef nonnull @aes_gcm_alg) #11
  br label %69

69:                                               ; preds = %68, %54
  %70 = phi i32 [ %57, %54 ], [ %66, %68 ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_cfb64_alg) #11
  br label %71

71:                                               ; preds = %69, %45, %36, %31, %26, %21, %16, %11, %6
  %72 = phi i32 [ %39, %36 ], [ %34, %31 ], [ %29, %26 ], [ %24, %21 ], [ %19, %16 ], [ %14, %11 ], [ %9, %6 ], [ %70, %69 ], [ %48, %45 ]
  %73 = phi i1 [ false, %36 ], [ false, %31 ], [ false, %26 ], [ false, %21 ], [ false, %16 ], [ true, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  %74 = phi i1 [ false, %36 ], [ false, %31 ], [ false, %26 ], [ false, %21 ], [ true, %16 ], [ false, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  %75 = phi i1 [ false, %36 ], [ false, %31 ], [ false, %26 ], [ true, %21 ], [ false, %16 ], [ false, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  %76 = phi i1 [ false, %36 ], [ false, %31 ], [ true, %26 ], [ false, %21 ], [ false, %16 ], [ false, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  %77 = phi i1 [ false, %36 ], [ true, %31 ], [ false, %26 ], [ false, %21 ], [ false, %16 ], [ false, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  %78 = phi i1 [ true, %36 ], [ false, %31 ], [ false, %26 ], [ false, %21 ], [ false, %16 ], [ false, %11 ], [ false, %6 ], [ false, %69 ], [ false, %45 ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @aes_algs) #11
  br i1 %10, label %79, label %86

79:                                               ; preds = %71
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 1)) #11
  br i1 %73, label %86, label %80

80:                                               ; preds = %79
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 2)) #11
  br i1 %74, label %86, label %81

81:                                               ; preds = %80
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 3)) #11
  br i1 %75, label %86, label %82

82:                                               ; preds = %81
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 4)) #11
  br i1 %76, label %86, label %83

83:                                               ; preds = %82
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 5)) #11
  br i1 %77, label %86, label %84

84:                                               ; preds = %83
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 6)) #11
  br i1 %78, label %86, label %85

85:                                               ; preds = %84
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([8 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 7)) #11
  br label %86

86:                                               ; preds = %85, %84, %83, %82, %81, %80, %79, %71, %63, %59, %1
  %87 = phi i32 [ 0, %63 ], [ 0, %59 ], [ %4, %1 ], [ %72, %85 ], [ %72, %84 ], [ %72, %83 ], [ %72, %82 ], [ %72, %81 ], [ %72, %80 ], [ %72, %79 ], [ %72, %71 ]
  ret i32 %87
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_dma_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  tail call void @dma_release_channel(ptr noundef %5) #11
  ret void
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
define internal fastcc i32 @atmel_aes_handle_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 13
  %8 = tail call i32 @crypto_enqueue_request(ptr noundef %7, ptr noundef nonnull %1) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  br label %45

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 13
  %18 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 13, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %17
  %21 = select i1 %20, ptr null, ptr %19
  %22 = tail call ptr @crypto_dequeue_request(ptr noundef %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %11, align 4
  %26 = or i32 %25, 8
  store i32 %26, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  %27 = icmp eq ptr %21, null
  br i1 %27, label %32, label %29

28:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  br label %45

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %21, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %21, i32 noundef -115) #11
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %22, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  store ptr %22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  store ptr %35, ptr %37, align 4
  %38 = icmp ne ptr %22, %1
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 5
  store i8 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %0) #11
  %44 = select i1 %38, i32 %10, i32 %43
  br label %45

45:                                               ; preds = %32, %28, %15
  %46 = phi i32 [ %10, %15 ], [ %44, %32 ], [ %10, %28 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  switch i32 %2, label %7 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ecb_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = and i32 %12, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 1, ptr %18, align 64
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %21 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %19, ptr noundef %20) #11
  br label %22

22:                                               ; preds = %15, %7, %1
  %23 = phi i32 [ %21, %15 ], [ 0, %1 ], [ -22, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ecb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = and i32 %12, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 0, ptr %18, align 64
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %21 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %19, ptr noundef %20) #11
  br label %22

22:                                               ; preds = %15, %7, %1
  %23 = phi i32 [ %21, %15 ], [ 0, %1 ], [ -22, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_init_tfm(ptr nocapture noundef writeonly %0) #2 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %2 = load volatile ptr, ptr @atmel_aes, align 4
  %3 = icmp eq ptr %2, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store i32 128, ptr %0, align 64
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr @atmel_aes_start, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %6 ], [ -19, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cbc_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = and i32 %12, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 4097, ptr %18, align 64
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %21 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %19, ptr noundef %20) #11
  br label %22

22:                                               ; preds = %15, %7, %1
  %23 = phi i32 [ %21, %15 ], [ 0, %1 ], [ -22, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cbc_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = and i32 %12, %5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 4096, ptr %18, align 64
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 -36
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %0, align 64
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %32 = sub i32 %28, %27
  tail call void @scatterwalk_map_and_copy(ptr noundef %31, ptr noundef %20, i32 noundef %32, i32 noundef %27, i32 noundef 0) #11
  br label %33

33:                                               ; preds = %30, %24, %15
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %36 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %34, ptr noundef %35) #11
  br label %37

37:                                               ; preds = %33, %7, %1
  %38 = phi i32 [ %36, %33 ], [ 0, %1 ], [ -22, %7 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ofb_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 8193, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ofb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 8192, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 12289, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 12288, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb32_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 4, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 143361, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb32_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 4, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 143360, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb16_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 2, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 208897, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb16_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 2, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 208896, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb8_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 1, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 274433, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb8_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 1, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 274432, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 16385, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 16384, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_init_tfm(ptr nocapture noundef writeonly %0) #2 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %2 = load volatile ptr, ptr @atmel_aes, align 4
  %3 = icmp eq ptr %2, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store i32 128, ptr %0, align 64
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr @atmel_aes_ctr_start, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %6 ], [ -19, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_crypt(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = and i32 %1, 487424
  %7 = icmp eq i32 %6, 24576
  %8 = load i32, ptr %0, align 64
  br i1 %7, label %9, label %44

9:                                                ; preds = %2
  %10 = icmp ult i32 %8, 16
  br i1 %10, label %93, label %11

11:                                               ; preds = %9
  %12 = and i32 %8, 15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %11
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %18 = getelementptr i8, ptr %4, i32 144
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_skcipher, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %20, ptr %21, align 16
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %23, ptr %30, align 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %32, ptr %37, align 8
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %34, ptr %38, align 4
  store i32 %8, ptr %17, align 64
  %39 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %36, ptr %39, align 4
  br i1 %16, label %42, label %40

40:                                               ; preds = %14
  %41 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %17) #11
  br label %93

42:                                               ; preds = %14
  %43 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %17) #11
  br label %93

44:                                               ; preds = %2
  %45 = icmp eq i32 %8, 0
  br i1 %45, label %93, label %46

46:                                               ; preds = %44, %11
  %47 = and i32 %1, 483328
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %4, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.crypto_alg, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  %55 = and i32 %54, %8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %49, %46
  %58 = add nsw i32 %6, -77824
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 16)
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds [4 x i16], ptr @switch.table.atmel_aes_crypt, i32 0, i32 %59
  %63 = load i16, ptr %62, align 2
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i16 [ %63, %61 ], [ 16, %57 ]
  %66 = getelementptr i8, ptr %4, i32 108
  store i16 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %4, i32 110
  store i8 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 %1, ptr %68, align 64
  %69 = icmp ne i32 %6, 0
  %70 = and i32 %1, 1
  %71 = icmp eq i32 %70, 0
  %72 = and i1 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = getelementptr i8, ptr %4, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 -36
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %0, align 64
  %85 = icmp ult i32 %84, %83
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %88 = sub i32 %84, %83
  tail call void @scatterwalk_map_and_copy(ptr noundef %87, ptr noundef %75, i32 noundef %88, i32 noundef %83, i32 noundef 0) #11
  br label %89

89:                                               ; preds = %86, %79, %73, %64
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %92 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %90, ptr noundef %91)
  br label %93

93:                                               ; preds = %89, %49, %44, %42, %40, %9
  %94 = phi i32 [ %92, %89 ], [ -22, %9 ], [ 0, %44 ], [ -22, %49 ], [ %41, %40 ], [ %43, %42 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr i8, ptr %3, i32 48
  %6 = load i32, ptr %4, align 64
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %10, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = icmp ne i16 %12, 16
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 8
  %19 = load i32, ptr %5, align 64
  %20 = or i32 %18, %19
  store i32 %20, ptr %16, align 4
  %21 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_enable(ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %23)
  br label %103

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 256) #11, !srcloc !8
  %30 = load ptr, ptr %28, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 14680064) #11, !srcloc !8
  %32 = getelementptr i8, ptr %3, i32 -12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %35, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 24
  %40 = select i1 %39, i32 1024, i32 2048
  %41 = icmp eq i32 %38, 16
  %42 = select i1 %41, i32 0, i32 %40
  %43 = load i32, ptr %16, align 4
  %44 = and i32 %43, 487427
  %45 = or i32 %42, %44
  br i1 %15, label %46, label %52

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25
  %48 = load i8, ptr %47, align 4, !range !14
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 512, i32 520
  %51 = or i32 %50, %45
  br label %54

52:                                               ; preds = %27
  %53 = or i32 %45, 256
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ %53, %52 ], [ %51, %46 ]
  %56 = load ptr, ptr %28, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !8
  %58 = icmp ult i32 %38, 4
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = ashr i32 %38, 2
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %65, %61 ], [ %60, %59 ]
  %63 = phi ptr [ %69, %61 ], [ %36, %59 ]
  %64 = phi i32 [ %70, %61 ], [ 32, %59 ]
  %65 = add i32 %62, -1
  %66 = load i32, ptr %63, align 4
  %67 = load ptr, ptr %28, align 4
  %68 = getelementptr i8, ptr %67, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #11, !srcloc !8
  %69 = getelementptr i32, ptr %63, i32 1
  %70 = add i32 %64, 4
  %71 = icmp eq i32 %65, 0
  br i1 %71, label %72, label %61

72:                                               ; preds = %61, %54
  %73 = icmp eq ptr %33, null
  %74 = and i32 %55, 28672
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %73, %75
  br i1 %76, label %93, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %33, align 4
  %79 = load ptr, ptr %28, align 4
  %80 = getelementptr i8, ptr %79, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !8
  %81 = getelementptr i32, ptr %33, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %28, align 4
  %84 = getelementptr i8, ptr %83, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #11, !srcloc !8
  %85 = getelementptr i32, ptr %33, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %28, align 4
  %88 = getelementptr i8, ptr %87, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #11, !srcloc !8
  %89 = getelementptr i32, ptr %33, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %28, align 4
  %92 = getelementptr i8, ptr %91, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #11, !srcloc !8
  br label %93

93:                                               ; preds = %77, %72
  %94 = getelementptr i8, ptr %3, i32 -8
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr i8, ptr %3, i32 -4
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %4, align 64
  br i1 %15, label %99, label %101

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %0, ptr noundef %95, ptr noundef %97, i32 noundef %98, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %103

101:                                              ; preds = %93
  %102 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %0, ptr noundef %95, ptr noundef %97, i32 noundef %98, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %103

103:                                              ; preds = %101, %99, %25
  %104 = phi i32 [ %23, %25 ], [ %100, %99 ], [ %102, %101 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef returned %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -9
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %14, i32 0, i32 5
  %16 = load i8, ptr %15, align 2, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %12
  %19 = load i32, ptr %5, align 64
  %20 = and i32 %19, 487424
  switch i32 %20, label %21 [
    i32 0, label %77
    i32 16384, label %55
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 -16
  %24 = getelementptr i8, ptr %22, i32 16
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 -36
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %23, align 64
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %77, label %32

32:                                               ; preds = %21
  %33 = getelementptr i8, ptr %22, i32 48
  %34 = load i32, ptr %33, align 64
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %22, i32 -12
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %22, i32 -4
  %41 = load ptr, ptr %40, align 4
  %42 = sub i32 %30, %29
  tail call void @scatterwalk_map_and_copy(ptr noundef %39, ptr noundef %41, i32 noundef %42, i32 noundef %29, i32 noundef 0) #11
  br label %77

43:                                               ; preds = %32
  %44 = getelementptr i8, ptr %22, i32 -8
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %22, i32 -4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %45, %47
  %49 = getelementptr i8, ptr %22, i32 -12
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %51, label %53

51:                                               ; preds = %43
  %52 = getelementptr i8, ptr %22, i32 52
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 4 %52, i32 %29, i1 false) #11
  br label %77

53:                                               ; preds = %43
  %54 = sub i32 %30, %29
  tail call void @scatterwalk_map_and_copy(ptr noundef %50, ptr noundef %45, i32 noundef %54, i32 noundef %29, i32 noundef 0) #11
  br label %77

55:                                               ; preds = %18
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  %58 = load ptr, ptr %57, align 16
  %59 = getelementptr i8, ptr %58, i32 12
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -36
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %14, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %14, i32 0, i32 1
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %70, %68 ]
  tail call void @crypto_inc(ptr noundef %67, i32 noundef 16) #11
  %70 = add nuw i32 %69, 1
  %71 = load i32, ptr %63, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %68, label %73

73:                                               ; preds = %68, %55
  %74 = getelementptr i8, ptr %56, i32 -12
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %14, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr align 4 %76, i32 %62, i1 false) #11
  br label %77

77:                                               ; preds = %73, %53, %51, %37, %21, %18, %12, %2
  %78 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 5
  %79 = load i8, ptr %78, align 4, !range !14
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.crypto_async_request, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %82, i32 noundef %1) #11
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 15, i32 1
  %87 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %86) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %90) #11
  br label %91

91:                                               ; preds = %89, %85
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_dma_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.dma_slave_config, align 4
  %7 = alloca %struct.dma_slave_config, align 4
  %8 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %9, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %300 [
    i16 1, label %17
    i16 2, label %12
    i16 4, label %13
    i16 8, label %13
    i16 16, label %14
  ]

12:                                               ; preds = %5
  br label %17

13:                                               ; preds = %5, %5
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25, i32 5
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %13, %12, %5
  %18 = phi i32 [ 4, %14 ], [ 4, %13 ], [ 2, %12 ], [ 1, %5 ]
  %19 = phi i32 [ %16, %14 ], [ 1, %13 ], [ 1, %12 ], [ 1, %5 ]
  %20 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 1
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 24
  store ptr %2, ptr %23, align 4
  %24 = load i16, ptr %10, align 4
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -1
  %27 = and i32 %26, %3
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq ptr %1, null
  %30 = or i1 %29, %28
  br i1 %30, label %65, label %31

31:                                               ; preds = %60, %17
  %32 = phi i32 [ %63, %60 ], [ 1, %17 ]
  %33 = phi i32 [ %61, %60 ], [ %3, %17 ]
  %34 = phi ptr [ %62, %60 ], [ %1, %17 ]
  %35 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %33, %41
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %43, i32 0, i32 4
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %46, -1
  br i1 %42, label %57, label %48

48:                                               ; preds = %39
  %49 = and i32 %47, %33
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 2
  %53 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 2
  store i32 %32, ptr %53, align 4
  %54 = load i32, ptr %52, align 4
  %55 = sub i32 %54, %33
  %56 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 3
  store i32 %55, ptr %56, align 4
  store i32 %33, ptr %52, align 4
  br label %65

57:                                               ; preds = %39
  %58 = and i32 %47, %41
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = sub i32 %33, %41
  %62 = tail call ptr @sg_next(ptr noundef nonnull %34) #11
  %63 = add i32 %32, 1
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %31

65:                                               ; preds = %60, %57, %51, %48, %31, %17
  %66 = phi i1 [ true, %51 ], [ false, %17 ], [ false, %48 ], [ false, %31 ], [ false, %57 ], [ false, %60 ]
  %67 = icmp eq ptr %1, %2
  br i1 %67, label %112, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %69, i32 0, i32 4
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %72, -1
  %74 = and i32 %73, %3
  %75 = icmp ne i32 %74, 0
  %76 = icmp eq ptr %2, null
  %77 = or i1 %76, %75
  br i1 %77, label %115, label %78

78:                                               ; preds = %107, %68
  %79 = phi i32 [ %110, %107 ], [ 1, %68 ]
  %80 = phi i32 [ %108, %107 ], [ %3, %68 ]
  %81 = phi ptr [ %109, %107 ], [ %2, %68 ]
  %82 = getelementptr inbounds %struct.scatterlist, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 3
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.scatterlist, ptr %81, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp ugt i32 %80, %88
  %90 = load ptr, ptr %8, align 4
  %91 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %90, i32 0, i32 4
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %93, -1
  br i1 %89, label %104, label %95

95:                                               ; preds = %86
  %96 = and i32 %94, %80
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.scatterlist, ptr %81, i32 0, i32 2
  %100 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 2
  store i32 %79, ptr %100, align 4
  %101 = load i32, ptr %99, align 4
  %102 = sub i32 %101, %80
  %103 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 3
  store i32 %102, ptr %103, align 4
  store i32 %80, ptr %99, align 4
  br label %112

104:                                              ; preds = %86
  %105 = and i32 %94, %88
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = sub i32 %80, %88
  %109 = tail call ptr @sg_next(ptr noundef nonnull %81) #11
  %110 = add i32 %79, 1
  %111 = icmp eq ptr %109, null
  br i1 %111, label %115, label %78

112:                                              ; preds = %98, %65
  %113 = phi i1 [ %66, %65 ], [ true, %98 ]
  %114 = and i1 %66, %113
  br i1 %114, label %164, label %115

115:                                              ; preds = %112, %107, %104, %95, %78, %68
  %116 = phi i1 [ %113, %112 ], [ false, %68 ], [ false, %95 ], [ false, %78 ], [ false, %104 ], [ false, %107 ]
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %117, i32 0, i32 4
  %119 = load i16, ptr %118, align 4
  %120 = zext i16 %119 to i32
  %121 = add nsw i32 %120, -1
  %122 = and i32 %121, %3
  %123 = icmp eq i32 %122, 0
  %124 = sub i32 %120, %122
  %125 = select i1 %123, i32 0, i32 %124
  %126 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 21
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %125, %3
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %300, label %130

130:                                              ; preds = %115
  br i1 %66, label %139, label %131

131:                                              ; preds = %130
  %132 = tail call i32 @sg_nents(ptr noundef %1) #11
  %133 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @sg_copy_to_buffer(ptr noundef %1, i32 noundef %132, ptr noundef %134, i32 noundef %3) #11
  %136 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  store ptr %136, ptr %21, align 4
  %137 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 2
  store i32 1, ptr %137, align 4
  %138 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 3
  store i32 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %131, %130
  br i1 %116, label %144, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  store ptr %141, ptr %22, align 4
  %142 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 2
  store i32 1, ptr %142, align 4
  %143 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 3
  store i32 0, ptr %143, align 4
  br label %144

144:                                              ; preds = %140, %139
  %145 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  tail call void @sg_init_table(ptr noundef %145, i32 noundef 1) #11
  %146 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr @mem_map, align 4
  %149 = ptrtoint ptr %147 to i32
  %150 = add i32 %149, 1073741824
  %151 = lshr i32 %150, 12
  %152 = getelementptr %struct.page, ptr %148, i32 %151
  %153 = ptrtoint ptr %152 to i32
  %154 = and i32 %153, 3
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156, !prof !15

156:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

157:                                              ; preds = %144
  %158 = and i32 %149, 4095
  %159 = load i32, ptr %145, align 4
  %160 = and i32 %159, 3
  %161 = or i32 %160, %153
  store i32 %161, ptr %145, align 4
  %162 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23, i32 1
  store i32 %158, ptr %162, align 4
  %163 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23, i32 2
  store i32 %128, ptr %163, align 4
  br label %164

164:                                              ; preds = %157, %112
  %165 = load ptr, ptr %21, align 4
  %166 = load ptr, ptr %22, align 4
  %167 = icmp eq ptr %165, %166
  %168 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 8
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 2
  %171 = load i32, ptr %170, align 4
  br i1 %167, label %172, label %177

172:                                              ; preds = %164
  %173 = tail call i32 @dma_map_sg_attrs(ptr noundef %169, ptr noundef %165, i32 noundef %171, i32 noundef 0, i32 noundef 0) #11
  %174 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 4
  store i32 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 4
  store i32 %173, ptr %175, align 4
  %176 = icmp eq i32 %173, 0
  br i1 %176, label %300, label %193

177:                                              ; preds = %164
  %178 = tail call i32 @dma_map_sg_attrs(ptr noundef %169, ptr noundef %165, i32 noundef %171, i32 noundef 1, i32 noundef 0) #11
  %179 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 4
  store i32 %178, ptr %179, align 4
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %300, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %168, align 4
  %183 = load ptr, ptr %22, align 4
  %184 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = tail call i32 @dma_map_sg_attrs(ptr noundef %182, ptr noundef %183, i32 noundef %185, i32 noundef 2, i32 noundef 0) #11
  %187 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 4
  store i32 %186, ptr %187, align 4
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = load ptr, ptr %168, align 4
  %191 = load ptr, ptr %21, align 4
  %192 = load i32, ptr %170, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %190, ptr noundef %191, i32 noundef %192, i32 noundef 1, i32 noundef 0) #11
  br label %300

193:                                              ; preds = %181, %172
  %194 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr %4, ptr %194, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #11
  %195 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i64 48, i1 false) #11
  store i32 %18, ptr %195, align 4
  %196 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 4
  store i32 %18, ptr %196, align 4
  %197 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 5
  store i32 %19, ptr %197, align 4
  %198 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 6
  store i32 %19, ptr %198, align 4
  %199 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20
  %200 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, 80
  %203 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 1
  store i32 %202, ptr %203, align 4
  %204 = load ptr, ptr %199, align 4
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.dma_device, ptr %205, i32 0, i32 44
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %228, label %209

209:                                              ; preds = %193
  %210 = call i32 %207(ptr noundef %204, ptr noundef nonnull %7) #11
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load ptr, ptr %199, align 4
  %214 = load ptr, ptr %22, align 4
  %215 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 4
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq ptr %213, null
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = load ptr, ptr %213, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 39
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = call ptr %223(ptr noundef nonnull %213, ptr noundef %214, i32 noundef %216, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %225, %221, %218, %212, %209, %193
  %229 = phi i32 [ -12, %212 ], [ -12, %218 ], [ -12, %221 ], [ -38, %193 ], [ -12, %225 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  br label %298

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %226, i32 0, i32 6
  store ptr @atmel_aes_dma_callback, ptr %231, align 4
  %232 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %226, i32 0, i32 8
  store ptr %0, ptr %232, align 4
  %233 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %226, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 %234(ptr noundef nonnull %226) #11
  %236 = load ptr, ptr %199, align 4
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.dma_device, ptr %237, i32 0, i32 50
  %239 = load ptr, ptr %238, align 4
  call void %239(ptr noundef %236) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #11
  %240 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i64 48, i1 false) #11
  store i32 %18, ptr %240, align 4
  %241 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 4
  store i32 %18, ptr %241, align 4
  %242 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 5
  store i32 %19, ptr %242, align 4
  %243 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 6
  store i32 %19, ptr %243, align 4
  %244 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19
  %245 = load i32, ptr %200, align 4
  %246 = add i32 %245, 64
  %247 = getelementptr inbounds %struct.dma_slave_config, ptr %6, i32 0, i32 2
  store i32 %246, ptr %247, align 4
  %248 = load ptr, ptr %244, align 4
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.dma_device, ptr %249, i32 0, i32 44
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %282, label %253

253:                                              ; preds = %230
  %254 = call i32 %251(ptr noundef %248, ptr noundef nonnull %6) #11
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %253
  %257 = load ptr, ptr %244, align 4
  %258 = load ptr, ptr %21, align 4
  %259 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 4
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq ptr %257, null
  br i1 %261, label %282, label %262

262:                                              ; preds = %256
  %263 = load ptr, ptr %257, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %282, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.dma_device, ptr %263, i32 0, i32 39
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %282, label %269

269:                                              ; preds = %265
  %270 = call ptr %267(ptr noundef nonnull %257, ptr noundef %258, i32 noundef %260, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %271 = icmp eq ptr %270, null
  br i1 %271, label %282, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %270, i32 0, i32 6
  store ptr null, ptr %273, align 4
  %274 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %270, i32 0, i32 8
  store ptr %0, ptr %274, align 4
  %275 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %270, i32 0, i32 4
  %276 = load ptr, ptr %275, align 4
  %277 = call i32 %276(ptr noundef nonnull %270) #11
  %278 = load ptr, ptr %244, align 4
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.dma_device, ptr %279, i32 0, i32 50
  %281 = load ptr, ptr %280, align 4
  call void %281(ptr noundef %278) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  br label %303

282:                                              ; preds = %269, %265, %262, %256, %253, %230
  %283 = phi i32 [ -12, %256 ], [ -12, %262 ], [ -12, %265 ], [ -38, %230 ], [ -12, %269 ], [ %254, %253 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  %284 = load ptr, ptr %199, align 4
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.dma_device, ptr %285, i32 0, i32 47
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %298, label %289

289:                                              ; preds = %282
  %290 = call i32 %287(ptr noundef %284) #11
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %289
  %293 = load ptr, ptr %284, align 4
  %294 = getelementptr inbounds %struct.dma_device, ptr %293, i32 0, i32 48
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %292
  call void %295(ptr noundef %284) #11
  br label %298

298:                                              ; preds = %297, %292, %289, %282, %228
  %299 = phi i32 [ %229, %228 ], [ %283, %282 ], [ %283, %289 ], [ %283, %292 ], [ %283, %297 ]
  call fastcc void @atmel_aes_unmap(ptr noundef %0)
  br label %300

300:                                              ; preds = %298, %189, %177, %172, %115, %5
  %301 = phi i32 [ %299, %298 ], [ -22, %5 ], [ -14, %177 ], [ -14, %172 ], [ -12, %115 ], [ -14, %189 ]
  %302 = call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %301)
  br label %303

303:                                              ; preds = %300, %272
  %304 = phi i32 [ %301, %300 ], [ -115, %272 ]
  ret i32 %304
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_transfer_complete(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_cpu_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %50, label %7, !prof !17

7:                                                ; preds = %5
  %8 = and i32 %3, 15
  %9 = icmp eq i32 %8, 0
  %10 = sub nuw nsw i32 16, %8
  %11 = select i1 %9, i32 0, i32 %10
  %12 = tail call i32 @sg_nents(ptr noundef %1) #11
  %13 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @sg_copy_to_buffer(ptr noundef %1, i32 noundef %12, ptr noundef %14, i32 noundef %3) #11
  %16 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 24
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 7
  store ptr %4, ptr %18, align 4
  %19 = add i32 %11, %3
  %20 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %21, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !8
  %27 = getelementptr i32, ptr %21, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !8
  %31 = getelementptr i32, ptr %21, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !8
  %35 = getelementptr i32, ptr %21, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr i8, ptr %37, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !8
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr i8, ptr %39, i32 28
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !9
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !15

44:                                               ; preds = %7
  %45 = tail call i32 @atmel_aes_cpu_transfer(ptr noundef %0) #11
  br label %50

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_cpu_transfer, ptr %47, align 4
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #11, !srcloc !8
  br label %50

50:                                               ; preds = %46, %44, %5
  %51 = phi i32 [ -22, %5 ], [ %45, %44 ], [ -115, %46 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_aes_unmap(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %3, %5
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %36

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 2
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %3, i32 noundef %11, i32 noundef 0, i32 noundef 0) #11
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %103, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %103, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %10, align 4
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %21, 0
  %23 = icmp ne ptr %12, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %33

25:                                               ; preds = %25, %19
  %26 = phi i32 [ %29, %25 ], [ %21, %19 ]
  %27 = phi ptr [ %28, %25 ], [ %12, %19 ]
  %28 = tail call ptr @sg_next(ptr noundef nonnull %27) #11
  %29 = add nsw i32 %26, -1
  %30 = icmp ne i32 %29, 0
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %25, label %33

33:                                               ; preds = %25, %19
  %34 = phi ptr [ %12, %19 ], [ %28, %25 ]
  %35 = phi i1 [ %23, %19 ], [ %31, %25 ]
  br i1 %35, label %96, label %103

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 2
  %38 = load i32, ptr %37, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %5, i32 noundef %38, i32 noundef 2, i32 noundef 0) #11
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %68, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 20, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %37, align 4
  %48 = add i32 %47, -1
  %49 = icmp sgt i32 %48, 0
  %50 = icmp ne ptr %39, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %60

52:                                               ; preds = %52, %46
  %53 = phi i32 [ %56, %52 ], [ %48, %46 ]
  %54 = phi ptr [ %55, %52 ], [ %39, %46 ]
  %55 = tail call ptr @sg_next(ptr noundef nonnull %54) #11
  %56 = add nsw i32 %53, -1
  %57 = icmp ne i32 %56, 0
  %58 = icmp ne ptr %55, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %52, label %60

60:                                               ; preds = %52, %46
  %61 = phi ptr [ %39, %46 ], [ %55, %52 ]
  %62 = phi i1 [ %50, %46 ], [ %58, %52 ]
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, ptr %43, align 4
  %65 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %63, %60, %42, %36
  %69 = load ptr, ptr %7, align 4
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 2
  %72 = load i32, ptr %71, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %69, ptr noundef %70, i32 noundef %72, i32 noundef 1, i32 noundef 0) #11
  %73 = load ptr, ptr %2, align 4
  %74 = icmp eq ptr %73, %40
  br i1 %74, label %103, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 19, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %71, align 4
  %81 = add i32 %80, -1
  %82 = icmp sgt i32 %81, 0
  %83 = icmp ne ptr %73, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %93

85:                                               ; preds = %85, %79
  %86 = phi i32 [ %89, %85 ], [ %81, %79 ]
  %87 = phi ptr [ %88, %85 ], [ %73, %79 ]
  %88 = tail call ptr @sg_next(ptr noundef nonnull %87) #11
  %89 = add nsw i32 %86, -1
  %90 = icmp ne i32 %89, 0
  %91 = icmp ne ptr %88, null
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %85, label %93

93:                                               ; preds = %85, %79
  %94 = phi ptr [ %73, %79 ], [ %88, %85 ]
  %95 = phi i1 [ %83, %79 ], [ %91, %85 ]
  br i1 %95, label %96, label %103

96:                                               ; preds = %93, %33
  %97 = phi ptr [ %16, %33 ], [ %76, %93 ]
  %98 = phi ptr [ %34, %33 ], [ %94, %93 ]
  %99 = load i32, ptr %97, align 4
  %100 = getelementptr inbounds %struct.scatterlist, ptr %98, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %99
  store i32 %102, ptr %100, align 4
  br label %103

103:                                              ; preds = %96, %93, %75, %68, %33, %15, %9
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 23
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 24
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @sg_nents(ptr noundef %109) #11
  %111 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @sg_copy_from_buffer(ptr noundef %109, i32 noundef %110, ptr noundef %112, i32 noundef %114) #11
  br label %116

116:                                              ; preds = %107, %103
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_aes_dma_callback(ptr noundef %0) #2 {
  tail call fastcc void @atmel_aes_unmap(ptr noundef %0)
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 5
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cpu_transfer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  br label %5

5:                                                ; preds = %27, %1
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !9
  store i32 %9, ptr %6, align 4
  %10 = getelementptr i32, ptr %6, i32 1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 84
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !9
  store i32 %13, ptr %10, align 4
  %14 = getelementptr i32, ptr %6, i32 2
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 88
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !9
  store i32 %17, ptr %14, align 4
  %18 = getelementptr i32, ptr %6, i32 3
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 92
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !9
  store i32 %21, ptr %18, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i32, ptr %22, i32 4
  store ptr %23, ptr %2, align 4
  %24 = load i32, ptr %4, align 4
  %25 = add i32 %24, -16
  store i32 %25, ptr %4, align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %52, label %27

27:                                               ; preds = %5
  %28 = load i32, ptr %23, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !8
  %31 = getelementptr i32, ptr %22, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !8
  %35 = getelementptr i32, ptr %22, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !8
  %39 = getelementptr i32, ptr %22, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !8
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 28
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !9
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %5

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_cpu_transfer, ptr %49, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1) #11, !srcloc !8
  br label %68

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 24
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @sg_nents(ptr noundef %54) #11
  %56 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @sg_copy_from_buffer(ptr noundef %54, i32 noundef %55, ptr noundef %57, i32 noundef %59) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef -22)
  br label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef %0) #11
  br label %68

68:                                               ; preds = %64, %62, %48
  %69 = phi i32 [ -22, %62 ], [ %67, %64 ], [ -115, %48 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = load i32, ptr %6, align 64
  %11 = or i32 %9, %10
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %14)
  br label %29

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 256) #11, !srcloc !8
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 14680064) #11, !srcloc !8
  %23 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 1
  %24 = getelementptr i8, ptr %5, i32 -12
  %25 = load ptr, ptr %24, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %23, ptr noundef align 1 dereferenceable(16) %25, i32 16, i1 false)
  %26 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 2
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  store i32 0, ptr %27, align 4
  %28 = tail call i32 @atmel_aes_ctr_transfer(ptr noundef %0)
  br label %29

29:                                               ; preds = %18, %16
  %30 = phi i32 [ %14, %16 ], [ %28, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_ctr_transfer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = load i32, ptr %6, align 64
  %13 = icmp ugt i32 %12, %11
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef 0) #11
  br label %122

16:                                               ; preds = %1
  %17 = sub i32 %12, %11
  %18 = add i32 %17, 15
  %19 = lshr i32 %18, 4
  %20 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 1
  %22 = getelementptr %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = and i32 %24, 65535
  %26 = icmp ult i32 %18, 1048576
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = add nuw nsw i32 %19, 65535
  %29 = add i32 %28, %24
  %30 = and i32 %29, 65535
  %31 = icmp ult i32 %30, %25
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %16
  %33 = or i32 %24, 65535
  %34 = mul nsw i32 %25, -16
  %35 = add nsw i32 %34, 1048576
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i32 [ %35, %32 ], [ %17, %27 ]
  %38 = phi i32 [ %33, %32 ], [ %24, %27 ]
  %39 = phi i1 [ true, %32 ], [ false, %27 ]
  %40 = icmp ugt i32 %37, 255
  %41 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 3
  %42 = getelementptr i8, ptr %5, i32 -8
  %43 = load ptr, ptr %42, align 8
  %44 = tail call ptr @scatterwalk_ffwd(ptr noundef %41, ptr noundef %43, i32 noundef %11) #11
  %45 = load ptr, ptr %42, align 8
  %46 = getelementptr i8, ptr %5, i32 -4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 4
  %51 = load i32, ptr %9, align 4
  %52 = tail call ptr @scatterwalk_ffwd(ptr noundef %50, ptr noundef %47, i32 noundef %51) #11
  br label %53

53:                                               ; preds = %49, %36
  %54 = phi ptr [ %52, %49 ], [ %44, %36 ]
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %55, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 24
  %60 = select i1 %59, i32 1024, i32 2048
  %61 = icmp eq i32 %58, 16
  %62 = select i1 %61, i32 0, i32 %60
  %63 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 487427
  %66 = or i32 %62, %65
  br i1 %40, label %67, label %73

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25
  %69 = load i8, ptr %68, align 4, !range !14
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 512, i32 520
  %72 = or i32 %71, %66
  br label %75

73:                                               ; preds = %53
  %74 = or i32 %66, 256
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %74, %73 ], [ %72, %67 ]
  %77 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #11, !srcloc !8
  %80 = icmp ult i32 %58, 4
  br i1 %80, label %94, label %81

81:                                               ; preds = %75
  %82 = ashr i32 %58, 2
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ %87, %83 ], [ %82, %81 ]
  %85 = phi ptr [ %91, %83 ], [ %56, %81 ]
  %86 = phi i32 [ %92, %83 ], [ 32, %81 ]
  %87 = add i32 %84, -1
  %88 = load i32, ptr %85, align 4
  %89 = load ptr, ptr %77, align 4
  %90 = getelementptr i8, ptr %89, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #11, !srcloc !8
  %91 = getelementptr i32, ptr %85, i32 1
  %92 = add i32 %86, 4
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %94, label %83

94:                                               ; preds = %83, %75
  %95 = icmp eq ptr %21, null
  %96 = and i32 %76, 28672
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %95, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %21, align 4
  %101 = load ptr, ptr %77, align 4
  %102 = getelementptr i8, ptr %101, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #11, !srcloc !8
  %103 = getelementptr %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 1, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %77, align 4
  %106 = getelementptr i8, ptr %105, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #11, !srcloc !8
  %107 = getelementptr %struct.atmel_aes_ctr_ctx, ptr %3, i32 0, i32 1, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %77, align 4
  %110 = getelementptr i8, ptr %109, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #11, !srcloc !8
  %111 = load i32, ptr %22, align 4
  %112 = load ptr, ptr %77, align 4
  %113 = getelementptr i8, ptr %112, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #11, !srcloc !8
  br label %114

114:                                              ; preds = %99, %94
  br i1 %39, label %115, label %117, !prof !17

115:                                              ; preds = %114
  %116 = tail call i32 @llvm.bswap.i32(i32 %38)
  store i32 %116, ptr %22, align 4
  tail call void @crypto_inc(ptr noundef %21, i32 noundef 16) #11
  br label %117

117:                                              ; preds = %115, %114
  br i1 %40, label %118, label %120

118:                                              ; preds = %117
  %119 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %0, ptr noundef %44, ptr noundef %54, i32 noundef %37, ptr noundef nonnull @atmel_aes_ctr_transfer)
  br label %122

120:                                              ; preds = %117
  %121 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %0, ptr noundef %44, ptr noundef %54, i32 noundef %37, ptr noundef nonnull @atmel_aes_ctr_transfer)
  br label %122

122:                                              ; preds = %120, %118, %14
  %123 = phi i32 [ 0, %14 ], [ %119, %118 ], [ %121, %120 ]
  ret i32 %123
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb64_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 108
  store i16 8, ptr %8, align 4
  %9 = getelementptr i8, ptr %6, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 77825, ptr %10, align 64
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %13 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %11, ptr noundef %12) #11
  br label %14

14:                                               ; preds = %4, %1
  %15 = phi i32 [ %13, %4 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_cfb64_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 108
  store i16 8, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 77824, ptr %10, align 64
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %0, align 64
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %25 = sub i32 %21, %20
  tail call void @scatterwalk_map_and_copy(ptr noundef %24, ptr noundef %12, i32 noundef %25, i32 noundef %20, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %23, %16, %7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %29 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %27, ptr noundef %28) #11
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_gcm_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  switch i32 %2, label %7 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @atmel_aes_gcm_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #10 {
  %3 = add i32 %1, -4
  %4 = icmp ult i32 %3, 13
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i32], ptr @switch.table.atmel_aes_gcm_setauthsize, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ -22, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %5, align 4
  %6 = getelementptr i8, ptr %3, i32 110
  store i8 1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  store i32 20481, ptr %7, align 64
  %8 = load ptr, ptr %4, align 4
  %9 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %0) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %5, align 4
  %6 = getelementptr i8, ptr %3, i32 110
  store i8 1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  store i32 20480, ptr %7, align 64
  %8 = load ptr, ptr %4, align 4
  %9 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %8, ptr noundef %0) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_init(ptr nocapture noundef writeonly %0) #2 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %2 = load volatile ptr, ptr @atmel_aes, align 4
  %3 = icmp eq ptr %2, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 128, ptr %8, align 4
  store ptr %2, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr @atmel_aes_gcm_start, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %6 ], [ -19, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 7
  %9 = getelementptr i8, ptr %7, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 3
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = load i32, ptr %8, align 64
  %21 = or i32 %19, %20
  store i32 %21, ptr %17, align 4
  %22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_enable(ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %24)
  br label %60

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 256) #11, !srcloc !8
  %31 = load ptr, ptr %29, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 14680064) #11, !srcloc !8
  %33 = icmp eq i32 %12, 12
  br i1 %33, label %34, label %38, !prof !15

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %35, ptr noundef align 1 dereferenceable(12) %14, i32 12, i1 false)
  %36 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 3
  store i32 16777216, ptr %36, align 4
  %37 = tail call i32 @atmel_aes_gcm_process(ptr noundef %0)
  br label %60

38:                                               ; preds = %28
  %39 = and i32 %12, 15
  %40 = icmp eq i32 %39, 0
  %41 = sub nuw nsw i32 16, %39
  %42 = select i1 %40, i32 0, i32 %41
  %43 = add i32 %12, 16
  %44 = add i32 %43, %42
  %45 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 21
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef -22)
  br label %60

50:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %14, i32 %12, i1 false)
  %51 = getelementptr i8, ptr %16, i32 %12
  %52 = add nuw nsw i32 %42, 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %51, i8 0, i32 %52, i1 false)
  %53 = shl i32 %12, 3
  %54 = zext i32 %53 to i64
  %55 = tail call i64 @llvm.bswap.i64(i64 %54)
  %56 = getelementptr i8, ptr %16, i32 %44
  %57 = getelementptr i64, ptr %56, i32 -1
  store i64 %55, ptr %57, align 8
  %58 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3
  %59 = tail call fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %0, ptr noundef %16, i32 noundef %44, ptr noundef null, ptr noundef %58, ptr noundef nonnull @atmel_aes_gcm_process)
  br label %60

60:                                               ; preds = %50, %48, %34, %26
  %61 = phi i32 [ %24, %26 ], [ %37, %34 ], [ -22, %48 ], [ %59, %50 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_process(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 -64
  %9 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %8, align 64
  %14 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = select i1 %12, i32 %13, i32 0
  %17 = sub i32 %15, %16
  %18 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %15, %16
  %23 = select i1 %21, i1 true, i1 %22
  %24 = load i32, ptr %9, align 4
  br i1 %23, label %25, label %27, !prof !15

25:                                               ; preds = %1
  %26 = or i32 %24, 2
  store i32 %26, ptr %9, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ %24, %1 ]
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 24
  %33 = select i1 %32, i32 1024, i32 2048
  %34 = icmp eq i32 %31, 16
  %35 = select i1 %34, i32 0, i32 %33
  %36 = and i32 %28, 487427
  %37 = or i32 %36, %35
  %38 = or i32 %37, 256
  %39 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #11, !srcloc !8
  %42 = icmp ult i32 %31, 4
  br i1 %42, label %57, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %29, i32 0, i32 3
  %45 = ashr i32 %31, 2
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ %50, %46 ], [ %45, %43 ]
  %48 = phi ptr [ %54, %46 ], [ %44, %43 ]
  %49 = phi i32 [ %55, %46 ], [ 32, %43 ]
  %50 = add i32 %47, -1
  %51 = load i32, ptr %48, align 4
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i8, ptr %52, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !8
  %54 = getelementptr i32, ptr %48, i32 1
  %55 = add i32 %49, 4
  %56 = icmp eq i32 %50, 0
  br i1 %56, label %57, label %46

57:                                               ; preds = %46, %27
  %58 = load ptr, ptr %39, align 4
  %59 = getelementptr i8, ptr %58, i32 28
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !9
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !15

63:                                               ; preds = %57
  %64 = tail call i32 @atmel_aes_gcm_length(ptr noundef %0) #11
  br label %69

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_length, ptr %66, align 4
  %67 = load ptr, ptr %39, align 4
  %68 = getelementptr i8, ptr %67, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 1) #11, !srcloc !8
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ -115, %65 ]
  ret i32 %70
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %8, i32 0, i32 7
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %8, i32 0, i32 8
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %8, i32 0, i32 9
  store ptr %5, ptr %13, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 24
  %18 = select i1 %17, i32 1024, i32 2048
  %19 = icmp eq i32 %16, 16
  %20 = select i1 %19, i32 0, i32 %18
  %21 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 487427
  %24 = or i32 %23, %20
  %25 = or i32 %24, 256
  %26 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #11, !srcloc !8
  %29 = icmp ult i32 %16, 4
  br i1 %29, label %44, label %30

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %14, i32 0, i32 3
  %32 = ashr i32 %16, 2
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %37, %33 ], [ %32, %30 ]
  %35 = phi ptr [ %41, %33 ], [ %31, %30 ]
  %36 = phi i32 [ %42, %33 ], [ 32, %30 ]
  %37 = add i32 %34, -1
  %38 = load i32, ptr %35, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !8
  %41 = getelementptr i32, ptr %35, i32 1
  %42 = add i32 %36, 4
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %44, label %33

44:                                               ; preds = %33, %6
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i8, ptr %45, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !9
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %79, label %50, !prof !15

50:                                               ; preds = %44
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr i8, ptr %54, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !8
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr i8, ptr %56, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #11, !srcloc !8
  %58 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %51, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %50
  %62 = load i32, ptr %59, align 4
  %63 = load ptr, ptr %26, align 4
  %64 = getelementptr i8, ptr %63, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #11, !srcloc !8
  %65 = getelementptr i32, ptr %59, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %26, align 4
  %68 = getelementptr i8, ptr %67, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #11, !srcloc !8
  %69 = getelementptr i32, ptr %59, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %26, align 4
  %72 = getelementptr i8, ptr %71, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #11, !srcloc !8
  %73 = getelementptr i32, ptr %59, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %26, align 4
  %76 = getelementptr i8, ptr %75, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #11, !srcloc !8
  br label %77

77:                                               ; preds = %61, %50
  %78 = tail call i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %0) #11
  br label %83

79:                                               ; preds = %44
  %80 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_ghash_init, ptr %80, align 4
  %81 = load ptr, ptr %26, align 4
  %82 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #11, !srcloc !8
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i32 [ %78, %77 ], [ -115, %79 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_length(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3
  %7 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %10 = add i32 %9, 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %6, align 4
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !8
  %16 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !8
  %20 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !8
  %24 = load i32, ptr %7, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !8
  store i32 %8, ptr %7, align 4
  %27 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !8
  %31 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !8
  %35 = load i32, ptr %27, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !17

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  store i32 0, ptr %38, align 4
  %39 = tail call i32 @atmel_aes_gcm_data(ptr noundef %0)
  br label %65

40:                                               ; preds = %1
  %41 = and i32 %35, 15
  %42 = icmp eq i32 %41, 0
  %43 = sub nuw nsw i32 16, %41
  %44 = select i1 %42, i32 0, i32 %43
  %45 = add i32 %44, %35
  %46 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 21
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %51, !prof !17

49:                                               ; preds = %40
  %50 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef -22)
  br label %65

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @sg_nents(ptr noundef %53) #11
  %55 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %27, align 8
  %58 = tail call i32 @sg_copy_to_buffer(ptr noundef %53, i32 noundef %54, ptr noundef %56, i32 noundef %57) #11
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  store ptr %59, ptr %60, align 4
  %61 = load i32, ptr %27, align 8
  %62 = add i32 %61, %44
  %63 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  store i32 %62, ptr %63, align 4
  %64 = tail call i32 @atmel_aes_gcm_data(ptr noundef %0)
  br label %65

65:                                               ; preds = %51, %49, %37
  %66 = phi i32 [ %39, %37 ], [ -22, %49 ], [ %64, %51 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_data(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 255
  %9 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %15, %1
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %10, align 4
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !8
  %20 = getelementptr i32, ptr %16, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !8
  %24 = getelementptr i32, ptr %16, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !8
  %28 = getelementptr i32, ptr %16, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #11, !srcloc !8
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr i32, ptr %32, i32 4
  store ptr %33, ptr %10, align 4
  %34 = load i32, ptr %9, align 4
  %35 = add i32 %34, -16
  store i32 %35, ptr %9, align 4
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr i8, ptr %36, i32 28
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !9
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %12

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_data, ptr %42, align 4
  %43 = load ptr, ptr %11, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #11, !srcloc !8
  br label %84

45:                                               ; preds = %12
  %46 = load i32, ptr %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50, !prof !17

48:                                               ; preds = %45
  %49 = tail call i32 @atmel_aes_gcm_tag_init(ptr noundef %0)
  br label %84

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 1
  %55 = load i32, ptr %54, align 8
  %56 = tail call ptr @scatterwalk_ffwd(ptr noundef %51, ptr noundef %53, i32 noundef %55) #11
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.aead_request, ptr %5, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 2
  %63 = load i32, ptr %54, align 8
  %64 = tail call ptr @scatterwalk_ffwd(ptr noundef %62, ptr noundef %59, i32 noundef %63) #11
  br label %65

65:                                               ; preds = %61, %50
  %66 = phi ptr [ %64, %61 ], [ %56, %50 ]
  br i1 %8, label %67, label %81

67:                                               ; preds = %65
  %68 = load ptr, ptr %11, align 4
  %69 = getelementptr i8, ptr %68, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !9
  %71 = and i32 %70, -777
  %72 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25
  %73 = load i8, ptr %72, align 4, !range !14
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 512, i32 520
  %76 = or i32 %75, %71
  %77 = load ptr, ptr %11, align 4
  %78 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #11, !srcloc !8
  %79 = load i32, ptr %6, align 4
  %80 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %0, ptr noundef %56, ptr noundef %66, i32 noundef %79, ptr noundef nonnull @atmel_aes_gcm_tag_init)
  br label %84

81:                                               ; preds = %65
  %82 = load i32, ptr %6, align 4
  %83 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %0, ptr noundef %56, ptr noundef %66, i32 noundef %82, ptr noundef nonnull @atmel_aes_gcm_tag_init)
  br label %84

84:                                               ; preds = %81, %67, %48, %41
  %85 = phi i32 [ -115, %41 ], [ %49, %48 ], [ %80, %67 ], [ %83, %81 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_tag_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6, !prof !17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !9
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_tag_init, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 65536) #11, !srcloc !8
  br label %55

17:                                               ; preds = %6
  %18 = tail call i32 @atmel_aes_gcm_finalize(ptr noundef %0)
  br label %55

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 22
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %23, i32 0, i32 5
  %27 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 120
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !9
  store i32 %30, ptr %26, align 4
  %31 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %23, i32 0, i32 5, i32 1
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 124
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !9
  store i32 %34, ptr %31, align 4
  %35 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %23, i32 0, i32 5, i32 2
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr i8, ptr %36, i32 128
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !9
  store i32 %38, ptr %35, align 4
  %39 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %23, i32 0, i32 5, i32 3
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 132
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !9
  store i32 %42, ptr %39, align 4
  %43 = getelementptr inbounds %struct.aead_request, ptr %21, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  %45 = shl i32 %44, 3
  %46 = zext i32 %45 to i64
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
  store i64 %47, ptr %25, align 8
  %48 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %23, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = tail call i64 @llvm.bswap.i64(i64 %51)
  %53 = getelementptr i64, ptr %25, i32 1
  store i64 %52, ptr %53, align 8
  %54 = tail call fastcc i32 @atmel_aes_gcm_ghash(ptr noundef %0, ptr noundef %25, i32 noundef 16, ptr noundef %26, ptr noundef %26, ptr noundef nonnull @atmel_aes_gcm_tag)
  br label %55

55:                                               ; preds = %19, %17, %13
  %56 = phi i32 [ %18, %17 ], [ -115, %13 ], [ %54, %19 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_finalize(ptr noundef %0) #2 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !18
  %14 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4
  %15 = and i32 %11, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  br i1 %16, label %33, label %19, !prof !17

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %18, i32 136
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !9
  store i32 %21, ptr %14, align 4
  %22 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr i8, ptr %23, i32 140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  store i32 %25, ptr %22, align 4
  %26 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4, i32 2
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr i8, ptr %27, i32 144
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !9
  store i32 %29, ptr %26, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 148
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !9
  br label %47

33:                                               ; preds = %1
  %34 = getelementptr i8, ptr %18, i32 80
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !9
  store i32 %35, ptr %14, align 4
  %36 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4, i32 1
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 84
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !9
  store i32 %39, ptr %36, align 4
  %40 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4, i32 2
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr i8, ptr %41, i32 88
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !9
  store i32 %43, ptr %40, align 4
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr i8, ptr %44, i32 92
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !9
  br label %47

47:                                               ; preds = %33, %19
  %48 = phi i32 [ %46, %33 ], [ %32, %19 ]
  %49 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 4, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.aead_request, ptr %6, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %4, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  %55 = load i32, ptr %9, align 64
  br i1 %13, label %59, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.aead_request, ptr %6, i32 0, i32 5
  %58 = load ptr, ptr %57, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %14, ptr noundef %58, i32 noundef %54, i32 noundef %55, i32 noundef 1) #11
  br label %65

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.aead_request, ptr %6, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %2, ptr noundef %61, i32 noundef %54, i32 noundef %55, i32 noundef 0) #11
  %62 = call i32 @__crypto_memneq(ptr noundef nonnull %2, ptr noundef %14, i32 noundef %55) #11
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 0, i32 -74
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i32 [ 0, %56 ], [ %64, %59 ]
  %67 = call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %66)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_tag(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -487427
  %7 = or i32 %6, 16384
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 24
  %12 = select i1 %11, i32 1024, i32 2048
  %13 = icmp eq i32 %10, 16
  %14 = select i1 %13, i32 0, i32 %12
  %15 = and i32 %7, 16385
  %16 = or i32 %15, %14
  %17 = or i32 %16, 256
  %18 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #11, !srcloc !8
  %21 = icmp ult i32 %10, 4
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %3, i32 0, i32 3
  %24 = ashr i32 %10, 2
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ %29, %25 ], [ %24, %22 ]
  %27 = phi ptr [ %33, %25 ], [ %23, %22 ]
  %28 = phi i32 [ %34, %25 ], [ 32, %22 ]
  %29 = add i32 %26, -1
  %30 = load i32, ptr %27, align 4
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr i8, ptr %31, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !8
  %33 = getelementptr i32, ptr %27, i32 1
  %34 = add i32 %28, 4
  %35 = icmp eq i32 %29, 0
  br i1 %35, label %36, label %25

36:                                               ; preds = %25, %1
  %37 = icmp eq ptr %8, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %8, align 4
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr i8, ptr %40, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !8
  %42 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr i8, ptr %44, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !8
  %46 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr i8, ptr %48, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !8
  %50 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 3, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr i8, ptr %52, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !8
  br label %54

54:                                               ; preds = %38, %36
  store i32 %5, ptr %4, align 4
  %55 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %18, align 4
  %58 = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !8
  %59 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 5, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %18, align 4
  %62 = getelementptr i8, ptr %61, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !8
  %63 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 5, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %18, align 4
  %66 = getelementptr i8, ptr %65, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !8
  %67 = getelementptr %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 5, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %18, align 4
  %70 = getelementptr i8, ptr %69, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #11, !srcloc !8
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr i8, ptr %71, i32 28
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !9
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !15

76:                                               ; preds = %54
  %77 = tail call i32 @atmel_aes_gcm_finalize(ptr noundef %0) #11
  br label %82

78:                                               ; preds = %54
  %79 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_finalize, ptr %79, align 4
  %80 = load ptr, ptr %18, align 4
  %81 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 1) #11, !srcloc !8
  br label %82

82:                                               ; preds = %78, %76
  %83 = phi i32 [ %77, %76 ], [ -115, %78 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_ghash_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #11, !srcloc !8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #11, !srcloc !8
  %11 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %12, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !8
  %18 = getelementptr i32, ptr %12, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !8
  %22 = getelementptr i32, ptr %12, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !8
  %26 = getelementptr i32, ptr %12, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !8
  br label %30

30:                                               ; preds = %14, %1
  %31 = tail call i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %0)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_gcm_ghash_finalize(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 17
  %5 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 18
  %6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %10, %1
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !8
  %15 = getelementptr i32, ptr %11, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !8
  %19 = getelementptr i32, ptr %11, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !8
  %23 = getelementptr i32, ptr %11, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !8
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i32, ptr %27, i32 4
  store ptr %28, ptr %5, align 4
  %29 = load i32, ptr %4, align 4
  %30 = add i32 %29, -16
  store i32 %30, ptr %4, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !9
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %7

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_gcm_ghash_finalize, ptr %37, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #11, !srcloc !8
  br label %61

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 120
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !9
  store i32 %45, ptr %42, align 4
  %46 = getelementptr i32, ptr %42, i32 1
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr i8, ptr %47, i32 124
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !9
  store i32 %49, ptr %46, align 4
  %50 = getelementptr i32, ptr %42, i32 2
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr i8, ptr %51, i32 128
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !9
  store i32 %53, ptr %50, align 4
  %54 = getelementptr i32, ptr %42, i32 3
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr i8, ptr %55, i32 132
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !9
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, ptr %3, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0) #11
  br label %61

61:                                               ; preds = %40, %36
  %62 = phi i32 [ -115, %36 ], [ %60, %40 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 2, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, -1048321
  store i32 %11, ptr %9, align 64
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 64
  %15 = and i32 %14, 1048320
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  %17 = load i32, ptr %16, align 64
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 64
  %19 = load ptr, ptr %7, align 4
  %20 = tail call i32 @crypto_skcipher_setkey(ptr noundef %19, ptr noundef %1, i32 noundef %2) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  %24 = lshr i32 %2, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 1 %1, i32 %24, i1 false)
  %25 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 44
  %26 = getelementptr i8, ptr %1, i32 %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr align 1 %26, i32 %24, i1 false)
  %27 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store i32 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %6, %3
  %29 = phi i32 [ 0, %22 ], [ -22, %3 ], [ %20, %6 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = and i32 %5, 15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %12 = getelementptr i8, ptr %3, i32 144
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.crypto_skcipher, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %14, ptr %15, align 16
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %17, ptr %24, align 4
  %25 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %26, ptr %31, align 8
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %28, ptr %32, align 4
  store i32 %5, ptr %11, align 64
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %30, ptr %33, align 4
  %34 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %11) #11
  br label %42

35:                                               ; preds = %7
  %36 = getelementptr i8, ptr %3, i32 108
  store i16 16, ptr %36, align 4
  %37 = getelementptr i8, ptr %3, i32 110
  store i8 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 24577, ptr %38, align 64
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %41 = tail call fastcc i32 @atmel_aes_handle_queue(ptr noundef %39, ptr noundef %40) #11
  br label %42

42:                                               ; preds = %35, %10, %1
  %43 = phi i32 [ %41, %35 ], [ -22, %1 ], [ %34, %10 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_decrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @atmel_aes_crypt(ptr noundef %0, i32 noundef 24576)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %5 = load volatile ptr, ptr @atmel_aes, align 4
  %6 = icmp eq ptr %5, @atmel_aes
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_aes_drv, ptr @atmel_aes, i32 0, i32 1)) #11
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  %11 = tail call ptr @crypto_alloc_skcipher(ptr noundef %10, i32 noundef 0, i32 noundef 256) #11
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 2, i32 4
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i32
  br label %20

16:                                               ; preds = %9
  %17 = load i32, ptr %11, align 64
  %18 = add i32 %17, 128
  store i32 %18, ptr %0, align 64
  store ptr %5, ptr %2, align 4
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr @atmel_aes_xts_start, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %14, %1
  %21 = phi i32 [ %15, %14 ], [ 0, %16 ], [ -19, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_aes_xts_exit_tfm(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 2, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = load i32, ptr %6, align 64
  %11 = or i32 %9, %10
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call fastcc i32 @atmel_aes_complete(ptr noundef %0, i32 noundef %14)
  br label %78

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 256) #11, !srcloc !8
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 14680064) #11, !srcloc !8
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, -487428
  %25 = or i32 %24, 1
  store i32 %25, ptr %7, align 4
  %26 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 24
  %29 = icmp eq i32 %27, 16
  %30 = select i1 %28, i32 1281, i32 2305
  %31 = select i1 %29, i32 257, i32 %30
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #11, !srcloc !8
  %34 = icmp ult i32 %27, 4
  br i1 %34, label %49, label %35

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.atmel_aes_xts_ctx, ptr %3, i32 0, i32 1
  %37 = ashr i32 %27, 2
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ %42, %38 ], [ %37, %35 ]
  %40 = phi ptr [ %46, %38 ], [ %36, %35 ]
  %41 = phi i32 [ %47, %38 ], [ 32, %35 ]
  %42 = add i32 %39, -1
  %43 = load i32, ptr %40, align 4
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr i8, ptr %44, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !8
  %46 = getelementptr i32, ptr %40, i32 1
  %47 = add i32 %41, 4
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %49, label %38

49:                                               ; preds = %38, %18
  store i32 %23, ptr %7, align 4
  %50 = getelementptr i8, ptr %5, i32 -12
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %19, align 4
  %54 = getelementptr i8, ptr %53, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #11, !srcloc !8
  %55 = getelementptr i32, ptr %51, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %19, align 4
  %58 = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !8
  %59 = getelementptr i32, ptr %51, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %19, align 4
  %62 = getelementptr i8, ptr %61, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !8
  %63 = getelementptr i32, ptr %51, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr i8, ptr %65, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !8
  %67 = load ptr, ptr %19, align 4
  %68 = getelementptr i8, ptr %67, i32 28
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !9
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !15

72:                                               ; preds = %49
  %73 = tail call i32 @atmel_aes_xts_process_data(ptr noundef %0) #11
  br label %78

74:                                               ; preds = %49
  %75 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 6
  store ptr @atmel_aes_xts_process_data, ptr %75, align 4
  %76 = load ptr, ptr %19, align 4
  %77 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 1) #11, !srcloc !8
  br label %78

78:                                               ; preds = %74, %72, %16
  %79 = phi i32 [ %14, %16 ], [ %73, %72 ], [ -115, %74 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_aes_xts_process_data(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = load i32, ptr %4, align 64
  %6 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 84
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 88
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !9
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 92
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !9
  %19 = call i32 @llvm.bswap.i32(i32 %9)
  %20 = icmp ugt i32 %5, 255
  %21 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.atmel_aes_base_ctx, ptr %22, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 24
  %27 = select i1 %26, i32 1024, i32 2048
  %28 = icmp eq i32 %25, 16
  %29 = select i1 %28, i32 0, i32 %27
  %30 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 487427
  %33 = or i32 %29, %32
  br i1 %20, label %34, label %40

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.atmel_aes_dev, ptr %0, i32 0, i32 25
  %36 = load i8, ptr %35, align 4, !range !14
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 512, i32 520
  %39 = or i32 %38, %33
  br label %42

40:                                               ; preds = %1
  %41 = or i32 %33, 256
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %41, %40 ], [ %39, %34 ]
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !8
  %46 = icmp ult i32 %25, 4
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = ashr i32 %25, 2
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ %53, %49 ], [ %48, %47 ]
  %51 = phi ptr [ %57, %49 ], [ %23, %47 ]
  %52 = phi i32 [ %58, %49 ], [ 32, %47 ]
  %53 = add i32 %50, -1
  %54 = load i32, ptr %51, align 4
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr i8, ptr %55, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !8
  %57 = getelementptr i32, ptr %51, i32 1
  %58 = add i32 %52, 4
  %59 = icmp eq i32 %53, 0
  br i1 %59, label %60, label %49

60:                                               ; preds = %49, %42
  %61 = call i32 @llvm.bswap.i32(i32 %18)
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr i8, ptr %62, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #11, !srcloc !8
  %64 = call i32 @llvm.bswap.i32(i32 %15)
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr i8, ptr %65, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !8
  %67 = call i32 @llvm.bswap.i32(i32 %12)
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr i8, ptr %68, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #11, !srcloc !8
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr i8, ptr %70, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %19) #11, !srcloc !8
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr i8, ptr %72, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1) #11, !srcloc !8
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #11, !srcloc !8
  %76 = load ptr, ptr %6, align 4
  %77 = getelementptr i8, ptr %76, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #11, !srcloc !8
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr i8, ptr %78, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #11, !srcloc !8
  %80 = getelementptr i8, ptr %3, i32 -8
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr i8, ptr %3, i32 -4
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %4, align 64
  br i1 %20, label %85, label %87

85:                                               ; preds = %60
  %86 = tail call fastcc i32 @atmel_aes_dma_start(ptr noundef %0, ptr noundef %81, ptr noundef %83, i32 noundef %84, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %89

87:                                               ; preds = %60
  %88 = tail call fastcc i32 @atmel_aes_cpu_start(ptr noundef %0, ptr noundef %81, ptr noundef %83, i32 noundef %84, ptr noundef nonnull @atmel_aes_transfer_complete)
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{i64 3099067}
!9 = !{i64 3099485}
!10 = !{i64 2148992524}
!11 = !{i64 2148988348}
!12 = !{i64 2148988423, i64 2148988450, i64 2148988497, i64 2148988519, i64 2148988547, i64 2148988567}
!13 = !{i64 2149015527}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2152725890, i64 2152726382, i64 2152725927, i64 2152725983, i64 2152726017, i64 2152726041, i64 2152726082, i64 2152726103, i64 2152726131, i64 2152726165}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"auto-init"}
