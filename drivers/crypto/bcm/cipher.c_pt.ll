; ModuleID = '/llk/IR/drivers/crypto/bcm/cipher.c_pt.bc'
source_filename = "../drivers/crypto/bcm/cipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm_device_private = type { ptr, %struct.spu_hw, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, [4 x %struct.atomic_t], [5 x [8 x %struct.atomic_t]], [12 x %struct.atomic_t], [12 x %struct.atomic_t], [3 x %struct.atomic_t], [4 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.mbox_client, ptr }
%struct.spu_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.spu_type_subtype = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [28 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.114, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.114 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.cipher_op = type { i32, i32 }
%struct.auth_op = type { i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.iproc_alg_s = type { i32, [60 x i8], %union.anon.115, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }
%union.anon.115 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
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
%struct.brcm_message = type { i32, %union.anon.110, ptr, i32 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { ptr, i32, i32 }
%struct.iproc_reqctx_s = type { ptr, ptr, i8, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, %struct.brcm_message, i8, i8, ptr, i32, [128 x i8], i32, i32, [64 x i8], i8, ptr, ptr, ptr, i32, %struct.spu_msg_buf }
%struct.spu_msg_buf = type { [568 x i8], [32 x i8], [64 x i8], [148 x i8], [4 x i8], [568 x i8], [4 x i8], [4 x i8], %union.anon.116 }
%union.anon.116 = type { %struct.anon.118 }
%struct.anon.118 = type { [16 x i8], [148 x i8], [528 x i8] }
%struct.iproc_ctx_s = type { [260 x i8], i32, [260 x i8], i32, [4 x i8], i32, i32, [16 x i8], i32, ptr, i8, %struct.cipher_op, i32, %struct.auth_op, i8, i32, ptr, [128 x i8], [128 x i8], [568 x i8], i16, i16, ptr, i8 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.spu_hash_export_s = type { i32, i32, [128 x i8], i32, [64 x i8], i8 }

@__param_str_flow_debug_logging = internal constant [19 x i8] c"flow_debug_logging\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@flow_debug_logging = dso_local global i32 0, align 4
@__param_flow_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_flow_debug_logging, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @flow_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_flow_debug_loggingtype320 = internal constant [32 x i8] c"parmtype=flow_debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flow_debug_logging321 = internal constant [50 x i8] c"parm=flow_debug_logging:Enable Flow Debug Logging\00", section ".modinfo", align 1
@__param_str_packet_debug_logging = internal constant [21 x i8] c"packet_debug_logging\00", align 1
@packet_debug_logging = dso_local global i32 0, align 4
@__param_packet_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_packet_debug_logging, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @packet_debug_logging } }, section "__param", align 4
@__UNIQUE_ID_packet_debug_loggingtype322 = internal constant [34 x i8] c"parmtype=packet_debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_packet_debug_logging323 = internal constant [54 x i8] c"parm=packet_debug_logging:Enable Packet Debug Logging\00", section ".modinfo", align 1
@__param_str_debug_logging_sleep = internal constant [20 x i8] c"debug_logging_sleep\00", align 1
@debug_logging_sleep = dso_local global i32 0, align 4
@__param_debug_logging_sleep = internal constant %struct.kernel_param { ptr @__param_str_debug_logging_sleep, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @debug_logging_sleep } }, section "__param", align 4
@__UNIQUE_ID_debug_logging_sleeptype324 = internal constant [33 x i8] c"parmtype=debug_logging_sleep:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging_sleep325 = internal constant [52 x i8] c"parm=debug_logging_sleep:Packet Debug Logging Sleep\00", section ".modinfo", align 1
@__param_str_cipher_pri = internal constant [11 x i8] c"cipher_pri\00", align 1
@cipher_pri = internal global i32 150, align 4
@__param_cipher_pri = internal constant %struct.kernel_param { ptr @__param_str_cipher_pri, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @cipher_pri } }, section "__param", align 4
@__UNIQUE_ID_cipher_pritype326 = internal constant [24 x i8] c"parmtype=cipher_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cipher_pri327 = internal constant [42 x i8] c"parm=cipher_pri:Priority for cipher algos\00", section ".modinfo", align 1
@__param_str_hash_pri = internal constant [9 x i8] c"hash_pri\00", align 1
@hash_pri = internal global i32 100, align 4
@__param_hash_pri = internal constant %struct.kernel_param { ptr @__param_str_hash_pri, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @hash_pri } }, section "__param", align 4
@__UNIQUE_ID_hash_pritype328 = internal constant [22 x i8] c"parmtype=hash_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hash_pri329 = internal constant [38 x i8] c"parm=hash_pri:Priority for hash algos\00", section ".modinfo", align 1
@__param_str_aead_pri = internal constant [9 x i8] c"aead_pri\00", align 1
@aead_pri = internal global i32 150, align 4
@__param_aead_pri = internal constant %struct.kernel_param { ptr @__param_str_aead_pri, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @aead_pri } }, section "__param", align 4
@__UNIQUE_ID_aead_pritype330 = internal constant [22 x i8] c"parmtype=aead_pri:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aead_pri331 = internal constant [38 x i8] c"parm=aead_pri:Priority for AEAD algos\00", section ".modinfo", align 1
@bcm_spu_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spum-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spum_ns2_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spum-nsp-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spum_nsp_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spu2-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spu2_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spu2-v2-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spu2_v2_types }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author332 = internal constant [40 x i8] c"author=Rob Rice <rob.rice@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description333 = internal constant [53 x i8] c"description=Broadcom symmetric crypto offload driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@iproc_priv = dso_local global %struct.bcm_device_private zeroinitializer, align 8
@spum_ns2_types = internal global %struct.spu_type_subtype zeroinitializer, align 4
@spum_nsp_types = internal global %struct.spu_type_subtype { i32 0, i32 1 }, align 4
@spu2_types = internal global %struct.spu_type_subtype { i32 1, i32 2 }, align 4
@spu2_v2_types = internal global %struct.spu_type_subtype { i32 1, i32 3 }, align 4
@bcm_spu_pdriver = internal global %struct.platform_driver { ptr @bcm_spu_probe, ptr @bcm_spu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_spu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"brcm-spu-crypto\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s failed with error %d.\0A\00", align 1
@__func__.bcm_spu_probe = private unnamed_addr constant [14 x i8] c"bcm_spu_probe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to match device\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to map registers: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Mbox channel %d request failed with err %d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\013%s(): no request context\00", align 1
@__func__.spu_rx_callback = private unnamed_addr constant [16 x i8] c"spu_rx_callback\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"\013%s() Error : unknown hmac type\0A\00", align 1
@__func__.spu_hmac_outer_hash = private unnamed_addr constant [20 x i8] c"spu_hmac_outer_hash\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"\013%s(): failed to copy dst sg to mbox msg. chunksize %u, datalen %u\00", align 1
@__func__.spu_skcipher_rx_sg_create = private unnamed_addr constant [26 x i8] c"spu_skcipher_rx_sg_create\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = private unnamed_addr constant [42 x i8] c"\013%s(): failed to copy src sg to mbox msg\00", align 1
@__func__.spu_skcipher_tx_sg_create = private unnamed_addr constant [26 x i8] c"spu_skcipher_tx_sg_create\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"message error %d\00", align 1
@BCMHEADER = internal unnamed_addr constant [8 x i8] c"`\00\00\00\00\00\00(", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"\013Failed to create SPU request header\0A\00", align 1
@__func__.spu_ahash_tx_sg_create = private unnamed_addr constant [23 x i8] c"spu_ahash_tx_sg_create\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"\013%s(): failed to copy dst sg to mbox msg. expected len %u, datalen %u\00", align 1
@__func__.spu_aead_rx_sg_create = private unnamed_addr constant [22 x i8] c"spu_aead_rx_sg_create\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"\013%s(): failed to copy assoc sg to mbox msg\00", align 1
@__func__.spu_aead_tx_sg_create = private unnamed_addr constant [22 x i8] c"spu_aead_tx_sg_create\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"iproc-crypto: unknown alg type: %d\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"alg registration failed with error %d\0A\00", align 1
@driver_algs = internal global <{ { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] }, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s, %struct.iproc_alg_s }> <{ { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_gcm_ccm_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 12, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_gcm_ccm_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 5 }, %struct.auth_op { i32 5, i32 5 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_gcm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_ccm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4309(ccm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 5 }, %struct.auth_op { i32 5, i32 5 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @rfc4543_gcm_esp_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gmac-aes-esp-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 6 }, %struct.auth_op { i32 5, i32 6 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 20, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 28, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 32, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 48, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.aead_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 3, [60 x i8] undef, { %struct.aead_alg, [64 x i8] } { %struct.aead_alg { ptr @aead_authenc_setkey, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 64, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65920, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 2, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 3, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 2 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 1 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 0 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 4 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, { i32, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, %struct.cipher_op, %struct.auth_op, i8, i8, [46 x i8] } { i32 5, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, [64 x i8] undef }, %struct.cipher_op { i32 4, i32 7 }, %struct.auth_op zeroinitializer, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 1, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-md5-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 1, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha1-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 2, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha1-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 2, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 3, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 3, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 4, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 4, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 6, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 6, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 7, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 7, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 8, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-224-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 8, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 136, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 9, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 136, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-256-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 9, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 144, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 10, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 104, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-384-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 10, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 72, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha3-512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha3-512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 11, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 72, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha3-512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac-sha3-512-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 11, i32 2 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xcbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xcbc-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 5, i32 0 }, i8 0, i8 0, [46 x i8] undef }, %struct.iproc_alg_s { i32 15, [60 x i8] undef, %union.anon.115 { %struct.ahash_alg { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cmac(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cmac-aes-iproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.114 zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } } } }, %struct.cipher_op zeroinitializer, %struct.auth_op { i32 5, i32 1 }, i8 0, i8 0, [46 x i8] undef } }>, align 64
@__func__.aead_authenc_setkey = private unnamed_addr constant [20 x i8] c"aead_authenc_setkey\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"\013%s() Error: Unknown cipher alg\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"\013%s() Error: unknown cipher alg\0A\00", align 1
@__func__.skcipher_setkey = private unnamed_addr constant [16 x i8] c"skcipher_setkey\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"drivers/crypto/bcm/cipher.c\00", align 1
@__func__.ahash_setkey = private unnamed_addr constant [13 x i8] c"ahash_setkey\00", align 1
@.str.80 = private unnamed_addr constant [34 x i8] c"\013%s() Error: Invalid key length\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"\013%s() Error: unknown hash alg\0A\00", align 1
@__func__.ahash_hmac_setkey = private unnamed_addr constant [18 x i8] c"ahash_hmac_setkey\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"sha3-224\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"sha3-256\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"sha3-384\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"sha3-512\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"\013%s() Error %d computing shash for %s\0A\00", align 1
@hash_alg_name = external dso_local local_unnamed_addr global [12 x ptr], align 4
@__func__.aead_enqueue = private unnamed_addr constant [13 x i8] c"aead_enqueue\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"\013%s() Error: associated data too long. (%u > %u bytes)\0A\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c"\013%s() Error: Unable to find start of src data\0A\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"\013%s() Error: Unable to find start of dst data\0A\00", align 1
@__func__.aead_cra_init = private unnamed_addr constant [14 x i8] c"aead_cra_init\00", align 1
@.str.127 = private unnamed_addr constant [50 x i8] c"\013%s() Error: failed to allocate fallback for %s\0A\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_aead_pri331, ptr @__UNIQUE_ID_aead_pritype330, ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_cipher_pri327, ptr @__UNIQUE_ID_cipher_pritype326, ptr @__UNIQUE_ID_debug_logging_sleep325, ptr @__UNIQUE_ID_debug_logging_sleeptype324, ptr @__UNIQUE_ID_description333, ptr @__UNIQUE_ID_flow_debug_logging321, ptr @__UNIQUE_ID_flow_debug_loggingtype320, ptr @__UNIQUE_ID_hash_pri329, ptr @__UNIQUE_ID_hash_pritype328, ptr @__UNIQUE_ID_license334, ptr @__UNIQUE_ID_packet_debug_logging323, ptr @__UNIQUE_ID_packet_debug_loggingtype322, ptr @__param_aead_pri, ptr @__param_cipher_pri, ptr @__param_debug_logging_sleep, ptr @__param_flow_debug_logging, ptr @__param_hash_pri, ptr @__param_packet_debug_logging], section "llvm.metadata"
@switch.table.ahash_hmac_setkey = private unnamed_addr constant [11 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 4

@__mod_of__bcm_spu_dt_ids_device_table = dso_local alias [5 x %struct.of_device_id], ptr @bcm_spu_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_spu_pdriver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_spu_pdriver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_spu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store ptr %0, ptr @iproc_priv, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @iproc_priv, ptr %3, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #10
  store i32 %6, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %211

10:                                               ; preds = %1
  %11 = load i32, ptr %7, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %12 = getelementptr inbounds %struct.spu_type_subtype, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  br label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %16 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %16) #10
  %20 = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 20, i32 %15
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %14

25:                                               ; preds = %22, %14
  %26 = phi i32 [ 16, %22 ], [ %15, %14 ]
  store i32 %26, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 23), align 4
  br label %30

27:                                               ; preds = %18
  %28 = ptrtoint ptr %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %28) #11
  store ptr null, ptr %20, align 4
  %29 = icmp slt ptr %19, null
  br i1 %29, label %211, label %30

30:                                               ; preds = %27, %25
  %31 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #10
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %30
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  br label %215

35:                                               ; preds = %30
  %36 = extractvalue { i32, i1 } %32, 0
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %36, i32 noundef 3520) #10
  store ptr %37, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %211, label %39

39:                                               ; preds = %35
  store ptr %2, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19), align 8
  store i8 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 2), align 8
  store i8 1, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 3), align 4
  store ptr @spu_rx_callback, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 4), align 8
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19, i32 6), align 8
  %40 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %59, %39
  %43 = phi i32 [ %60, %59 ], [ 0, %39 ]
  %44 = tail call ptr @mbox_request_channel(ptr noundef getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 19), i32 noundef %43) #10
  %45 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %46 = getelementptr ptr, ptr %45, i32 %43
  store ptr %44, ptr %46, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %48 = getelementptr ptr, ptr %47, i32 %43
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = ptrtoint ptr %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %43, i32 noundef %52) #11
  %53 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %54 = getelementptr ptr, ptr %53, i32 %43
  store ptr null, ptr %54, align 4
  %55 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  br label %63

59:                                               ; preds = %42
  %60 = add nuw i32 %43, 1
  %61 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %42, label %81

63:                                               ; preds = %73, %57
  %64 = phi i32 [ %74, %73 ], [ %55, %57 ]
  %65 = phi ptr [ %75, %73 ], [ %58, %57 ]
  %66 = phi i32 [ %76, %73 ], [ 0, %57 ]
  %67 = getelementptr ptr, ptr %65, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  tail call void @mbox_free_channel(ptr noundef nonnull %68) #10
  %71 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %72 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi i32 [ %64, %63 ], [ %72, %70 ]
  %75 = phi ptr [ %65, %63 ], [ %71, %70 ]
  %76 = add nuw i32 %66, 1
  %77 = icmp ult i32 %76, %74
  br i1 %77, label %63, label %78

78:                                               ; preds = %73, %51
  %79 = phi i32 [ 0, %51 ], [ %74, %73 ]
  %80 = icmp slt ptr %49, null
  br i1 %80, label %211, label %81

81:                                               ; preds = %78, %59, %39
  %82 = phi i32 [ 0, %39 ], [ %79, %78 ], [ %61, %59 ]
  %83 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  switch i32 %83, label %90 [
    i32 0, label %85
    i32 1, label %84
  ]

84:                                               ; preds = %81
  store i8 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  br label %90

85:                                               ; preds = %81
  store i8 8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %86 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  store ptr @spum_dump_msg_hdr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  store ptr @spum_payload_length, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  store ptr @spum_response_hdr_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  store ptr @spum_hash_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  store ptr @spum_gcm_ccm_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  store ptr @spum_assoc_resp_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  store ptr @spum_aead_ivlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  store ptr @spum_hash_type, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  store ptr @spum_digest_size, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  store ptr @spum_create_request, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  store ptr @spum_cipher_req_init, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  store ptr @spum_cipher_req_finish, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  store ptr @spum_request_pad, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  store ptr @spum_tx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  store ptr @spum_rx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  store ptr @spum_status_process, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  store ptr @spum_xts_tweak_in_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  store ptr @spum_ccm_update_iv, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  store ptr @spum_wordalign_padlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store ptr @spum_ns2_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  br label %91

89:                                               ; preds = %85
  store ptr @spum_nsp_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  br label %91

90:                                               ; preds = %84, %81
  store ptr @spu2_dump_msg_hdr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  store ptr @spu2_ctx_max_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  store ptr @spu2_payload_length, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  store ptr @spu2_response_hdr_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  store ptr @spu2_hash_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  store ptr @spu2_gcm_ccm_pad_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  store ptr @spu2_assoc_resp_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  store ptr @spu2_aead_ivlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  store ptr @spu2_hash_type, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  store ptr @spu2_digest_size, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  store ptr @spu2_create_request, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  store ptr @spu2_cipher_req_init, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  store ptr @spu2_cipher_req_finish, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  store ptr @spu2_request_pad, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  store ptr @spu2_tx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  store ptr @spu2_rx_status_len, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  store ptr @spu2_status_process, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  store ptr @spu2_xts_tweak_in_payload, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  store ptr @spu2_ccm_update_iv, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  store ptr @spu2_wordalign_padlen, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  br label %91

91:                                               ; preds = %90, %89, %88
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), align 8
  store volatile i32 %82, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !9
  %92 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i64 0) #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !9
  %93 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i64 0) #10, !srcloc !10
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 0), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 1), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 0, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 1, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 2, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 3, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 4, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 3), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 4), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 6), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 7), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 8), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 8), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 9), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 9), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 10), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 10), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 11), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 11), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 0), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), align 8
  store volatile i32 0, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), align 4
  tail call void @spu_setup_debugfs() #10
  br label %94

94:                                               ; preds = %187, %91
  %95 = phi i32 [ 0, %91 ], [ %188, %187 ]
  %96 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95
  %97 = load i32, ptr %96, align 64
  switch i32 %97, label %181 [
    i32 5, label %98
    i32 15, label %112
    i32 3, label %164
  ]

98:                                               ; preds = %94
  %99 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2
  %100 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 9, i32 100
  store ptr @__this_module, ptr %100, align 4
  %101 = load i32, ptr @cipher_pri, align 4
  %102 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 24
  store i32 %101, ptr %102, align 32
  %103 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 20
  store i32 0, ptr %103, align 4
  %104 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 16
  store i32 1436, ptr %104, align 8
  %105 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 8
  store i32 69760, ptr %105, align 16
  %106 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 3
  store ptr @skcipher_init_tfm, ptr %106, align 4
  %107 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 4
  store ptr @skcipher_exit_tfm, ptr %107, align 16
  store ptr @skcipher_setkey, ptr %99, align 64
  %108 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 1
  store ptr @skcipher_encrypt, ptr %108, align 4
  %109 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 2
  store ptr @skcipher_decrypt, ptr %109, align 8
  %110 = tail call i32 @crypto_register_skcipher(ptr noundef %99) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %185, label %182

112:                                              ; preds = %94
  %113 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2
  %114 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 4
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 5
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 4, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %187, label %132

124:                                              ; preds = %112
  %125 = icmp ult i32 %115, 8
  %126 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  %127 = icmp eq i32 %126, 3
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %129, label %187

129:                                              ; preds = %124
  %130 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 4, i32 1
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %117
  %133 = phi i32 [ %131, %129 ], [ %119, %117 ]
  %134 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 15
  store ptr @__this_module, ptr %134, align 4
  %135 = load i32, ptr @hash_pri, align 4
  %136 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 6
  store i32 %135, ptr %136, align 32
  %137 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 5
  store i32 0, ptr %137, align 4
  %138 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 4
  store i32 1436, ptr %138, align 8
  %139 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 12
  store ptr @ahash_cra_init, ptr %139, align 64
  %140 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 13
  store ptr @generic_cra_exit, ptr %140, align 4
  %141 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 2
  store i32 65664, ptr %141, align 16
  %142 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 1
  store i32 208, ptr %142, align 4
  %143 = icmp eq i32 %133, 2
  br i1 %143, label %153, label %144

144:                                              ; preds = %132
  store ptr @ahash_init, ptr %113, align 64
  %145 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 1
  store ptr @ahash_update, ptr %145, align 4
  %146 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 2
  store ptr @ahash_final, ptr %146, align 8
  %147 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 3
  store ptr @ahash_finup, ptr %147, align 4
  %148 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 4
  store ptr @ahash_digest, ptr %148, align 16
  %149 = icmp ult i32 %133, 2
  %150 = select i1 %116, i1 %149, i1 false
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 7
  store ptr @ahash_setkey, ptr %152, align 4
  br label %159

153:                                              ; preds = %132
  %154 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 7
  store ptr @ahash_hmac_setkey, ptr %154, align 4
  store ptr @ahash_hmac_init, ptr %113, align 64
  %155 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 1
  store ptr @ahash_hmac_update, ptr %155, align 4
  %156 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 2
  store ptr @ahash_hmac_final, ptr %156, align 8
  %157 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 3
  store ptr @ahash_hmac_finup, ptr %157, align 4
  %158 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 4
  store ptr @ahash_hmac_digest, ptr %158, align 16
  br label %159

159:                                              ; preds = %153, %151, %144
  %160 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 5
  store ptr @ahash_export, ptr %160, align 4
  %161 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 6
  store ptr @ahash_import, ptr %161, align 8
  %162 = tail call i32 @crypto_register_ahash(ptr noundef %113) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %185, label %182

164:                                              ; preds = %94
  %165 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2
  %166 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 3, i32 9, i32 100
  store ptr @__this_module, ptr %166, align 4
  %167 = load i32, ptr @aead_pri, align 4
  %168 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 24
  store i32 %167, ptr %168, align 32
  %169 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 20
  store i32 0, ptr %169, align 4
  %170 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 16
  store i32 1436, ptr %170, align 8
  %171 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 11, i32 2, i32 8
  %172 = load i32, ptr %171, align 16
  %173 = or i32 %172, 65664
  store i32 %173, ptr %171, align 16
  %174 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 1
  store ptr @aead_setauthsize, ptr %174, align 4
  %175 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 2
  store ptr @aead_encrypt, ptr %175, align 8
  %176 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 3
  store ptr @aead_decrypt, ptr %176, align 4
  %177 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 4
  store ptr @aead_cra_init, ptr %177, align 16
  %178 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 2, i32 0, i32 5
  store ptr @aead_cra_exit, ptr %178, align 4
  %179 = tail call i32 @crypto_register_aead(ptr noundef %165) #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %182

181:                                              ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef %97) #11
  br label %182

182:                                              ; preds = %181, %164, %159, %98
  %183 = phi i32 [ -22, %181 ], [ %110, %98 ], [ %162, %159 ], [ %179, %164 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %183) #11
  %184 = icmp eq i32 %95, 0
  br i1 %184, label %208, label %190

185:                                              ; preds = %164, %159, %98
  %186 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %95, i32 6
  store i8 1, ptr %186, align 1
  br label %187

187:                                              ; preds = %185, %124, %117
  %188 = add nuw nsw i32 %95, 1
  %189 = icmp eq i32 %188, 53
  br i1 %189, label %227, label %94

190:                                              ; preds = %205, %182
  %191 = phi i32 [ %206, %205 ], [ 0, %182 ]
  %192 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %191, i32 6
  %193 = load i8, ptr %192, align 1, !range !11
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %190
  %196 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %191
  %197 = load i32, ptr %196, align 64
  switch i32 %197, label %205 [
    i32 5, label %198
    i32 15, label %200
    i32 3, label %202
  ]

198:                                              ; preds = %195
  %199 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %191, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %199) #10
  br label %204

200:                                              ; preds = %195
  %201 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %191, i32 2
  tail call void @crypto_unregister_ahash(ptr noundef %201) #10
  br label %204

202:                                              ; preds = %195
  %203 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %191, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %203) #10
  br label %204

204:                                              ; preds = %202, %200, %198
  store i8 0, ptr %192, align 1
  br label %205

205:                                              ; preds = %204, %195, %190
  %206 = add nuw nsw i32 %191, 1
  %207 = icmp eq i32 %206, %95
  br i1 %207, label %208, label %190

208:                                              ; preds = %205, %182
  %209 = icmp slt i32 %183, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %208
  tail call void @spu_free_debugfs() #10
  br label %211

211:                                              ; preds = %210, %78, %35, %27, %9
  %212 = phi i32 [ -12, %35 ], [ -19, %9 ], [ %183, %210 ], [ %52, %78 ], [ %28, %27 ]
  %213 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %211, %34
  %216 = phi i32 [ -12, %34 ], [ %212, %211 ]
  br label %217

217:                                              ; preds = %217, %215
  %218 = phi i32 [ %222, %217 ], [ 0, %215 ]
  %219 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %220 = getelementptr ptr, ptr %219, i32 %218
  %221 = load ptr, ptr %220, align 4
  tail call void @mbox_free_channel(ptr noundef %221) #10
  %222 = add nuw i32 %218, 1
  %223 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %217, label %225

225:                                              ; preds = %217, %211
  %226 = phi i32 [ %212, %211 ], [ %216, %217 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bcm_spu_probe, i32 noundef %226) #11
  br label %227

227:                                              ; preds = %225, %208, %187
  %228 = phi i32 [ %226, %225 ], [ 0, %208 ], [ 0, %187 ]
  ret i32 %228
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_spu_remove(ptr nocapture noundef readnone %0) #2 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %3, i32 6
  %5 = load i8, ptr %4, align 1, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %3
  %9 = load i32, ptr %8, align 64
  switch i32 %9, label %17 [
    i32 5, label %10
    i32 15, label %12
    i32 3, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %3, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %11) #10
  br label %16

12:                                               ; preds = %7
  %13 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %3, i32 2
  tail call void @crypto_unregister_ahash(ptr noundef %13) #10
  br label %16

14:                                               ; preds = %7
  %15 = getelementptr [53 x %struct.iproc_alg_s], ptr @driver_algs, i32 0, i32 %3, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %14, %12, %10
  store i8 0, ptr %4, align 1
  br label %17

17:                                               ; preds = %16, %7, %2
  %18 = add nuw nsw i32 %3, 1
  %19 = icmp eq i32 %18, 53
  br i1 %19, label %20, label %2

20:                                               ; preds = %17
  tail call void @spu_free_debugfs() #10
  %21 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %28, %23 ], [ 0, %20 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  tail call void @mbox_free_channel(ptr noundef %27) #10
  %28 = add nuw i32 %24, 1
  %29 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %23, label %31

31:                                               ; preds = %23, %20
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu_setup_debugfs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu_free_debugfs() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spu_rx_callback(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.brcm_message, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.spu_rx_callback) #11
  br label %231

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 17), align 8
  %10 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 28, i32 7
  %11 = tail call i32 %9(ptr noundef %10) #10
  switch i32 %11, label %231 [
    i32 0, label %14
    i32 1, label %12
  ]

12:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18)) #10, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 18)) #10, !srcloc !12
  br label %231

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 64
  switch i32 %19, label %231 [
    i32 5, label %20
    i32 15, label %52
    i32 3, label %168
  ]

20:                                               ; preds = %14
  %21 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  %22 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 28, i32 5
  %23 = tail call i32 %21(ptr noundef %22) #10
  %24 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 11
  %25 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 11, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %30 = tail call zeroext i8 %29() #10
  %31 = icmp ne i8 %30, 0
  %32 = icmp ugt i32 %23, 15
  %33 = select i1 %31, i1 %32, i1 false
  %34 = add i32 %23, -16
  %35 = select i1 %33, i32 %34, i32 %23
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi i32 [ %23, %20 ], [ %35, %28 ]
  %38 = zext i32 %37 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !9
  %39 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i64 %38, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !13
  %40 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %37
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %205

46:                                               ; preds = %36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10)) #10, !srcloc !9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10)) #10, !srcloc !12
  %48 = load i32, ptr %24, align 4
  %49 = load i32, ptr %25, align 4
  %50 = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 11, i32 %48, i32 %49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #10, !srcloc !9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #10, !srcloc !12
  br label %205

52:                                               ; preds = %14
  %53 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 22
  %54 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 28, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %53, ptr noundef align 4 dereferenceable(64) %54, i32 64, i1 false) #10
  %55 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !9
  %58 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i64 %57, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !13
  %59 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 21
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %205, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %205

68:                                               ; preds = %62
  %69 = load ptr, ptr %4, align 4
  %70 = load ptr, ptr %15, align 4
  %71 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 3
  %72 = load ptr, ptr %71, align 32
  %73 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %72, ptr align 4 %54, i32 %74, i1 false) #10
  %75 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 13
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load ptr, ptr %71, align 32
  %83 = load i32, ptr %82, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  store i32 %84, ptr %82, align 4
  %85 = load ptr, ptr %71, align 32
  %86 = getelementptr i32, ptr %85, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #10
  store i32 %88, ptr %86, align 4
  %89 = load ptr, ptr %71, align 32
  %90 = getelementptr i32, ptr %89, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  store i32 %92, ptr %90, align 4
  %93 = load ptr, ptr %71, align 32
  %94 = getelementptr i32, ptr %93, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  store i32 %96, ptr %94, align 4
  %97 = load ptr, ptr %71, align 32
  %98 = getelementptr i32, ptr %97, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %81, %77, %68
  %102 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 23
  %103 = load i8, ptr %102, align 4, !range !11
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %152, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 3
  %107 = load ptr, ptr %106, align 16
  %108 = getelementptr inbounds %struct.crypto_tfm, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.crypto_alg, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 13
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %144 [
    i32 1, label %114
    i32 2, label %119
    i32 3, label %124
    i32 4, label %129
    i32 6, label %134
    i32 7, label %139
  ]

114:                                              ; preds = %105
  %115 = load ptr, ptr %71, align 32
  %116 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %117 = load i32, ptr %73, align 4
  %118 = tail call i32 @do_shash(ptr noundef nonnull @.str.12, ptr noundef %115, ptr noundef %116, i32 noundef %111, ptr noundef %115, i32 noundef %117, ptr noundef null, i32 noundef 0) #10
  br label %146

119:                                              ; preds = %105
  %120 = load ptr, ptr %71, align 32
  %121 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %122 = load i32, ptr %73, align 4
  %123 = tail call i32 @do_shash(ptr noundef nonnull @.str.13, ptr noundef %120, ptr noundef %121, i32 noundef %111, ptr noundef %120, i32 noundef %122, ptr noundef null, i32 noundef 0) #10
  br label %146

124:                                              ; preds = %105
  %125 = load ptr, ptr %71, align 32
  %126 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %127 = load i32, ptr %73, align 4
  %128 = tail call i32 @do_shash(ptr noundef nonnull @.str.14, ptr noundef %125, ptr noundef %126, i32 noundef %111, ptr noundef %125, i32 noundef %127, ptr noundef null, i32 noundef 0) #10
  br label %146

129:                                              ; preds = %105
  %130 = load ptr, ptr %71, align 32
  %131 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %132 = load i32, ptr %73, align 4
  %133 = tail call i32 @do_shash(ptr noundef nonnull @.str.15, ptr noundef %130, ptr noundef %131, i32 noundef %111, ptr noundef %130, i32 noundef %132, ptr noundef null, i32 noundef 0) #10
  br label %146

134:                                              ; preds = %105
  %135 = load ptr, ptr %71, align 32
  %136 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %137 = load i32, ptr %73, align 4
  %138 = tail call i32 @do_shash(ptr noundef nonnull @.str.16, ptr noundef %135, ptr noundef %136, i32 noundef %111, ptr noundef %135, i32 noundef %137, ptr noundef null, i32 noundef 0) #10
  br label %146

139:                                              ; preds = %105
  %140 = load ptr, ptr %71, align 32
  %141 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 18
  %142 = load i32, ptr %73, align 4
  %143 = tail call i32 @do_shash(ptr noundef nonnull @.str.17, ptr noundef %140, ptr noundef %141, i32 noundef %111, ptr noundef %140, i32 noundef %142, ptr noundef null, i32 noundef 0) #10
  br label %146

144:                                              ; preds = %105
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.spu_hmac_outer_hash) #11
  br label %205

146:                                              ; preds = %139, %134, %129, %124, %119, %114
  %147 = phi i32 [ %143, %139 ], [ %138, %134 ], [ %133, %129 ], [ %128, %124 ], [ %123, %119 ], [ %118, %114 ]
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %205, label %149

149:                                              ; preds = %146
  %150 = load i8, ptr %102, align 4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149, %101
  %153 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 13, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %162

156:                                              ; preds = %152, %149
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2)) #10, !srcloc !9
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 2)) #10, !srcloc !12
  %158 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 13
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 13, i32 %159
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #10, !srcloc !9
  %161 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #10, !srcloc !12
  br label %205

162:                                              ; preds = %152
  %163 = getelementptr inbounds %struct.iproc_ctx_s, ptr %70, i32 0, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1)) #10, !srcloc !9
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 1)) #10, !srcloc !12
  %165 = load i32, ptr %163, align 4
  %166 = getelementptr %struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 12, i32 %165
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #10, !srcloc !9
  %167 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #10, !srcloc !12
  br label %205

168:                                              ; preds = %14
  %169 = load ptr, ptr %4, align 4
  %170 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 2), align 4
  %171 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 28, i32 5
  %172 = tail call i32 %170(ptr noundef %171) #10
  %173 = zext i32 %172 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !9
  %174 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8), i64 %173, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 8)) #10, !srcloc !13
  %175 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 16
  %176 = load i8, ptr %175, align 1, !range !11
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.aead_request, ptr %169, i32 0, i32 1
  %180 = load i32, ptr %179, align 8
  %181 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 28, i32 2
  %185 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 8
  %186 = getelementptr inbounds %struct.aead_request, ptr %169, i32 0, i32 5
  %187 = load ptr, ptr %186, align 8
  %188 = load i32, ptr %185, align 4
  tail call void @sg_copy_part_from_buf(ptr noundef %187, ptr noundef %184, i32 noundef %188, i32 noundef %183) #10
  br label %189

189:                                              ; preds = %178, %168
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3)) #10, !srcloc !9
  %190 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 10, i32 3)) #10, !srcloc !12
  %191 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 11
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 4
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.iproc_ctx_s, ptr %16, i32 0, i32 11, i32 1
  %196 = load i32, ptr %195, align 4
  switch i32 %196, label %201 [
    i32 5, label %197
    i32 6, label %199
  ]

197:                                              ; preds = %194
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14)) #10, !srcloc !9
  %198 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14)) #10, !srcloc !12
  br label %205

199:                                              ; preds = %194
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1)) #10, !srcloc !9
  %200 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 1)) #10, !srcloc !12
  br label %205

201:                                              ; preds = %194
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #10, !srcloc !9
  %202 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #10, !srcloc !12
  br label %205

203:                                              ; preds = %189
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #10, !srcloc !9
  %204 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 14, i32 2)) #10, !srcloc !12
  br label %205

205:                                              ; preds = %203, %201, %199, %197, %162, %156, %146, %144, %62, %52, %46, %36
  %206 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 3
  %209 = load i32, ptr %208, align 4
  %210 = icmp ult i32 %207, %209
  br i1 %210, label %211, label %231

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14
  %213 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14, i32 1
  %214 = load ptr, ptr %213, align 4
  tail call void @kfree(ptr noundef %214) #10
  %215 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14, i32 1, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  tail call void @kfree(ptr noundef %216) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %212, i8 0, i32 24, i1 false) #10
  %217 = load ptr, ptr %15, align 4
  %218 = getelementptr inbounds %struct.iproc_ctx_s, ptr %217, i32 0, i32 9
  %219 = load ptr, ptr %218, align 4
  %220 = load i32, ptr %219, align 64
  switch i32 %220, label %231 [
    i32 5, label %221
    i32 15, label %223
    i32 3, label %226
  ]

221:                                              ; preds = %211
  %222 = tail call fastcc i32 @handle_skcipher_req(ptr noundef nonnull %4)
  br label %228

223:                                              ; preds = %211
  %224 = tail call fastcc i32 @handle_ahash_req(ptr noundef nonnull %4)
  %225 = icmp eq i32 %224, -11
  br i1 %225, label %231, label %228

226:                                              ; preds = %211
  %227 = tail call fastcc i32 @handle_aead_req(ptr noundef nonnull %4)
  br label %228

228:                                              ; preds = %226, %223, %221
  %229 = phi i32 [ %227, %226 ], [ %224, %223 ], [ %222, %221 ]
  %230 = icmp eq i32 %229, -115
  br i1 %230, label %243, label %231

231:                                              ; preds = %228, %223, %211, %205, %14, %12, %8, %6
  %232 = phi i32 [ -14, %6 ], [ %229, %228 ], [ 0, %205 ], [ -74, %8 ], [ -74, %12 ], [ -22, %14 ], [ -22, %211 ], [ 0, %223 ]
  %233 = load ptr, ptr %4, align 4
  %234 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14
  %235 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14, i32 1
  %236 = load ptr, ptr %235, align 4
  tail call void @kfree(ptr noundef %236) #10
  %237 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 14, i32 1, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  tail call void @kfree(ptr noundef %238) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %234, i8 0, i32 24, i1 false) #10
  %239 = icmp eq ptr %233, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.crypto_async_request, ptr %233, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  tail call void %242(ptr noundef nonnull %233, i32 noundef %232) #10
  br label %243

243:                                              ; preds = %240, %231, %228
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_skcipher_req(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.spu_cipher_parms, align 4
  %5 = alloca [16 x i8], align 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %10 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 11, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 4
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 3
  store ptr %8, ptr %22, align 4
  %23 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 5
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 6
  store i16 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14
  %29 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %30
  %34 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, -1
  %37 = icmp ugt i32 %33, %35
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 %35, i32 %33
  %40 = add i32 %39, %30
  store i32 %40, ptr %29, align 4
  %41 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = call i32 @spu_sg_count(ptr noundef %43, i32 noundef %45, i32 noundef %39) #10
  %47 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 9
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @spu_sg_count(ptr noundef %49, i32 noundef %51, i32 noundef %39) #10
  %53 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 12
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %68

56:                                               ; preds = %1
  %57 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 16
  %58 = load i8, ptr %57, align 1, !range !11
  %59 = icmp ne i8 %58, 0
  %60 = icmp ne i32 %30, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %6, i32 -4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 1
  %66 = load i32, ptr %24, align 4
  %67 = sub i32 %30, %66
  call void @sg_copy_part_to_buf(ptr noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef %67) #10
  br label %68

68:                                               ; preds = %62, %56, %1
  %69 = load i32, ptr %24, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 4 %72, i32 %69, i1 false)
  %73 = load i32, ptr %12, align 4
  switch i32 %73, label %85 [
    i32 1, label %74
    i32 4, label %83
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 16
  %76 = load i8, ptr %75, align 1, !range !11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %6, i32 -8
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %29, align 4
  %82 = sub i32 %81, %69
  call void @sg_copy_part_to_buf(ptr noundef %80, ptr noundef %72, i32 noundef %69, i32 noundef %82) #10
  br label %85

83:                                               ; preds = %71
  %84 = lshr i32 %39, 4
  call void @add_to_ctr(ptr noundef %72, i32 noundef %84) #10
  br label %85

85:                                               ; preds = %83, %78, %74, %71, %68
  %86 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28
  %87 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(568) %86, ptr noundef align 4 dereferenceable(568) %87, i32 568, i1 false)
  %88 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 12), align 4
  %89 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %86, i32 %90
  %92 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 20
  %93 = load i16, ptr %92, align 4
  %94 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 16
  %95 = load i8, ptr %94, align 1, !range !11
  %96 = xor i8 %95, 1
  %97 = zext i8 %96 to i32
  call void %88(ptr noundef %91, i16 noundef zeroext %93, i32 noundef %97, ptr noundef nonnull %4, i32 noundef %39) #10
  %98 = zext i32 %39 to i64
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !9
  %99 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i64 %98, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !13
  %100 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %101 = call i32 %100(i32 noundef %39) #10
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 2, i32 3
  br i1 %102, label %112, label %104

104:                                              ; preds = %85
  %105 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %106 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  %107 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 13
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.iproc_ctx_s, ptr %8, i32 0, i32 13, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr %41, align 4
  call void %105(ptr noundef %106, i32 noundef 0, i32 noundef 0, i32 noundef %108, i32 noundef %110, i32 noundef %111, i32 noundef %101) #10
  br label %112

112:                                              ; preds = %104, %85
  %113 = phi i32 [ 2, %104 ], [ 1, %85 ]
  %114 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %115 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %116 = zext i8 %115 to i32
  %117 = getelementptr i8, ptr %86, i32 %116
  %118 = load i16, ptr %92, align 4
  %119 = zext i16 %118 to i32
  call void %114(ptr noundef %117, i32 noundef %119) #10
  %120 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %120, i8 0, i32 20, i1 false)
  store i32 2, ptr %28, align 4
  %121 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 2
  store ptr %0, ptr %121, align 4
  %122 = load i32, ptr %53, align 4
  %123 = add i32 %122, %103
  %124 = load i32, ptr %12, align 4
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %128 = call zeroext i8 %127() #10
  %129 = icmp ne i8 %128, 0
  %130 = zext i1 %129 to i32
  %131 = add i32 %123, %130
  br label %132

132:                                              ; preds = %126, %112
  %133 = phi i32 [ %123, %112 ], [ %131, %126 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %134 = load ptr, ptr %7, align 4
  %135 = and i32 %133, 255
  %136 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 27
  %137 = mul nuw nsw i32 %135, 20
  %138 = load i32, ptr %136, align 4
  %139 = or i32 %138, 256
  %140 = call noalias align 64 ptr @__kmalloc(i32 noundef %137, i32 noundef %139) #12
  %141 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1, i32 0, i32 1
  store ptr %140, ptr %141, align 4
  %142 = icmp eq ptr %140, null
  br i1 %142, label %234, label %143

143:                                              ; preds = %132
  call void @sg_init_table(ptr noundef nonnull %140, i32 noundef %135) #10
  %144 = getelementptr %struct.scatterlist, ptr %140, i32 1
  store ptr %144, ptr %3, align 4
  %145 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 5
  %146 = load ptr, ptr @mem_map, align 4
  %147 = ptrtoint ptr %145 to i32
  %148 = add i32 %147, 1073741824
  %149 = lshr i32 %148, 12
  %150 = getelementptr %struct.page, ptr %146, i32 %149
  %151 = ptrtoint ptr %150 to i32
  %152 = and i32 %151, 3
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154, !prof !15

154:                                              ; preds = %143
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.iproc_ctx_s, ptr %134, i32 0, i32 21
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %147, 4095
  %160 = load i32, ptr %140, align 64
  %161 = and i32 %160, 3
  %162 = or i32 %161, %151
  store i32 %162, ptr %140, align 64
  %163 = getelementptr inbounds %struct.scatterlist, ptr %140, i32 0, i32 1
  store i32 %159, ptr %163, align 4
  %164 = getelementptr inbounds %struct.scatterlist, ptr %140, i32 0, i32 2
  store i32 %158, ptr %164, align 8
  %165 = getelementptr inbounds %struct.iproc_ctx_s, ptr %134, i32 0, i32 11, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 7
  br i1 %167, label %168, label %192

168:                                              ; preds = %155
  %169 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %170 = call zeroext i8 %169() #10
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %192, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %3, align 4
  %174 = getelementptr %struct.scatterlist, ptr %173, i32 1
  store ptr %174, ptr %3, align 4
  %175 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 8
  %176 = load ptr, ptr @mem_map, align 4
  %177 = ptrtoint ptr %175 to i32
  %178 = add i32 %177, 1073741824
  %179 = lshr i32 %178, 12
  %180 = getelementptr %struct.page, ptr %176, i32 %179
  %181 = ptrtoint ptr %180 to i32
  %182 = and i32 %181, 3
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184, !prof !15

184:                                              ; preds = %172
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

185:                                              ; preds = %172
  %186 = and i32 %177, 4095
  %187 = load i32, ptr %173, align 4
  %188 = and i32 %187, 3
  %189 = or i32 %188, %181
  store i32 %189, ptr %173, align 4
  %190 = getelementptr inbounds %struct.scatterlist, ptr %173, i32 0, i32 1
  store i32 %186, ptr %190, align 4
  %191 = getelementptr inbounds %struct.scatterlist, ptr %173, i32 0, i32 2
  store i32 16, ptr %191, align 4
  br label %192

192:                                              ; preds = %185, %168, %155
  %193 = load i32, ptr %53, align 4
  %194 = trunc i32 %193 to i8
  %195 = call i32 @spu_msg_sg_add(ptr noundef nonnull %3, ptr noundef %48, ptr noundef %50, i8 noundef zeroext %194, i32 noundef %39) #10
  %196 = icmp ult i32 %195, %39
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.spu_skcipher_rx_sg_create, i32 noundef %39, i32 noundef %195) #11
  br label %234

199:                                              ; preds = %192
  br i1 %102, label %220, label %200

200:                                              ; preds = %199
  %201 = load ptr, ptr %3, align 4
  %202 = getelementptr %struct.scatterlist, ptr %201, i32 1
  store ptr %202, ptr %3, align 4
  %203 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 6
  %204 = load ptr, ptr @mem_map, align 4
  %205 = ptrtoint ptr %203 to i32
  %206 = add i32 %205, 1073741824
  %207 = lshr i32 %206, 12
  %208 = getelementptr %struct.page, ptr %204, i32 %207
  %209 = ptrtoint ptr %208 to i32
  %210 = and i32 %209, 3
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212, !prof !15

212:                                              ; preds = %200
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

213:                                              ; preds = %200
  %214 = and i32 %205, 4095
  %215 = load i32, ptr %201, align 4
  %216 = and i32 %215, 3
  %217 = or i32 %216, %209
  store i32 %217, ptr %201, align 4
  %218 = getelementptr inbounds %struct.scatterlist, ptr %201, i32 0, i32 1
  store i32 %214, ptr %218, align 4
  %219 = getelementptr inbounds %struct.scatterlist, ptr %201, i32 0, i32 2
  store i32 %101, ptr %219, align 4
  br label %220

220:                                              ; preds = %213, %199
  %221 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 7
  store i32 0, ptr %221, align 4
  %222 = load ptr, ptr %3, align 4
  %223 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %224 = call zeroext i8 %223() #10
  %225 = load ptr, ptr @mem_map, align 4
  %226 = ptrtoint ptr %221 to i32
  %227 = add i32 %226, 1073741824
  %228 = lshr i32 %227, 12
  %229 = getelementptr %struct.page, ptr %225, i32 %228
  %230 = ptrtoint ptr %229 to i32
  %231 = and i32 %230, 3
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233, !prof !15

233:                                              ; preds = %220
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

234:                                              ; preds = %197, %132
  %235 = phi i32 [ -12, %132 ], [ -14, %197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %383

236:                                              ; preds = %220
  %237 = zext i8 %224 to i32
  %238 = and i32 %226, 4095
  %239 = load i32, ptr %222, align 4
  %240 = and i32 %239, 3
  %241 = or i32 %240, %230
  store i32 %241, ptr %222, align 4
  %242 = getelementptr inbounds %struct.scatterlist, ptr %222, i32 0, i32 1
  store i32 %238, ptr %242, align 4
  %243 = getelementptr inbounds %struct.scatterlist, ptr %222, i32 0, i32 2
  store i32 %237, ptr %243, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %244 = load i32, ptr %47, align 4
  %245 = add i32 %244, %113
  %246 = trunc i32 %245 to i8
  %247 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %248 = call zeroext i8 %247() #10
  %249 = icmp ne i8 %248, 0
  %250 = zext i1 %249 to i8
  %251 = add i8 %250, %246
  %252 = load i32, ptr %12, align 4
  %253 = icmp eq i32 %252, 7
  br i1 %253, label %254, label %260

254:                                              ; preds = %236
  %255 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %256 = call zeroext i8 %255() #10
  %257 = icmp ne i8 %256, 0
  %258 = zext i1 %257 to i8
  %259 = add i8 %251, %258
  br label %260

260:                                              ; preds = %254, %236
  %261 = phi i8 [ %251, %236 ], [ %259, %254 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %262 = load ptr, ptr %7, align 4
  %263 = zext i8 %261 to i32
  %264 = mul nuw nsw i32 %263, 20
  %265 = load i32, ptr %136, align 4
  %266 = or i32 %265, 256
  %267 = call noalias align 64 ptr @__kmalloc(i32 noundef %264, i32 noundef %266) #12
  %268 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  store ptr %267, ptr %268, align 4
  %269 = icmp eq ptr %267, null
  br i1 %269, label %373, label %270, !prof !8

270:                                              ; preds = %260
  call void @sg_init_table(ptr noundef nonnull %267, i32 noundef %263) #10
  %271 = getelementptr %struct.scatterlist, ptr %267, i32 1
  store ptr %271, ptr %2, align 4
  %272 = load ptr, ptr @mem_map, align 4
  %273 = ptrtoint ptr %86 to i32
  %274 = add i32 %273, 1073741824
  %275 = lshr i32 %274, 12
  %276 = getelementptr %struct.page, ptr %272, i32 %275
  %277 = ptrtoint ptr %276 to i32
  %278 = and i32 %277, 3
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280, !prof !15

280:                                              ; preds = %270
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

281:                                              ; preds = %270
  %282 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %283 = zext i8 %282 to i32
  %284 = getelementptr inbounds %struct.iproc_ctx_s, ptr %262, i32 0, i32 20
  %285 = load i16, ptr %284, align 4
  %286 = zext i16 %285 to i32
  %287 = add nuw nsw i32 %286, %283
  %288 = and i32 %273, 4095
  %289 = load i32, ptr %267, align 64
  %290 = and i32 %289, 3
  %291 = or i32 %290, %277
  store i32 %291, ptr %267, align 64
  %292 = getelementptr inbounds %struct.scatterlist, ptr %267, i32 0, i32 1
  store i32 %288, ptr %292, align 4
  %293 = getelementptr inbounds %struct.scatterlist, ptr %267, i32 0, i32 2
  store i32 %287, ptr %293, align 8
  %294 = getelementptr inbounds %struct.iproc_ctx_s, ptr %262, i32 0, i32 11, i32 1
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %295, 7
  br i1 %296, label %297, label %321

297:                                              ; preds = %281
  %298 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 14), align 4
  %299 = call zeroext i8 %298() #10
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %321, label %301

301:                                              ; preds = %297
  %302 = load ptr, ptr %2, align 4
  %303 = getelementptr %struct.scatterlist, ptr %302, i32 1
  store ptr %303, ptr %2, align 4
  %304 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 1
  %305 = load ptr, ptr @mem_map, align 4
  %306 = ptrtoint ptr %304 to i32
  %307 = add i32 %306, 1073741824
  %308 = lshr i32 %307, 12
  %309 = getelementptr %struct.page, ptr %305, i32 %308
  %310 = ptrtoint ptr %309 to i32
  %311 = and i32 %310, 3
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %314, label %313, !prof !15

313:                                              ; preds = %301
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

314:                                              ; preds = %301
  %315 = and i32 %306, 4095
  %316 = load i32, ptr %302, align 4
  %317 = and i32 %316, 3
  %318 = or i32 %317, %310
  store i32 %318, ptr %302, align 4
  %319 = getelementptr inbounds %struct.scatterlist, ptr %302, i32 0, i32 1
  store i32 %315, ptr %319, align 4
  %320 = getelementptr inbounds %struct.scatterlist, ptr %302, i32 0, i32 2
  store i32 16, ptr %320, align 4
  br label %321

321:                                              ; preds = %314, %297, %281
  %322 = load i32, ptr %47, align 4
  %323 = trunc i32 %322 to i8
  %324 = call i32 @spu_msg_sg_add(ptr noundef nonnull %2, ptr noundef %42, ptr noundef %44, i8 noundef zeroext %323, i32 noundef %39) #10
  %325 = icmp ult i32 %324, %39
  br i1 %325, label %326, label %328, !prof !8

326:                                              ; preds = %321
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.spu_skcipher_tx_sg_create) #11
  br label %373

328:                                              ; preds = %321
  br i1 %102, label %349, label %329

329:                                              ; preds = %328
  %330 = load ptr, ptr %2, align 4
  %331 = getelementptr %struct.scatterlist, ptr %330, i32 1
  store ptr %331, ptr %2, align 4
  %332 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  %333 = load ptr, ptr @mem_map, align 4
  %334 = ptrtoint ptr %332 to i32
  %335 = add i32 %334, 1073741824
  %336 = lshr i32 %335, 12
  %337 = getelementptr %struct.page, ptr %333, i32 %336
  %338 = ptrtoint ptr %337 to i32
  %339 = and i32 %338, 3
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %342, label %341, !prof !15

341:                                              ; preds = %329
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

342:                                              ; preds = %329
  %343 = and i32 %334, 4095
  %344 = load i32, ptr %330, align 4
  %345 = and i32 %344, 3
  %346 = or i32 %345, %338
  store i32 %346, ptr %330, align 4
  %347 = getelementptr inbounds %struct.scatterlist, ptr %330, i32 0, i32 1
  store i32 %343, ptr %347, align 4
  %348 = getelementptr inbounds %struct.scatterlist, ptr %330, i32 0, i32 2
  store i32 %101, ptr %348, align 4
  br label %349

349:                                              ; preds = %342, %328
  %350 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %351 = call zeroext i8 %350() #10
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %375, label %353

353:                                              ; preds = %349
  %354 = zext i8 %351 to i32
  %355 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 4
  call void @llvm.memset.p0.i32(ptr align 4 %355, i8 0, i32 %354, i1 false) #10
  %356 = load ptr, ptr @mem_map, align 4
  %357 = ptrtoint ptr %355 to i32
  %358 = add i32 %357, 1073741824
  %359 = lshr i32 %358, 12
  %360 = getelementptr %struct.page, ptr %356, i32 %359
  %361 = ptrtoint ptr %360 to i32
  %362 = and i32 %361, 3
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %365, label %364, !prof !15

364:                                              ; preds = %353
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

365:                                              ; preds = %353
  %366 = load ptr, ptr %2, align 4
  %367 = and i32 %357, 4095
  %368 = load i32, ptr %366, align 4
  %369 = and i32 %368, 3
  %370 = or i32 %369, %361
  store i32 %370, ptr %366, align 4
  %371 = getelementptr inbounds %struct.scatterlist, ptr %366, i32 0, i32 1
  store i32 %367, ptr %371, align 4
  %372 = getelementptr inbounds %struct.scatterlist, ptr %366, i32 0, i32 2
  store i32 %354, ptr %372, align 4
  br label %375

373:                                              ; preds = %326, %260
  %374 = phi i32 [ -14, %326 ], [ -12, %260 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %383

375:                                              ; preds = %365, %349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %376 = getelementptr inbounds %struct.crypto_async_request, ptr %6, i32 0, i32 4
  %377 = load i32, ptr %376, align 4
  %378 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 2
  %379 = load i8, ptr %378, align 4
  %380 = call fastcc i32 @mailbox_send_message(ptr noundef %28, i32 noundef %377, i8 noundef zeroext %379)
  %381 = icmp slt i32 %380, 0
  %382 = select i1 %381, i32 %380, i32 -115, !prof !8
  br label %383

383:                                              ; preds = %375, %373, %234
  %384 = phi i32 [ %374, %373 ], [ %382, %375 ], [ %235, %234 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  ret i32 %384
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_ahash_req(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.spu_request_opts, align 1
  %4 = alloca %struct.spu_cipher_parms, align 4
  %5 = alloca %struct.spu_hash_parms, align 4
  %6 = alloca %struct.spu_aead_parms, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  %16 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  %18 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %18, i8 0, i32 20, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false)
  %19 = getelementptr inbounds %struct.spu_request_opts, ptr %3, i32 0, i32 4
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %5, align 4
  %22 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 13, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 2
  %26 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 2
  %27 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 4
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 5
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.spu_cipher_parms, ptr %4, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14
  %36 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %16, align 4
  %38 = load i32, ptr %17, align 4
  %39 = sub i32 %37, %38
  %40 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, -1
  %43 = icmp ugt i32 %39, %41
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %44, i32 %41, i32 %39
  %46 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 21
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 20
  %51 = load i32, ptr %50, align 4
  br label %70

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 19
  %54 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = urem i32 %45, %13
  %58 = trunc i32 %57 to i16
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = and i32 %57, 65535
  %62 = sub i32 %45, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = sub i32 %57, %55
  %66 = getelementptr inbounds %struct.ahash_request, ptr %7, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = and i32 %65, 65535
  %69 = load i32, ptr %36, align 4
  tail call void @sg_copy_part_to_buf(ptr noundef %67, ptr noundef %56, i32 noundef %68, i32 noundef %69) #10
  store i32 %61, ptr %54, align 4
  br label %377

70:                                               ; preds = %60, %52, %49
  %71 = phi i32 [ %51, %49 ], [ %55, %52 ], [ %55, %60 ]
  %72 = phi i32 [ %45, %49 ], [ %45, %52 ], [ %62, %60 ]
  %73 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 20
  store i32 0, ptr %73, align 4
  %74 = icmp eq i32 %71, 0
  %75 = select i1 %74, i8 1, i8 2
  %76 = sub i32 %72, %71
  %77 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @spu_sg_count(ptr noundef %78, i32 noundef %80, i32 noundef %76) #10
  %82 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 9
  store i32 %81, ptr %82, align 4
  %83 = icmp eq i32 %21, 5
  br i1 %83, label %88, label %84

84:                                               ; preds = %70
  %85 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 8), align 4
  %86 = load i32, ptr %17, align 4
  %87 = tail call i32 %85(i32 noundef %86) #10
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi i32 [ %87, %84 ], [ %33, %70 ]
  store i32 %89, ptr %25, align 4
  %90 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 9), align 8
  %91 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 8
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %20, align 4
  %94 = tail call i32 %90(i32 noundef %92, i32 noundef %93, i32 noundef %89) #10
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 3
  store i8 %95, ptr %96, align 4
  %97 = load i32, ptr %17, align 4
  %98 = add i32 %97, %72
  store i32 %98, ptr %17, align 4
  %99 = load i32, ptr %36, align 4
  %100 = add i32 %99, %76
  store i32 %100, ptr %36, align 4
  %101 = load i32, ptr %16, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %88
  %104 = load i32, ptr %46, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 4), align 4
  %108 = trunc i32 %13 to i16
  %109 = tail call zeroext i16 %107(i32 noundef %21, i32 noundef %23, i32 noundef %72, i16 noundef zeroext %108) #10
  %110 = zext i16 %109 to i32
  %111 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 7
  store i32 %110, ptr %111, align 4
  br label %112

112:                                              ; preds = %106, %103, %88
  %113 = icmp eq i32 %89, 2
  %114 = icmp ne i32 %21, 5
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 22
  store ptr %117, ptr %27, align 4
  %118 = trunc i32 %94 to i16
  store i16 %118, ptr %31, align 4
  br label %119

119:                                              ; preds = %116, %112
  %120 = zext i32 %72 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !9
  %121 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i64 %120, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !13
  %122 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28
  %123 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %124 = zext i8 %123 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %122, ptr nonnull align 1 @BCMHEADER, i32 %124, i1 false)
  %125 = trunc i32 %71 to i16
  %126 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 6
  store i16 %125, ptr %126, align 2
  %127 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  %128 = getelementptr i8, ptr %122, i32 %124
  %129 = call i32 %127(ptr noundef %128, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %76) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  br label %377

133:                                              ; preds = %119
  %134 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %135 = getelementptr inbounds %struct.iproc_ctx_s, ptr %15, i32 0, i32 11, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = call i32 %134(i32 noundef %136, i32 noundef %72) #10
  %138 = getelementptr inbounds %struct.spu_hash_parms, ptr %5, i32 0, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %141 = call zeroext i8 %140() #10
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %133
  %144 = add i32 %139, %72
  %145 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %146 = call i32 %145(i32 noundef %144) #10
  br label %147

147:                                              ; preds = %143, %133
  %148 = phi i32 [ %146, %143 ], [ 0, %133 ]
  %149 = icmp eq i32 %148, 0
  %150 = load i32, ptr %138, align 4
  %151 = add i32 %148, %137
  %152 = add i32 %151, %150
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = add nuw nsw i8 %75, 1
  %156 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %157 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  %158 = load i32, ptr %20, align 4
  %159 = load i32, ptr %22, align 4
  %160 = load i32, ptr %17, align 4
  call void %156(ptr noundef %157, i32 noundef %137, i32 noundef %150, i32 noundef %158, i32 noundef %159, i32 noundef %160, i32 noundef %148) #10
  br label %161

161:                                              ; preds = %154, %147
  %162 = phi i8 [ %155, %154 ], [ %75, %147 ]
  %163 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %164 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %165 = zext i8 %164 to i32
  %166 = getelementptr i8, ptr %122, i32 %165
  call void %163(ptr noundef %166, i32 noundef %129) #10
  %167 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %167, i8 0, i32 20, i1 false)
  store i32 2, ptr %35, align 4
  %168 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 2
  store ptr %0, ptr %168, align 4
  %169 = load ptr, ptr %14, align 4
  %170 = select i1 %149, i32 3, i32 4
  %171 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 27
  %172 = mul nuw nsw i32 %170, 20
  %173 = load i32, ptr %171, align 4
  %174 = or i32 %173, 256
  %175 = call noalias align 64 ptr @__kmalloc(i32 noundef %172, i32 noundef %174) #12
  %176 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1, i32 0, i32 1
  store ptr %175, ptr %176, align 4
  %177 = icmp eq ptr %175, null
  br i1 %177, label %377, label %178

178:                                              ; preds = %161
  call void @sg_init_table(ptr noundef nonnull %175, i32 noundef %170) #10
  %179 = getelementptr %struct.scatterlist, ptr %175, i32 1
  %180 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 5
  %181 = load ptr, ptr @mem_map, align 4
  %182 = ptrtoint ptr %180 to i32
  %183 = add i32 %182, 1073741824
  %184 = lshr i32 %183, 12
  %185 = getelementptr %struct.page, ptr %181, i32 %184
  %186 = ptrtoint ptr %185 to i32
  %187 = and i32 %186, 3
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189, !prof !15

189:                                              ; preds = %178
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.iproc_ctx_s, ptr %169, i32 0, i32 21
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  %194 = and i32 %182, 4095
  %195 = load i32, ptr %175, align 64
  %196 = and i32 %195, 3
  %197 = or i32 %196, %186
  store i32 %197, ptr %175, align 64
  %198 = getelementptr inbounds %struct.scatterlist, ptr %175, i32 0, i32 1
  store i32 %194, ptr %198, align 4
  %199 = getelementptr inbounds %struct.scatterlist, ptr %175, i32 0, i32 2
  store i32 %193, ptr %199, align 8
  %200 = getelementptr %struct.scatterlist, ptr %175, i32 2
  %201 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 2
  %202 = ptrtoint ptr %201 to i32
  %203 = add i32 %202, 1073741824
  %204 = lshr i32 %203, 12
  %205 = getelementptr %struct.page, ptr %181, i32 %204
  %206 = ptrtoint ptr %205 to i32
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209, !prof !15

209:                                              ; preds = %190
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

210:                                              ; preds = %190
  %211 = and i32 %202, 4095
  %212 = load i32, ptr %179, align 4
  %213 = and i32 %212, 3
  %214 = or i32 %213, %206
  store i32 %214, ptr %179, align 4
  %215 = getelementptr %struct.scatterlist, ptr %175, i32 1, i32 1
  store i32 %211, ptr %215, align 8
  %216 = getelementptr %struct.scatterlist, ptr %175, i32 1, i32 2
  store i32 %94, ptr %216, align 4
  br i1 %149, label %235, label %217

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 6
  %219 = ptrtoint ptr %218 to i32
  %220 = add i32 %219, 1073741824
  %221 = lshr i32 %220, 12
  %222 = getelementptr %struct.page, ptr %181, i32 %221
  %223 = ptrtoint ptr %222 to i32
  %224 = and i32 %223, 3
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %227, label %226, !prof !15

226:                                              ; preds = %217
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

227:                                              ; preds = %217
  %228 = getelementptr %struct.scatterlist, ptr %175, i32 3
  %229 = and i32 %219, 4095
  %230 = load i32, ptr %200, align 8
  %231 = and i32 %230, 3
  %232 = or i32 %231, %223
  store i32 %232, ptr %200, align 8
  %233 = getelementptr %struct.scatterlist, ptr %175, i32 2, i32 1
  store i32 %229, ptr %233, align 4
  %234 = getelementptr %struct.scatterlist, ptr %175, i32 2, i32 2
  store i32 %148, ptr %234, align 16
  br label %235

235:                                              ; preds = %227, %210
  %236 = phi ptr [ %228, %227 ], [ %200, %210 ]
  %237 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 7
  store i32 0, ptr %237, align 4
  %238 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %239 = call zeroext i8 %238() #10
  %240 = load ptr, ptr @mem_map, align 4
  %241 = ptrtoint ptr %237 to i32
  %242 = add i32 %241, 1073741824
  %243 = lshr i32 %242, 12
  %244 = getelementptr %struct.page, ptr %240, i32 %243
  %245 = ptrtoint ptr %244 to i32
  %246 = and i32 %245, 3
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248, !prof !15

248:                                              ; preds = %235
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

249:                                              ; preds = %235
  %250 = zext i8 %239 to i32
  %251 = and i32 %241, 4095
  %252 = load i32, ptr %236, align 4
  %253 = and i32 %252, 3
  %254 = or i32 %253, %245
  store i32 %254, ptr %236, align 4
  %255 = getelementptr inbounds %struct.scatterlist, ptr %236, i32 0, i32 1
  store i32 %251, ptr %255, align 4
  %256 = getelementptr inbounds %struct.scatterlist, ptr %236, i32 0, i32 2
  store i32 %250, ptr %256, align 4
  %257 = load i32, ptr %82, align 4
  %258 = trunc i32 %257 to i8
  %259 = add i8 %162, %258
  %260 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %261 = call zeroext i8 %260() #10
  %262 = icmp ne i8 %261, 0
  %263 = zext i1 %262 to i8
  %264 = add i8 %259, %263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %265 = zext i8 %264 to i32
  %266 = mul nuw nsw i32 %265, 20
  %267 = load i32, ptr %171, align 4
  %268 = or i32 %267, 256
  %269 = call noalias align 64 ptr @__kmalloc(i32 noundef %266, i32 noundef %268) #12
  %270 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  store ptr %269, ptr %270, align 4
  %271 = icmp eq ptr %269, null
  br i1 %271, label %367, label %272

272:                                              ; preds = %249
  call void @sg_init_table(ptr noundef nonnull %269, i32 noundef %265) #10
  %273 = getelementptr %struct.scatterlist, ptr %269, i32 1
  store ptr %273, ptr %2, align 4
  %274 = load ptr, ptr @mem_map, align 4
  %275 = ptrtoint ptr %122 to i32
  %276 = add i32 %275, 1073741824
  %277 = lshr i32 %276, 12
  %278 = getelementptr %struct.page, ptr %274, i32 %277
  %279 = ptrtoint ptr %278 to i32
  %280 = and i32 %279, 3
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282, !prof !15

282:                                              ; preds = %272
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

283:                                              ; preds = %272
  %284 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %285 = zext i8 %284 to i32
  %286 = add i32 %129, %285
  %287 = and i32 %275, 4095
  %288 = load i32, ptr %269, align 64
  %289 = and i32 %288, 3
  %290 = or i32 %289, %279
  store i32 %290, ptr %269, align 64
  %291 = getelementptr inbounds %struct.scatterlist, ptr %269, i32 0, i32 1
  store i32 %287, ptr %291, align 4
  %292 = getelementptr inbounds %struct.scatterlist, ptr %269, i32 0, i32 2
  store i32 %286, ptr %292, align 8
  br i1 %74, label %313, label %293

293:                                              ; preds = %283
  %294 = load ptr, ptr %2, align 4
  %295 = getelementptr %struct.scatterlist, ptr %294, i32 1
  store ptr %295, ptr %2, align 4
  %296 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 19
  %297 = load ptr, ptr @mem_map, align 4
  %298 = ptrtoint ptr %296 to i32
  %299 = add i32 %298, 1073741824
  %300 = lshr i32 %299, 12
  %301 = getelementptr %struct.page, ptr %297, i32 %300
  %302 = ptrtoint ptr %301 to i32
  %303 = and i32 %302, 3
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305, !prof !15

305:                                              ; preds = %293
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

306:                                              ; preds = %293
  %307 = and i32 %298, 4095
  %308 = load i32, ptr %294, align 4
  %309 = and i32 %308, 3
  %310 = or i32 %309, %302
  store i32 %310, ptr %294, align 4
  %311 = getelementptr inbounds %struct.scatterlist, ptr %294, i32 0, i32 1
  store i32 %307, ptr %311, align 4
  %312 = getelementptr inbounds %struct.scatterlist, ptr %294, i32 0, i32 2
  store i32 %71, ptr %312, align 4
  br label %313

313:                                              ; preds = %306, %283
  %314 = icmp eq i32 %72, %71
  br i1 %314, label %322, label %315

315:                                              ; preds = %313
  %316 = load i32, ptr %82, align 4
  %317 = trunc i32 %316 to i8
  %318 = call i32 @spu_msg_sg_add(ptr noundef nonnull %2, ptr noundef %77, ptr noundef %79, i8 noundef zeroext %317, i32 noundef %76) #10
  %319 = icmp ult i32 %318, %76
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.spu_ahash_tx_sg_create) #11
  br label %367

322:                                              ; preds = %315, %313
  br i1 %153, label %343, label %323

323:                                              ; preds = %322
  %324 = load ptr, ptr %2, align 4
  %325 = getelementptr %struct.scatterlist, ptr %324, i32 1
  store ptr %325, ptr %2, align 4
  %326 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  %327 = load ptr, ptr @mem_map, align 4
  %328 = ptrtoint ptr %326 to i32
  %329 = add i32 %328, 1073741824
  %330 = lshr i32 %329, 12
  %331 = getelementptr %struct.page, ptr %327, i32 %330
  %332 = ptrtoint ptr %331 to i32
  %333 = and i32 %332, 3
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %336, label %335, !prof !15

335:                                              ; preds = %323
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

336:                                              ; preds = %323
  %337 = and i32 %328, 4095
  %338 = load i32, ptr %324, align 4
  %339 = and i32 %338, 3
  %340 = or i32 %339, %332
  store i32 %340, ptr %324, align 4
  %341 = getelementptr inbounds %struct.scatterlist, ptr %324, i32 0, i32 1
  store i32 %337, ptr %341, align 4
  %342 = getelementptr inbounds %struct.scatterlist, ptr %324, i32 0, i32 2
  store i32 %152, ptr %342, align 4
  br label %343

343:                                              ; preds = %336, %322
  %344 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %345 = call zeroext i8 %344() #10
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %369, label %347

347:                                              ; preds = %343
  %348 = zext i8 %345 to i32
  %349 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 4
  call void @llvm.memset.p0.i32(ptr align 4 %349, i8 0, i32 %348, i1 false) #10
  %350 = load ptr, ptr @mem_map, align 4
  %351 = ptrtoint ptr %349 to i32
  %352 = add i32 %351, 1073741824
  %353 = lshr i32 %352, 12
  %354 = getelementptr %struct.page, ptr %350, i32 %353
  %355 = ptrtoint ptr %354 to i32
  %356 = and i32 %355, 3
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %359, label %358, !prof !15

358:                                              ; preds = %347
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

359:                                              ; preds = %347
  %360 = load ptr, ptr %2, align 4
  %361 = and i32 %351, 4095
  %362 = load i32, ptr %360, align 4
  %363 = and i32 %362, 3
  %364 = or i32 %363, %355
  store i32 %364, ptr %360, align 4
  %365 = getelementptr inbounds %struct.scatterlist, ptr %360, i32 0, i32 1
  store i32 %361, ptr %365, align 4
  %366 = getelementptr inbounds %struct.scatterlist, ptr %360, i32 0, i32 2
  store i32 %348, ptr %366, align 4
  br label %369

367:                                              ; preds = %320, %249
  %368 = phi i32 [ -14, %320 ], [ -12, %249 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %377

369:                                              ; preds = %359, %343
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %370 = getelementptr inbounds %struct.crypto_async_request, ptr %7, i32 0, i32 4
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 2
  %373 = load i8, ptr %372, align 4
  %374 = call fastcc i32 @mailbox_send_message(ptr noundef %35, i32 noundef %371, i8 noundef zeroext %373)
  %375 = icmp slt i32 %374, 0
  %376 = select i1 %375, i32 %374, i32 -115, !prof !8
  br label %377

377:                                              ; preds = %369, %367, %161, %131, %64
  %378 = phi i32 [ -14, %131 ], [ -11, %64 ], [ %368, %367 ], [ %376, %369 ], [ -12, %161 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  ret i32 %378
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_aead_req(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.spu_request_opts, align 1
  %7 = alloca %struct.spu_cipher_parms, align 4
  %8 = alloca %struct.spu_hash_parms, align 4
  %9 = alloca %struct.spu_aead_parms, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  %13 = getelementptr inbounds i8, ptr %7, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #10
  %14 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  store i16 0, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %19, i8 0, i32 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false)
  %20 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 16
  %21 = load i8, ptr %20, align 1, !range !11
  %22 = xor i8 %21, 1
  store i8 %22, ptr %6, align 1
  %23 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 14
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = getelementptr inbounds %struct.spu_request_opts, ptr %6, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.spu_request_opts, ptr %6, i32 0, i32 2
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 10
  %28 = load i8, ptr %27, align 4, !range !11
  %29 = getelementptr inbounds %struct.spu_request_opts, ptr %6, i32 0, i32 3
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %7, align 4
  %32 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 11, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 3
  store ptr %12, ptr %38, align 4
  %39 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 4
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28
  %44 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 1
  %45 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.spu_cipher_parms, ptr %7, i32 0, i32 6
  store i16 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %8, align 4
  %52 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 13, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.spu_hash_parms, ptr %8, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.spu_hash_parms, ptr %8, i32 0, i32 2
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 2
  %57 = getelementptr inbounds %struct.spu_hash_parms, ptr %8, i32 0, i32 4
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.spu_hash_parms, ptr %8, i32 0, i32 5
  store i16 %60, ptr %61, align 4
  %62 = trunc i32 %15 to i8
  %63 = getelementptr inbounds %struct.spu_hash_parms, ptr %8, i32 0, i32 3
  store i8 %62, ptr %63, align 4
  %64 = icmp eq i32 %51, 3
  %65 = icmp ult i32 %59, 28
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %68

67:                                               ; preds = %1
  store i16 28, ptr %61, align 4
  br label %68

68:                                               ; preds = %67, %1
  %69 = getelementptr inbounds %struct.aead_request, ptr %10, i32 0, i32 1
  %70 = load i32, ptr %69, align 8
  store i32 %70, ptr %9, align 4
  %71 = icmp eq i8 %28, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 23
  %74 = load i8, ptr %73, align 4, !range !11
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = add i32 %70, -8
  store i32 %77, ptr %9, align 4
  %78 = icmp eq i8 %21, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 4
  store i8 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 5
  store i32 8, ptr %81, align 4
  %82 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 6
  store i32 4, ptr %82, align 4
  br label %85

83:                                               ; preds = %72, %68
  %84 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 5
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %79, %76
  %86 = phi i32 [ 0, %76 ], [ 8, %79 ], [ 0, %83 ]
  %87 = phi i32 [ %77, %76 ], [ %77, %79 ], [ %70, %83 ]
  %88 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @spu_sg_count(ptr noundef %89, i32 noundef %91, i32 noundef %17) #10
  %93 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 9
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @spu_sg_count(ptr noundef %95, i32 noundef %97, i32 noundef %17) #10
  %99 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 12
  store i32 %98, ptr %99, align 4
  %100 = icmp eq i32 %87, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 @spu_sg_count(ptr noundef %103, i32 noundef 0, i32 noundef %87) #10
  %105 = trunc i32 %104 to i8
  br label %106

106:                                              ; preds = %101, %85
  %107 = phi i8 [ %105, %101 ], [ 0, %85 ]
  %108 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14
  %109 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 5
  store i32 %17, ptr %109, align 4
  %110 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 6
  store i32 %17, ptr %110, align 4
  %111 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  %112 = load i32, ptr %32, align 4
  %113 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 5
  %114 = load i8, ptr %20, align 1, !range !11
  %115 = icmp ne i8 %114, 0
  %116 = tail call i32 %111(i32 noundef %112, i32 noundef %87, i32 noundef %86, i1 noundef zeroext %115) #10
  %117 = icmp eq i32 %116, 0
  %118 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 7), align 8
  %119 = load i32, ptr %32, align 4
  %120 = load i32, ptr %46, align 4
  %121 = trunc i32 %120 to i16
  %122 = tail call zeroext i8 %118(i32 noundef %119, i16 noundef zeroext %121) #10
  %123 = zext i8 %122 to i16
  %124 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 1
  store i16 %123, ptr %124, align 4
  %125 = load i32, ptr %50, align 4
  %126 = icmp eq i32 %125, 5
  br i1 %126, label %127, label %129

127:                                              ; preds = %106
  %128 = load i32, ptr %35, align 4
  store i32 %128, ptr %55, align 4
  br label %129

129:                                              ; preds = %127, %106
  %130 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %131 = load i32, ptr %32, align 4
  %132 = tail call i32 %130(i32 noundef %131, i32 noundef %87) #10
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 2
  store i8 %133, ptr %134, align 2
  %135 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %136 = load i32, ptr %32, align 4
  %137 = tail call i32 %135(i32 noundef %136, i32 noundef %17) #10
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds %struct.spu_aead_parms, ptr %9, i32 0, i32 3
  store i8 %138, ptr %139, align 1
  %140 = load i32, ptr %32, align 4
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %142, label %163

142:                                              ; preds = %129
  %143 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %144 = add i32 %87, 2
  %145 = tail call i32 %143(i32 noundef 5, i32 noundef %144) #10
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr %134, align 2
  %147 = load i8, ptr %20, align 1, !range !11
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %151 = load i32, ptr %32, align 4
  %152 = sub i32 %17, %15
  %153 = tail call i32 %150(i32 noundef %151, i32 noundef %152) #10
  %154 = trunc i32 %153 to i8
  store i8 %154, ptr %139, align 1
  %155 = load i8, ptr %20, align 1, !range !11
  br label %156

156:                                              ; preds = %149, %142
  %157 = phi i8 [ %155, %149 ], [ 1, %142 ]
  %158 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 18), align 4
  %159 = load i32, ptr %69, align 8
  %160 = icmp ne i8 %157, 0
  %161 = load i8, ptr %27, align 4, !range !11
  %162 = icmp ne i8 %161, 0
  call void %158(i32 noundef %15, ptr noundef nonnull %7, i32 noundef %159, i32 noundef %17, i1 noundef zeroext %160, i1 noundef zeroext %162) #10
  br label %163

163:                                              ; preds = %156, %129
  %164 = getelementptr inbounds %struct.iproc_ctx_s, ptr %12, i32 0, i32 23
  %165 = load i8, ptr %164, align 4, !range !11
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  store i8 0, ptr %134, align 2
  %168 = load i8, ptr %20, align 1, !range !11
  %169 = icmp eq i8 %168, 0
  %170 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %171 = load i32, ptr %32, align 4
  %172 = load i32, ptr %9, align 4
  %173 = select i1 %169, i32 %15, i32 0
  %174 = sub i32 %17, %173
  %175 = add i32 %172, %174
  %176 = call i32 %170(i32 noundef %171, i32 noundef %175) #10
  %177 = trunc i32 %176 to i8
  store i8 %177, ptr %139, align 1
  %178 = getelementptr inbounds %struct.spu_request_opts, ptr %6, i32 0, i32 5
  store i8 1, ptr %178, align 1
  br label %179

179:                                              ; preds = %167, %163
  %180 = load i32, ptr %32, align 4
  %181 = load i8, ptr %20, align 1, !range !11
  %182 = icmp eq i8 %181, 0
  %183 = add i32 %180, -5
  %184 = icmp ult i32 %183, 2
  %185 = and i1 %184, %182
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.aead_request, ptr %10, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 2
  %190 = load i32, ptr %69, align 8
  %191 = load i32, ptr %109, align 4
  %192 = sub i32 %190, %15
  %193 = add i32 %192, %191
  call void @sg_copy_part_to_buf(ptr noundef %188, ptr noundef %189, i32 noundef %15, i32 noundef %193) #10
  br label %194

194:                                              ; preds = %186, %179
  %195 = phi i8 [ 2, %186 ], [ 1, %179 ]
  %196 = zext i32 %17 to i64
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !9
  %197 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9), i64 %196, ptr elementtype(i64) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 9)) #10, !srcloc !13
  %198 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %199 = zext i8 %198 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %43, ptr nonnull align 1 @BCMHEADER, i32 %199, i1 false)
  %200 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 10), align 4
  %201 = getelementptr i8, ptr %43, i32 %199
  %202 = call i32 %200(ptr noundef %201, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %17) #10
  %203 = load i32, ptr %9, align 4
  %204 = load i16, ptr %124, align 4
  %205 = zext i16 %204 to i32
  %206 = load i8, ptr %134, align 2
  %207 = zext i8 %206 to i32
  %208 = load i8, ptr %139, align 1
  %209 = zext i8 %208 to i32
  %210 = add i32 %203, %17
  %211 = add i32 %210, %205
  %212 = add i32 %211, %207
  %213 = add i32 %212, %209
  %214 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %215 = call i32 %214(i32 noundef %213) #10
  %216 = icmp eq i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i8
  %219 = load i8, ptr %139, align 1
  %220 = zext i8 %219 to i32
  %221 = add i32 %215, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %194
  %224 = add nuw nsw i8 %195, 1
  %225 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 13), align 8
  %226 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  %227 = load i32, ptr %50, align 4
  %228 = load i32, ptr %52, align 4
  %229 = load i32, ptr %109, align 4
  call void %225(ptr noundef %226, i32 noundef %220, i32 noundef 0, i32 noundef %227, i32 noundef %228, i32 noundef %229, i32 noundef %215) #10
  br label %230

230:                                              ; preds = %223, %194
  %231 = phi i8 [ %224, %223 ], [ %195, %194 ]
  %232 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1), align 4
  %233 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %234 = zext i8 %233 to i32
  %235 = getelementptr i8, ptr %43, i32 %234
  call void %232(ptr noundef %235, i32 noundef %202) #10
  %236 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 7
  %237 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %237, i8 0, i32 20, i1 false)
  store i32 2, ptr %108, align 4
  %238 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 2
  store ptr %0, ptr %238, align 4
  %239 = load i32, ptr %99, align 4
  %240 = trunc i32 %239 to i8
  %241 = select i1 %117, i8 3, i8 4
  %242 = add nuw nsw i8 %241, %218
  %243 = add i8 %242, %240
  %244 = load i32, ptr %32, align 4
  %245 = add i32 %244, -5
  %246 = icmp ult i32 %245, 2
  br i1 %246, label %247, label %256

247:                                              ; preds = %230
  %248 = load i8, ptr %20, align 1, !range !11
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, ptr %14, align 4
  %252 = sub i32 %17, %251
  %253 = icmp eq i32 %17, %251
  %254 = select i1 %253, i32 0, i32 %252
  %255 = select i1 %253, i8 %242, i8 %243
  br label %256

256:                                              ; preds = %250, %247, %230
  %257 = phi i32 [ %17, %247 ], [ %17, %230 ], [ %254, %250 ]
  %258 = phi i8 [ %243, %247 ], [ %243, %230 ], [ %255, %250 ]
  %259 = load i32, ptr %9, align 4
  %260 = load i32, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %261 = load ptr, ptr %11, align 4
  %262 = getelementptr inbounds %struct.iproc_ctx_s, ptr %261, i32 0, i32 23
  %263 = load i8, ptr %262, align 4, !range !11
  %264 = icmp eq i8 %263, 0
  %265 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 5), align 8
  %266 = getelementptr inbounds %struct.iproc_ctx_s, ptr %261, i32 0, i32 11, i32 1
  %267 = load i32, ptr %266, align 4
  br i1 %264, label %271, label %268

268:                                              ; preds = %256
  %269 = add i32 %259, %257
  %270 = call i32 %265(i32 noundef %267, i32 noundef %269) #10
  br label %278

271:                                              ; preds = %256
  %272 = call i32 %265(i32 noundef %267, i32 noundef %257) #10
  %273 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 6), align 4
  %274 = load i32, ptr %266, align 4
  %275 = load i8, ptr %20, align 1, !range !11
  %276 = icmp ne i8 %275, 0
  %277 = call i32 %273(i32 noundef %274, i32 noundef %259, i32 noundef %260, i1 noundef zeroext %276) #10
  br label %278

278:                                              ; preds = %271, %268
  %279 = phi i32 [ %259, %268 ], [ %277, %271 ]
  %280 = phi i32 [ %270, %268 ], [ %272, %271 ]
  %281 = load i32, ptr %266, align 4
  %282 = icmp eq i32 %281, 5
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 19), align 8
  %285 = add i32 %279, %257
  %286 = and i32 %280, 255
  %287 = add i32 %285, %286
  %288 = call i32 %284(i32 noundef %287) #10
  %289 = add i32 %288, %280
  br label %290

290:                                              ; preds = %283, %278
  %291 = phi i32 [ %289, %283 ], [ %280, %278 ]
  %292 = trunc i32 %291 to i8
  %293 = icmp eq i8 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i8
  %296 = add i8 %258, %295
  %297 = zext i8 %296 to i32
  %298 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 27
  %299 = mul nuw nsw i32 %297, 20
  %300 = load i32, ptr %298, align 4
  %301 = or i32 %300, 256
  %302 = call noalias align 64 ptr @__kmalloc(i32 noundef %299, i32 noundef %301) #12
  %303 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1, i32 0, i32 1
  store ptr %302, ptr %303, align 4
  %304 = icmp eq ptr %302, null
  br i1 %304, label %433, label %305

305:                                              ; preds = %290
  call void @sg_init_table(ptr noundef nonnull %302, i32 noundef %297) #10
  %306 = getelementptr %struct.scatterlist, ptr %302, i32 1
  store ptr %306, ptr %5, align 4
  %307 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 5
  %308 = load ptr, ptr @mem_map, align 4
  %309 = ptrtoint ptr %307 to i32
  %310 = add i32 %309, 1073741824
  %311 = lshr i32 %310, 12
  %312 = getelementptr %struct.page, ptr %308, i32 %311
  %313 = ptrtoint ptr %312 to i32
  %314 = and i32 %313, 3
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316, !prof !15

316:                                              ; preds = %305
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

317:                                              ; preds = %305
  %318 = getelementptr inbounds %struct.iproc_ctx_s, ptr %261, i32 0, i32 21
  %319 = load i16, ptr %318, align 2
  %320 = zext i16 %319 to i32
  %321 = and i32 %309, 4095
  %322 = load i32, ptr %302, align 64
  %323 = and i32 %322, 3
  %324 = or i32 %323, %313
  store i32 %324, ptr %302, align 64
  %325 = getelementptr inbounds %struct.scatterlist, ptr %302, i32 0, i32 1
  store i32 %321, ptr %325, align 4
  %326 = getelementptr inbounds %struct.scatterlist, ptr %302, i32 0, i32 2
  store i32 %320, ptr %326, align 8
  %327 = icmp eq i32 %279, 0
  br i1 %327, label %348, label %328

328:                                              ; preds = %317
  %329 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 8, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr align 4 %329, i8 0, i32 %279, i1 false) #10
  %330 = load ptr, ptr %5, align 4
  %331 = getelementptr %struct.scatterlist, ptr %330, i32 1
  store ptr %331, ptr %5, align 4
  %332 = load ptr, ptr @mem_map, align 4
  %333 = ptrtoint ptr %329 to i32
  %334 = add i32 %333, 1073741824
  %335 = lshr i32 %334, 12
  %336 = getelementptr %struct.page, ptr %332, i32 %335
  %337 = ptrtoint ptr %336 to i32
  %338 = and i32 %337, 3
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340, !prof !15

340:                                              ; preds = %328
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

341:                                              ; preds = %328
  %342 = and i32 %333, 4095
  %343 = load i32, ptr %330, align 4
  %344 = and i32 %343, 3
  %345 = or i32 %344, %337
  store i32 %345, ptr %330, align 4
  %346 = getelementptr inbounds %struct.scatterlist, ptr %330, i32 0, i32 1
  store i32 %342, ptr %346, align 4
  %347 = getelementptr inbounds %struct.scatterlist, ptr %330, i32 0, i32 2
  store i32 %279, ptr %347, align 4
  br label %348

348:                                              ; preds = %341, %317
  %349 = icmp eq i32 %257, 0
  br i1 %349, label %357, label %350

350:                                              ; preds = %348
  %351 = load i32, ptr %99, align 4
  %352 = trunc i32 %351 to i8
  %353 = call i32 @spu_msg_sg_add(ptr noundef nonnull %5, ptr noundef %94, ptr noundef %96, i8 noundef zeroext %352, i32 noundef %257) #10
  %354 = icmp ult i32 %353, %257
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.spu_aead_rx_sg_create, i32 noundef %257, i32 noundef %353) #11
  br label %433

357:                                              ; preds = %350, %348
  br i1 %293, label %379, label %358

358:                                              ; preds = %357
  %359 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 8
  %360 = and i32 %291, 255
  call void @llvm.memset.p0.i32(ptr align 4 %359, i8 0, i32 %360, i1 false) #10
  %361 = load ptr, ptr %5, align 4
  %362 = getelementptr %struct.scatterlist, ptr %361, i32 1
  store ptr %362, ptr %5, align 4
  %363 = load ptr, ptr @mem_map, align 4
  %364 = ptrtoint ptr %359 to i32
  %365 = add i32 %364, 1073741824
  %366 = lshr i32 %365, 12
  %367 = getelementptr %struct.page, ptr %363, i32 %366
  %368 = ptrtoint ptr %367 to i32
  %369 = and i32 %368, 3
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %372, label %371, !prof !15

371:                                              ; preds = %358
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

372:                                              ; preds = %358
  %373 = and i32 %364, 4095
  %374 = load i32, ptr %361, align 4
  %375 = and i32 %374, 3
  %376 = or i32 %375, %368
  store i32 %376, ptr %361, align 4
  %377 = getelementptr inbounds %struct.scatterlist, ptr %361, i32 0, i32 1
  store i32 %373, ptr %377, align 4
  %378 = getelementptr inbounds %struct.scatterlist, ptr %361, i32 0, i32 2
  store i32 %360, ptr %378, align 4
  br label %379

379:                                              ; preds = %372, %357
  %380 = load ptr, ptr %5, align 4
  %381 = getelementptr %struct.scatterlist, ptr %380, i32 1
  store ptr %381, ptr %5, align 4
  %382 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 2
  %383 = load ptr, ptr @mem_map, align 4
  %384 = ptrtoint ptr %382 to i32
  %385 = add i32 %384, 1073741824
  %386 = lshr i32 %385, 12
  %387 = getelementptr %struct.page, ptr %383, i32 %386
  %388 = ptrtoint ptr %387 to i32
  %389 = and i32 %388, 3
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %392, label %391, !prof !15

391:                                              ; preds = %379
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

392:                                              ; preds = %379
  %393 = and i32 %384, 4095
  %394 = load i32, ptr %380, align 4
  %395 = and i32 %394, 3
  %396 = or i32 %395, %388
  store i32 %396, ptr %380, align 4
  %397 = getelementptr inbounds %struct.scatterlist, ptr %380, i32 0, i32 1
  store i32 %393, ptr %397, align 4
  %398 = getelementptr inbounds %struct.scatterlist, ptr %380, i32 0, i32 2
  store i32 %15, ptr %398, align 4
  br i1 %216, label %419, label %399

399:                                              ; preds = %392
  %400 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 6
  call void @llvm.memset.p0.i32(ptr align 4 %400, i8 0, i32 %215, i1 false) #10
  %401 = load ptr, ptr %5, align 4
  %402 = getelementptr %struct.scatterlist, ptr %401, i32 1
  store ptr %402, ptr %5, align 4
  %403 = load ptr, ptr @mem_map, align 4
  %404 = ptrtoint ptr %400 to i32
  %405 = add i32 %404, 1073741824
  %406 = lshr i32 %405, 12
  %407 = getelementptr %struct.page, ptr %403, i32 %406
  %408 = ptrtoint ptr %407 to i32
  %409 = and i32 %408, 3
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %412, label %411, !prof !15

411:                                              ; preds = %399
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

412:                                              ; preds = %399
  %413 = and i32 %404, 4095
  %414 = load i32, ptr %401, align 4
  %415 = and i32 %414, 3
  %416 = or i32 %415, %408
  store i32 %416, ptr %401, align 4
  %417 = getelementptr inbounds %struct.scatterlist, ptr %401, i32 0, i32 1
  store i32 %413, ptr %417, align 4
  %418 = getelementptr inbounds %struct.scatterlist, ptr %401, i32 0, i32 2
  store i32 %215, ptr %418, align 4
  br label %419

419:                                              ; preds = %412, %392
  %420 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 7
  store i32 0, ptr %420, align 4
  %421 = load ptr, ptr %5, align 4
  %422 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 16), align 4
  %423 = call zeroext i8 %422() #10
  %424 = load ptr, ptr @mem_map, align 4
  %425 = ptrtoint ptr %420 to i32
  %426 = add i32 %425, 1073741824
  %427 = lshr i32 %426, 12
  %428 = getelementptr %struct.page, ptr %424, i32 %427
  %429 = ptrtoint ptr %428 to i32
  %430 = and i32 %429, 3
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %435, label %432, !prof !15

432:                                              ; preds = %419
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

433:                                              ; preds = %355, %290
  %434 = phi i32 [ -12, %290 ], [ -14, %355 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %630

435:                                              ; preds = %419
  %436 = zext i8 %423 to i32
  %437 = and i32 %425, 4095
  %438 = load i32, ptr %421, align 4
  %439 = and i32 %438, 3
  %440 = or i32 %439, %429
  store i32 %440, ptr %421, align 4
  %441 = getelementptr inbounds %struct.scatterlist, ptr %421, i32 0, i32 1
  store i32 %437, ptr %441, align 4
  %442 = getelementptr inbounds %struct.scatterlist, ptr %421, i32 0, i32 2
  store i32 %436, ptr %442, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %443 = load i32, ptr %93, align 4
  %444 = trunc i32 %443 to i8
  %445 = load i8, ptr %134, align 2
  %446 = icmp ne i8 %445, 0
  %447 = zext i1 %446 to i8
  %448 = load i16, ptr %124, align 4
  %449 = icmp ne i16 %448, 0
  %450 = zext i1 %449 to i8
  %451 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %452 = call zeroext i8 %451() #10
  %453 = icmp ne i8 %452, 0
  %454 = zext i1 %453 to i8
  %455 = add i8 %231, %107
  %456 = add i8 %455, %444
  %457 = add i8 %456, %447
  %458 = add i8 %457, %450
  %459 = add i8 %458, %454
  %460 = load ptr, ptr %236, align 4
  %461 = load i32, ptr %9, align 4
  %462 = load i16, ptr %124, align 4
  %463 = zext i16 %462 to i32
  %464 = load i8, ptr %134, align 2
  %465 = zext i8 %464 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr %460, ptr %3, align 4
  %466 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %467 = zext i8 %459 to i32
  %468 = mul nuw nsw i32 %467, 20
  %469 = load i32, ptr %298, align 4
  %470 = or i32 %469, 256
  %471 = call noalias align 64 ptr @__kmalloc(i32 noundef %468, i32 noundef %470) #12
  %472 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 14, i32 1
  store ptr %471, ptr %472, align 4
  %473 = icmp eq ptr %471, null
  br i1 %473, label %620, label %474

474:                                              ; preds = %435
  call void @sg_init_table(ptr noundef nonnull %471, i32 noundef %467) #10
  %475 = getelementptr %struct.scatterlist, ptr %471, i32 1
  store ptr %475, ptr %2, align 4
  %476 = load ptr, ptr @mem_map, align 4
  %477 = ptrtoint ptr %43 to i32
  %478 = add i32 %477, 1073741824
  %479 = lshr i32 %478, 12
  %480 = getelementptr %struct.page, ptr %476, i32 %479
  %481 = ptrtoint ptr %480 to i32
  %482 = and i32 %481, 3
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484, !prof !15

484:                                              ; preds = %474
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

485:                                              ; preds = %474
  %486 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %487 = zext i8 %486 to i32
  %488 = add i32 %202, %487
  %489 = and i32 %477, 4095
  %490 = load i32, ptr %471, align 64
  %491 = and i32 %490, 3
  %492 = or i32 %491, %481
  store i32 %492, ptr %471, align 64
  %493 = getelementptr inbounds %struct.scatterlist, ptr %471, i32 0, i32 1
  store i32 %489, ptr %493, align 4
  %494 = getelementptr inbounds %struct.scatterlist, ptr %471, i32 0, i32 2
  store i32 %488, ptr %494, align 8
  %495 = icmp eq i32 %461, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %485
  %497 = call i32 @spu_msg_sg_add(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %107, i32 noundef %461) #10
  %498 = icmp ult i32 %497, %461
  br i1 %498, label %617, label %499

499:                                              ; preds = %496, %485
  %500 = icmp eq i16 %462, 0
  br i1 %500, label %520, label %501

501:                                              ; preds = %499
  %502 = load ptr, ptr %2, align 4
  %503 = getelementptr %struct.scatterlist, ptr %502, i32 1
  store ptr %503, ptr %2, align 4
  %504 = load ptr, ptr @mem_map, align 4
  %505 = ptrtoint ptr %44 to i32
  %506 = add i32 %505, 1073741824
  %507 = lshr i32 %506, 12
  %508 = getelementptr %struct.page, ptr %504, i32 %507
  %509 = ptrtoint ptr %508 to i32
  %510 = and i32 %509, 3
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512, !prof !15

512:                                              ; preds = %501
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

513:                                              ; preds = %501
  %514 = and i32 %505, 4095
  %515 = load i32, ptr %502, align 4
  %516 = and i32 %515, 3
  %517 = or i32 %516, %509
  store i32 %517, ptr %502, align 4
  %518 = getelementptr inbounds %struct.scatterlist, ptr %502, i32 0, i32 1
  store i32 %514, ptr %518, align 4
  %519 = getelementptr inbounds %struct.scatterlist, ptr %502, i32 0, i32 2
  store i32 %463, ptr %519, align 4
  br label %520

520:                                              ; preds = %513, %499
  %521 = icmp eq i8 %464, 0
  br i1 %521, label %542, label %522

522:                                              ; preds = %520
  %523 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 8, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr align 4 %523, i8 0, i32 %465, i1 false) #10
  %524 = load ptr, ptr %2, align 4
  %525 = getelementptr %struct.scatterlist, ptr %524, i32 1
  store ptr %525, ptr %2, align 4
  %526 = load ptr, ptr @mem_map, align 4
  %527 = ptrtoint ptr %523 to i32
  %528 = add i32 %527, 1073741824
  %529 = lshr i32 %528, 12
  %530 = getelementptr %struct.page, ptr %526, i32 %529
  %531 = ptrtoint ptr %530 to i32
  %532 = and i32 %531, 3
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %535, label %534, !prof !15

534:                                              ; preds = %522
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

535:                                              ; preds = %522
  %536 = and i32 %527, 4095
  %537 = load i32, ptr %524, align 4
  %538 = and i32 %537, 3
  %539 = or i32 %538, %531
  store i32 %539, ptr %524, align 4
  %540 = getelementptr inbounds %struct.scatterlist, ptr %524, i32 0, i32 1
  store i32 %536, ptr %540, align 4
  %541 = getelementptr inbounds %struct.scatterlist, ptr %524, i32 0, i32 2
  store i32 %465, ptr %541, align 4
  br label %542

542:                                              ; preds = %535, %520
  %543 = getelementptr inbounds %struct.iproc_ctx_s, ptr %466, i32 0, i32 8
  %544 = load i32, ptr %543, align 4
  %545 = icmp ult i32 %544, %17
  %546 = and i1 %185, %545
  %547 = select i1 %546, i32 %544, i32 0
  %548 = icmp eq i32 %17, %547
  br i1 %548, label %555, label %549

549:                                              ; preds = %542
  %550 = sub i32 %17, %547
  %551 = load i32, ptr %93, align 4
  %552 = trunc i32 %551 to i8
  %553 = call i32 @spu_msg_sg_add(ptr noundef nonnull %2, ptr noundef %88, ptr noundef %90, i8 noundef zeroext %552, i32 noundef %550) #10
  %554 = icmp ult i32 %553, %550
  br i1 %554, label %617, label %555

555:                                              ; preds = %549, %542
  br i1 %222, label %576, label %556

556:                                              ; preds = %555
  %557 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 3
  call void @llvm.memset.p0.i32(ptr align 4 %557, i8 0, i32 %221, i1 false) #10
  %558 = load ptr, ptr %2, align 4
  %559 = getelementptr %struct.scatterlist, ptr %558, i32 1
  store ptr %559, ptr %2, align 4
  %560 = load ptr, ptr @mem_map, align 4
  %561 = ptrtoint ptr %557 to i32
  %562 = add i32 %561, 1073741824
  %563 = lshr i32 %562, 12
  %564 = getelementptr %struct.page, ptr %560, i32 %563
  %565 = ptrtoint ptr %564 to i32
  %566 = and i32 %565, 3
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %569, label %568, !prof !15

568:                                              ; preds = %556
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

569:                                              ; preds = %556
  %570 = and i32 %561, 4095
  %571 = load i32, ptr %558, align 4
  %572 = and i32 %571, 3
  %573 = or i32 %572, %565
  store i32 %573, ptr %558, align 4
  %574 = getelementptr inbounds %struct.scatterlist, ptr %558, i32 0, i32 1
  store i32 %570, ptr %574, align 4
  %575 = getelementptr inbounds %struct.scatterlist, ptr %558, i32 0, i32 2
  store i32 %221, ptr %575, align 4
  br label %576

576:                                              ; preds = %569, %555
  br i1 %185, label %577, label %593

577:                                              ; preds = %576
  %578 = load ptr, ptr %2, align 4
  %579 = getelementptr %struct.scatterlist, ptr %578, i32 1
  store ptr %579, ptr %2, align 4
  %580 = load ptr, ptr @mem_map, align 4
  %581 = getelementptr %struct.page, ptr %580, i32 %386
  %582 = ptrtoint ptr %581 to i32
  %583 = and i32 %582, 3
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %586, label %585, !prof !15

585:                                              ; preds = %577
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

586:                                              ; preds = %577
  %587 = load i32, ptr %543, align 4
  %588 = load i32, ptr %578, align 4
  %589 = and i32 %588, 3
  %590 = or i32 %589, %582
  store i32 %590, ptr %578, align 4
  %591 = getelementptr inbounds %struct.scatterlist, ptr %578, i32 0, i32 1
  store i32 %393, ptr %591, align 4
  %592 = getelementptr inbounds %struct.scatterlist, ptr %578, i32 0, i32 2
  store i32 %587, ptr %592, align 4
  br label %593

593:                                              ; preds = %586, %576
  %594 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 15), align 8
  %595 = call zeroext i8 %594() #10
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %622, label %597

597:                                              ; preds = %593
  %598 = zext i8 %595 to i32
  %599 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 28, i32 4
  call void @llvm.memset.p0.i32(ptr align 4 %599, i8 0, i32 %598, i1 false) #10
  %600 = load ptr, ptr @mem_map, align 4
  %601 = ptrtoint ptr %599 to i32
  %602 = add i32 %601, 1073741824
  %603 = lshr i32 %602, 12
  %604 = getelementptr %struct.page, ptr %600, i32 %603
  %605 = ptrtoint ptr %604 to i32
  %606 = and i32 %605, 3
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %609, label %608, !prof !15

608:                                              ; preds = %597
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

609:                                              ; preds = %597
  %610 = load ptr, ptr %2, align 4
  %611 = and i32 %601, 4095
  %612 = load i32, ptr %610, align 4
  %613 = and i32 %612, 3
  %614 = or i32 %613, %605
  store i32 %614, ptr %610, align 4
  %615 = getelementptr inbounds %struct.scatterlist, ptr %610, i32 0, i32 1
  store i32 %611, ptr %615, align 4
  %616 = getelementptr inbounds %struct.scatterlist, ptr %610, i32 0, i32 2
  store i32 %598, ptr %616, align 4
  br label %622

617:                                              ; preds = %549, %496
  %618 = phi ptr [ @.str.47, %496 ], [ @.str.31, %549 ]
  %619 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %618, ptr noundef nonnull @__func__.spu_aead_tx_sg_create) #11
  br label %620

620:                                              ; preds = %617, %435
  %621 = phi i32 [ -12, %435 ], [ -14, %617 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %630

622:                                              ; preds = %609, %593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %623 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 4
  %624 = load i32, ptr %623, align 4
  %625 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %0, i32 0, i32 2
  %626 = load i8, ptr %625, align 4
  %627 = call fastcc i32 @mailbox_send_message(ptr noundef %108, i32 noundef %624, i8 noundef zeroext %626)
  %628 = icmp slt i32 %627, 0
  %629 = select i1 %628, i32 %627, i32 -115, !prof !8
  br label %630

630:                                              ; preds = %622, %620, %433
  %631 = phi i32 [ %629, %622 ], [ %434, %433 ], [ %621, %620 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  ret i32 %631
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_shash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_copy_part_from_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_sg_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_copy_part_to_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_to_ctr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mailbox_send_message(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = load ptr, ptr @iproc_priv, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %7 = zext i8 %2 to i32
  %8 = getelementptr ptr, ptr %6, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @mbox_send_message(ptr noundef %9, ptr noundef %0) #10
  %11 = and i32 %1, 512
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i32 %10, -105
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26

15:                                               ; preds = %15, %3
  %16 = phi i32 [ %17, %15 ], [ 0, %3 ]
  %17 = add nuw nsw i32 %16, 1
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #10
  %18 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %19 = getelementptr ptr, ptr %18, i32 %7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @mbox_send_message(ptr noundef %20, ptr noundef %0) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16)) #10, !srcloc !9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 16)) #10, !srcloc !12
  %23 = icmp eq i32 %21, -105
  %24 = icmp ult i32 %16, 999
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %3
  %27 = phi i32 [ %10, %3 ], [ %21, %15 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17)) #10, !srcloc !9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 17)) #10, !srcloc !12
  br label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.brcm_message, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %33) #11
  br label %36

36:                                               ; preds = %35, %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 20), align 4
  %38 = getelementptr ptr, ptr %37, i32 %7
  %39 = load ptr, ptr %38, align 4
  tail call void @mbox_client_txdone(ptr noundef %39, i32 noundef %33) #10
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %27, %29 ], [ %33, %36 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_msg_sg_add(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_dump_msg_hdr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_payload_length(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_response_hdr_len(i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_hash_pad_len(i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_gcm_ccm_pad_len(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_assoc_resp_len(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_aead_ivlen(i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_hash_type(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_digest_size(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_create_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spum_cipher_req_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_cipher_req_finish(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_request_pad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_tx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_rx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_status_process(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spum_xts_tweak_in_payload() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spum_ccm_update_iv(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_wordalign_padlen(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_ns2_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spum_nsp_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_dump_msg_hdr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_ctx_max_payload(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_payload_length(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_response_hdr_len(i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_hash_pad_len(i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_gcm_ccm_pad_len(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_assoc_resp_len(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_aead_ivlen(i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_hash_type(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_digest_size(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_create_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @spu2_cipher_req_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_cipher_req_finish(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_request_pad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_tx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_rx_status_len() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_status_process(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spu2_xts_tweak_in_payload() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spu2_ccm_update_iv(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu2_wordalign_padlen(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_gcm_ccm_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 44
  %7 = load i8, ptr %6, align 4, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 %2, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 3, i32 1
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 4
  store i32 0, ptr %13, align 4
  switch i32 %2, label %47 [
    i32 16, label %16
    i32 24, label %14
    i32 32, label %15
  ]

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14, %11
  %17 = phi i32 [ 2, %15 ], [ 1, %14 ], [ 0, %11 ]
  %18 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3
  store i32 %17, ptr %18, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr align 1 %1, i32 %2, i1 false)
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %20, i32 0, i32 3
  %24 = load i32, ptr %23, align 64
  %25 = and i32 %24, -1048321
  store i32 %25, ptr %23, align 64
  %26 = load i32, ptr %5, align 64
  %27 = and i32 %26, 1048320
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.crypto_aead, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 64
  %31 = or i32 %30, %27
  store i32 %31, ptr %29, align 64
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %2
  %36 = tail call i32 @crypto_aead_setkey(ptr noundef %32, ptr noundef %1, i32 noundef %35) #10
  br label %37

37:                                               ; preds = %22, %16
  %38 = phi i32 [ 0, %16 ], [ %36, %22 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %40 = load i32, ptr %13, align 4
  %41 = trunc i32 %40 to i16
  %42 = load i32, ptr %12, align 4
  %43 = trunc i32 %42 to i16
  %44 = tail call zeroext i16 %39(i16 noundef zeroext %41, i16 noundef zeroext %43, i1 noundef zeroext false) #10
  %45 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 12, i32 2, i32 10
  store i16 %44, ptr %45, align 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #10, !srcloc !9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #10, !srcloc !12
  br label %49

47:                                               ; preds = %11
  store i32 0, ptr %12, align 4
  %48 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi i32 [ -22, %47 ], [ %38, %37 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_gcm_esp_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 12
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 16
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 8
  %9 = getelementptr i8, ptr %1, i32 %2
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %8, align 4
  %12 = add i32 %2, -4
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 16, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 44
  store i8 1, ptr %14, align 4
  %15 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %16

16:                                               ; preds = %5, %3
  %17 = phi i32 [ %15, %5 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_ccm_esp_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 3
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 12
  store i32 3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 16
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 8
  %9 = getelementptr i8, ptr %1, i32 %2
  %10 = getelementptr i8, ptr %9, i32 -3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %8, ptr noundef align 1 dereferenceable(3) %10, i32 3, i1 false)
  %11 = add i32 %2, -3
  %12 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 44
  store i8 1, ptr %12, align 4
  %13 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %11)
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ %13, %5 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfc4543_gcm_esp_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 12
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 16
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 8
  %9 = getelementptr i8, ptr %1, i32 %2
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load i32, ptr %10, align 1
  store i32 %11, ptr %8, align 4
  %12 = add i32 %2, -4
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 16, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 44
  store i8 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 12, i32 2, i32 16
  store i8 1, ptr %15, align 4
  %16 = tail call i32 @aead_gcm_ccm_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %17

17:                                               ; preds = %5, %3
  %18 = phi i32 [ %16, %5 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_authenc_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [6 x i32], align 4
  %5 = alloca %struct.des_ctx, align 4
  %6 = alloca %struct.crypto_authenc_keys, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !14
  %9 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %104

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %6, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 256
  %15 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 256
  %18 = select i1 %14, i1 true, i1 %17
  br i1 %18, label %104, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 3, i32 1
  store i32 %13, ptr %20, align 4
  %21 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 4
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %23, i32 %13, i1 false)
  %24 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(260) %24, i8 0, i32 260, i1 false)
  %25 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 1 %25, i32 %16, i1 false)
  %26 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 40
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.iproc_alg_s, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 64
  switch i32 %29, label %74 [
    i32 2, label %30
    i32 3, label %43
    i32 4, label %70
  ]

30:                                               ; preds = %19
  %31 = icmp eq i32 %13, 8
  br i1 %31, label %32, label %110

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false) #10, !annotation !14
  %33 = call i32 @des_expand_key(ptr noundef nonnull %5, ptr noundef %23, i32 noundef 8) #10
  %34 = icmp eq i32 %33, -126
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %8, align 64
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 -22
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %33, %32 ], [ %39, %35 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %76, label %110

43:                                               ; preds = %19
  %44 = icmp eq i32 %13, 24
  br i1 %44, label %45, label %110

45:                                               ; preds = %43
  %46 = load i32, ptr %8, align 64
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %23, i32 24, i1 false) #10
  %49 = load i32, ptr %4, align 4
  %50 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %49, %51
  %57 = icmp eq i32 %53, %55
  %58 = and i1 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %45
  %60 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp ne i32 %51, %61
  %65 = icmp ne i32 %55, %63
  %66 = or i1 %64, %65
  %67 = or i1 %48, %66
  br i1 %67, label %69, label %108

68:                                               ; preds = %45
  br i1 %48, label %69, label %109

69:                                               ; preds = %68, %59
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %76

70:                                               ; preds = %19
  %71 = load i32, ptr %20, align 4
  switch i32 %71, label %104 [
    i32 16, label %76
    i32 24, label %72
    i32 32, label %73
  ]

72:                                               ; preds = %70
  br label %76

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %19
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.aead_authenc_setkey) #11
  br label %110

76:                                               ; preds = %73, %72, %70, %69, %40
  %77 = phi i32 [ 1, %72 ], [ 2, %73 ], [ 0, %69 ], [ 0, %40 ], [ 0, %70 ]
  %78 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.crypto_aead, ptr %80, i32 0, i32 3
  %84 = load i32, ptr %83, align 64
  %85 = and i32 %84, -1048321
  store i32 %85, ptr %83, align 64
  %86 = load i32, ptr %8, align 64
  %87 = and i32 %86, 1048320
  %88 = load ptr, ptr %79, align 4
  %89 = getelementptr inbounds %struct.crypto_aead, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 64
  %91 = or i32 %90, %87
  store i32 %91, ptr %89, align 64
  %92 = load ptr, ptr %79, align 4
  %93 = call i32 @crypto_aead_setkey(ptr noundef %92, ptr noundef %1, i32 noundef %2) #10
  br label %94

94:                                               ; preds = %82, %76
  %95 = phi i32 [ 0, %76 ], [ %93, %82 ]
  %96 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %97 = load i32, ptr %21, align 4
  %98 = trunc i32 %97 to i16
  %99 = load i32, ptr %20, align 4
  %100 = trunc i32 %99 to i16
  %101 = call zeroext i16 %96(i16 noundef zeroext %98, i16 noundef zeroext %100, i1 noundef zeroext false) #10
  %102 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 12, i32 2, i32 10
  store i16 %101, ptr %102, align 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #10, !srcloc !9
  %103 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 3)) #10, !srcloc !12
  br label %110

104:                                              ; preds = %70, %11, %3
  %105 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 3, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 4
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 0, ptr %107, align 4
  br label %110

108:                                              ; preds = %59
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %110

109:                                              ; preds = %68
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %110

110:                                              ; preds = %109, %108, %104, %94, %74, %43, %40, %30
  %111 = phi i32 [ -22, %104 ], [ -22, %74 ], [ %95, %94 ], [ -22, %40 ], [ -22, %30 ], [ -22, %43 ], [ -22, %108 ], [ -22, %109 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_init_tfm(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  store i32 2396, ptr %0, align 64
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 44
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 52
  %9 = getelementptr i8, ptr %3, i32 448
  %10 = load i64, ptr %9, align 64
  store i64 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 1
  %12 = getelementptr i8, ptr %3, i32 456
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %11, align 4
  %14 = getelementptr i8, ptr %3, i32 464
  %15 = load i8, ptr %14, align 16, !range !11
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 3
  store i8 %15, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %18 = trunc i64 %10 to i32
  %19 = lshr i64 %10, 32
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 %17(i32 noundef %18, i32 noundef %20, i32 noundef %6) #10
  %22 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4, i32 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 3, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 8
  store i32 0, ptr %25, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_exit_tfm(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [6 x i32], align 4
  %5 = alloca %struct.des_ctx, align 4
  %6 = alloca %struct.spu_cipher_parms, align 4
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  %8 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 20, i1 false), !annotation !14
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 52
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %71 [
    i32 2, label %11
    i32 3, label %25
    i32 4, label %53
  ]

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false) #10, !annotation !14
  %12 = call i32 @des_expand_key(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 8) #10
  %13 = icmp eq i32 %12, -126
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 -22
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ %12, %11 ], [ %19, %14 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %133

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2
  store i32 0, ptr %24, align 4
  br label %73

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 64
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #10
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %30, %32
  %38 = icmp eq i32 %34, %36
  %39 = and i1 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp ne i32 %32, %42
  %46 = icmp ne i32 %36, %44
  %47 = or i1 %45, %46
  %48 = or i1 %29, %47
  br i1 %48, label %51, label %50

49:                                               ; preds = %25
  br i1 %29, label %51, label %50

50:                                               ; preds = %49, %40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %133

51:                                               ; preds = %49, %40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #10, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %52 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2
  store i32 0, ptr %52, align 4
  br label %73

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 56
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 7
  %57 = zext i1 %56 to i32
  %58 = lshr i32 %2, %57
  switch i32 %58, label %133 [
    i32 16, label %61
    i32 24, label %59
    i32 32, label %60
  ]

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %59, %53
  %62 = phi i32 [ 2, %60 ], [ 1, %59 ], [ 0, %53 ]
  %63 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp ne i32 %65, -1
  %67 = and i32 %65, 15
  %68 = icmp ne i32 %67, 0
  %69 = and i1 %66, %68
  br i1 %69, label %70, label %73, !prof !8

70:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 1815, i32 noundef 9, ptr noundef null) #10
  br label %73

71:                                               ; preds = %3
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.skcipher_setkey) #11
  br label %133

73:                                               ; preds = %70, %61, %51, %23
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %1, i32 %2, i1 false)
  %74 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 3, i32 1
  store i32 %2, ptr %74, align 4
  %75 = load i32, ptr %9, align 4
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 56
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = lshr i32 %2, 1
  %83 = getelementptr i8, ptr %1, i32 %82
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %83, i32 %82, i1 false)
  %84 = getelementptr i8, ptr %7, i32 %82
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %84, ptr align 1 %1, i32 %82, i1 false)
  br label %85

85:                                               ; preds = %81, %77, %73
  %86 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  switch i32 %86, label %87 [
    i32 0, label %90
    i32 1, label %94
  ]

87:                                               ; preds = %85
  %88 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %89 = zext i8 %88 to i32
  br label %98

90:                                               ; preds = %85
  %91 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %92, 552
  br label %98

94:                                               ; preds = %85
  %95 = load i8, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 4), align 4
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %96, 568
  br label %98

98:                                               ; preds = %94, %90, %87
  %99 = phi i32 [ %89, %87 ], [ %96, %94 ], [ %92, %90 ]
  %100 = phi i32 [ 0, %87 ], [ %97, %94 ], [ %93, %90 ]
  %101 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 7, i32 2, i32 4, i32 8
  call void @llvm.memset.p0.i32(ptr align 4 %101, i8 0, i32 %100, i1 false)
  %102 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 5
  store ptr null, ptr %102, align 4
  %103 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 -36
  %106 = load i32, ptr %105, align 4
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 6
  store i16 %107, ptr %108, align 4
  %109 = load i32, ptr %9, align 4
  store i32 %109, ptr %6, align 4
  %110 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 56
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 1
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 2
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 3
  store ptr %7, ptr %116, align 4
  %117 = load i32, ptr %74, align 4
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.spu_cipher_parms, ptr %6, i32 0, i32 4
  store i16 %118, ptr %119, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %101, ptr nonnull align 1 @BCMHEADER, i32 %99, i1 false)
  %120 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 11), align 8
  %121 = getelementptr i8, ptr %101, i32 %99
  %122 = call zeroext i16 %120(ptr noundef %121, ptr noundef nonnull %6) #10
  %123 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 12, i32 1, i32 12
  store i16 %122, ptr %123, align 4
  %124 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %125 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 5, i32 1, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = trunc i32 %126 to i16
  %128 = load i32, ptr %74, align 4
  %129 = trunc i32 %128 to i16
  %130 = call zeroext i16 %124(i16 noundef zeroext %127, i16 noundef zeroext %129, i1 noundef zeroext false) #10
  %131 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 12, i32 1, i32 14
  store i16 %130, ptr %131, align 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15)) #10, !srcloc !9
  %132 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15)) #10, !srcloc !12
  br label %133

133:                                              ; preds = %98, %71, %53, %50, %20
  %134 = phi i32 [ 0, %98 ], [ -22, %53 ], [ -126, %50 ], [ -22, %71 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_encrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @skcipher_enqueue(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_decrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @skcipher_enqueue(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @generic_cra_exit(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_enqueue(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1536
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2592, i32 3264
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 5, i32 5, i32 12
  store i32 %13, ptr %14, align 4
  store ptr %8, ptr %4, align 4
  %15 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %4, i32 0, i32 16
  store i8 %3, ptr %15, align 1
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4
  store i8 0, ptr %16, align 4
  %17 = load i32, ptr %0, align 64
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 3
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5, i32 4
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5, i32 8
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5, i32 12
  store i32 0, ptr %32, align 4
  %33 = getelementptr i8, ptr %6, i32 636
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %44 [
    i32 1, label %35
    i32 4, label %35
    i32 2, label %35
    i32 7, label %35
    i32 6, label %35
    i32 5, label %35
  ]

35:                                               ; preds = %2, %2, %2, %2, %2, %2
  %36 = getelementptr i8, ptr %6, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 -36
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 14, i32 5, i32 8
  %42 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 1 %43, i32 %39, i1 false)
  br label %46

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !20
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %49 = and i32 %48, 255
  %50 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %51 = urem i32 %49, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  store i8 %52, ptr %53, align 4
  %54 = tail call fastcc i32 @handle_skcipher_req(ptr noundef %4)
  %55 = icmp eq i32 %54, -115
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5, i32 16
  %58 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 5, i32 20
  %59 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %59) #10
  %60 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %61 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %61) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %57, i8 0, i32 24, i1 false) #10
  br label %62

62:                                               ; preds = %56, %46
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_cra_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -192
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 32
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 40
  %9 = getelementptr i8, ptr %3, i32 384
  %10 = load i64, ptr %9, align 64
  store i64 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 10, i32 1
  %12 = getelementptr i8, ptr %3, i32 392
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %11, align 4
  %14 = getelementptr i8, ptr %3, i32 400
  %15 = load i8, ptr %14, align 16, !range !11
  %16 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 10, i32 3
  store i8 %15, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %18 = trunc i64 %10 to i32
  %19 = lshr i64 %10, 32
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 %17(i32 noundef %18, i32 noundef %20, i32 noundef %6) #10
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 10, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 10, i32 4, i32 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 5, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 3
  store i32 0, ptr %25, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !12
  %28 = getelementptr i8, ptr %0, i32 -32
  store i32 2396, ptr %28, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 644
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %3, i32 648
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 8
  %18 = tail call ptr @crypto_alloc_shash(ptr noundef %17, i32 noundef 0, i32 noundef 0) #10
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = ptrtoint ptr %18 to i32
  br label %80

22:                                               ; preds = %14
  %23 = load i32, ptr %18, align 64
  %24 = add i32 %23, 8
  %25 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1536
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 2592, i32 3264
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef %29) #12
  %31 = getelementptr i8, ptr %3, i32 1492
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %77, label %33

33:                                               ; preds = %22
  store ptr %18, ptr %30, align 64
  %34 = getelementptr i8, ptr %3, i32 588
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %3, i32 328
  %39 = tail call i32 @crypto_shash_setkey(ptr noundef %18, ptr noundef %38, i32 noundef %35) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37, %33
  %42 = load ptr, ptr %31, align 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 64
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.crypto_shash, ptr %43, i32 0, i32 2, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 -128
  %52 = load ptr, ptr %51, align 64
  %53 = tail call i32 %52(ptr noundef %42) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %80, label %74

55:                                               ; preds = %10, %6
  %56 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %59 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %58, i8 0, i64 16, i1 false) #10
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -64
  %62 = load i32, ptr %61, align 64
  %63 = getelementptr i8, ptr %3, i32 620
  store i32 %62, ptr %63, align 4
  %64 = icmp ugt i32 %62, 64
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 1979, i32 noundef 9, ptr noundef null) #10
  br label %66

66:                                               ; preds = %65, %55
  %67 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  store i8 0, ptr %67, align 4
  %68 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %69 = getelementptr i8, ptr %3, i32 588
  %70 = load i32, ptr %69, align 4
  %71 = trunc i32 %70 to i16
  %72 = tail call zeroext i16 %68(i16 noundef zeroext %71, i16 noundef zeroext 0, i1 noundef zeroext true) #10
  %73 = getelementptr i8, ptr %3, i32 1490
  store i16 %72, ptr %73, align 2
  br label %80

74:                                               ; preds = %48, %41, %37
  %75 = phi i32 [ %39, %37 ], [ %53, %48 ], [ -126, %41 ]
  %76 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %74, %22
  %78 = phi i32 [ %75, %74 ], [ -12, %22 ]
  %79 = getelementptr inbounds %struct.crypto_shash, ptr %18, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %18, ptr noundef %79) #10
  br label %80

80:                                               ; preds = %77, %66, %48, %20
  %81 = phi i32 [ 0, %48 ], [ 0, %66 ], [ %21, %20 ], [ %78, %77 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 644
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %3, i32 648
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @sg_nents(ptr noundef nonnull %16) #10
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1536
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2592, i32 3264
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %18
  %30 = load i32, ptr %20, align 8
  %31 = load ptr, ptr %15, align 4
  %32 = tail call i32 @sg_copy_to_buffer(ptr noundef %31, i32 noundef %19, ptr noundef nonnull %27, i32 noundef %30) #10
  %33 = load i32, ptr %20, align 8
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %50

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %3, i32 1492
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @crypto_shash_update(ptr noundef %38, ptr noundef nonnull %27, i32 noundef %32) #10
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %50

40:                                               ; preds = %10, %6
  %41 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %42
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %48, align 4
  %49 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  br label %50

50:                                               ; preds = %44, %40, %36, %35, %18, %14
  %51 = phi i32 [ -22, %35 ], [ -22, %14 ], [ -12, %18 ], [ %39, %36 ], [ %49, %44 ], [ 0, %40 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_final(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 644
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %3, i32 648
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10, %1
  %15 = getelementptr i8, ptr %3, i32 1492
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 32
  %19 = tail call i32 @crypto_shash_final(ptr noundef %16, ptr noundef %18) #10
  %20 = load ptr, ptr %15, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %21, ptr noundef %22) #10
  %23 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %23) #10
  br label %27

24:                                               ; preds = %10, %6
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 1, ptr %25, align 4
  %26 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ %19, %14 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_finup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 644
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %3, i32 648
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @sg_nents(ptr noundef nonnull %16) #10
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1536
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2592, i32 3264
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %18
  %30 = load i32, ptr %20, align 8
  %31 = load ptr, ptr %15, align 4
  %32 = tail call i32 @sg_copy_to_buffer(ptr noundef %31, i32 noundef %19, ptr noundef nonnull %27, i32 noundef %30) #10
  %33 = load i32, ptr %20, align 8
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %3, i32 1492
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 32
  %40 = tail call i32 @crypto_shash_finup(ptr noundef %37, ptr noundef nonnull %27, i32 noundef %32, ptr noundef %39) #10
  br label %50

41:                                               ; preds = %10, %6
  %42 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 1, ptr %48, align 4
  %49 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  br label %59

50:                                               ; preds = %35, %29
  %51 = phi i32 [ %40, %35 ], [ -22, %29 ]
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %52

52:                                               ; preds = %50, %18, %14
  %53 = phi i32 [ %51, %50 ], [ -22, %14 ], [ -12, %18 ]
  %54 = getelementptr i8, ptr %3, i32 1492
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.crypto_shash, ptr %56, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %56, ptr noundef %57) #10
  %58 = load ptr, ptr %54, align 4
  tail call void @kfree(ptr noundef %58) #10
  br label %59

59:                                               ; preds = %52, %41
  %60 = phi i32 [ %53, %52 ], [ %49, %41 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %7 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false) #10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr i8, ptr %3, i32 620
  store i32 %10, ptr %11, align 4
  %12 = icmp ugt i32 %10, 64
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 1979, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  store i8 0, ptr %15, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %17 = getelementptr i8, ptr %3, i32 588
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = tail call zeroext i16 %16(i16 noundef zeroext %19, i16 noundef zeroext 0, i1 noundef zeroext true) #10
  %21 = getelementptr i8, ptr %3, i32 1490
  store i16 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %26, align 4
  store i32 1, ptr %5, align 4
  %27 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 10, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  switch i32 %2, label %10 [
    i32 16, label %14
    i32 24, label %8
    i32 32, label %9
  ]

8:                                                ; preds = %7
  br label %14

9:                                                ; preds = %7
  br label %14

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.ahash_setkey) #11
  br label %19

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.ahash_setkey) #11
  br label %19

14:                                               ; preds = %9, %8, %7
  %15 = phi i32 [ 1, %8 ], [ 2, %9 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 10
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %1, i32 %2, i1 false)
  %18 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 3
  store i32 %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %12, %10
  %20 = phi i32 [ -22, %10 ], [ 0, %14 ], [ -22, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = icmp ult i32 %8, %2
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 10, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 11
  br i1 %16, label %19, label %17

17:                                               ; preds = %19, %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.ahash_hmac_setkey) #11
  br label %63

19:                                               ; preds = %12
  %20 = trunc i32 %15 to i16
  %21 = lshr i16 2031, %20
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %17, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [11 x ptr], ptr @switch.table.ahash_hmac_setkey, i32 0, i32 %15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3, i32 2
  %28 = tail call i32 @do_shash(ptr noundef nonnull %26, ptr noundef %27, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, ptr %13, align 4
  %32 = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.ahash_hmac_setkey, i32 noundef %28, ptr noundef %33) #11
  br label %63

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %36, ptr align 1 %1, i32 %2, i1 false)
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i32 [ %2, %35 ], [ %10, %24 ]
  %39 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 3
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 10, i32 4, i32 8
  %44 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 3, i32 2
  %45 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %43, ptr align 4 %44, i32 %38, i1 false)
  %46 = getelementptr i8, ptr %43, i32 %38
  %47 = sub i32 %8, %38
  tail call void @llvm.memset.p0.i32(ptr align 1 %46, i8 0, i32 %47, i1 false)
  store i32 0, ptr %45, align 4
  %48 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 6, i32 10, i32 4, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %48, ptr align 4 %43, i32 %8, i1 false)
  %49 = icmp eq i32 %8, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %50, %42
  %51 = phi i32 [ %58, %50 ], [ 0, %42 ]
  %52 = getelementptr %struct.iproc_ctx_s, ptr %4, i32 0, i32 17, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = xor i8 %53, 54
  store i8 %54, ptr %52, align 1
  %55 = getelementptr %struct.iproc_ctx_s, ptr %4, i32 0, i32 18, i32 %51
  %56 = load i8, ptr %55, align 1
  %57 = xor i8 %56, 92
  store i8 %57, ptr %55, align 1
  %58 = add nuw i32 %51, 1
  %59 = icmp eq i32 %58, %8
  br i1 %59, label %60, label %50

60:                                               ; preds = %50, %42, %37
  %61 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 9, i32 8
  store i32 %10, ptr %61, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2)) #10, !srcloc !9
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 15, i32 2)) #10, !srcloc !12
  br label %63

63:                                               ; preds = %60, %30, %17
  %64 = phi i32 [ -22, %17 ], [ %28, %30 ], [ 0, %60 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @ahash_init(ptr noundef %0)
  %9 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %3, i32 644
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %3, i32 648
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  store i8 1, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 648
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 2
  %23 = getelementptr i8, ptr %3, i32 664
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 4 %23, i32 %7, i1 false)
  %24 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %7
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %19, %15, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @ahash_update(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_final(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 644
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %3, i32 648
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10, %1
  %15 = getelementptr i8, ptr %3, i32 1492
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 32
  %19 = tail call i32 @crypto_shash_final(ptr noundef %16, ptr noundef %18) #10
  %20 = load ptr, ptr %15, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %21, ptr noundef %22) #10
  %23 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %23) #10
  br label %27

24:                                               ; preds = %10, %6
  %25 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 1, ptr %25, align 4
  %26 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ %19, %14 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_finup(ptr noundef %0) #2 {
  %2 = tail call i32 @ahash_finup(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahash_hmac_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false) #10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr i8, ptr %3, i32 620
  store i32 %13, ptr %14, align 4
  %15 = icmp ugt i32 %13, 64
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 1979, i32 noundef 9, ptr noundef null) #10
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  store i8 0, ptr %18, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 3), align 8
  %20 = getelementptr i8, ptr %3, i32 588
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i16
  %23 = tail call zeroext i16 %19(i16 noundef zeroext %22, i16 noundef zeroext 0, i1 noundef zeroext true) #10
  %24 = getelementptr i8, ptr %3, i32 1490
  store i16 %23, ptr %24, align 2
  %25 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  store i8 0, ptr %18, align 4
  %28 = getelementptr i8, ptr %3, i32 648
  store i32 2, ptr %28, align 4
  %29 = load i32, ptr %10, align 4
  br label %36

30:                                               ; preds = %17
  store i8 1, ptr %18, align 4
  %31 = getelementptr i8, ptr %3, i32 648
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 2
  %33 = getelementptr i8, ptr %3, i32 664
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %32, ptr align 4 %33, i32 %7, i1 false)
  store i32 %7, ptr %8, align 4
  %34 = load i32, ptr %10, align 4
  %35 = add i32 %34, %7
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %35, %30 ], [ %29, %27 ]
  %38 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %37, %39
  store i32 %40, ptr %10, align 4
  %41 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %41, align 4
  store i32 1, ptr %9, align 4
  %42 = tail call fastcc i32 @ahash_enqueue(ptr noundef %0) #10
  ret i32 %42
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ahash_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 5
  store i8 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %11, ptr noundef align 4 dereferenceable(128) %12, i32 128, i1 false)
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %16, ptr noundef align 4 dereferenceable(64) %17, i32 64, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ahash_import(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 5
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 4
  store i8 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 2
  %12 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %11, ptr noundef align 4 dereferenceable(128) %12, i32 128, i1 false)
  %13 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 4
  %17 = getelementptr inbounds %struct.spu_hash_export_s, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %16, ptr noundef align 4 dereferenceable(64) %17, i32 64, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ahash_enqueue(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1536
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2592, i32 3264
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 5, i32 5, i32 12
  store i32 %10, ptr %11, align 4
  store ptr %0, ptr %2, align 4
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 0, i32 3
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %14, i8 0, i32 24, i1 false)
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %18, i8 0, i64 20, i1 false)
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.crypto_alg, ptr %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 32
  %35 = getelementptr i8, ptr %4, i32 328
  %36 = getelementptr i8, ptr %4, i32 588
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @do_shash(ptr noundef %32, ptr noundef %34, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %35, i32 noundef %37) #10
  br label %57

39:                                               ; preds = %22, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !20
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %42 = and i32 %41, 255
  %43 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %44 = urem i32 %42, %43
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i8 %45, ptr %46, align 4
  %47 = tail call fastcc i32 @handle_ahash_req(ptr noundef %2)
  %48 = icmp eq i32 %47, -115
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #10
  %52 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %14, i8 0, i32 24, i1 false) #10
  br label %54

54:                                               ; preds = %49, %39
  %55 = icmp eq i32 %47, -11
  %56 = select i1 %55, i32 0, i32 %47
  br label %57

57:                                               ; preds = %54, %29
  %58 = phi i32 [ %56, %54 ], [ %38, %29 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 36
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @crypto_aead_setauthsize(ptr noundef nonnull %5, i32 noundef %1) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_encrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @aead_enqueue(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_decrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @aead_enqueue(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_cra_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 40
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 48
  %9 = getelementptr i8, ptr %3, i32 448
  %10 = load i64, ptr %9, align 64
  store i64 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 1
  %12 = getelementptr i8, ptr %3, i32 456
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %11, align 4
  %14 = getelementptr i8, ptr %3, i32 464
  %15 = load i8, ptr %14, align 16, !range !11
  %16 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 3
  store i8 %15, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 1), align 8
  %18 = trunc i64 %10 to i32
  %19 = lshr i64 %10, 32
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 %17(i32 noundef %18, i32 noundef %20, i32 noundef %6) #10
  %22 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 3, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 4
  store i32 0, ptr %25, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 3)) #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !12
  %28 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 2396, ptr %28, align 4
  %29 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 44
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 12
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 16
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 2, i32 20
  tail call void @get_random_bytes(ptr noundef %32, i32 noundef 16) #10
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 2
  %34 = load i32, ptr %33, align 16
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.crypto_alg, ptr %3, i32 0, i32 8
  %39 = tail call ptr @crypto_alloc_aead(ptr noundef %38, i32 noundef 0, i32 noundef 384) #10
  store ptr %39, ptr %23, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.aead_cra_init, ptr noundef %38) #11
  %43 = load ptr, ptr %23, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %45

45:                                               ; preds = %41, %37, %1
  %46 = phi i32 [ %44, %41 ], [ 0, %1 ], [ 0, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_cra_exit(ptr nocapture noundef %0) #2 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 2)) #10, !srcloc !18
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 5, i32 3, i32 4, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %7) #10
  store ptr null, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aead_enqueue(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 512
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.aead_enqueue, i32 noundef %7, i32 noundef 512) #11
  br label %184

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %5, i32 64
  %13 = zext i1 %1 to i8
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1536
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 2592, i32 3264
  %19 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 6, i32 8
  store i32 %18, ptr %19, align 4
  store ptr %0, ptr %3, align 4
  %20 = getelementptr inbounds %struct.iproc_reqctx_s, ptr %3, i32 0, i32 16
  store i8 %13, ptr %20, align 1
  %21 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 0, i32 3
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 4
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store ptr %12, ptr %29, align 4
  %30 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %30, i8 0, i32 24, i1 false)
  %31 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 3
  %35 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 5
  %36 = tail call i32 @spu_sg_at_offset(ptr noundef %32, i32 noundef %7, ptr noundef %34, ptr noundef %35) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %11
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.aead_enqueue) #11
  br label %184

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 4
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 4
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %31, align 4
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load ptr, ptr %34, align 4
  %49 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6
  store ptr %48, ptr %49, align 4
  %50 = load i32, ptr %35, align 4
  %51 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 8
  store i32 %50, ptr %51, align 4
  br label %60

52:                                               ; preds = %40
  %53 = load i32, ptr %6, align 8
  %54 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6
  %55 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 8
  %56 = tail call i32 @spu_sg_at_offset(ptr noundef %44, i32 noundef %53, ptr noundef %54, ptr noundef %55) #10
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.aead_enqueue) #11
  br label %184

60:                                               ; preds = %52, %47
  %61 = getelementptr i8, ptr %5, i32 636
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %72 [
    i32 1, label %63
    i32 4, label %63
    i32 2, label %63
    i32 7, label %63
    i32 6, label %63
    i32 5, label %73
  ]

63:                                               ; preds = %60, %60, %60, %60, %60
  %64 = getelementptr i8, ptr %5, i32 596
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %4, align 16
  %67 = getelementptr i8, ptr %66, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 -40
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, %65
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %63, %60
  %74 = phi i32 [ 0, %72 ], [ %71, %63 ], [ 16, %60 ]
  %75 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 1
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.aead_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2, i32 1
  %78 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %79 = load ptr, ptr %4, align 16
  %80 = getelementptr i8, ptr %79, i32 632
  %81 = getelementptr i8, ptr %79, i32 636
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -5
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %87 = icmp eq i32 %86, 0
  %88 = load i32, ptr %22, align 4
  br i1 %87, label %89, label %135

89:                                               ; preds = %85
  %90 = load i32, ptr %6, align 8
  br label %131

91:                                               ; preds = %73
  %92 = load i32, ptr %6, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i8, ptr %20, align 1, !range !11
  %96 = icmp eq i8 %95, 0
  %97 = load i32, ptr %22, align 4
  br i1 %96, label %100, label %98

98:                                               ; preds = %94
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %142, label %104

100:                                              ; preds = %94
  %101 = getelementptr i8, ptr %79, i32 620
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %97, %102
  br i1 %103, label %142, label %104

104:                                              ; preds = %100, %98, %91
  %105 = icmp eq i32 %82, 5
  %106 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 21), align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %79, i32 620
  %111 = load i32, ptr %110, align 4
  switch i32 %111, label %142 [
    i32 8, label %112
    i32 12, label %112
    i32 16, label %112
  ]

112:                                              ; preds = %109, %109, %109, %104
  %113 = phi i1 [ true, %109 ], [ true, %109 ], [ true, %109 ], [ %107, %104 ]
  %114 = phi i1 [ true, %109 ], [ true, %109 ], [ true, %109 ], [ %105, %104 ]
  %115 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 22), align 8
  %116 = icmp ne i32 %115, 1
  %117 = xor i1 %114, true
  %118 = select i1 %117, i1 true, i1 %116
  %119 = xor i1 %93, true
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %112
  %122 = icmp eq i32 %82, 6
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = load i32, ptr %80, align 4
  %125 = icmp eq i32 %124, 4
  %126 = icmp eq i32 %74, 8
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  switch i32 %92, label %142 [
    i32 16, label %129
    i32 20, label %129
  ]

129:                                              ; preds = %128, %128, %123, %121
  %130 = load i32, ptr %22, align 4
  br i1 %113, label %131, label %135

131:                                              ; preds = %129, %89
  %132 = phi i32 [ %90, %89 ], [ %92, %129 ]
  %133 = phi i32 [ %88, %89 ], [ %130, %129 ]
  %134 = add i32 %132, %133
  br label %135

135:                                              ; preds = %131, %129, %85
  %136 = phi i32 [ %134, %131 ], [ %130, %129 ], [ %88, %85 ]
  %137 = getelementptr i8, ptr %79, i32 656
  %138 = load i32, ptr %137, align 4
  %139 = icmp ne i32 %138, -1
  %140 = icmp ugt i32 %136, %138
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %144, !prof !22

142:                                              ; preds = %135, %128, %112, %109, %100, %98
  %143 = tail call fastcc i32 @aead_do_fallback(ptr noundef %0, i1 noundef zeroext %1)
  br label %184

144:                                              ; preds = %135
  %145 = icmp eq i32 %74, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %144
  %147 = getelementptr i8, ptr %5, i32 596
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.aead_request, ptr %0, i32 14, i32 6, i32 4
  %152 = getelementptr i8, ptr %5, i32 600
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %151, i32 %153
  %155 = getelementptr i8, ptr %5, i32 592
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %154, ptr align 4 %155, i32 %148, i1 false)
  %156 = load i32, ptr %147, align 4
  %157 = load i32, ptr %77, align 4
  br label %158

158:                                              ; preds = %150, %146
  %159 = phi i32 [ %157, %150 ], [ %74, %146 ]
  %160 = phi i32 [ %156, %150 ], [ 0, %146 ]
  %161 = getelementptr inbounds %struct.aead_request, ptr %0, i32 14, i32 6, i32 4
  %162 = getelementptr i8, ptr %5, i32 600
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr i8, ptr %161, i32 %163
  %165 = getelementptr i8, ptr %164, i32 %160
  %166 = load ptr, ptr %78, align 32
  %167 = add i32 %160, %163
  %168 = sub i32 %159, %167
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %165, ptr align 1 %166, i32 %168, i1 false)
  br label %169

169:                                              ; preds = %158, %144
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !9
  %170 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 5)) #10, !srcloc !20
  %171 = extractvalue { i32, i32 } %170, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %172 = and i32 %171, 255
  %173 = load i32, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 1, i32 24), align 8
  %174 = urem i32 %172, %173
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 1
  store i8 %175, ptr %176, align 4
  %177 = tail call fastcc i32 @handle_aead_req(ptr noundef %3)
  %178 = icmp eq i32 %177, -115
  br i1 %178, label %184, label %179

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 6, i32 16
  %181 = load ptr, ptr %180, align 4
  tail call void @kfree(ptr noundef %181) #10
  %182 = getelementptr inbounds %struct.aead_request, ptr %0, i32 2
  %183 = load ptr, ptr %182, align 4
  tail call void @kfree(ptr noundef %183) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %30, i8 0, i32 24, i1 false) #10
  br label %184

184:                                              ; preds = %179, %169, %142, %58, %38, %9
  %185 = phi i32 [ -22, %9 ], [ -22, %38 ], [ %143, %142 ], [ -22, %58 ], [ %177, %179 ], [ -115, %169 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spu_sg_at_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aead_do_fallback(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 10, i32 4, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 5
  store ptr %4, ptr %9, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3
  store ptr %11, ptr %3, align 16
  %12 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 6
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 6, i32 4
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  store ptr @aead_complete, ptr %12, align 8
  store ptr %0, ptr %15, align 4
  br i1 %1, label %20, label %22

20:                                               ; preds = %8
  %21 = tail call i32 @crypto_aead_encrypt(ptr noundef %0) #10
  br label %24

22:                                               ; preds = %8
  %23 = tail call i32 @crypto_aead_decrypt(ptr noundef %0) #10
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %14, align 4
  store ptr %28, ptr %12, align 8
  store i32 %19, ptr %18, align 4
  %29 = load ptr, ptr %17, align 4
  store ptr %29, ptr %15, align 4
  store ptr %4, ptr %3, align 16
  br label %30

30:                                               ; preds = %27, %24, %2
  %31 = phi i32 [ 0, %27 ], [ %25, %24 ], [ -22, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_complete(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.aead_request, ptr %0, i32 5, i32 6, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  tail call void %4(ptr noundef %0, i32 noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 673977, i64 2148163948, i64 2148163974, i64 2148164021, i64 2148164043, i64 2148164071, i64 2148164091}
!10 = !{i64 663836, i64 663856, i64 663884, i64 663914, i64 663930}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148175363, i64 2148175389, i64 2148175418, i64 2148175452, i64 2148175483, i64 2148175506}
!13 = !{i64 2148186595, i64 2148186623, i64 2148186657, i64 2148186691, i64 2148186725, i64 2148186761, i64 2148186784}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2152905723, i64 2152906215, i64 2152905760, i64 2152905816, i64 2152905850, i64 2152905874, i64 2152905915, i64 2152905936, i64 2152905964, i64 2152905998}
!17 = !{i64 2148847878}
!18 = !{i64 2148177720, i64 2148177746, i64 2148177775, i64 2148177809, i64 2148177840, i64 2148177863}
!19 = !{i64 2148273209}
!20 = !{i64 2148176047, i64 2148176079, i64 2148176108, i64 2148176142, i64 2148176173, i64 2148176196}
!21 = !{i64 2148273412}
!22 = !{!"branch_weights", i32 1, i32 4001}
