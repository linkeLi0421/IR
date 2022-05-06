; ModuleID = '/llk/IR/drivers/crypto/atmel-tdes.c_pt.bc'
source_filename = "../drivers/crypto/atmel-tdes.c"
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
%struct.atmel_tdes_drv = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
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
%struct.atmel_tdes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.atmel_tdes_dma, ptr, i32, i32, %struct.atmel_tdes_dma, %struct.atmel_tdes_caps, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.atmel_tdes_dma = type { ptr, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.atmel_tdes_caps = type { i8, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_tdes_ctx = type { ptr, i32, [6 x i32], i32, i16 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.des_ctx = type { [32 x i32] }

@atmel_tdes_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g46-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description250 = internal constant [52 x i8] c"description=Atmel DES/TDES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [46 x i8] c"author=Nicolas Royer - Eukr\C3\A9a Electromatique\00", section ".modinfo", align 1
@atmel_tdes_driver = internal global %struct.platform_driver { ptr @atmel_tdes_probe, ptr @atmel_tdes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_tdes_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"atmel_tdes\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"atmel-tdes\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to request tdes irq.\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"using %s, %s for DMA transfers\0A\00", align 1
@atmel_tdes = internal global %struct.atmel_tdes_drv { %struct.list_head { ptr @atmel_tdes, ptr @atmel_tdes }, %struct.spinlock zeroinitializer }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Atmel DES/TDES\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"TDES interrupt when no active requests.\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"version: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Unmanaged tdes version, set minimum capabilities\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"no DMA channel available\0A\00", align 1
@tdes_algs = internal global [10 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_ecb_encrypt, ptr @atmel_tdes_ecb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cbc_encrypt, ptr @atmel_tdes_cbc_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb_encrypt, ptr @atmel_tdes_cfb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb8_encrypt, ptr @atmel_tdes_cfb8_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb8(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb8-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb16_encrypt, ptr @atmel_tdes_cfb16_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 2, i32 0, i32 1, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb16(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb16-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_cfb32_encrypt, ptr @atmel_tdes_cfb32_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 4, i32 0, i32 3, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb32(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cfb32-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_des_setkey, ptr @atmel_tdes_ofb_encrypt, ptr @atmel_tdes_ofb_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_ecb_encrypt, ptr @atmel_tdes_ecb_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ecb-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_cbc_encrypt, ptr @atmel_tdes_cbc_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-cbc-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, %struct.skcipher_alg { ptr @atmel_tdes_setkey, ptr @atmel_tdes_ofb_encrypt, ptr @atmel_tdes_ofb_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 7, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"atmel-ofb-tdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.69 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }], align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_of__atmel_tdes_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_tdes_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_tdes_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_tdes_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 288, i32 noundef 3264) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %212, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  store volatile ptr %3, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 8
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %10, ptr noundef nonnull @atmel_tdes_done_task, i32 noundef %11) #8
  %12 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 11
  tail call void @tasklet_init(ptr noundef %12, ptr noundef nonnull @atmel_tdes_queue_task, i32 noundef %11) #8
  %13 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 9
  tail call void @crypto_init_queue(ptr noundef %13, i32 noundef 50) #8
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %210

17:                                               ; preds = %5
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %210, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @atmel_tdes_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #9
  br label %210

27:                                               ; preds = %23
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %29 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 5
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %210

34:                                               ; preds = %27
  %35 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %14) #8
  %36 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i32
  br label %210

40:                                               ; preds = %34
  %41 = load ptr, ptr %29, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %210

44:                                               ; preds = %40
  %45 = tail call i32 @clk_enable(ptr noundef %41) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 256) #8, !srcloc !8
  %54 = load i32, ptr %48, align 4
  %55 = or i32 %54, 8
  store i32 %55, ptr %48, align 4
  br label %57

56:                                               ; preds = %44
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %210

57:                                               ; preds = %52, %47
  %58 = load ptr, ptr %36, align 4
  %59 = getelementptr i8, ptr %58, i32 252
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !9
  %61 = and i32 %60, 4095
  %62 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 31
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.9, i32 noundef %61) #9
  %64 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %64) #8
  tail call void @clk_unprepare(ptr noundef %64) #8
  %65 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 30
  store i8 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 30, i32 1
  store i32 0, ptr %66, align 4
  %67 = load i32, ptr %62, align 4
  %68 = and i32 %67, 3840
  switch i32 %68, label %70 [
    i32 1792, label %69
    i32 1536, label %72
  ]

69:                                               ; preds = %57
  store i8 1, ptr %65, align 4
  store i32 1, ptr %66, align 4
  br label %72

70:                                               ; preds = %57
  %71 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.10) #9
  br label %72

72:                                               ; preds = %70, %69, %57
  %73 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 22
  store ptr %74, ptr %75, align 4
  %76 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 26
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 20
  store i32 4096, ptr %79, align 4
  %80 = load ptr, ptr %75, align 4
  %81 = icmp eq ptr %80, null
  %82 = icmp eq i32 %76, 0
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %146, label %84

84:                                               ; preds = %72
  %85 = load ptr, ptr %6, align 4
  %86 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %80) #8
  %87 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %99, !prof !10

90:                                               ; preds = %84
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %91 = tail call ptr @dev_driver_string(ptr noundef %85) #8
  %92 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load ptr, ptr %85, align 4
  br label %97

97:                                               ; preds = %95, %90
  %98 = phi ptr [ %96, %95 ], [ %93, %90 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %91, ptr noundef %98) #8
  br label %99

99:                                               ; preds = %97, %84
  br i1 %86, label %100, label %102

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 24
  store i32 -1, ptr %101, align 4
  br label %146

102:                                              ; preds = %99
  %103 = load ptr, ptr @mem_map, align 4
  %104 = ptrtoint ptr %80 to i32
  %105 = add i32 %104, 1073741824
  %106 = lshr i32 %105, 12
  %107 = getelementptr %struct.page, ptr %103, i32 %106
  %108 = and i32 %104, 4095
  %109 = tail call i32 @dma_map_page_attrs(ptr noundef %85, ptr noundef %107, i32 noundef %108, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %110 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 24
  store i32 %109, ptr %110, align 4
  %111 = icmp eq i32 %109, -1
  br i1 %111, label %146, label %112

112:                                              ; preds = %102
  %113 = load ptr, ptr %6, align 4
  %114 = load ptr, ptr %78, align 4
  %115 = load i32, ptr %79, align 4
  %116 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %114) #8
  %117 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %118 = xor i1 %117, true
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %129, !prof !10

120:                                              ; preds = %112
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %121 = tail call ptr @dev_driver_string(ptr noundef %113) #8
  %122 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %113, align 4
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi ptr [ %126, %125 ], [ %123, %120 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %121, ptr noundef %128) #8
  br label %129

129:                                              ; preds = %127, %112
  br i1 %116, label %130, label %132

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 28
  store i32 -1, ptr %131, align 4
  br label %142

132:                                              ; preds = %129
  %133 = load ptr, ptr @mem_map, align 4
  %134 = ptrtoint ptr %114 to i32
  %135 = add i32 %134, 1073741824
  %136 = lshr i32 %135, 12
  %137 = getelementptr %struct.page, ptr %133, i32 %136
  %138 = and i32 %134, 4095
  %139 = tail call i32 @dma_map_page_attrs(ptr noundef %113, ptr noundef %137, i32 noundef %138, i32 noundef %115, i32 noundef 2, i32 noundef 0) #8
  %140 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 28
  store i32 %139, ptr %140, align 4
  %141 = icmp eq i32 %139, -1
  br i1 %141, label %142, label %151

142:                                              ; preds = %132, %130
  %143 = load ptr, ptr %6, align 4
  %144 = load i32, ptr %110, align 4
  %145 = load i32, ptr %79, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef 1, i32 noundef 0) #8
  br label %146

146:                                              ; preds = %142, %102, %100, %72
  %147 = load ptr, ptr %78, align 4
  %148 = ptrtoint ptr %147 to i32
  tail call void @free_pages(i32 noundef %148, i32 noundef 0) #8
  %149 = load ptr, ptr %75, align 4
  %150 = ptrtoint ptr %149 to i32
  tail call void @free_pages(i32 noundef %150, i32 noundef 0) #8
  br label %210

151:                                              ; preds = %132
  %152 = load i8, ptr %65, align 4, !range !11
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %182, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc i32 @atmel_tdes_dma_init(ptr noundef nonnull %3)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %198

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 25
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.dma_chan, ptr %159, i32 0, i32 5
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.dma_chan_dev, ptr %161, i32 0, i32 1, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.dma_chan_dev, ptr %161, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %157
  %169 = phi ptr [ %167, %165 ], [ %163, %157 ]
  %170 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 29
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dma_chan, ptr %171, i32 0, i32 5
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.dma_chan_dev, ptr %173, i32 0, i32 1, i32 3
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.dma_chan_dev, ptr %173, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %168
  %181 = phi ptr [ %179, %177 ], [ %175, %168 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %169, ptr noundef %181) #9
  br label %182

182:                                              ; preds = %180, %151
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #8
  %183 = load ptr, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 0, i32 1), align 4
  store ptr @atmel_tdes, ptr %3, align 4
  store ptr %183, ptr %8, align 4
  store volatile ptr %3, ptr %183, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %184 = load i16, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  %185 = add i16 %184, 1
  store i16 %185, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %186 = tail call fastcc i32 @atmel_tdes_register_algs()
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  br label %212

189:                                              ; preds = %182
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #8
  %190 = load ptr, ptr %8, align 4
  %191 = load ptr, ptr %3, align 4
  %192 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  store ptr %190, ptr %192, align 4
  store volatile ptr %191, ptr %190, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %193 = load i16, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  %194 = add i16 %193, 1
  store i16 %194, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %195 = load i8, ptr %65, align 4, !range !11
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %189
  tail call fastcc void @atmel_tdes_dma_cleanup(ptr noundef nonnull %3)
  br label %198

198:                                              ; preds = %197, %189, %154
  %199 = phi i32 [ %155, %154 ], [ %186, %197 ], [ %186, %189 ]
  %200 = load ptr, ptr %6, align 4
  %201 = load i32, ptr %140, align 4
  %202 = load i32, ptr %79, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef 2, i32 noundef 0) #8
  %203 = load ptr, ptr %6, align 4
  %204 = load i32, ptr %110, align 4
  %205 = load i32, ptr %79, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef 1, i32 noundef 0) #8
  %206 = load ptr, ptr %78, align 4
  %207 = ptrtoint ptr %206 to i32
  tail call void @free_pages(i32 noundef %207, i32 noundef 0) #8
  %208 = load ptr, ptr %75, align 4
  %209 = ptrtoint ptr %208 to i32
  tail call void @free_pages(i32 noundef %209, i32 noundef 0) #8
  br label %210

210:                                              ; preds = %198, %146, %56, %40, %38, %31, %26, %17, %16
  %211 = phi i32 [ %24, %26 ], [ %33, %31 ], [ %39, %38 ], [ %45, %56 ], [ -12, %146 ], [ %199, %198 ], [ -19, %16 ], [ %20, %17 ], [ %42, %40 ]
  tail call void @tasklet_kill(ptr noundef %10) #8
  tail call void @tasklet_kill(ptr noundef %12) #8
  br label %212

212:                                              ; preds = %210, %188, %1
  %213 = phi i32 [ %211, %210 ], [ 0, %188 ], [ -12, %1 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %10 = load i16, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @tdes_algs) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 1)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 2)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 3)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 4)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 5)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 6)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 7)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 8)) #8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 9)) #8
  %12 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 30
  %15 = load i8, ptr %14, align 4, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  tail call void @dma_release_channel(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 29
  %21 = load ptr, ptr %20, align 4
  tail call void @dma_release_channel(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 28
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #8
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %31, i32 noundef %32, i32 noundef 1, i32 noundef 0) #8
  %33 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 26
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %34 to i32
  tail call void @free_pages(i32 noundef %35, i32 noundef 0) #8
  %36 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %3, i32 0, i32 22
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  tail call void @free_pages(i32 noundef %38, i32 noundef 0) #8
  br label %39

39:                                               ; preds = %22, %1
  %40 = phi i32 [ 0, %22 ], [ -19, %1 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tdes_done_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 514) #8, !srcloc !8
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %22, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %15, ptr noundef %18, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %151

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %15, i32 noundef %24, i32 noundef %26, i32 noundef 2) #8
  %27 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 17
  %28 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 19
  %29 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %25, align 4
  %34 = icmp ne i32 %32, 0
  %35 = icmp ne i32 %33, 0
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %22
  %38 = load ptr, ptr %27, align 4
  %39 = load i32, ptr %28, align 4
  br label %40

40:                                               ; preds = %67, %37
  %41 = phi i32 [ %68, %67 ], [ %39, %37 ]
  %42 = phi ptr [ %69, %67 ], [ %38, %37 ]
  %43 = phi i32 [ %55, %67 ], [ %32, %37 ]
  %44 = phi i32 [ %58, %67 ], [ %33, %37 ]
  %45 = phi i32 [ %54, %67 ], [ 0, %37 ]
  %46 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %47, %41
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %44) #8
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %43) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %30, i32 %45
  tail call void @scatterwalk_map_and_copy(ptr noundef %53, ptr noundef %42, i32 noundef %41, i32 noundef %50, i32 noundef 1) #8
  %54 = add i32 %50, %45
  %55 = sub i32 %43, %50
  %56 = load i32, ptr %28, align 4
  %57 = add i32 %56, %50
  store i32 %57, ptr %28, align 4
  %58 = sub i32 %44, %50
  %59 = load ptr, ptr %27, align 4
  %60 = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = tail call ptr @sg_next(ptr noundef %59) #8
  store ptr %64, ptr %27, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  store i32 0, ptr %28, align 4
  br label %67

67:                                               ; preds = %66, %52
  %68 = phi i32 [ 0, %66 ], [ %57, %52 ]
  %69 = phi ptr [ %64, %66 ], [ %59, %52 ]
  %70 = icmp ne i32 %55, 0
  %71 = icmp ne i32 %58, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %40, label %73

73:                                               ; preds = %67, %63, %40
  %74 = phi i32 [ %54, %63 ], [ %54, %67 ], [ %45, %40 ]
  %75 = load i32, ptr %25, align 4
  br label %76

76:                                               ; preds = %73, %22
  %77 = phi i32 [ %33, %22 ], [ %75, %73 ]
  %78 = phi i32 [ 0, %22 ], [ %74, %73 ]
  %79 = icmp eq i32 %78, %77
  %80 = select i1 %79, i32 0, i32 -22
  br label %151

81:                                               ; preds = %1
  %82 = and i32 %4, 16
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  br i1 %83, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 17
  %88 = load ptr, ptr %87, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %85, ptr noundef %88, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %89 = load ptr, ptr %84, align 4
  %90 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 14
  %91 = load ptr, ptr %90, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %89, ptr noundef %91, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %151

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 28
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 21
  %96 = load i32, ptr %95, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %85, i32 noundef %94, i32 noundef %96, i32 noundef 2) #8
  %97 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 17
  %98 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 19
  %99 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 26
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 20
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %95, align 4
  %104 = icmp ne i32 %102, 0
  %105 = icmp ne i32 %103, 0
  %106 = and i1 %104, %105
  br i1 %106, label %107, label %146

107:                                              ; preds = %92
  %108 = load ptr, ptr %97, align 4
  %109 = load i32, ptr %98, align 4
  br label %110

110:                                              ; preds = %137, %107
  %111 = phi i32 [ %138, %137 ], [ %109, %107 ]
  %112 = phi ptr [ %139, %137 ], [ %108, %107 ]
  %113 = phi i32 [ %125, %137 ], [ %102, %107 ]
  %114 = phi i32 [ %128, %137 ], [ %103, %107 ]
  %115 = phi i32 [ %124, %137 ], [ 0, %107 ]
  %116 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = sub i32 %117, %111
  %119 = tail call i32 @llvm.umin.i32(i32 %118, i32 %114) #8
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 %113) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %110
  %123 = getelementptr i8, ptr %100, i32 %115
  tail call void @scatterwalk_map_and_copy(ptr noundef %123, ptr noundef %112, i32 noundef %111, i32 noundef %120, i32 noundef 1) #8
  %124 = add i32 %120, %115
  %125 = sub i32 %113, %120
  %126 = load i32, ptr %98, align 4
  %127 = add i32 %126, %120
  store i32 %127, ptr %98, align 4
  %128 = sub i32 %114, %120
  %129 = load ptr, ptr %97, align 4
  %130 = getelementptr inbounds %struct.scatterlist, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %127, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = tail call ptr @sg_next(ptr noundef %129) #8
  store ptr %134, ptr %97, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  store i32 0, ptr %98, align 4
  br label %137

137:                                              ; preds = %136, %122
  %138 = phi i32 [ 0, %136 ], [ %127, %122 ]
  %139 = phi ptr [ %134, %136 ], [ %129, %122 ]
  %140 = icmp ne i32 %125, 0
  %141 = icmp ne i32 %128, 0
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %110, label %143

143:                                              ; preds = %137, %133, %110
  %144 = phi i32 [ %124, %133 ], [ %124, %137 ], [ %115, %110 ]
  %145 = load i32, ptr %95, align 4
  br label %146

146:                                              ; preds = %143, %92
  %147 = phi i32 [ %103, %92 ], [ %145, %143 ]
  %148 = phi i32 [ 0, %92 ], [ %144, %143 ]
  %149 = icmp eq i32 %148, %147
  %150 = select i1 %149, i32 0, i32 -22
  br label %151

151:                                              ; preds = %146, %86, %76, %16
  %152 = phi i32 [ 0, %16 ], [ %80, %76 ], [ 0, %86 ], [ %150, %146 ]
  %153 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 13
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  %156 = icmp ne i32 %152, 0
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %178, label %158

158:                                              ; preds = %151
  %159 = load i32, ptr %3, align 4
  %160 = and i32 %159, 16
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 14
  %164 = load ptr, ptr %163, align 4
  %165 = tail call ptr @sg_next(ptr noundef %164) #8
  store ptr %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %2, i32 0, i32 17
  %167 = load ptr, ptr %166, align 4
  %168 = tail call ptr @sg_next(ptr noundef %167) #8
  store ptr %168, ptr %166, align 4
  %169 = load ptr, ptr %163, align 4
  %170 = icmp eq ptr %169, null
  %171 = icmp eq ptr %168, null
  %172 = select i1 %170, i1 true, i1 %171
  br i1 %172, label %175, label %173

173:                                              ; preds = %162, %158
  %174 = tail call fastcc i32 @atmel_tdes_crypt_start(ptr noundef %2)
  br label %175

175:                                              ; preds = %173, %162
  %176 = phi i32 [ -22, %162 ], [ %174, %173 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175, %151
  %179 = phi i32 [ %152, %151 ], [ %176, %175 ]
  tail call fastcc void @atmel_tdes_finish_req(ptr noundef %2, i32 noundef %179)
  %180 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %2, ptr noundef null)
  br label %181

181:                                              ; preds = %178, %175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tdes_queue_task(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %2, ptr noundef null)
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
define internal i32 @atmel_tdes_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #8, !srcloc !8
  %15 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 10, i32 1
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %24) #8
  br label %28

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %1, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.8) #9
  br label %28

28:                                               ; preds = %25, %23, %19, %2
  %29 = phi i32 [ 1, %25 ], [ 0, %2 ], [ 1, %19 ], [ 1, %23 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_dma_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  %5 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 64
  %11 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 5
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 3
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 6
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 4
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 9
  store i8 0, ptr %16, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = tail call ptr @dma_request_chan(ptr noundef %17, ptr noundef nonnull @.str.14) #8
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load ptr, ptr %5, align 4
  tail call void @dma_release_channel(ptr noundef %22) #8
  br label %32

23:                                               ; preds = %7
  %24 = load i32, ptr %8, align 4
  %25 = add i32 %24, 80
  %26 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 5
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 3
  store i32 4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 6
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 4
  store i32 4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 9
  store i8 0, ptr %31, align 4
  br label %36

32:                                               ; preds = %21, %1
  %33 = phi ptr [ %18, %21 ], [ %4, %1 ]
  %34 = ptrtoint ptr %33 to i32
  %35 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.15) #9
  br label %36

36:                                               ; preds = %32, %23
  %37 = phi i32 [ %34, %32 ], [ 0, %23 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_register_algs() unnamed_addr #2 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %3 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2
  %4 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2, i32 11, i32 6
  store i32 300, ptr %4, align 32
  %5 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2, i32 11, i32 2
  store i32 128, ptr %5, align 16
  %6 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2, i32 11, i32 4
  store i32 40, ptr %6, align 8
  %7 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2, i32 11, i32 15
  store ptr @__this_module, ptr %7, align 4
  %8 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %2, i32 3
  store ptr @atmel_tdes_init_tfm, ptr %8, align 4
  %9 = tail call i32 @crypto_register_skcipher(ptr noundef %3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %21, label %16

13:                                               ; preds = %1
  %14 = add nuw nsw i32 %2, 1
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %21, label %1

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %19, %16 ], [ 0, %11 ]
  %18 = getelementptr [10 x %struct.skcipher_alg], ptr @tdes_algs, i32 0, i32 %17
  tail call void @crypto_unregister_skcipher(ptr noundef %18) #8
  %19 = add nuw nsw i32 %17, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %13, %11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_tdes_dma_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  tail call void @dma_release_channel(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_crypt_start(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %81

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %21, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %24, -1
  %26 = and i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %17, %10
  %29 = phi i1 [ false, %10 ], [ %27, %17 ]
  %30 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %40, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, -1
  %45 = and i32 %44, %38
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %29, true
  %48 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %49, %51
  %53 = select i1 %52, i1 true, i1 %47
  %54 = select i1 %53, i1 true, i1 %46
  br i1 %54, label %81, label %55

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 13
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %49)
  %59 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @dma_map_sg_attrs(ptr noundef %60, ptr noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %281, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %59, align 4
  %65 = load ptr, ptr %30, align 4
  %66 = tail call i32 @dma_map_sg_attrs(ptr noundef %64, ptr noundef %65, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %59, align 4
  %70 = load ptr, ptr %11, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %69, ptr noundef %70, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %281

71:                                               ; preds = %63
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %30, align 4
  %76 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 16
  store i32 %80, ptr %78, align 4
  br label %136

81:                                               ; preds = %36, %28, %6, %1
  %82 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 14
  %83 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 22
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 20
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 13
  %88 = load i32, ptr %87, align 4
  %89 = icmp ne i32 %86, 0
  %90 = icmp ne i32 %88, 0
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %81
  %93 = load ptr, ptr %82, align 4
  br label %94

94:                                               ; preds = %121, %92
  %95 = phi i32 [ %122, %121 ], [ %4, %92 ]
  %96 = phi ptr [ %123, %121 ], [ %93, %92 ]
  %97 = phi i32 [ %109, %121 ], [ %86, %92 ]
  %98 = phi i32 [ %112, %121 ], [ %88, %92 ]
  %99 = phi i32 [ %108, %121 ], [ 0, %92 ]
  %100 = getelementptr inbounds %struct.scatterlist, ptr %96, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = sub i32 %101, %95
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 %98) #8
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 %97) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %94
  %107 = getelementptr i8, ptr %84, i32 %99
  tail call void @scatterwalk_map_and_copy(ptr noundef %107, ptr noundef %96, i32 noundef %95, i32 noundef %104, i32 noundef 0) #8
  %108 = add i32 %104, %99
  %109 = sub i32 %97, %104
  %110 = load i32, ptr %3, align 4
  %111 = add i32 %110, %104
  store i32 %111, ptr %3, align 4
  %112 = sub i32 %98, %104
  %113 = load ptr, ptr %82, align 4
  %114 = getelementptr inbounds %struct.scatterlist, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %111, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = tail call ptr @sg_next(ptr noundef %113) #8
  store ptr %118, ptr %82, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  store i32 0, ptr %3, align 4
  br label %121

121:                                              ; preds = %120, %106
  %122 = phi i32 [ 0, %120 ], [ %111, %106 ]
  %123 = phi ptr [ %118, %120 ], [ %113, %106 ]
  %124 = icmp ne i32 %109, 0
  %125 = icmp ne i32 %112, 0
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %94, label %127

127:                                              ; preds = %121, %117, %94, %81
  %128 = phi i32 [ 0, %81 ], [ %99, %94 ], [ %108, %121 ], [ %108, %117 ]
  %129 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 24
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 28
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, -17
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %127, %71
  %137 = phi i32 [ %80, %71 ], [ %135, %127 ]
  %138 = phi i32 [ %74, %71 ], [ %130, %127 ]
  %139 = phi i32 [ %77, %71 ], [ %132, %127 ]
  %140 = phi i32 [ %58, %71 ], [ %128, %127 ]
  %141 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 13
  %142 = load i32, ptr %141, align 4
  %143 = sub i32 %142, %140
  store i32 %143, ptr %141, align 4
  %144 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 30
  %145 = load i8, ptr %144, align 4, !range !11
  %146 = icmp eq i8 %145, 0
  %147 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 12
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.skcipher_request, ptr %148, i32 0, i32 6
  br i1 %146, label %219, label %150

150:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #8, !annotation !16
  %151 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 21
  store i32 %140, ptr %151, align 4
  %152 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %153 = and i32 %137, 16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %157, i32 noundef %138, i32 noundef %140, i32 noundef 1) #8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, ptr %149, align 4
  %160 = and i32 %159, 208896
  %161 = icmp eq i32 %160, 143360
  %162 = select i1 %161, i32 2, i32 4
  %163 = icmp eq i32 %160, 208896
  %164 = select i1 %163, i32 1, i32 %162
  %165 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25
  %166 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1, i32 4
  store i32 %164, ptr %166, align 4
  %167 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29
  %168 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1
  %169 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 29, i32 1, i32 3
  store i32 %164, ptr %169, align 4
  %170 = load ptr, ptr %165, align 4
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 44
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %158
  %176 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 25, i32 1
  %177 = tail call i32 %173(ptr noundef %170, ptr noundef %176) #8
  br label %178

178:                                              ; preds = %175, %158
  %179 = load ptr, ptr %167, align 4
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.dma_device, ptr %180, i32 0, i32 44
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %178
  %185 = tail call i32 %182(ptr noundef %179, ptr noundef %168) #8
  br label %186

186:                                              ; preds = %184, %178
  %187 = load i32, ptr %152, align 4
  %188 = or i32 %187, 64
  store i32 %188, ptr %152, align 4
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #8
  %189 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %138, ptr %189, align 4
  %190 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %140, ptr %190, align 4
  %191 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1
  call void @sg_init_table(ptr noundef %191, i32 noundef 1) #8
  %192 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1, i32 3
  store i32 %139, ptr %192, align 4
  %193 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1, i32 4
  store i32 %140, ptr %193, align 4
  %194 = load ptr, ptr %165, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %269, label %196

196:                                              ; preds = %186
  %197 = load ptr, ptr %194, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %269, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.dma_device, ptr %197, i32 0, i32 39
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %269, label %203

203:                                              ; preds = %199
  %204 = call ptr %201(ptr noundef nonnull %194, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %269, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %167, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %269, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr %207, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %269, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.dma_device, ptr %210, i32 0, i32 39
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %269, label %216

216:                                              ; preds = %212
  %217 = call ptr %214(ptr noundef nonnull %207, ptr noundef %191, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %269, label %252

219:                                              ; preds = %136
  %220 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 21
  store i32 %140, ptr %220, align 4
  %221 = and i32 %137, 16
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 4
  %225 = load ptr, ptr %224, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %225, i32 noundef %138, i32 noundef %140, i32 noundef 1) #8
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, ptr %149, align 4
  %228 = and i32 %227, 208896
  switch i32 %228, label %232 [
    i32 208896, label %235
    i32 143360, label %229
  ]

229:                                              ; preds = %226
  %230 = add i32 %140, 1
  %231 = lshr i32 %230, 1
  br label %235

232:                                              ; preds = %226
  %233 = add i32 %140, 3
  %234 = lshr i32 %233, 2
  br label %235

235:                                              ; preds = %232, %229, %226
  %236 = phi i32 [ %234, %232 ], [ %231, %229 ], [ %140, %226 ]
  %237 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr i8, ptr %238, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 514) #8, !srcloc !8
  %240 = load ptr, ptr %237, align 4
  %241 = getelementptr i8, ptr %240, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %138) #8, !srcloc !8
  %242 = load ptr, ptr %237, align 4
  %243 = getelementptr i8, ptr %242, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %236) #8, !srcloc !8
  %244 = load ptr, ptr %237, align 4
  %245 = getelementptr i8, ptr %244, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %139) #8, !srcloc !8
  %246 = load ptr, ptr %237, align 4
  %247 = getelementptr i8, ptr %246, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %236) #8, !srcloc !8
  %248 = load ptr, ptr %237, align 4
  %249 = getelementptr i8, ptr %248, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 2) #8, !srcloc !8
  %250 = load ptr, ptr %237, align 4
  %251 = getelementptr i8, ptr %250, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 257) #8, !srcloc !8
  br label %281

252:                                              ; preds = %216
  %253 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 6
  store ptr @atmel_tdes_dma_callback, ptr %253, align 4
  %254 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 8
  store ptr %0, ptr %254, align 4
  %255 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %217, i32 0, i32 4
  %256 = load ptr, ptr %255, align 4
  %257 = call i32 %256(ptr noundef nonnull %217) #8
  %258 = load ptr, ptr %167, align 4
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.dma_device, ptr %259, i32 0, i32 50
  %261 = load ptr, ptr %260, align 4
  call void %261(ptr noundef %258) #8
  %262 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %204, i32 0, i32 4
  %263 = load ptr, ptr %262, align 4
  %264 = call i32 %263(ptr noundef nonnull %204) #8
  %265 = load ptr, ptr %165, align 4
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.dma_device, ptr %266, i32 0, i32 50
  %268 = load ptr, ptr %267, align 4
  call void %268(ptr noundef %265) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8
  br label %281

269:                                              ; preds = %216, %212, %209, %206, %203, %199, %196, %186
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8
  %270 = load i32, ptr %152, align 4
  %271 = and i32 %270, 16
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 4
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 14
  %277 = load ptr, ptr %276, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %275, ptr noundef %277, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %278 = load ptr, ptr %274, align 4
  %279 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 17
  %280 = load ptr, ptr %279, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %278, ptr noundef %280, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %281

281:                                              ; preds = %273, %269, %252, %235, %68, %55
  %282 = phi i32 [ -22, %68 ], [ -22, %55 ], [ -22, %273 ], [ -22, %269 ], [ 0, %252 ], [ 0, %235 ]
  ret i32 %282
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmel_tdes_finish_req(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -33
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 208896
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -36
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %17, align 64
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %49, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = sub i32 %24, %23
  tail call void @scatterwalk_map_and_copy(ptr noundef %33, ptr noundef %35, i32 noundef %36, i32 noundef %23, i32 noundef 0) #8
  br label %49

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %39, %41
  %43 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  br i1 %42, label %45, label %47

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.skcipher_request, ptr %17, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 4 %46, i32 %23, i1 false) #8
  br label %49

47:                                               ; preds = %37
  %48 = sub i32 %24, %23
  tail call void @scatterwalk_map_and_copy(ptr noundef %44, ptr noundef %39, i32 noundef %48, i32 noundef %23, i32 noundef 0) #8
  br label %49

49:                                               ; preds = %47, %45, %31, %16, %11, %2
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4
  %51 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef %50, i32 noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_tdes_handle_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %9 = tail call i32 @crypto_enqueue_request(ptr noundef %7, ptr noundef %8) #8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  br label %141

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 9
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 9, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %18
  %22 = select i1 %21, ptr null, ptr %20
  %23 = tail call ptr @crypto_dequeue_request(ptr noundef %18) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %12, align 4
  %27 = or i32 %26, 32
  store i32 %27, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  %28 = icmp eq ptr %22, null
  br i1 %28, label %33, label %30

29:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  br label %141

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.crypto_async_request, ptr %22, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %22, i32 noundef -115) #8
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr i8, ptr %23, i32 -16
  %35 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 12
  store ptr %34, ptr %35, align 4
  %36 = load i32, ptr %34, align 64
  %37 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 16
  store i32 0, ptr %38, align 4
  %39 = getelementptr i8, ptr %23, i32 -8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 14
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 19
  store i32 0, ptr %42, align 4
  %43 = getelementptr i8, ptr %23, i32 -4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 17
  store ptr %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %23, i32 48
  %47 = getelementptr i8, ptr %23, i32 16
  %48 = load ptr, ptr %47, align 16
  %49 = getelementptr i8, ptr %48, i32 64
  %50 = load i32, ptr %46, align 4
  %51 = and i32 %50, 208897
  store i32 %51, ptr %46, align 4
  %52 = load i32, ptr %12, align 4
  %53 = and i32 %52, -208898
  %54 = or i32 %53, %51
  store i32 %54, ptr %12, align 4
  %55 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 3
  store ptr %49, ptr %55, align 4
  %56 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @clk_prepare(ptr noundef %57) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %134

60:                                               ; preds = %33
  %61 = tail call i32 @clk_enable(ptr noundef %57) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @clk_unprepare(ptr noundef %57) #8
  br label %134

64:                                               ; preds = %60
  %65 = load i32, ptr %12, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 256) #8, !srcloc !8
  %71 = load i32, ptr %12, align 4
  %72 = or i32 %71, 8
  store i32 %72, ptr %12, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %72, %68 ], [ %65, %64 ]
  %75 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 30
  %76 = load i8, ptr %75, align 4, !range !11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 514) #8, !srcloc !8
  %82 = load i32, ptr %12, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i32 [ %82, %78 ], [ %74, %73 ]
  %85 = load ptr, ptr %55, align 4
  %86 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp sgt i32 %87, 16
  %89 = icmp sgt i32 %87, 8
  %90 = select i1 %89, i32 530, i32 512
  %91 = select i1 %88, i32 514, i32 %90
  %92 = and i32 %84, 208897
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %93) #8, !srcloc !8
  %97 = load ptr, ptr %55, align 4
  %98 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %115, label %101

101:                                              ; preds = %83
  %102 = ashr i32 %99, 2
  %103 = getelementptr inbounds %struct.atmel_tdes_ctx, ptr %97, i32 0, i32 2
  br label %104

104:                                              ; preds = %104, %101
  %105 = phi i32 [ %108, %104 ], [ %102, %101 ]
  %106 = phi ptr [ %112, %104 ], [ %103, %101 ]
  %107 = phi i32 [ %113, %104 ], [ 32, %101 ]
  %108 = add i32 %105, -1
  %109 = load i32, ptr %106, align 4
  %110 = load ptr, ptr %94, align 4
  %111 = getelementptr i8, ptr %110, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !8
  %112 = getelementptr i32, ptr %106, i32 1
  %113 = add i32 %107, 4
  %114 = icmp eq i32 %108, 0
  br i1 %114, label %115, label %104

115:                                              ; preds = %104, %83
  %116 = load ptr, ptr %35, align 4
  %117 = getelementptr inbounds %struct.skcipher_request, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  %120 = and i32 %84, 12288
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = load i32, ptr %118, align 4
  %125 = load ptr, ptr %94, align 4
  %126 = getelementptr i8, ptr %125, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #8, !srcloc !8
  %127 = getelementptr i32, ptr %118, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %94, align 4
  %130 = getelementptr i8, ptr %129, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !8
  br label %131

131:                                              ; preds = %123, %115
  %132 = tail call fastcc i32 @atmel_tdes_crypt_start(ptr noundef %0)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131, %63, %33
  %135 = phi i32 [ %132, %131 ], [ %58, %33 ], [ %61, %63 ]
  tail call fastcc void @atmel_tdes_finish_req(ptr noundef %0, i32 noundef %135)
  %136 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 11, i32 1
  %137 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %136) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %140) #8
  br label %141

141:                                              ; preds = %139, %134, %131, %29, %16
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_tdes_dma_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 10, i32 1
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_tdes_dev, ptr %0, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %6) #8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_init_tfm(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #8
  %3 = load volatile ptr, ptr @atmel_tdes, align 4
  %4 = icmp eq ptr %3, @atmel_tdes
  %5 = select i1 %4, ptr null, ptr %3
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.atmel_tdes_drv, ptr @atmel_tdes, i32 0, i32 1)) #8
  store ptr %5, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 12, ptr %0, align 64
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ 0, %7 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_des_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.des_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #8, !annotation !16
  %5 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #8
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
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %1, i32 %2, i1 false)
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ecb_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 1, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ecb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 0, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cbc_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 4097, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cbc_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 4096, ptr %5, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %3, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %27 = sub i32 %23, %22
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %14, i32 noundef %27, i32 noundef %22, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load ptr, ptr %4, align 4
  %30 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %29, ptr noundef %0) #8
  br label %31

31:                                               ; preds = %28, %8, %1
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 12289, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 12288, ptr %5, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %3, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %27 = sub i32 %23, %22
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %14, i32 noundef %27, i32 noundef %22, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load ptr, ptr %4, align 4
  %30 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %29, ptr noundef %0) #8
  br label %31

31:                                               ; preds = %28, %8, %1
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb8_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = getelementptr i8, ptr %7, i32 100
  store i16 1, ptr %9, align 4
  store i32 208897, ptr %5, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %10, ptr noundef %0) #8
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i32 [ %11, %4 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb8_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %9 = getelementptr i8, ptr %3, i32 100
  store i16 1, ptr %9, align 4
  store i32 208896, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %3, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -36
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %0, align 64
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %24 = sub i32 %20, %19
  tail call void @scatterwalk_map_and_copy(ptr noundef %23, ptr noundef %11, i32 noundef %24, i32 noundef %19, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %22, %15, %7
  %26 = load ptr, ptr %4, align 4
  %27 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %26, ptr noundef %0) #8
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi i32 [ %27, %25 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb16_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 2, ptr %12, align 4
  store i32 143361, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb16_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 2, ptr %12, align 4
  store i32 143360, ptr %5, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %3, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %27 = sub i32 %23, %22
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %14, i32 noundef %27, i32 noundef %22, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load ptr, ptr %4, align 4
  %30 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %29, ptr noundef %0) #8
  br label %31

31:                                               ; preds = %28, %8, %1
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb32_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 4, ptr %12, align 4
  store i32 77825, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_cfb32_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 4, ptr %12, align 4
  store i32 77824, ptr %5, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %3, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %27 = sub i32 %23, %22
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %14, i32 noundef %27, i32 noundef %22, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load ptr, ptr %4, align 4
  %30 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %29, ptr noundef %0) #8
  br label %31

31:                                               ; preds = %28, %8, %1
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ofb_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 8193, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %13, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_ofb_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 100
  store i16 8, ptr %12, align 4
  store i32 8192, ptr %5, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %3, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  %27 = sub i32 %23, %22
  tail call void @scatterwalk_map_and_copy(ptr noundef %26, ptr noundef %14, i32 noundef %27, i32 noundef %22, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load ptr, ptr %4, align 4
  %30 = tail call fastcc i32 @atmel_tdes_handle_queue(ptr noundef %29, ptr noundef %0) #8
  br label %31

31:                                               ; preds = %28, %8, %1
  %32 = phi i32 [ %30, %28 ], [ 0, %1 ], [ -22, %8 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_tdes_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #8
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
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %33

30:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %31, ptr align 1 %1, i32 %2, i1 false)
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %2, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ -126, %29 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 3061868}
!9 = !{i64 3062286}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148955325}
!13 = !{i64 2148951149}
!14 = !{i64 2148951224, i64 2148951251, i64 2148951298, i64 2148951320, i64 2148951348, i64 2148951368}
!15 = !{i64 2148978328}
!16 = !{!"auto-init"}
!17 = !{i64 2148745085}
